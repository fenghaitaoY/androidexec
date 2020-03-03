LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CFLAGS := -Wall -Wextra -Werror -Wunused
LOCAL_SRC_FILES := \
	app.c
LOCAL_MODULE := apptest
#LOCAL_SHARED_LIBRARIES :=
#LOCAL_STATIC_LIBRARIES :=
include $(BUILD_EXECUTABLE)
