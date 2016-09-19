$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/z4dug/z4dug-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/z4dug/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_z4dug
PRODUCT_DEVICE := z4dug

TARGET_KERNEL_SOURCE := kernel/htc/z4u
TARGET_KERNEL_CONFIG := dummie_z4u_defconfig
TARGET_KERNEL_RECOVERY_CONFIG := recovery_z4u_defconfig


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BOOT_JARS += qcmediaplayer

# Ramdisk
PRODUCT_COPY_FILES += \
    device/htc/z4dug/ramdisk/bt_permission.sh:root/bt_permission.sh \
    device/htc/z4dug/ramdisk/cwkeys:root/cwkeys \
    device/htc/z4dug/ramdisk/default.prop:root/default.prop \
    device/htc/z4dug/ramdisk/fstab.z4dug:root/fstab.z4dug \
    device/htc/z4dug/ramdisk/init:root/init \
    device/htc/z4dug/ramdisk/init.cm.rc:root/init.cm.rc \
    device/htc/z4dug/ramdisk/init.goldfish.rc:root/init.goldfish.rc \
    device/htc/z4dug/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/htc/z4dug/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/htc/z4dug/ramdisk/init.rc:root/init.rc \
    device/htc/z4dug/ramdisk/init.target.rc:root/init.target.rc \
    device/htc/z4dug/ramdisk/init.target.recovery.rc:root/init.target.recovery.rc \
    device/htc/z4dug/ramdisk/init.target.usb.rc:root/init.target.usb.rc \
    device/htc/z4dug/ramdisk/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/htc/z4dug/ramdisk/ueventd.rc:root/ueventd.rc \
    device/htc/z4dug/ramdisk/ueventd.target.rc:root/ueventd.target.rc

# ADB
PRODUCT_COPY_FILES += \
    device/htc/z4dug/ramdisk/sbin/adbd:root/sbin/adbd

# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=48m \
    dalvik.vm.heapsize=128m \
    dalvik.vm.heaptargetutilization=0.25 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=2m

# Telephony
#PRODUCT_PROPERTY_OVERRIDES += \
#   mobiledata.interfaces=rmnet0 \
#   rild.libpath=/system/lib/libhtc_ril.so \
#   ro.telephony.ril_class=HtcMsm7x27aRIL \
#   ro.telephony.ril.config=datacallapn,signalstrength

# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    gralloc.default \
    hwcomposer.msm7x27a \
    libgenlock \
    libtilerenderer \
    liboverlay


# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio.primary.default \
    audio.a2dp.default \
    audio_policy.default.so \
    libaudioutils \
    libaudio-resampler

# Audio
PRODUCT_COPY_FILES += \
    device/htc/z4dug/config/audio_policy.conf:system/etc/audio_policy.conf

# Lights
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a
    
#Health HAL
PRODUCT_PACKAGES += \
    libhealthd.msm7x27a

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27a \
    libsurfaceflinger_client

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libdashplayer

# qcmediaplayer
PRODUCT_PACKAGES += \
    qcmediaplayer

 # WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant 

# Other
PRODUCT_PACKAGES += \
    libnetcmdiface

# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml


PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi