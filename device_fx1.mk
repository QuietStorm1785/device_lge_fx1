#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/lge/msm8960-common2/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/fx1/overlay

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/init.goldfish.sh:/system/etc/init.goldfish.sh \
    device/lge/fx1/prebuilts/etc/init.lge_dut.bt.sh:/system/etc/init.lge_dut.bt.sh \
    device/lge/fx1/prebuilts/etc/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/lge/fx1/prebuilts/etc/init.qcom.modem_links_1.sh:/system/etc/init.qcom.modem_links_1.sh \
    device/lge/fx1/prebuilts/etc/init.qcom.post_fs.sh:/system/etc/init.qcom.post_fs.sh 


# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/thermald.conf:/system/etc/thermald.conf

# snd_soc_msm
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar \
    device/lge/fx1/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3:/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    device/lge/fx1/prebuilts/etc/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/lge/fx1/prebuilts/etc/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm 

# Sound effects
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/lge/fx1/prebuilts/etc/audio_policy.conf:system/etc/audio_policy.conf
# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/usr/keylayout/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    device/lge/fx1/prebuilts/usr/keylayout/d1lu-keypad.kl:system/usr/keylayout/d1lu-keypad.kl \
    device/lge/fx1/prebuilts/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/lge/fx1/prebuilts/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/lge/fx1/prebuilts/usr/keylayout/osp-input.kl:system/usr/keylayout/osp-input.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/usr/idc/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    device/lge/fx1/prebuilts/usr/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    device/lge/fx1/prebuilts/usr/idc/osp-input.idc:system/usr/idc/osp-input.idc

# Wifi firmware & Jellybean Adreno firmware
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
    device/lge/fx1/prebuilts/etc/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
    device/lge/fx1/prebuilts/etc/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
    device/lge/fx1/prebuilts/etc/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    device/lge/fx1/prebuilts/etc/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    device/lge/fx1/prebuilts/etc/firmware/fw_bcmdhd.bin:/system/etc/firmware/fw_bcmdhd.bin \
    device/lge/fx1/prebuilts/etc/firmware/fw_bcmdhd_apsta.bin:/system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/lge/fx1/prebuilts/etc/firmware/fw_bcmdhd_mfg.bin:/system/etc/firmware/fw_bcmdhd_mfg.bin \
    device/lge/fx1/prebuilts/etc/firmware/fw_bcmdhd_p2p.bin:/system/etc/firmware/fw_bcmdhd_p2p.bin \
    device/lge/fx1/prebuilts/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/lge/fx1/prebuilts/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/lge/fx1/prebuilts/etc/firmware/vidc.b00:/system/etc/firmware/vidc.b00 \
    device/lge/fx1/prebuilts/etc/firmware/vidc.b01:/system/etc/firmware/vidc.b01 \
    device/lge/fx1/prebuilts/etc/firmware/vidc.b02:/system/etc/firmware/vidc.b02 \
    device/lge/fx1/prebuilts/etc/firmware/vidc.b03:/system/etc/firmware/vidc.b03 \
    device/lge/fx1/prebuilts/etc/firmware/vidc.mdt:/system/etc/firmware/vidc.mdt \
    device/lge/fx1/prebuilts/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw \
    device/lge/fx1/prebuilts/etc/firmware/vidcfw.elf:/system/etc/firmware/vidcfw.elf 

# Wifi config
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/lge/fx1/prebuilts/etc/wifi/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal \
    device/lge/fx1/prebuilts/etc/wifi/p2p_supplicant.conf:/system/etc/wifi/p2p_supplicant.conf

# DNS hooks
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:/system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    device/lge/fx1/prebuilts/etc/dhcpcd/dhcpcd-hooks/95-configured:/system/etc/dhcpcd/dhcpcd-hooks/95-configured



# Video (Temp)
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/lib/libOmxVdec.so:/obj/lib/libOmxVdec.so \
    device/lge/fx1/prebuilts/lib/libOmxVdec.so:/system/lib/libOmxVdec.so

# NFCEE access control
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# GPS
#PRODUCT_PACKAGES += \
#    gps.fx1 \

