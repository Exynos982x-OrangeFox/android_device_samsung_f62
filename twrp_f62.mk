#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/samsung/f62/device.mk)

PRODUCT_DEVICE := f62
PRODUCT_NAME := twrp_f62
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-E625F
PRODUCT_MANUFACTURER := samsung
