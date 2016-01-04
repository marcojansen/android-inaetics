set(BUNDLE_SYMBOLICNAME "org.inaetics.demonstrator.shakedetection")
set(BUNDLE_VERSION "1.0.0")
set(BUNDLE_NAME "org.inaetics.demonstrator.android.shakedetection")

include_directories("${CELIX_INCLUDE_DIR}")
include_directories("private/include")

bundle(org.inaetics.demonstrator.android.shakedetection
		SOURCES
	 	private/src/activator.c
		private/src/shakedetection_impl.c
)

target_link_libraries(org.inaetics.demonstrator.android.shakedetection android ${CELIX_LIBRARIES})