# Torch
PRODUCT_PACKAGES += \
    Torch

# hostapd
PRODUCT_PACKAGES += \
    hostapd

# Kernel modules
PRODUCT_COPY_FILES += \
    device/lge/fx1/prebuilts/lib/modules/ansi_cprng.ko:/system/lib/modules/ansi_cprng.ko \
    device/lge/fx1/prebuilts/lib/modules/bluetooth-power.ko:/system/lib/modules/bluetooth-power.ko \
    device/lge/fx1/prebuilts/lib/modules/dma_test.ko:/system/lib/modules/dma_test.ko \
    device/lge/fx1/prebuilts/lib/modules/eeprom_93cx6.ko:/system/lib/modules/eeprom_93cx6.ko \
    device/lge/fx1/prebuilts/lib/modules/evbug.ko:/system/lib/modules/evbug.ko \
    device/lge/fx1/prebuilts/lib/modules/gspca_main.ko:/system/lib/modules/gspca_main.ko \
    device/lge/fx1/prebuilts/lib/modules/ks8851.ko:/system/lib/modules/ks8851.ko \
    device/lge/fx1/prebuilts/lib/modules/lcd.ko:/system/lib/modules/lcd.ko \
    device/lge/fx1/prebuilts/lib/modules/mcdrvmodule.ko:/system/lib/modules/mcdrvmodule.ko \
    device/lge/fx1/prebuilts/lib/modules/mckernelapi.ko:/system/lib/modules/mckernelapi.ko \
    device/lge/fx1/prebuilts/lib/modules/mmc_block_test.ko:/system/lib/modules/mmc_block_test.ko \
    device/lge/fx1/prebuilts/lib/modules/mmc_test.ko:/system/lib/modules/mmc_test.ko \
    device/lge/fx1/prebuilts/lib/modules/msm-buspm-dev.ko:/system/lib/modules/msm-buspm-dev.ko \
    device/lge/fx1/prebuilts/lib/modules/qce40.ko:/system/lib/modules/qce40.ko \
    device/lge/fx1/prebuilts/lib/modules/qcedev.ko:/system/lib/modules/qcedev.ko \
    device/lge/fx1/prebuilts/lib/modules/qcrypto.ko:/system/lib/modules/qcrypto.ko \
    device/lge/fx1/prebuilts/lib/modules/radio-iris-transport.ko:/system/lib/modules/radio-iris-transport.ko \
    device/lge/fx1/prebuilts/lib/modules/reset_modem.ko:/system/lib/modules/reset_modem.ko \
    device/lge/fx1/prebuilts/lib/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
    device/lge/fx1/prebuilts/lib/modules/spidev.ko:/system/lib/modules/spidev.ko \
    device/lge/fx1/prebuilts/lib/modules/tcp_htcp.ko:/system/lib/modules/tcp_htcp.ko \
    device/lge/fx1/prebuilts/lib/modules/tcp_westwood.ko:/system/lib/modules/tcp_westwood.ko \
    device/lge/fx1/prebuilts/lib/modules/test-iosched.ko:/system/lib/modules/test-iosched.ko \


# 2nd-init
PRODUCT_COPY_FILES += \
    device/lge/fx1/2nd-init/recovery.tar:/system/xbin/recovery.tar \
    device/lge/fx1/2nd-init/cm10.tar:/system/xbin/cm10.tar

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# OTA & Stat Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=chevanlol360 \
	ro.goo.rom=cyanogenmodSequent \
        ro.romstats.url=http://androidnexus.us/stats/statschev/submit.php \
        ro.romstats.name=CyanogenMod10 \
        ro.romstats.tframe=7 \
        ro.romstats.version=$(shell date +%Y%m%d ) \
	ro.goo.version=$(shell date +%Y%m%d )

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/app/RomStats.apk:system/app/RomStats.apk \
    $(LOCAL_PATH)/prebuilts/app/com.s0up.goomanager-1.apk:system/app/com.s0up.goomanager-1.apk


# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0 

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lge/fx1/fx1-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
