# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# MorbidOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.morbid.base.codename=$(MORBID_CODENAME) \
    ro.morbid.base.version=$(MORBID_NUM_VER) \
    ro.morbid.build.version=$(MORBID_BUILD_VERSION) \
    ro.morbid.build.date=$(BUILD_DATE) \
    ro.morbid.buildtype=$(MORBID_BUILD_TYPE) \
    ro.morbid.display.version=$(MORBID_DISPLAY_VERSION) \
    ro.morbid.fingerprint=$(ROM_FINGERPRINT) \
    ro.morbid.version=$(MORBID_VERSION) \
    ro.modversion=$(MORBID_VERSION)
