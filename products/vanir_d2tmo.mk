#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-d2tmo

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/720x1280.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for GS3 TMO.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_d2tmo
PRODUCT_DEVICE := d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-T999

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="samsung/d2uc/d2att:4.3.1/JLS36I/T999UVDMD5:user/release-keys" PRIVATE_BUILD_DESC="d2uc-user 4.3.1 JLS36I T999UVDMD5 release-keys"
