# Inherit common Morbid stuff
$(call inherit-product, vendor/morbid/config/common.mk)

# Inherit Morbid atv device tree
$(call inherit-product, device/morbid/atv/morbid_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

PRODUCT_PACKAGE_OVERLAYS += vendor/morbid/overlay/tv
