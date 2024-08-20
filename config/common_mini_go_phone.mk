# Set Morbid specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Morbid stuff
$(call inherit-product, vendor/morbid/config/common_mini_phone.mk)
