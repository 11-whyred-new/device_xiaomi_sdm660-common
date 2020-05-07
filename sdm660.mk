#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit properties
$(call inherit-product, $(LOCAL_PATH)/properties.mk)
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

ifeq ($(ENABLE_APEX), true)
TARGET_SUPPORTS_UPDATABLE_APEX := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product-if-exists, vendor/prebuilts/config/apex.mk)
endif

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/xiaomi

# Dexpreopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep \
    Settings \
    SystemUI

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/system-privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/system_ext-privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-qti.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Adapt Launch 
PRODUCT_COPY_FILES += \
 $(LOCAL_PATH)/configs/lm/AdaptLaunchFeature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/lm/AdaptLaunchFeature.xml \

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.1-impl:32 \
    audio.a2dp.default \
    audio.primary.sdm660 \
    audio_amplifier.sdm660 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0-impl:32 \
    audio.bluetooth.default

PRODUCT_PACKAGES += \
    libhdmiedid \
    libhfp \
    libsndmonitor \
    libldacBT_dec \
    libbthost_if

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(LOCAL_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml

# Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.xiaomi_sdm660

PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# Bluetooth
PRODUCT_PACKAGES += \
    vendor.qti.hardware.btconfigstore@1.0.vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.4:64 \
    android.hardware.camera.device@3.5:64 \
    android.hardware.camera.provider@2.6:64 \
    android.hardware.camera.provider@2.4-impl:32 \
    android.hardware.camera.provider@2.4-service \
    libdng_sdk.vendor \
    vendor.qti.hardware.camera.device@1.0:64

# Component overrides
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/component-overrides.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/component-overrides.xml

# Display
PRODUCT_PACKAGES += \
    gralloc.sdm660 \
    hwcomposer.sdm660 \
    memtrack.sdm660 \
    libdisplayconfig \
    libdisplayconfig.qti \
    libdisplayconfig.qti.vendor \
    libtinyxml \
    libqdMetaData \
    libqdMetaData.vendor

PRODUCT_PACKAGES += \
    android.frameworks.displayservice@1.0_32 \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.allocator@3.0-impl \
    android.hardware.graphics.allocator@4.0-impl \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.renderscript@1.0-impl \
    android.frameworks.displayservice@1.0 \
    vendor.display.config@2.0 \
    vendor.display.config@2.0_vendor

# Doze
PRODUCT_PACKAGES += \
    XiaomiDoze

# DPM
PRODUCT_PACKAGES += \
    libshim_dpmframework

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl:64 \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey

# FM
ifeq ($(BOARD_HAVE_QCOM_FM),true)
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio \
    qcom.fmradio.xml
endif

# fwk-detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect.vendor

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1

PRODUCT_ODM_PROPERTIES += \
    ro.vendor.qti.va_odm.support=1

# Freeform Multiwindow
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml

# GPS / Location
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0-impl-qti \
    android.hardware.gnss@2.0-service-qti \
    libbatching \
    libgeofencing \
    libgnss \
    libsensorndkbridge \
    libwifi-hal-ctrl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf

# Hotword blobs
$(call inherit-product, vendor/xiaomi/google/google.mk)

# Healthd
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl-qti \
    android.hardware.health@2.1-service

ifneq ($(AB_OTA_UPDATER),true)
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery
endif

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/idc/uinput-goodix.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-goodix.idc

# Init
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.msm.usb.configfs.rc \
    init.performance_level.rc \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.recovery.qcom.rc \
    init.target.rc \
    init.qcom.power.rc \
    ueventd.qcom.rc \
    apex_metadata.rc

# Iorap
PRODUCT_PACKAGES += \
    iorap-app-startup-runner

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-goodix.kl

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_sdm660

# LiveDisplay native
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm \
    vendor.lineage.livedisplay@2.0-service-sysfs

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

PRODUCT_PACKAGES += \
    libavservices_minijail \
    libavservices_minijail.vendor \
    android.hardware.media.omx@1.0-impl

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libhypv_intercept \
    libmm-omxcore \
    libOmxCore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libOmxSwVencHevc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Pixel offline charging animation
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Perfd (dummy)
PRODUCT_PACKAGES += \
    libqti-perfd-client

# Power
PRODUCT_PACKAGES += \
    android.hardware.power.stats@1.0-service.mock \
    android.hardware.power-service-qti \
    vendor.qti.hardware.perf@2.0.vendor

PRODUCT_COPY_FILES += \ 
    $(LOCAL_PATH)/configs/perf/perf-profile0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile0.conf \ 
    $(LOCAL_PATH)/configs/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json \ 
    $(LOCAL_PATH)/configs/perf/perfconfigstore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfconfigstore.xml

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Low power Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

# QMI
PRODUCT_PACKAGES += \
    libjson

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0 \
    rild \
    librmnetctl \
    libprotobuf-cpp-full

PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/configs/seccomp_policy/mediaswcodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaswcodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl:64 \
    android.hardware.sensors@1.0-service \
    android.frameworks.sensorservice@1.0

# Tethering
PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# Speed profile services and wifi-service to reduce RAM and storage
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true 
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
USE_DEX2OAT_DEBUG := false PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
WITH_DEXPREOPT_DEBUG_INFO := false

# Tetheroffload
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl:64 \
    android.hardware.vibrator@1.0-service \
    android.frameworks.sensorservice@1.0

# VNDK
PRODUCT_PACKAGES += \
    vndk-ext

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    libwifi-hal-qcom \
    WifiOverlay \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

# WiFi Display
PRODUCT_PACKAGES += \
    libaacwrapper \
    libnl \
    libstagefright_enc_common

PRODUCT_BOOT_JARS += \
    WfdCommon

# Via
PRODUCT_PACKAGES += \
    Via

# Youtube by Vanced Team
PRODUCT_PACKAGES += \
    Youtube

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/Youtube/lib/arm64/libc++_shared.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libc++_shared.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libcronet.76.0.3786.0.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libcronet.81.0.4021.0.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libdrishti_jni_native.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libdrishti_jni_native.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libfilterframework_jni.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libfilterframework_jni.so \
    $(LOCAL_PATH)/Youtube/lib/arm64/libframesequence.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libframesequence.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libgvr.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libgvr.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libgvr_audio.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libgvr_audio.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libjsc.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libjsc.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libopusJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libopusJNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libopusV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libopusV2JNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libunified_template_resolver.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libunified_template_resolver.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libvpx.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libvpx.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libvpxV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libvpxV2JNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libvpxYTJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libvpxYTJNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libwebp_android.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libwebp_android.so \
	$(LOCAL_PATH)/Youtube/lib/arm64/libyoga.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libyoga.so \
    $(LOCAL_PATH)/Youtube/lib/arm/libc++_shared.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libc++_shared.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libcronet.76.0.3786.0.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libcronet.81.0.4021.0.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libdrishti_jni_native.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libdrishti_jni_native.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libfilterframework_jni.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libfilterframework_jni.so \
    $(LOCAL_PATH)/Youtube/lib/arm/libframesequence.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libframesequence.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libgvr.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libgvr.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libgvr_audio.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libgvr_audio.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libjsc.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libjsc.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libopusJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libopusJNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libopusV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libopusV2JNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libunified_template_resolver.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libunified_template_resolver.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libvpx.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libvpx.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libvpxV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libvpxV2JNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libvpxYTJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libvpxYTJNI.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libwebp_android.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libwebp_android.so \
	$(LOCAL_PATH)/Youtube/lib/arm/libyoga.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libyoga.so

# Soong
PRODUCT_BOARD_PLATFORM := sdm660
PRODUCT_USES_QCOM_HARDWARE := true

# Xiaomi Ringtone
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/MI.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/MI.ogg \
    $(LOCAL_PATH)/media/MiClassic.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/MiClassic.ogg \
    $(LOCAL_PATH)/media/MiMix.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/MiMix.ogg \
    $(LOCAL_PATH)/media/Mi.ogg:$(TARGET_COPY_OUT_PRODUCT)/system/media/audio/ringtones/Mi.ogg \
    $(LOCAL_PATH)/media/Fresh.ogg:$(TARGET_COPY_OUT_PRODUCT)/system/media/audio/notifications/Fresh.ogg

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/sdm660-common/sdm660-common-vendor.mk)
