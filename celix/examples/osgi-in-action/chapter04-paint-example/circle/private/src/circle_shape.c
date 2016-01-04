/**
 *Licensed to the Apache Software Foundation (ASF) under one
 *or more contributor license agreements.  See the NOTICE file
 *distributed with this work for additional information
 *regarding copyright ownership.  The ASF licenses this file
 *to you under the Apache License, Version 2.0 (the
 *"License"); you may not use this file except in compliance
 *with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *Unless required by applicable law or agreed to in writing,
 *software distributed under the License is distributed on an
 *"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 *specific language governing permissions and limitations
 *under the License.
 */
/*
 * circle_shape.c
 *
 *  \date       Aug 22, 2011
 *  \author    	<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright	Apache License, Version 2.0
 */
#include <stdio.h>
#include <string.h>
#include <celixbool.h>
#include <stdlib.h>
#include <glib.h>
#include <gtk/gtk.h>
#include <gdk/gdk.h>
#include "bundle_context.h"
#include "bundle.h"
#include "hash_map.h"
#include "simple_shape.h"
#include "circle_shape.h"

#define CIRCLE_FILE "circle.png"

void circleShape_draw(simple_shape_pt shape, GdkPixmap *pixMap, GtkWidget *widget, gdouble x, gdouble y);

celix_status_t circleShape_create(bundle_context_pt context, simple_shape_pt *shape) {
	celix_status_t status = CELIX_SUCCESS;

	bundle_pt bundle;
	apr_pool_t *pool;

	if (*shape != NULL || context == NULL) {
		status = CELIX_ILLEGAL_ARGUMENT;
	} else {
		status = bundleContext_getBundle(context, &bundle);
		if (status == CELIX_SUCCESS) {
			status = bundleContext_getMemoryPool(context, &pool);
			if (status == CELIX_SUCCESS) {
				*shape = (simple_shape_pt) apr_palloc(pool, sizeof(**shape));
				if (!*shape) {
					status = CELIX_ENOMEM;
				} else {
					celix_status_t status = CELIX_SUCCESS;
					(*shape)->name = "Circle";
					(*shape)->icon_path = NULL;
					status = bundle_getEntry(bundle, CIRCLE_FILE, pool, &(*shape)->icon_path);
					if (status == CELIX_SUCCESS) {
						(*shape)->simpleShape_draw = circleShape_draw;
					} else {
						printf("Could not find resource %s\n", CIRCLE_FILE);
					}
				}
			}
		}
	}
	return status;
}

void circleShape_draw(simple_shape_pt shape, GdkPixmap *pixMap, GtkWidget *widget, gdouble x, gdouble y){
	GdkRectangle update_rect;
	GError *gerror = NULL;
	gsize rd = 0, wr = 0;
	if (shape->icon_path == NULL) {
		printf("error message: icon path unknown\n");
	} else {
		gchar *gfn = g_locale_to_utf8(shape->icon_path, strlen(shape->icon_path), &rd, &wr, &gerror);
		GdkPixbuf*curr_pix_buf = gdk_pixbuf_new_from_file(gfn, &gerror);
		if(!curr_pix_buf) {
			g_printerr("error message: %s\n", (gchar *) gerror->message);
		}
		update_rect.x = x - 5;
		update_rect.y = y - 5;
		update_rect.width = gdk_pixbuf_get_width(curr_pix_buf);
		update_rect.height = gdk_pixbuf_get_height(curr_pix_buf);
		gdk_pixbuf_render_to_drawable(
				curr_pix_buf,
				pixMap,
				gtk_widget_get_style(widget)->fg_gc[gtk_widget_get_state(widget)],
				0, 0,
				update_rect.x, update_rect.y,
				update_rect.width,
				update_rect.height,
				GDK_RGB_DITHER_NONE,
				0, 0);
		gtk_widget_queue_draw_area (widget,
				update_rect.x, update_rect.y,
				update_rect.width, update_rect.height);
	}
}



