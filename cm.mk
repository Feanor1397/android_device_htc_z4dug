## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := z4dug

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/z4dug/device_z4dug.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := z4dug
PRODUCT_NAME := cm_z4dug
PRODUCT_BRAND := htc
PRODUCT_MODEL := z4dug
PRODUCT_MANUFACTURER := htc
