#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/asus/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00TD

# APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ASUS_X00TD,X00TD,X00T

# Audio
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm636

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FM
BOARD_HAS_QCA_FM_SOC := cherokee
BOARD_HAVE_QCOM_FM := true

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

ODM_MANIFEST_SKUS += NFC
ODM_MANIFEST_NFC_FILES := $(DEVICE_PATH)/manifest_nfc.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_sdm660
TARGET_RECOVERY_DEVICE_MODULES := libinit_sdm660

# Kernel
TARGET_KERNEL_CONFIG := X00TD_defconfig

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_asus
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Treble
BOARD_VNDK_VERSION := current

# WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
QC_WIFI_HIDL_FEATURE_DUAL_AP := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true

# Inherit the proprietary files
include vendor/asus/X00TD/BoardConfigVendor.mk
