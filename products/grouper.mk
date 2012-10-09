# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := vanir_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03H/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03H 405518 release-keys" BUILD_NUMBER=405518

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \

# Copy missing apps
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/tuna/app/SpeakerProximity.apk:system/app/SpeakerProximity.apk