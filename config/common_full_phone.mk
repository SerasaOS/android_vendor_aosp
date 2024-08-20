# Inherit full common Morbid stuff
$(call inherit-product, vendor/morbid/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Morbid LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/morbid/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/morbid/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/morbid/config/telephony.mk)
