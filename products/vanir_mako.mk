#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.config.vc_call_vol_steps=7 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=50 \
    ro.ril.fast.dormancy.rule=0 \
    ro.goo.rom=vanir-MAKO

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/768x1280.zip:system/media/bootanimation.zip

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Default values used by 99vanir. copied to /sdcard on first run, and presently it lives there forever... todo: make a runonce script that adds new default values to the copy on the sdcard as we add them or something
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/etc/mako-vanir.cfg:system/etc/vanir.cfg

# Setup device specific product configuration.
PRODUCT_NAME := vanir_mako
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.3/JSS15Q/737497:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.3 JSS15Q 737497 release-keys"
