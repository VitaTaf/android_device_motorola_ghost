#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product-if-exists, vendor/motorola/ghost/ghost-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/msp430sensorprocessor.kl:system/usr/keylayout/msp430sensorprocessor.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald-ghost.conf:system/etc/thermald-ghost.conf

# WiFi
PRODUCT_PACKAGES += \
    WCNSS_qcom_wlan_nv.bin \
    WCNSS_qcom_wlan_nv_calibration.bin \
    WCNSS_qcom_wlan_nv_regulatory.bin \
    WCNSS_qcom_wlan_nv_calibration_0x3.bin \
    WCNSS_qcom_wlan_nv_calibration_0x4.bin \
    WCNSS_qcom_wlan_nv_calibration_0x5.bin \
    WCNSS_qcom_wlan_nv_calibration_0x6.bin \
    WCNSS_qcom_wlan_nv_regulatory_0x3.bin \
    WCNSS_qcom_wlan_nv_regulatory_0x4.bin \
    WCNSS_qcom_wlan_nv_regulatory_0x5.bin \
    WCNSS_qcom_wlan_nv_regulatory_0x6.bin

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_calibration.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_calibration.bin \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_calibration_0x1.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_calibration_0x1.bin \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_calibration_0x2.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_calibration_0x2.bin \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_regulatory.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_regulatory.bin \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_regulatory_0x1.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_regulatory_0x1.bin \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_regulatory_0x2.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_regulatory_0x2.bin

PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/hosts:system/etc/hosts \
    vendor/motorola/ghost/proprietary/app/WallpaperPickerGooglePrebuilt.apk:system/app/WallpaperPickerGooglePrebuilt/WallpaperPickerGooglePrebuilt.apk \
    vendor/motorola/ghost/proprietary/app/LatinImeGoogle.apk:system/app/LatinImeGoogle/LatinImeGoogle.apk \
    vendor/motorola/ghost/proprietary/app/WebViewGoogle.apk:system/app/WebViewGoogle/WebViewGoogle.apk \
    vendor/motorola/ghost/proprietary/priv-app/NexusLauncherPrebuilt.apk:system/priv-app/NexusLauncherPrebuilt/NexusLauncherPrebuilt.apk \
    vendor/motorola/ghost/proprietary/priv-app/GoogleDialer.apk:system/priv-app/GoogleDialer/GoogleDialer.apk \
    vendor/motorola/ghost/proprietary/app/Nfc.apk:system/app/Nfc/Nfc.apk \
    vendor/motorola/ghost/proprietary/lib/libnfc_jni.so:system/lib/libnfc_jni.so \
    vendor/motorola/ghost/proprietary/lib/libnfc_ndef.so:system/lib/libnfc_ndef.so \
    vendor/motorola/ghost/proprietary/lib/libnfc.so:system/lib/libnfc.so \
    


# Inherit from msm8960dt-common
$(call inherit-product, device/motorola/msm8960dt-common/msm8960dt-common.mk)
