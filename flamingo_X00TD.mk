#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/flamingo/target/product/flamingo.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00TD
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := flamingo_X00TD
PRODUCT_MODEL := Zenfone Max Pro M1

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220624.021 8650216 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/raven/raven:13/TP1A.220624.021/8650216:user/release-keys"

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080
