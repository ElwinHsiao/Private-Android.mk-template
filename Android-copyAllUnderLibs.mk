LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# 加入这个选项，避免生成odex文件，eng版本默认不生成
#WITH_DEXPREOPT := false

# java dex library
# LOCAL_JAVA_LIBRARIES := android.test.runner

LIBS_BASENAME := $(basename $(notdir $(wildcard $(LOCAL_PATH)/libs/*.jar)))

# java standard library
LOCAL_STATIC_JAVA_LIBRARIES := $(addprefix lib,$(LIBS_BASENAME))

# .so library
LOCAL_JNI_SHARED_LIBRARIES := libjni_anymoteserver


# platform 签名
LOCAL_CERTIFICATE := platform

# 需要特殊vendor key签名的APK 
# LOCAL_CERTIFICATE := vendor/example/certs/app

LOCAL_SRC_FILES := $(call all-java-files-under, src)

# LOCAL_SDK_VERSION := current

LOCAL_PACKAGE_NAME := AnymoteServer
LOCAL_MODULE_TAGS := optional   # eng tests sample

include $(BUILD_PACKAGE)


#######################################################
# copy jar library 
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := $(foreach lib,$(LIBS_BASENAME),lib$(lib):libs/$(lib).jar)
include $(BUILD_MULTI_PREBUILT)


#######################################################
# make jni library
include $(call all-makefiles-under,$(LOCAL_PATH))