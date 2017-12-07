
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := htop
LOCAL_DESCRIPTION := Htop is a free (GPL) ncurses-based process viewer for Linux.
LOCAL_CATEGORY_PATH := devel

LOCAL_AUTOTOOLS_VERSION := 1.0.2
LOCAL_AUTOTOOLS_ARCHIVE := $(LOCAL_MODULE)-$(LOCAL_AUTOTOOLS_VERSION).tar.gz
LOCAL_AUTOTOOLS_SUBDIR := $(LOCAL_MODULE)-$(LOCAL_AUTOTOOLS_VERSION)

LOCAL_LIBRARIES := ncurses

LOCAL_AUTOTOOLS_PATCHES := \
	CRT.patch

LOCAL_AUTOTOOLS_CONFIGURE_ARGS := \
	--disable-unicode

include $(BUILD_AUTOTOOLS)