# Set Awaken specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common Morbid stuff
$(call inherit-product, vendor/morbid/config/common_full_phone.mk)
