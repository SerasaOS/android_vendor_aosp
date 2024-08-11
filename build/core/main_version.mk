# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# ewOS Platform Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.custom.build.date=$(BUILD_DATE) \
    ro.custom.device=$(CUSTOM_BUILD) \
    ro.custom.fingerprint=$(ROM_FINGERPRINT) \
    ro.custom.version=$(CUSTOM_VERSION) \
    ro.modversion=$(CUSTOM_VERSION) \
    ro.custom.maintainer=$(CUSTOM_MAINTAINER) \
    org.custom.build_version=$(CUSTOM_BUILD_VERSION) \
    org.custom.build_type=$(CUSTOM_BUILD_TYPE) \
    org.custom.version.display=$(CUSTOM_VERSION)

# Updater
ifeq ($(IS_OFFICIAL),true)
    ADDITIONAL_SYSTEM_PROPERTIES  += \
        ro.custom.build_type=ci \
        ro.custom.version=$(CUSTOM_VERSION_PROP)
endif
