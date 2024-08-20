# Inherit common Morbid stuff
$(call inherit-product, vendor/morbid/config/common.mk)

# Inherit Awaken car device tree
$(call inherit-product, device/morbid/car/morbid_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
