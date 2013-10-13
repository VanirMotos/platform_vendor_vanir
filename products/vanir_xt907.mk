#Squisher Choosing
DHO_VENDOR := vanir

# Variable for zip installerscript spam about kernel
KERNEL_SPAM := CM Kernel

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.goo.rom=vanir-xt907

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/540x960.zip:system/media/bootanimation.zip

# Inherit common phone stuff
$(call inherit-product, vendor/vanir/products/common_phones.mk)

# Inherit common vanir files.
$(call inherit-product, vendor/vanir/products/cdma.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for GS3 VZW.
$(call inherit-product, device/motorola/xt907/full_xt907.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := vanir_xt907
PRODUCT_DEVICE := xt907
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := xt907

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=xt907 TARGET_DEVICE=xt907 BUILD_FINGERPRINT="Verizon/motorola/xt907:4.3.1/JZO54K/JLS36I:user/release-keys" PRIVATE_BUILD_DESC="xt907-user 4.3.1 JLS36I I535VRBMF1 release-keys"
