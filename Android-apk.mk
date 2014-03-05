LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# 加入这个选项，避免生成odex文件
WITH_DEXPREOPT := false

# java dex library
# LOCAL_JAVA_LIBRARIES := android.test.runner

# java standard library
# LOCAL_STATIC_JAVA_LIBRARIES := libarity android-support-v4

# .so library
# LOCAL_JNI_SHARED_LIBRARIES := libjni


# platform 签名
# LOCAL_CERTIFICATE := platform

# 需要特殊vendor key签名的APK 
# LOCAL_CERTIFICATE := vendor/example/certs/app

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_SDK_VERSION := current

LOCAL_PACKAGE_NAME := kivi
LOCAL_MODULE_TAGS := eng	# optional tests sample

include $(BUILD_PACKAGE)

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