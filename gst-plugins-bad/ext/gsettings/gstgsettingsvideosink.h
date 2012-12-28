/* GStreamer
 * Copyright (C) 2010 Sebastian Dröge <sebastian.droege@collabora.co.uk>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifndef __GST_GSETTINGS_VIDEO_SINK_H__
#define __GST_GSETTINGS_VIDEO_SINK_H__

#include <gst/gst.h>
#include <gio/gio.h>
#include "gstswitchsink.h"

G_BEGIN_DECLS

#define GST_TYPE_GSETTINGS_VIDEO_SINK \
  (gst_gsettings_video_sink_get_type ())
#define GST_GSETTINGS_VIDEO_SINK(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_GSETTINGS_VIDEO_SINK, \
                               GstGSettingsVideoSink))
#define GST_GSETTINGS_VIDEO_SINK_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_GSETTINGS_VIDEO_SINK, \
                            GstGSettingsVideoSinkClass))
#define GST_IS_GSETTINGS_VIDEO_SINK(obj) \
  (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_GSETTINGS_VIDEO_SINK))
#define GST_IS_GSETTINGS_VIDEO_SINK_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_GSETTINGS_VIDEO_SINK))

typedef struct _GstGSettingsVideoSink {
  GstSwitchSink parent;

  GSettings *settings;

  GMainContext *context;
  GMainLoop *loop;
  gulong changed_id;

  gchar *gsettings_str;
} GstGSettingsVideoSink;

typedef struct _GstGSettingsVideoSinkClass {
  GstSwitchSinkClass parent_class;
} GstGSettingsVideoSinkClass;

GType   gst_gsettings_video_sink_get_type   (void);

G_END_DECLS

#endif /* __GST_GSETTINGS_VIDEO_SINK_H__ */
