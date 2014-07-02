
COMMON_GLOBAL_CFLAGS += -DLG870 -DLGUS780
USE_CAMERA_STUB := TRUE

# inherit from common msm8960
-include device/lge/msm8960-common/BoardConfigCommon.mk

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/lge/fx1/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := FX1

# Bluetooth
TARGET_CUSTOM_BLUEDROID := ../../../device/lge/fx1/bluetooth/bluetooth.c

# Kernel
TARGET_ARCH := arm
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=fx1s lpj=67667
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x82200000


#Kernel source
TARGET_KERNEL_SOURCE := kernel/lge/fx1
TARGET_KERNEL_CONFIG := cyanogenmod_fx1_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-linaro-4.6.2

# QCOM GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := fx1

# Lights
TARGET_PROVIDES_LIBLIGHTS := true




# Wifi related defines
WIFI_BAND := 802_11_ABG
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd


WIFI_DRIVER_MODULE_NAME          := wlan
#WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1798307840
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4404019200
BOARD_CACHEIMAGE_PARTITION_SIZE := 826277888
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5127433
BOARD_FLASH_BLOCK_SIZE := 131072



# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
ENABLE_LOKI_RECOVERY := true
TARGET_OTA_ASSERT_DEVICE := fx1,fx1s
