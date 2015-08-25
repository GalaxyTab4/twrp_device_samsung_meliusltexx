# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Assert
#TARGET_OTA_ASSERT_DEVICE := meliuslte,meliusltexx

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_VARIANT := krait

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Kernel
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom androidboot.selinux=permissive user_debug=31
#BOARD_CUSTOM_BOOTIMG_MK		 := device/samsung/meliusltexx/mkbootimg.mk
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/samsung/msm8930
TARGET_KERNEL_CONFIG         := cyanogen_melius_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8930_melius_eur_lte_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/meliusltexx/fstab.qcom
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1415577600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5079285760
BOARD_CACHEIMAGE_PARTITION_SIZE := 880803840
BOARD_FLASH_BLOCK_SIZE := 131072

# Allow suspend in charge mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# TWRP config
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := device/samsung/meliusltexx/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p23"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,noauto_da_alloc,journal_async_commit,errors=panic"
#TW_CRYPTO_FS_FLAGS := "0x00000406"
#TW_CRYPTO_KEY_LOC := "footer"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_NO_EXFAT_FUSE := false
TW_NO_EXFAT := false
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true

# MultiROM config. MultiROM also uses parts of TWRP config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/meliusltexx/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_FSTAB := device/samsung/meliusltexx/multirom/multirom.fstab
MR_KEXEC_MEM_MIN := 0x85000000
MR_USE_MROM_FSTAB := true
MR_DEVICE_HOOKS := device/samsung/meliusltexx/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 1
#MR_DEVICE_VARIANTS := meliusltexx

# Framebuffer testing
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/samsung/meliusltexx/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888

# MR_PIXEL_FORMAT := "RGBX_8888"
# MR_CONTINUOUS_FB_UPDATE := true
# MR_USE_QCOM_OVERLAY := true
# MR_QCOM_OVERLAY_HEADER := device/samsung/loganreltexx/multirom/framebuffer_qcom_overlay.h
# MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
# MR_RD_ADDR := 0x82500000

