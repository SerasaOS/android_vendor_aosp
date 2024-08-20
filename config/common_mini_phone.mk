# Inherit mini common Morbid stuff
$(call inherit-product, vendor/morbid/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/morbid/config/telephony.mk)
