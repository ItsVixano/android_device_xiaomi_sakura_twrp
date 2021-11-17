#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := sakura

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8953 \
    ro.treble.enabled=true \
    ro.bootimage.build.date.utc=1514797200 \
    ro.build.date.utc=1514797200

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.bootimage.build.date.utc \
    ro.build.date.utc

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sakura
PRODUCT_NAME := omni_sakura
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 6 pro
PRODUCT_MANUFACTURER := Xiaomi
