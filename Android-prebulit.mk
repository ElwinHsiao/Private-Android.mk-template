# prebuilt 包括拷贝文件（拷到公共目录——库、头文件、doc，或自定义拷贝，调用shell命令，自定义makefile目标），



#################################################################
####### copy the library to /system/lib #########################
#################################################################
# include $(CLEAR_VARS)
# LOCAL_MODULE := libinputcore.so
# LOCAL_MODULE_CLASS := SHARED_LIBRARIES
# LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
# LOCAL_SRC_FILES := lib/$(LOCAL_MODULE)
# OVERRIDE_BUILD_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
# include $(BUILD_PREBUILT)


