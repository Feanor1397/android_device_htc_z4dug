USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/z4dug/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mtune=cortex-a5 -mfpu=neon
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mtune=cortex-a5 -mfpu=neon
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DHTCLOG
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_LEGACY_QCOM := false
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
TARGET_USES_QCOM_BSP := true
TARGET_USES_ION := true
TARGET_USES_GENLOCK := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_VENDOR := htc

# Architecture
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION 	:= true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a5
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a5

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := z4dug

# Kernel
#TARGET_PREBUILT_KERNEL := device/htc/z4dug/kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x03b00000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 00008000 --ramdisk_offset 01408000 --tags_offset 00000100
TARGET_NO_KERNEL := false
TARGET_PROVIDES_INIT_RC := false

#Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_HALF_RES := true

# Partitions
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p39
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p40
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := /dev/block/mmcblk0p41
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16776192
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013264896
BOARD_CACHEIMAGE_PARTITION_SIZE := 233570304
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1342177280
TARGET_USERIMAGES_USE_EXT4 := true

# Hardware Rendering
#TARGET_GPU_PP_CORE := 3
USE_OPENGL_RENDERER := true
TARGET_USES_QCOM_BSP := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_NO_ADAPTIVE_PLAYBACK := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
HWUI_COMPILE_FOR_PERF := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
#TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_HDMI_OUT := false
TARGET_HAVE_HDMI_OUT := false
TARGET_NO_HW_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_USES_OVERLAY := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Audio
#TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_PROVIDES_LIBAUDIO := false
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_HAS_QACT := true

# FM Radio
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Light
TARGET_PROVIDES_LIBLIGHTS:= true

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Media
TARGET_QCOM_MEDIA_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

# Generic
BOARD_HAVE_BLUETOOTH := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USES_ION := true
TARGET_RECOVERY_INITRC := device/htc/z4dug/recovery/init.rc
TARGET_SPECIFIC_HEADER_PATH := device/htc/z4dug/include
BOARD_EGL_CFG := device/htc/z4dug/config/egl.cfg
TARGET_NO_HW_VSYNC := true
BOARD_VOLD_MAX_PARTITIONS := 41
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT := true

# RIL 
BOARD_RIL_CLASS := ../../../device/htc/z4dug/ril

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),userdebug)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

# twrp
DEVICE_RESOLUTION := 480x800
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
