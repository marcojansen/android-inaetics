#include "shakedetection_impl.h"

#include <pthread.h>

#include <android/sensor.h>
#include <android/looper.h>

#define REFRESH_SAMPLE_RATE 0.6
#define MIN_SHAKE_SPEED 10
#define MAX_SAMPLE_RATE 30
#define MIN_SAMPLE_RATE 5
#define MIN_CHANGE 3

struct shakedetector {
    char* name;
    bool running;
    int sampleRate;
    producer_service_pt producerService;
    pthread_t sensorThread;
};

celix_status_t shakedetection_create(char* name, shakedetector_pt* detector)
{
    celix_status_t status = CELIX_SUCCESS;
    //Allocate and initialize shakedetector struct
    shakedetector_pt shaker = calloc(1,sizeof(*shaker));
    if (shaker != NULL) {
        shaker->name = strdup(name);
	    shaker->running = false;
	    shaker->producerService = NULL;
        shaker->sensorThread = '\0';
    } else {
        status = CELIX_ENOMEM;
    }
    (*detector) = shaker;
    return status;
} 

void *shakedetection_useSensors(void *adetector)
{
    printf("Shakedetection started. \n");
    shakedetector_pt detector = (shakedetector_pt) adetector;

    ASensorEventQueue* sensorEventQueue;
    ASensorManager* sensorManager;
    const ASensor* accSensor;
    ALooper* looper = ALooper_forThread();
    if (looper == NULL) {
        looper = ALooper_prepare(ALOOPER_PREPARE_ALLOW_NON_CALLBACKS);
    }
    sensorManager = ASensorManager_getInstance();
    accSensor = ASensorManager_getDefaultSensor(sensorManager, ASENSOR_TYPE_ACCELEROMETER);
    sensorEventQueue = ASensorManager_createEventQueue(sensorManager, looper, 1,NULL, NULL );
    ASensorEventQueue_enableSensor(sensorEventQueue, accSensor);
    ASensorEventQueue_setEventRate(sensorEventQueue, accSensor, (1000L/10)*1000);
    ASensorEvent event;
    int prevx, prevy, prevz, prevSampleRate, counter;
    float totalSpeed;
    time_t start,end;

    time (&start);
    while (detector->running) {
        // Get the event if there is one
        if (ASensorEventQueue_getEvents(sensorEventQueue, &event, 1) > 0) {
            // Check if the event is from the accelerometer
            if (event.type == ASENSOR_TYPE_ACCELEROMETER) {
            	float x,y,z;
                x = event.acceleration.x;
                y = event.acceleration.y;
                z = event.acceleration.z;
		        float speed = abs(x+y+z - prevx - prevy - prevz);
		        totalSpeed+= speed;
		        prevx = x;
		        prevy = y;
		        prevz = z;
		        ++counter;
            }
	        time (&end);
            //Every x seconds (x = REFRESH_SAMPLE_RATE) check average speed
	        if (difftime (end,start) >= REFRESH_SAMPLE_RATE) {
		        float averageSpeed = totalSpeed / counter;
		        totalSpeed = 0; counter = 0;
                // Check if device was shaken
		        if (averageSpeed >= MIN_SHAKE_SPEED) {
		            detector->sampleRate += 3;
		        } else if (averageSpeed < MIN_SHAKE_SPEED) {
		            detector->sampleRate -= 1;
		        }
                // Check if sampleRate is not higher or lower than the boundaries
		        if ( detector->sampleRate < MIN_SAMPLE_RATE) {
		            detector->sampleRate = MIN_SAMPLE_RATE;
		        } else if ( detector->sampleRate > MAX_SAMPLE_RATE) {
		             detector->sampleRate = MAX_SAMPLE_RATE;
                }
                // Update only when at lowest or highest point. Or when the change is big enough (Prevents spam)
		        if (abs(prevSampleRate - detector->sampleRate) >= MIN_CHANGE
                    || (prevSampleRate != detector->sampleRate
                        && (detector->sampleRate == MIN_SAMPLE_RATE || detector->sampleRate == MAX_SAMPLE_RATE))) {
		           detector->producerService->setSampleRate(detector->producerService->producer, detector->sampleRate);
		           prevSampleRate = detector->sampleRate;
		        }
		
		        time (&start);
	        }

        }
    }
    return NULL;
}

celix_status_t shakedetection_producerAdded(void *handle, service_reference_pt reference, void *service)
{
    printf("SHAKEDETECTION: Producer added. \n");
    shakedetector_pt detector = (shakedetector_pt) handle;
    producer_service_pt producerService = (producer_service_pt)service;

    //Attach producerService to detector
    detector->producerService = producerService;
    detector->running = true;
    detector->sampleRate = 20;
    //Start the shake detection
    pthread_create(&detector->sensorThread, NULL, shakedetection_useSensors, detector);

    return CELIX_SUCCESS;
}

celix_status_t shakedetection_producerRemoved(void *handle, service_reference_pt reference, void *service)
{
    shakedetector_pt detector = (shakedetector_pt) handle;
    detector->producerService = NULL;
    detector->running = false;
    return CELIX_SUCCESS;
}

celix_status_t shakedetection_stop(shakedetector_pt detector)
{
    printf("SHAKEDETECTION: Stopping Shakedetection.\n");
    detector->running = false;
    pthread_join(detector->sensorThread, NULL);
    if (detector->name != NULL) {
	    free(detector->name);
    }
    free(detector);
    return CELIX_SUCCESS;
}


