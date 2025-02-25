#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a06 device
$(call inherit-product, device/samsung/a06/device.mk)

# Inherit from wingcamera-samsung

PRODUCT_DEVICE := a06
PRODUCT_NAME := lineage_a06
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A06
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
WITH_GMS := true
ORION_MAINTAINER := Smiley_9000
ORION_BUILD_TYPE := Unofficial
ORION_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 720
WITH_GMS := true

TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a06xx-user 14 UP1A.231005.007 A065FXXS2AXJ2 release-keys" \
    BuildFingerprint=samsung/a06xx/a06:14/UP1A.231005.007/A065FXXS2AXJ2:user/release-keys
