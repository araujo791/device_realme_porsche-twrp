#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/realme/porsche

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := $(TARGET_ARCH_VARIANT)
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := $(TARGET_CPU_VARIANT)
TARGET_2ND_CPU_VARIANT_RUNTIME := $(TARGET_CPU_VARIANT_RUNTIME)

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := $(PRODUCT_PLATFORM)
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE := androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE := androidboot.memcg=1
BOARD_KERNEL_CMDLINE := lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE := video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE := msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE := service_locator.enable=1
BOARD_KERNEL_CMDLINE := androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE := swiotlb=0
BOARD_KERNEL_CMDLINE := loop.max_part=7
BOARD_KERNEL_CMDLINE := cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE := pcie_ports=compat
BOARD_KERNEL_CMDLINE := loop.max_part=7
BOARD_KERNEL_CMDLINE := iptable_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE := ip6table_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE := kpti=off
BOARD_KERNEL_CMDLINE := iptable_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE := buildvariant=user
BOARD_KERNEL_BASE          := 0x00000000
BOARD_KERNEL_TAGS_OFFSET   := 0x00000100
BOARD_KERNEL_OFFSET        := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0x00000000
BOARD_RAMDISK_OFFSET       := 0x01000000
BOARD_DTB_OFFSET           := 0x01f00000
BOARD_BOOT_HEADER_VERSION := 3
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --recovery_dtbo $(TARGET_PREBUILT_RECOVERY_DTBO)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_RECOVERY_DTBO := $(DEVICE_PATH)/prebuilts/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img

# Platform
TARGET_BOARD_PLATFORM := $(TARGET_BOOTLOADER_BOARD_NAME)
TARGET_BOARD_PLATFORM_GPU := qcom-adreno660
TARGET_USES_HARDWARE_QCOM_BOOTCTRL := true
QCOM_BOARD_PLATFORMS += $(TARGET_BOARD_PLATFORM)

# Partition Info
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_USES_PRODUCTIMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 201326592
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 201326592
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := 4096
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Dynamic/Logical Partitions
BOARD_SUPER_PARTITION_SIZE := 7516192768
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 7511998464
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    vendor \
    product \
    odm

# Workaround for error copying vendor files to recovery ramdisk
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Recovery Installer
USE_RECOVERY_INSTALLER := true
RECOVERY_INSTALLER_PATH := $(DEVICE_PATH)/installer

# Crypto
TW_INCLUDE_CRYPTO := true
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

# Hack: prevent anti rollback
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Extras
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Partitions (listed in the file) to be wiped under recovery.
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery.wipe

# Fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# TWRP specific build flags
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone50/temp"
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_QCOM_ATS_OFFSET := 1621580431500
TW_DEFAULT_BRIGHTNESS := 500
TW_MAX_BRIGHTNESS := 1000
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_NO_EXFAT_FUSE := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_NO_SCREEN_BLANK := true
TW_CUSTOM_BATTERY_POS := 740
TW_CUSTOM_CLOCK_POS := 500
TW_CUSTOM_CPU_POS := 180
TW_FRAMERATE := 60
TW_NO_CPU_TEMP := true
TW_HAS_EDL_MODE := true
TW_Y_OFFSET := 104
TW_H_OFFSET := -104
TW_INCLUDE_FASTBOOTD := true

TW_OVERRIDE_SYSTEM_PROPS := \
     "ro.build.date.utc;ro.bootimage.build.date.utc=ro.build.date.utc;ro.odm.build.date.utc=ro.build.date.utc;ro.product.build.date.utc=ro.build.date.utc;ro.system.build.date.utc=ro.build.date.utc;ro.system_ext.build.date.utc=ro.build.date.utc;ro.vendor.build.date.utc=ro.build.date.utc;ro.build.product;ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"

BOARD_RECOVERY_KERNEL_MODULES_LOAD := $(TW_LOAD_VENDOR_MODULES)
TW_LOAD_VENDOR_MODULES := "aw8697.ko ns.ko oplus_bsp_tp_notify.ko oplus_notify.ko service-locator.ko snd_event_dlkm.ko apr_dlkm.ko oplus_chg.ko q6_notifier_dlkm.ko adsp_loader_dlkm.ko msm_drm.ko phy-qcom-ufs.ko q6_pdr_dlkm.ko apr_dlkm.ko modules.dep modules.softdep oplus_chg.ko q6_pdr_dlkm.ko adsp_loader_dlkm.ko modules.alias modules.load msm_drm.ko q6_notifier_dlkm.ko androidboot.ko gcc-lahaina.ko oplus_bsp_tp_notify.ko qbt_handler.ko rpmhpd.ko aw8697.ko gcc-shima.ko oplus_charger_present.ko qcom-arm-smmu-mod.ko rpmh-regulator.ko boot_mode.ko gcc-yupik.ko oplus_ftm_mode.ko qcom_glink_native.ko sdhci-msm.ko buildvariant.ko hwkm.ko oplus_notify.ko qcom_glink_smem.ko secure_buffer.ko cdt_integrity.ko icc-bcm-voter.ko oplus_project.ko qcom-pdc.ko service-locator.ko clk-dummy.ko icc-rpmh.ko phy-qcom-ufs.ko qcom_rpmh.ko simcardnum.ko clk-qcom.ko iommu-logger.ko phy-qcom-ufs-qmp-v4-lahaina.ko _qcom_scm.ko smem.ko clk-rpmh.ko memory_dump_v2.ko phy-qcom-ufs-qmp-v4-yupik.ko qmi_helpers.ko snd_event_dlkm.ko cmd-db.ko modules.alias phy-qcom-ufs-qrbtc-sdm845.ko qnoc-lahaina.ko stub-regulator.ko cqhci-crypto.ko modules.dep pinctrl-lahaina.ko qnoc-qos.ko subsystem_restart.ko cqhci-crypto-qti.ko modules.load pinctrl-msm.ko qnoc-shima.ko ufshcd-crypto-qti.ko cqhci.ko modules.softdep pinctrl-shima.ko qnoc-yupik.ko ufs-qcom.ko crypto-qti-common.ko  msm-poweroff.ko pinctrl-yupik.ko qpnp-power-on.ko crypto-qti-hwkm.ko ns.ko proxy-consumer.ko refgen.ko"

# TWRP Debug Flags
#TWRP_EVENT_LOGGING := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES += debuggerd
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd
TARGET_RECOVERY_DEVICE_MODULES += strace
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/strace
#TARGET_RECOVERY_DEVICE_MODULES += twrpdec
#RECOVERY_BINARY_SOURCE_FILES += $(TARGET_RECOVERY_ROOT_OUT)/sbin/twrpdec

# PBRP specific build flags
#PB_DISABLE_DEFAULT_TREBLE_COMP := true
#PB_DISABLE_DEFAULT_DM_VERITY := true
#PB_TORCH_PATH := "/sys/class/leds/led:torch_0"
