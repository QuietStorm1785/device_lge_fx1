# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := fx1s

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/fx1s/device_fx1s.mk)

# Device naming
PRODUCT_DEVICE := fx1s
PRODUCT_NAME := cm_fx1s
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG870
PRODUCT_MANUFACTURER := lge

