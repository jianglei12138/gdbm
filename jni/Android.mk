LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	base64.c     gdbmclose.c  gdbmexists.c gdbmload.c   gdbmstore.c  update.c      \
	bucket.c     gdbmcount.c  gdbmexp.c    gdbmopen.c   gdbmsync.c   version.c     \
	falloc.c     gdbmdelete.c gdbmfdesc.c  gdbmreorg.c  hash.c       mmap.c        \
	findkey.c    gdbmdump.c   gdbmfetch.c  gdbmseq.c    lock.c       gdbmsetopt.c  \
	fullio.c     gdbmerrno.c  gdbmimp.c    

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/

LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H 

LOCAL_MODULE := gdbm

include $(BUILD_SHARED_LIBRARY)