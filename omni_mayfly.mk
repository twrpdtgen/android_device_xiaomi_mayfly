#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mayfly device
$(call inherit-product, device/xiaomi/mayfly/device.mk)

PRODUCT_DEVICE := mayfly
PRODUCT_NAME := omni_mayfly
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206123SC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mayfly-user 12 SKQ1.230401.001 V816.0.5.0.ULTCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/mayfly/mayfly:12/SKQ1.230401.001/V816.0.5.0.ULTCNXM:user/release-keys
