$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common morbid stuff
$(call inherit-product, vendor/morbid/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Morbid LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/morbid/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/morbid/overlay/dictionaries

$(call inherit-product, vendor/morbid/config/telephony.mk)
