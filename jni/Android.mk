LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CFLAGS := -Wall -Wextra -Werror -Wunused -Wunused-parameter -Wno-parentheses-equality -Wno-tautological-compare -Wno-self-assign
LOCAL_SRC_FILES := \
	iwpriv.c iwlib.c
LOCAL_MODULE := iwpriv
#LOCAL_SHARED_LIBRARIES :=
#LOCAL_STATIC_LIBRARIES :=
include $(BUILD_EXECUTABLE)
