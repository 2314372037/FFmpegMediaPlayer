LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libssl2314
LOCAL_SRC_FILES := openssl/$(TARGET_ARCH_ABI)/lib/libssl2314.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/openssl/$(TARGET_ARCH_ABI)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libcrypto2314
LOCAL_SRC_FILES := openssl/$(TARGET_ARCH_ABI)/lib/libcrypto2314.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/openssl/$(TARGET_ARCH_ABI)/include
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_PATH:= $(call my-dir)