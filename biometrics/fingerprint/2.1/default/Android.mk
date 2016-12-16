LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.biometrics.fingerprint@2.1-service
LOCAL_INIT_RC := android.hardware.biometrics.fingerprint@2.1-service.rc
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
    BiometricsFingerprint.cpp \
    service.cpp \

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libhidlbase \
    libhidltransport \
    libhardware \
    libhwbinder \
    libutils \
    android.hardware.biometrics.fingerprint@2.1 \

include $(BUILD_EXECUTABLE)
