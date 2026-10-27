#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/f62

BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_CMDLINE :=
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 71102464
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

include device/samsung/exynos9820-common/BoardConfigCommon.mk

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb

TARGET_BOOTLOADER_BOARD_NAME := exynos9825
TARGET_BOARD_PLATFORM := universal9825_r
