LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	%.cpp  \

#LOCAL_C_INCLUDES := \

LOCAL_FORCE_STATIC_EXECUTABLE := true	
LOCAL_STATIC_LIBRARIES := \
	libc \
	libstdc++ \
	libm
	
#LOCAL_SHARED_LIBRARIES := \
#	libutils \
#	libcutils \

LOCAL_MODULE:= %
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)