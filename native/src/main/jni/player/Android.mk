LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ffmpeg_mediaplayer_jni2314
SDL_PATH := ../SDL
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include $(LOCAL_PATH)/$(SDL_PATH)/src/video/android
LOCAL_CFLAGS := 
LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.c \
	wseemann_media_MediaPlayer.cpp \
	mediaplayer.cpp \
	ffmpeg_mediaplayer.c \
	audioplayer.c \
	videoplayer.c \
	ffmpeg_utils.c
LOCAL_SHARED_LIBRARIES := SDL22314 libswresample2314 libswscale2314 libavcodec2314 libavformat2314 libavutil2314
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../ffmpeg/ffmpeg/$(TARGET_ARCH_ABI)/include
# for native audio
LOCAL_LDLIBS += -lOpenSLES -lGLESv1_CM -lGLESv2
# for logging
LOCAL_LDLIBS += -llog
LOCAL_LDLIBS += -landroid
LOCAL_LDLIBS += -ljnigraphics

include $(BUILD_SHARED_LIBRARY)
