# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Alipay
PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8996 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Camera
PRODUCT_PACKAGES += \
    Snap \
    libcamera_shim

# DASH
PRODUCT_PACKAGES += \
    dashd

# Display
PRODUCT_PACKAGES += \
    copybit.msm8996 \
    gralloc.msm8996 \
    hwcomposer.msm8996 \
    memtrack.msm8996 \
    liboverlay \
    libtinyxml

# Doze mode
PRODUCT_PACKAGES += \
    OneplusDoze

# Fingerprint sensor
PRODUCT_PACKAGES += \
    fingerprintd \
    OneplusPocketMode

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# GPS
PRODUCT_PACKAGES += \
    gps.msm8996 \
    libcurl \
    libgnsspps

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Lights
PRODUCT_PACKAGES += \
    lights.msm8996

# LiveDisplay native
PRODUCT_PACKAGES += \
    libjni_livedisplay

# Misc
PRODUCT_PACKAGES += \
    libloc_api_v02 \
    libsdm-disp-apis \
    libthermalclient \
    libtime_genoff \
    QtiTelephonyService \
    TimeService \
    datastatusnotification \
    embms \
    fastdormancy \
    shutdownlistener \
    CNEService \
    com.qualcomm.location \
    qcrilmsgtunnel \
    colorservice \
    ims \
    imssettings \
    qcnvitems \
    qcrilhook

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.nxp.nfc.nq \
    nfc_nci.nqx.default \
    NQNfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    Tag

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8996

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/powerhint.xml:system/etc/powerhint.xml

# QMI
PRODUCT_PACKAGES += \
    libjson

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.bt.sh \
    init.qcom.power.rc \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.target.rc \
    ueventd.qcom.rc

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_op3

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2 \
    libprotobuf-cpp-full

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8996

# Thermal
PRODUCT_PACKAGES += \
    thermal.msm8996

# VR
PRODUCT_PACKAGES += \
    vr.msm8996

# Wifi
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Keyhandler
PRODUCT_PACKAGES += \
    ConfigPanel \
    com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += \
    com.cyanogenmod.keyhandler

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/oneplus/oneplus3/overlay

# Alipay
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/ifaadaemon:system/bin/ifaadaemon \
    device/oneplus/oneplus3/prebuilt/lib/libteeclientjni.so:system/lib/libteeclientjni.so \
    device/oneplus/oneplus3/prebuilt/lib64/libteeclientjni.so:system/lib64/libteeclientjni.so

# ADSP
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/adsprpcd:system/bin/adsprpcd \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadsp_default_listener.so:system/vendor/lib/libadsp_default_listener.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadsp_hvx_callback_skel.so:system/vendor/lib/libadsp_hvx_callback_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadsp_hvx_stub.so:system/vendor/lib/libadsp_hvx_stub.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadsprpc.so:system/vendor/lib/libadsprpc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libfastcvadsp_stub.so:system/vendor/lib/libfastcvadsp_stub.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libfastcvopt.so:system/vendor/lib/libfastcvopt.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libadsp_default_listener.so:system/vendor/lib64/libadsp_default_listener.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libadsprpc.so:system/vendor/lib64/libadsprpc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libfastcvadsp_stub.so:system/vendor/lib64/libfastcvadsp_stub.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libfastcvopt.so:system/vendor/lib64/libfastcvopt.so

# ADSP modules
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libadsp_fd_skel.so:system/vendor/lib/rfsa/adsp/libadsp_fd_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libadsp_hvx_add_constant.so:system/vendor/lib/rfsa/adsp/libadsp_hvx_add_constant.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libadsp_hvx_skel.so:system/vendor/lib/rfsa/adsp/libadsp_hvx_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libadsp_hvx_stats.so:system/vendor/lib/rfsa/adsp/libadsp_hvx_stats.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libadsp_hvx_zzhdr_BGGR.so:system/vendor/lib/rfsa/adsp/libadsp_hvx_zzhdr_BGGR.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libadsp_hvx_zzhdr_RGGB.so:system/vendor/lib/rfsa/adsp/libadsp_hvx_zzhdr_RGGB.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libapps_mem_heap.so:system/vendor/lib/rfsa/adsp/libapps_mem_heap.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libdspCV_skel.so:system/vendor/lib/rfsa/adsp/libdspCV_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libfastcvadsp_skel.so:system/vendor/lib/rfsa/adsp/libfastcvadsp_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libfastcvadsp.so:system/vendor/lib/rfsa/adsp/libfastcvadsp.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libobjectMattingApp_skel.so:system/vendor/lib/rfsa/adsp/libobjectMattingApp_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libscveBlobDescriptor_skel.so:system/vendor/lib/rfsa/adsp/libscveBlobDescriptor_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libscveCleverCapture_skel.so:system/vendor/lib/rfsa/adsp/libscveCleverCapture_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libscveFaceRecognition_skel.so:system/vendor/lib/rfsa/adsp/libscveFaceRecognition_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libscveObjectSegmentation_skel.so:system/vendor/lib/rfsa/adsp/libscveObjectSegmentation_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libscveT2T_skel.so:system/vendor/lib/rfsa/adsp/libscveT2T_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libscveTextReco_skel.so:system/vendor/lib/rfsa/adsp/libscveTextReco_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libvpp_frc.so:system/vendor/lib/rfsa/adsp/libvpp_frc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/libvpp_svc_skel.so:system/vendor/lib/rfsa/adsp/libvpp_svc_skel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/rfsa/adsp/us-syncproximity.so:system/vendor/lib/rfsa/adsp/us-syncproximity.so

# ANT+ Config
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Audio
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/firmware/tfa98xx.cnt:system/etc/firmware/tfa98xx.cnt \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libacdb-fts.so:system/vendor/lib/libacdb-fts.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libacdbrtac.so:system/vendor/lib/libacdbrtac.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadiertac.so:system/vendor/lib/libadiertac.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadm.so:system/vendor/lib/libadm.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libaudiodevarb.so:system/vendor/lib/libaudiodevarb.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libacdb-fts.so:system/vendor/lib64/libacdb-fts.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libacdbloader.so:system/vendor/lib64/libacdbloader.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libacdbrtac.so:system/vendor/lib64/libacdbrtac.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libadiertac.so:system/vendor/lib64/libadiertac.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libaudcal.so:system/vendor/lib64/libaudcal.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libaudiodevarb.so:system/vendor/lib64/libaudiodevarb.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/soundfx/libqcbassboost.so:system/vendor/lib64/soundfx/libqcbassboost.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/soundfx/libqcreverb.so:system/vendor/lib64/soundfx/libqcreverb.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/soundfx/libqcvirt.so:system/vendor/lib64/soundfx/libqcvirt.so

# Audio ACDB
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    device/oneplus/oneplus3/prebuilt/etc/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    device/oneplus/oneplus3/prebuilt/etc/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    device/oneplus/oneplus3/prebuilt/etc/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    device/oneplus/oneplus3/prebuilt/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    device/oneplus/oneplus3/prebuilt/etc/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    device/oneplus/oneplus3/prebuilt/etc/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb

# Audio Config
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/oneplus/oneplus3/prebuilt/vendor/etc/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    device/oneplus/oneplus3/prebuilt/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/oneplus/oneplus3/prebuilt/etc/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    device/oneplus/oneplus3/prebuilt/etc/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    device/oneplus/oneplus3/prebuilt/etc/mixer_paths_tasha.xml:system/etc/mixer_paths_tasha.xml \
    device/oneplus/oneplus3/prebuilt/etc/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    device/oneplus/oneplus3/prebuilt/etc/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/oneplus/oneplus3/prebuilt/etc/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Audio Policy
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/btnvtool:system/bin/btnvtool \
    device/oneplus/oneplus3/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/oneplus/oneplus3/prebuilt/bin/wcnss_filter:system/bin/wcnss_filter \
    device/oneplus/oneplus3/prebuilt/etc/firmware/nvm_tlv_1.3.bin:system/etc/firmware/nvm_tlv_1.3.bin \
    device/oneplus/oneplus3/prebuilt/etc/firmware/nvm_tlv_2.1.bin:system/etc/firmware/nvm_tlv_2.1.bin \
    device/oneplus/oneplus3/prebuilt/etc/firmware/nvm_tlv_3.0.bin:system/etc/firmware/nvm_tlv_3.0.bin \
    device/oneplus/oneplus3/prebuilt/etc/firmware/nvm_tlv_3.2.bin:system/etc/firmware/nvm_tlv_3.2.bin \
    device/oneplus/oneplus3/prebuilt/etc/firmware/nvm_tlv.bin:system/etc/firmware/nvm_tlv.bin \
    device/oneplus/oneplus3/prebuilt/etc/firmware/rampatch_tlv_1.3.tlv:system/etc/firmware/rampatch_tlv_1.3.tlv \
    device/oneplus/oneplus3/prebuilt/etc/firmware/rampatch_tlv_2.1.tlv:system/etc/firmware/rampatch_tlv_2.1.tlv \
    device/oneplus/oneplus3/prebuilt/etc/firmware/rampatch_tlv_3.0.tlv:system/etc/firmware/rampatch_tlv_3.0.tlv \
    device/oneplus/oneplus3/prebuilt/etc/firmware/rampatch_tlv_3.2.tlv:system/etc/firmware/rampatch_tlv_3.2.tlv \
    device/oneplus/oneplus3/prebuilt/etc/firmware/rampatch_tlv.img:system/etc/firmware/rampatch_tlv.img \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libaptX-1.0.0-rel-Android21-ARMv7A.so:system/vendor/lib/libaptX-1.0.0-rel-Android21-ARMv7A.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libaptXHD-1.0.0-rel-Android21-ARMv7A.so:system/vendor/lib/libaptXHD-1.0.0-rel-Android21-ARMv7A.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libaptXScheduler.so:system/vendor/lib/libaptXScheduler.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libbtnv.so:system/vendor/lib/libbtnv.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libbtnv.so:system/vendor/lib64/libbtnv.so

# Bluetooth Config
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/bluetooth/iot_devlist.conf:system/etc/bluetooth/iot_devlist.conf

# Camera
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/oneplus/oneplus3/prebuilt/etc/camera/camera_config.xml:system/etc/camera/camera_config.xml \
    device/oneplus/oneplus3/prebuilt/etc/camera/csidtg_camera.xml:system/etc/camera/csidtg_camera.xml \
    device/oneplus/oneplus3/prebuilt/etc/camera/csidtg_chromatix.xml:system/etc/camera/csidtg_chromatix.xml \
    device/oneplus/oneplus3/prebuilt/etc/camera/imx179_chromatix.xml:system/etc/camera/imx179_chromatix.xml \
    device/oneplus/oneplus3/prebuilt/etc/camera/imx298_chromatix.xml:system/etc/camera/imx298_chromatix.xml \
    device/oneplus/oneplus3/prebuilt/etc/camera/s5k3p8_chromatix.xml:system/etc/camera/s5k3p8_chromatix.xml \
    device/oneplus/oneplus3/prebuilt/etc/camera/s5k3p8sp_chromatix.xml:system/etc/camera/s5k3p8sp_chromatix.xml \
    device/oneplus/oneplus3/prebuilt/lib/hw/camera.msm8996.so:system/lib/hw/camera.msm8996.so \
    device/oneplus/oneplus3/prebuilt/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    device/oneplus/oneplus3/prebuilt/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    device/oneplus/oneplus3/prebuilt/lib/libqomx_core.so:system/lib/libqomx_core.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromaflash.so:system/vendor/lib/libchromaflash.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libflash_pmic.so:system/vendor/lib/libflash_pmic.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libjpegdhw.so:system/vendor/lib/libjpegdhw.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libjpegdmahw.so:system/vendor/lib/libjpegdmahw.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libjpegehw.so:system/vendor/lib/libjpegehw.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_chromaflash_lib.so:system/vendor/lib/libmmcamera_chromaflash_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_dbg.so:system/vendor/lib/libmmcamera_dbg.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_dummyalgo.so:system/vendor/lib/libmmcamera_dummyalgo.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_eebinparse.so:system/vendor/lib/libmmcamera_eebinparse.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_eeprom_util.so:system/vendor/lib/libmmcamera_eeprom_util.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_eztune_module.so:system/vendor/lib/libmmcamera_eztune_module.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_facedetection_lib.so:system/vendor/lib/libmmcamera_facedetection_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_faceproc.so:system/vendor/lib/libmmcamera_faceproc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_faceproc2.so:system/vendor/lib/libmmcamera_faceproc2.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_hdr_gb_lib.so:system/vendor/lib/libmmcamera_hdr_gb_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_hvx_add_constant.so:system/vendor/lib/libmmcamera_hvx_add_constant.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_hvx_grid_sum.so:system/vendor/lib/libmmcamera_hvx_grid_sum.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_hvx_zzHDR.so:system/vendor/lib/libmmcamera_hvx_zzHDR.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_imglib_faceproc_adspstub.so:system/vendor/lib/libmmcamera_imglib_faceproc_adspstub.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_imglib.so:system/vendor/lib/libmmcamera_imglib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_imx179.so:system/vendor/lib/libmmcamera_imx179.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_imx298.so:system/vendor/lib/libmmcamera_imx298.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_llvd.so:system/vendor/lib/libmmcamera_llvd.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_optizoom_lib.so:system/vendor/lib/libmmcamera_optizoom_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_paaf_lib.so:system/vendor/lib/libmmcamera_paaf_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_pdaf.so:system/vendor/lib/libmmcamera_pdaf.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_pdafcamif.so:system/vendor/lib/libmmcamera_pdafcamif.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_ppbase_module.so:system/vendor/lib/libmmcamera_ppbase_module.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_ppeiscore.so:system/vendor/lib/libmmcamera_ppeiscore.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_quadracfa.so:system/vendor/lib/libmmcamera_quadracfa.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_s5k3p8.so:system/vendor/lib/libmmcamera_s5k3p8.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_s5k3p8sp_m24c64s_eeprom.so:system/vendor/lib/libmmcamera_s5k3p8sp_m24c64s_eeprom.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_s5k3p8sp.so:system/vendor/lib/libmmcamera_s5k3p8sp.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_sony_imx179_eeprom.so:system/vendor/lib/libmmcamera_sony_imx179_eeprom.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_sony_imx298_eeprom.so:system/vendor/lib/libmmcamera_sony_imx298_eeprom.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_stillmore_lib.so:system/vendor/lib/libmmcamera_stillmore_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_sw2d_lib.so:system/vendor/lib/libmmcamera_sw2d_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_thread_services.so:system/vendor/lib/libmmcamera_thread_services.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_tintless_algo.so:system/vendor/lib/libmmcamera_tintless_algo.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_tintless_bg_pca_algo.so:system/vendor/lib/libmmcamera_tintless_bg_pca_algo.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_trueportrait_lib.so:system/vendor/lib/libmmcamera_trueportrait_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_tuning_lookup.so:system/vendor/lib/libmmcamera_tuning_lookup.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_tuning.so:system/vendor/lib/libmmcamera_tuning.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_ubifocus_lib.so:system/vendor/lib/libmmcamera_ubifocus_lib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_c2d_module.so:system/vendor/lib/libmmcamera2_c2d_module.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_cpp_module.so:system/vendor/lib/libmmcamera2_cpp_module.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_frame_algorithm.so:system/vendor/lib/libmmcamera2_frame_algorithm.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_iface_modules.so:system/vendor/lib/libmmcamera2_iface_modules.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_imglib_modules.so:system/vendor/lib/libmmcamera2_imglib_modules.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_is.so:system/vendor/lib/libmmcamera2_is.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_isp_modules.so:system/vendor/lib/libmmcamera2_isp_modules.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_mct_shimlayer.so:system/vendor/lib/libmmcamera2_mct_shimlayer.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_mct.so:system/vendor/lib/libmmcamera2_mct.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_pp_buf_mgr.so:system/vendor/lib/libmmcamera2_pp_buf_mgr.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_pproc_modules.so:system/vendor/lib/libmmcamera2_pproc_modules.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_q3a_core.so:system/vendor/lib/libmmcamera2_q3a_core.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_sensor_modules.so:system/vendor/lib/libmmcamera2_sensor_modules.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_stats_algorithm.so:system/vendor/lib/libmmcamera2_stats_algorithm.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera2_stats_modules.so:system/vendor/lib/libmmcamera2_stats_modules.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmjpeg.so:system/vendor/lib/libmmjpeg.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmqjpeg_codec.so:system/vendor/lib/libmmqjpeg_codec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmqjpegdma.so:system/vendor/lib/libmmqjpegdma.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libois_rohm_bu63165gwl.so:system/vendor/lib/libois_rohm_bu63165gwl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/liboptizoom.so:system/vendor/lib/liboptizoom.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqomx_jpegdec.so:system/vendor/lib/libqomx_jpegdec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqomx_jpegenc_pipe.so:system/vendor/lib/libqomx_jpegenc_pipe.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqomx_jpegenc.so:system/vendor/lib/libqomx_jpegenc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libseemore.so:system/vendor/lib/libseemore.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libSonyIMX298PdafLibrary.so:system/vendor/lib/libSonyIMX298PdafLibrary.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libtrueportrait.so:system/vendor/lib/libtrueportrait.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libubifocus.so:system/vendor/lib/libubifocus.so

# Camera actuators
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libactuator_rohm_bu63165gwl.so:system/vendor/lib/libactuator_rohm_bu63165gwl.so

# Camera chromatix
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_preview_x3.so:system/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_preview_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_preview.so:system/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_video_x3.so:system/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_video_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_video.so:system/vendor/lib/libchromatix_imx179_3a_1640x924_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_preview_x3.so:system/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_preview_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_preview.so:system/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_video_x3.so:system/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_video_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_video.so:system/vendor/lib/libchromatix_imx179_3a_3280x1846_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_facebeauty_x3.so:system/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_facebeauty_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_facebeauty.so:system/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_facebeauty.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_preview_x3.so:system/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_preview_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_preview.so:system/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_video_x3.so:system/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_video_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_video.so:system/vendor/lib/libchromatix_imx179_3a_3280x2464_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_common.so:system/vendor/lib/libchromatix_imx179_common.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_1640x924_30fps_preview.so:system/vendor/lib/libchromatix_imx179_cpp_1640x924_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_1640x924_30fps_snapshot.so:system/vendor/lib/libchromatix_imx179_cpp_1640x924_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_1640x924_30fps_video.so:system/vendor/lib/libchromatix_imx179_cpp_1640x924_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x1846_30fps_preview.so:system/vendor/lib/libchromatix_imx179_cpp_3280x1846_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x1846_30fps_snapshot.so:system/vendor/lib/libchromatix_imx179_cpp_3280x1846_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x1846_30fps_video.so:system/vendor/lib/libchromatix_imx179_cpp_3280x1846_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_facebeauty.so:system/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_facebeauty.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_nomultiframe.so:system/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_nomultiframe.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_preview.so:system/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_snapshot.so:system/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_video.so:system/vendor/lib/libchromatix_imx179_cpp_3280x2464_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_preview_x3.so:system/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_preview_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_preview.so:system/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_snapshot_x3.so:system/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_snapshot_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_snapshot.so:system/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_video_x3.so:system/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_video_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_video.so:system/vendor/lib/libchromatix_imx179_isp_1640x924_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_preview_x3.so:system/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_preview_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_preview.so:system/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_snapshot_x3.so:system/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_snapshot_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_snapshot.so:system/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_video_x3.so:system/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_video_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_video.so:system/vendor/lib/libchromatix_imx179_isp_3280x1846_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_facebeauty_x3.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_facebeauty_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_facebeauty.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_facebeauty.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_preview_x3.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_preview_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_preview.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_snapshot_x3.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_snapshot_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_snapshot.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_video_x3.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_video_x3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_video.so:system/vendor/lib/libchromatix_imx179_isp_3280x2464_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx179_postproc.so:system/vendor/lib/libchromatix_imx179_postproc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_3a_clearshot_s.so:system/vendor/lib/libchromatix_imx298_3a_clearshot_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_3a_clearshot.so:system/vendor/lib/libchromatix_imx298_3a_clearshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_3a_HDR_s.so:system/vendor/lib/libchromatix_imx298_3a_HDR_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_3a_HDR.so:system/vendor/lib/libchromatix_imx298_3a_HDR.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_3a_panorama_s.so:system/vendor/lib/libchromatix_imx298_3a_panorama_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_3a_panorama.so:system/vendor/lib/libchromatix_imx298_3a_panorama.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_4K_preview_s.so:system/vendor/lib/libchromatix_imx298_4K_preview_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_4K_preview.so:system/vendor/lib/libchromatix_imx298_4K_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_4K_video_s.so:system/vendor/lib/libchromatix_imx298_4K_video_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_4K_video.so:system/vendor/lib/libchromatix_imx298_4K_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_common_60fps.so:system/vendor/lib/libchromatix_imx298_common_60fps.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_common_clearshot.so:system/vendor/lib/libchromatix_imx298_common_clearshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_common_manual.so:system/vendor/lib/libchromatix_imx298_common_manual.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_common.so:system/vendor/lib/libchromatix_imx298_common.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_hfr_120.so:system/vendor/lib/libchromatix_imx298_cpp_hfr_120.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_hfr_60.so:system/vendor/lib/libchromatix_imx298_cpp_hfr_60.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_hfr_90.so:system/vendor/lib/libchromatix_imx298_cpp_hfr_90.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_panorama_preview.so:system/vendor/lib/libchromatix_imx298_cpp_panorama_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_panorama_snapshot.so:system/vendor/lib/libchromatix_imx298_cpp_panorama_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_preview.so:system/vendor/lib/libchromatix_imx298_cpp_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_snapshot_clearshot.so:system/vendor/lib/libchromatix_imx298_cpp_snapshot_clearshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_snapshot_flash.so:system/vendor/lib/libchromatix_imx298_cpp_snapshot_flash.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_snapshot_hdr.so:system/vendor/lib/libchromatix_imx298_cpp_snapshot_hdr.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_snapshot_manual.so:system/vendor/lib/libchromatix_imx298_cpp_snapshot_manual.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_snapshot_nomultiframe.so:system/vendor/lib/libchromatix_imx298_cpp_snapshot_nomultiframe.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_snapshot.so:system/vendor/lib/libchromatix_imx298_cpp_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_video_4k.so:system/vendor/lib/libchromatix_imx298_cpp_video_4k.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_video_preview.so:system/vendor/lib/libchromatix_imx298_cpp_video_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_cpp_video.so:system/vendor/lib/libchromatix_imx298_cpp_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_default_preview_s.so:system/vendor/lib/libchromatix_imx298_default_preview_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_default_preview.so:system/vendor/lib/libchromatix_imx298_default_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_default_video_s.so:system/vendor/lib/libchromatix_imx298_default_video_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_default_video.so:system/vendor/lib/libchromatix_imx298_default_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_120_3a_s.so:system/vendor/lib/libchromatix_imx298_hfr_120_3a_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_120_3a.so:system/vendor/lib/libchromatix_imx298_hfr_120_3a.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_120.so:system/vendor/lib/libchromatix_imx298_hfr_120.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_60_3a_s.so:system/vendor/lib/libchromatix_imx298_hfr_60_3a_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_60_3a.so:system/vendor/lib/libchromatix_imx298_hfr_60_3a.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_60.so:system/vendor/lib/libchromatix_imx298_hfr_60.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_90_3a_s.so:system/vendor/lib/libchromatix_imx298_hfr_90_3a_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_90_3a.so:system/vendor/lib/libchromatix_imx298_hfr_90_3a.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_hfr_90.so:system/vendor/lib/libchromatix_imx298_hfr_90.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_isp_panorama.so:system/vendor/lib/libchromatix_imx298_isp_panorama.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_postproc.so:system/vendor/lib/libchromatix_imx298_postproc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_preview.so:system/vendor/lib/libchromatix_imx298_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_snapshot.so:system/vendor/lib/libchromatix_imx298_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_video.so:system/vendor/lib/libchromatix_imx298_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_zsl_preview_s.so:system/vendor/lib/libchromatix_imx298_zsl_preview_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_zsl_preview.so:system/vendor/lib/libchromatix_imx298_zsl_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_zsl_video_s.so:system/vendor/lib/libchromatix_imx298_zsl_video_s.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_imx298_zsl_video.so:system/vendor/lib/libchromatix_imx298_zsl_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_common.so:system/vendor/lib/libchromatix_s5k3p8_common.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_cpp_hfr_120.so:system/vendor/lib/libchromatix_s5k3p8_cpp_hfr_120.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_cpp_hfr_60.so:system/vendor/lib/libchromatix_s5k3p8_cpp_hfr_60.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_cpp_hfr_90.so:system/vendor/lib/libchromatix_s5k3p8_cpp_hfr_90.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_cpp_liveshot.so:system/vendor/lib/libchromatix_s5k3p8_cpp_liveshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_cpp_preview.so:system/vendor/lib/libchromatix_s5k3p8_cpp_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_cpp_snapshot.so:system/vendor/lib/libchromatix_s5k3p8_cpp_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_cpp_video.so:system/vendor/lib/libchromatix_s5k3p8_cpp_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_default_preview_bu64297.so:system/vendor/lib/libchromatix_s5k3p8_default_preview_bu64297.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_default_video_bu64297.so:system/vendor/lib/libchromatix_s5k3p8_default_video_bu64297.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_default_video.so:system/vendor/lib/libchromatix_s5k3p8_default_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_hfr_120_bu64297.so:system/vendor/lib/libchromatix_s5k3p8_hfr_120_bu64297.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_hfr_120.so:system/vendor/lib/libchromatix_s5k3p8_hfr_120.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_hfr_60_bu64297.so:system/vendor/lib/libchromatix_s5k3p8_hfr_60_bu64297.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_hfr_60.so:system/vendor/lib/libchromatix_s5k3p8_hfr_60.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_hfr_90_bu64297.so:system/vendor/lib/libchromatix_s5k3p8_hfr_90_bu64297.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_hfr_90.so:system/vendor/lib/libchromatix_s5k3p8_hfr_90.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_postproc.so:system/vendor/lib/libchromatix_s5k3p8_postproc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_preview.so:system/vendor/lib/libchromatix_s5k3p8_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_snapshot.so:system/vendor/lib/libchromatix_s5k3p8_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_zsl_preview_bu64297.so:system/vendor/lib/libchromatix_s5k3p8_zsl_preview_bu64297.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8_zsl_video_bu64297.so:system/vendor/lib/libchromatix_s5k3p8_zsl_video_bu64297.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_3a_2304x1728_30fps_preview.so:system/vendor/lib/libchromatix_s5k3p8sp_3a_2304x1728_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_3a_2304x1728_30fps_video.so:system/vendor/lib/libchromatix_s5k3p8sp_3a_2304x1728_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_3a_4608x3456_30fps_preview.so:system/vendor/lib/libchromatix_s5k3p8sp_3a_4608x3456_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_3a_4608x3456_30fps_video.so:system/vendor/lib/libchromatix_s5k3p8sp_3a_4608x3456_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_common_2304x1728.so:system/vendor/lib/libchromatix_s5k3p8sp_common_2304x1728.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_common_4608x3456.so:system/vendor/lib/libchromatix_s5k3p8sp_common_4608x3456.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_liveshot.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_liveshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_preview.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_snapshot.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_video.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_2304x1728_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_liveshot.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_liveshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_preview.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_snapshot.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_video.so:system/vendor/lib/libchromatix_s5k3p8sp_cpp_4608x3456_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_isp_2304x1728_30fps_preview.so:system/vendor/lib/libchromatix_s5k3p8sp_isp_2304x1728_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_isp_2304x1728_30fps_snapshot.so:system/vendor/lib/libchromatix_s5k3p8sp_isp_2304x1728_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_isp_2304x1728_30fps_video.so:system/vendor/lib/libchromatix_s5k3p8sp_isp_2304x1728_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_isp_4608x3456_30fps_preview.so:system/vendor/lib/libchromatix_s5k3p8sp_isp_4608x3456_30fps_preview.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_isp_4608x3456_30fps_snapshot.so:system/vendor/lib/libchromatix_s5k3p8sp_isp_4608x3456_30fps_snapshot.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_isp_4608x3456_30fps_video.so:system/vendor/lib/libchromatix_s5k3p8sp_isp_4608x3456_30fps_video.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libchromatix_s5k3p8sp_postproc.so:system/vendor/lib/libchromatix_s5k3p8sp_postproc.so

# Camera postprocessing
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/remosaic_daemon:system/bin/remosaic_daemon \
    device/oneplus/oneplus3/prebuilt/etc/fsync_db.config:system/etc/fsync_db.config \
    device/oneplus/oneplus3/prebuilt/etc/GyroOffset_db.config:system/etc/GyroOffset_db.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3_vstab_db_1080p_video_0.config:system/etc/oneplus3_vstab_db_1080p_video_0.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3_vstab_db_1080p_video_1.config:system/etc/oneplus3_vstab_db_1080p_video_1.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3_vstab_db_720p_video_0.config:system/etc/oneplus3_vstab_db_720p_video_0.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3_vstab_db_720p_video_1.config:system/etc/oneplus3_vstab_db_720p_video_1.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3T_vstab_db_1080p_video_0.config:system/etc/oneplus3T_vstab_db_1080p_video_0.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3T_vstab_db_1080p_video_1.config:system/etc/oneplus3T_vstab_db_1080p_video_1.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3T_vstab_db_720p_video_0.config:system/etc/oneplus3T_vstab_db_720p_video_0.config \
    device/oneplus/oneplus3/prebuilt/etc/oneplus3T_vstab_db_720p_video_1.config:system/etc/oneplus3T_vstab_db_720p_video_1.config \
    device/oneplus/oneplus3/prebuilt/lib/lib_oneplus_facebeauty.so:system/lib/lib_oneplus_facebeauty.so \
    device/oneplus/oneplus3/prebuilt/lib/lib_oneplus_md.so:system/lib/lib_oneplus_md.so \
    device/oneplus/oneplus3/prebuilt/lib/lib_oneplus_watermark.so:system/lib/lib_oneplus_watermark.so \
    device/oneplus/oneplus3/prebuilt/lib/libFNVfbEngineHAL.so:system/lib/libFNVfbEngineHAL.so \
    device/oneplus/oneplus3/prebuilt/lib/libmms_gyro_vstab_auth.so:system/lib/libmms_gyro_vstab_auth.so \
    device/oneplus/oneplus3/prebuilt/lib/libmms_gyro_vstab.so:system/lib/libmms_gyro_vstab.so \
    device/oneplus/oneplus3/prebuilt/lib/libmms_hal_vstab.so:system/lib/libmms_hal_vstab.so \
    device/oneplus/oneplus3/prebuilt/lib/libmms_warper_vstab.so:system/lib/libmms_warper_vstab.so \
    device/oneplus/oneplus3/prebuilt/lib/libmorpho_image_stab4.so:system/lib/libmorpho_image_stab4.so \
    device/oneplus/oneplus3/prebuilt/lib/libmorpho_video_refiner.so:system/lib/libmorpho_video_refiner.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_calib3d.so:system/lib/libop_calib3d.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_carotene.so:system/lib/libop_carotene.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_core.so:system/lib/libop_core.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_face.so:system/lib/libop_face.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_features2d.so:system/lib/libop_features2d.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_flann.so:system/lib/libop_flann.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_fuzzy.so:system/lib/libop_fuzzy.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_gpu.so:system/lib/libop_gpu.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_highgui.so:system/lib/libop_highgui.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_imgcodecs.so:system/lib/libop_imgcodecs.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_imgproc.so:system/lib/libop_imgproc.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_jasper.so:system/lib/libop_jasper.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_jpeg.so:system/lib/libop_jpeg.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_ml.so:system/lib/libop_ml.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_objdetect.so:system/lib/libop_objdetect.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_openexr.so:system/lib/libop_openexr.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_openxv.so:system/lib/libop_openxv.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_optflow.so:system/lib/libop_optflow.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_photo.so:system/lib/libop_photo.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_png.so:system/lib/libop_png.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_shape.so:system/lib/libop_shape.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_stitching.so:system/lib/libop_stitching.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_structure_light.so:system/lib/libop_structure_light.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_superpixel.so:system/lib/libop_superpixel.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_superres.so:system/lib/libop_superres.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_surface_matching.so:system/lib/libop_surface_matching.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_tiff.so:system/lib/libop_tiff.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_ts.so:system/lib/libop_ts.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_video.so:system/lib/libop_video.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_videoio.so:system/lib/libop_videoio.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_videostab.so:system/lib/libop_videostab.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_world.so:system/lib/libop_world.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_xfeatures2d.so:system/lib/libop_xfeatures2d.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_ximgproc.so:system/lib/libop_ximgproc.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_xobjdetect.so:system/lib/libop_xobjdetect.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_xphoto.so:system/lib/libop_xphoto.so \
    device/oneplus/oneplus3/prebuilt/lib/libop_zlib.so:system/lib/libop_zlib.so \
    device/oneplus/oneplus3/prebuilt/lib/libopcamera_crypt.so:system/lib/libopcamera_crypt.so \
    device/oneplus/oneplus3/prebuilt/lib/libopcamera_native_modules.so:system/lib/libopcamera_native_modules.so \
    device/oneplus/oneplus3/prebuilt/lib/libopcamera.so:system/lib/libopcamera.so \
    device/oneplus/oneplus3/prebuilt/lib/libopcameralib.so:system/lib/libopcameralib.so \
    device/oneplus/oneplus3/prebuilt/lib/libSensorManagerHAL.so:system/lib/libSensorManagerHAL.so \
    device/oneplus/oneplus3/prebuilt/lib/qpd_dspcl_v2.bin:system/lib/qpd_dspcl_v2.bin \
    device/oneplus/oneplus3/prebuilt/lib/TC_Bayer_Converter_v6_core_opt.bin:system/lib/TC_Bayer_Converter_v6_core_opt.bin \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libremosaic_daemon.so:system/vendor/lib/libremosaic_daemon.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libremosaic_tuning.so:system/vendor/lib/libremosaic_tuning.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libremosaiclib.so:system/vendor/lib/libremosaiclib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libremosaic_daemon.so:system/vendor/lib64/libremosaic_daemon.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libremosaic_tuning.so:system/vendor/lib64/libremosaic_tuning.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libremosaiclib.so:system/vendor/lib64/libremosaiclib.so

# Camera / DSP - Hexagon libraries
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/lib/rfsa/adsp/libmorpho_image_stabilizer4_hvx_skel.so:system/lib/rfsa/adsp/libmorpho_image_stabilizer4_hvx_skel.so \
    device/oneplus/oneplus3/prebuilt/lib/rfsa/adsp/libmorpho_video_denoiser_hvx_skel.so:system/lib/rfsa/adsp/libmorpho_video_denoiser_hvx_skel.so

# Camera firmware
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_10_0.fw:system/etc/firmware/cpp_firmware_v1_10_0.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_12_0.fw:system/etc/firmware/cpp_firmware_v1_12_0.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_4_0.fw:system/etc/firmware/cpp_firmware_v1_4_0.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_5_0.fw:system/etc/firmware/cpp_firmware_v1_5_0.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_5_2.fw:system/etc/firmware/cpp_firmware_v1_5_2.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_6_0.fw:system/etc/firmware/cpp_firmware_v1_6_0.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/cpp_firmware_v1_8_0.fw:system/etc/firmware/cpp_firmware_v1_8_0.fw

# Camera sensors
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_abf47.so:system/vendor/lib/libmmcamera_isp_abf47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_aec_bg_stats47.so:system/vendor/lib/libmmcamera_isp_aec_bg_stats47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_bf_stats47.so:system/vendor/lib/libmmcamera_isp_bf_stats47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_bg_stats46.so:system/vendor/lib/libmmcamera_isp_bg_stats46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_bhist_stats44.so:system/vendor/lib/libmmcamera_isp_bhist_stats44.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_black_level47.so:system/vendor/lib/libmmcamera_isp_black_level47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_bpc47.so:system/vendor/lib/libmmcamera_isp_bpc47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_cac47.so:system/vendor/lib/libmmcamera_isp_cac47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_chroma_enhan40.so:system/vendor/lib/libmmcamera_isp_chroma_enhan40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_chroma_suppress40.so:system/vendor/lib/libmmcamera_isp_chroma_suppress40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_clamp_encoder40.so:system/vendor/lib/libmmcamera_isp_clamp_encoder40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_clamp_video40.so:system/vendor/lib/libmmcamera_isp_clamp_video40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_clamp_viewfinder40.so:system/vendor/lib/libmmcamera_isp_clamp_viewfinder40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_color_correct46.so:system/vendor/lib/libmmcamera_isp_color_correct46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_color_xform_encoder46.so:system/vendor/lib/libmmcamera_isp_color_xform_encoder46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_color_xform_video46.so:system/vendor/lib/libmmcamera_isp_color_xform_video46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_color_xform_viewfinder46.so:system/vendor/lib/libmmcamera_isp_color_xform_viewfinder46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_cs_stats46.so:system/vendor/lib/libmmcamera_isp_cs_stats46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_demosaic47.so:system/vendor/lib/libmmcamera_isp_demosaic47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_demux40.so:system/vendor/lib/libmmcamera_isp_demux40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_fovcrop_encoder46.so:system/vendor/lib/libmmcamera_isp_fovcrop_encoder46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_fovcrop_video46.so:system/vendor/lib/libmmcamera_isp_fovcrop_video46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_fovcrop_viewfinder46.so:system/vendor/lib/libmmcamera_isp_fovcrop_viewfinder46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_gamma44.so:system/vendor/lib/libmmcamera_isp_gamma44.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_gic46.so:system/vendor/lib/libmmcamera_isp_gic46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_gtm46.so:system/vendor/lib/libmmcamera_isp_gtm46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_hdr_be_stats46.so:system/vendor/lib/libmmcamera_isp_hdr_be_stats46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_hdr46.so:system/vendor/lib/libmmcamera_isp_hdr46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_ihist_stats46.so:system/vendor/lib/libmmcamera_isp_ihist_stats46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_linearization40.so:system/vendor/lib/libmmcamera_isp_linearization40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_ltm47.so:system/vendor/lib/libmmcamera_isp_ltm47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_mce40.so:system/vendor/lib/libmmcamera_isp_mce40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_mesh_rolloff44.so:system/vendor/lib/libmmcamera_isp_mesh_rolloff44.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_pedestal_correct46.so:system/vendor/lib/libmmcamera_isp_pedestal_correct46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_rs_stats46.so:system/vendor/lib/libmmcamera_isp_rs_stats46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_scaler_encoder46.so:system/vendor/lib/libmmcamera_isp_scaler_encoder46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_scaler_video46.so:system/vendor/lib/libmmcamera_isp_scaler_video46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_scaler_viewfinder46.so:system/vendor/lib/libmmcamera_isp_scaler_viewfinder46.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_sce40.so:system/vendor/lib/libmmcamera_isp_sce40.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_snr47.so:system/vendor/lib/libmmcamera_isp_snr47.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmcamera_isp_sub_module.so:system/vendor/lib/libmmcamera_isp_sub_module.so

# CNE
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/cnd:system/bin/cnd \
    device/oneplus/oneplus3/prebuilt/etc/permissions/com.quicinc.cne.xml:system/etc/permissions/com.quicinc.cne.xml \
    device/oneplus/oneplus3/prebuilt/framework/com.quicinc.cne.jar:system/framework/com.quicinc.cne.jar \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libcne.so:system/vendor/lib/libcne.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libcneapiclient.so:system/vendor/lib/libcneapiclient.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libcneqmiutils.so:system/vendor/lib/libcneqmiutils.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libconnctrl.so:system/vendor/lib/libconnctrl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libwms.so:system/vendor/lib/libwms.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libxml.so:system/vendor/lib/libxml.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libcne.so:system/vendor/lib64/libcne.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libcneapiclient.so:system/vendor/lib64/libcneapiclient.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libcneqmiutils.so:system/vendor/lib64/libcneqmiutils.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libconnctrl.so:system/vendor/lib64/libconnctrl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libwms.so:system/vendor/lib64/libwms.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libxml.so:system/vendor/lib64/libxml.so

# Display calibration
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/FOSSConfig.xml:system/etc/FOSSConfig.xml \
    device/oneplus/oneplus3/prebuilt/etc/qdcm_calib_data_samsung_s6e3fa3_1080p_cmd_mode_dsi_panel.xml:system/etc/qdcm_calib_data_samsung_s6e3fa3_1080p_cmd_mode_dsi_panel.xml \
    device/oneplus/oneplus3/prebuilt/etc/qdcm_calib_data_samsung_s6e3fa5_1080p_cmd_mode_dsi_panel.xml:system/etc/qdcm_calib_data_samsung_s6e3fa5_1080p_cmd_mode_dsi_panel.xml

# DRM
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/oneplus/oneplus3/prebuilt/vendor/bin/qseeproxydaemon:system/vendor/bin/qseeproxydaemon \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-sec-disp.so:system/vendor/lib64/lib-sec-disp.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdrmfs.so:system/vendor/lib64/libdrmfs.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdrmtime.so:system/vendor/lib64/libdrmtime.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libGPreqcancel_svc.so:system/vendor/lib64/libGPreqcancel_svc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libGPreqcancel.so:system/vendor/lib64/libGPreqcancel.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqisl.so:system/vendor/lib64/libqisl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libQSEEComAPI.so:system/vendor/lib64/libQSEEComAPI.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/librpmb.so:system/vendor/lib64/librpmb.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsecureui_svcsock.so:system/vendor/lib64/libsecureui_svcsock.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsecureui.so:system/vendor/lib64/libsecureui.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libSecureUILib.so:system/vendor/lib64/libSecureUILib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libssd.so:system/vendor/lib64/libssd.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libStDrvInt.so:system/vendor/lib64/libStDrvInt.so

# Fingerprint sensor
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/qfp-daemon:system/bin/qfp-daemon \
    device/oneplus/oneplus3/prebuilt/lib64/hw/fingerprint.msm8996.so:system/lib64/hw/fingerprint.msm8996.so \
    device/oneplus/oneplus3/prebuilt/lib64/lib_fpc_tac_shared.so:system/lib64/lib_fpc_tac_shared.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqfp-service.so:system/vendor/lib64/libqfp-service.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/qfp.wakeup.so:system/vendor/lib64/qfp.wakeup.so

# Gatekeeper
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/hw/gatekeeper.msm8996.so:system/vendor/lib/hw/gatekeeper.msm8996.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/hw/gatekeeper.msm8996.so:system/vendor/lib64/hw/gatekeeper.msm8996.so

# GPS
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/loc_launcher:system/bin/loc_launcher \
    device/oneplus/oneplus3/prebuilt/bin/xtwifi-client:system/bin/xtwifi-client \
    device/oneplus/oneplus3/prebuilt/bin/xtwifi-inet-agent:system/bin/xtwifi-inet-agent \
    device/oneplus/oneplus3/prebuilt/etc/permissions/com.qti.location.sdk.xml:system/etc/permissions/com.qti.location.sdk.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/izat.xt.srv.xml:system/etc/permissions/izat.xt.srv.xml \
    device/oneplus/oneplus3/prebuilt/etc/cacert_location.pem:system/etc/cacert_location.pem \
    device/oneplus/oneplus3/prebuilt/etc/xtra_root_cert.pem:system/etc/xtra_root_cert.pem \
    device/oneplus/oneplus3/prebuilt/framework/com.qti.location.sdk.jar:system/framework/com.qti.location.sdk.jar \
    device/oneplus/oneplus3/prebuilt/framework/com.qualcomm.location.vzw_library.jar:system/framework/com.qualcomm.location.vzw_library.jar \
    device/oneplus/oneplus3/prebuilt/framework/izat.xt.srv.jar:system/framework/izat.xt.srv.jar \
    device/oneplus/oneplus3/prebuilt/lib64/libloc_ds_api.so:system/lib64/libloc_ds_api.so \
    device/oneplus/oneplus3/prebuilt/vendor/bin/slim_daemon:system/vendor/bin/slim_daemon \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/hw/flp.default.so:system/vendor/lib64/hw/flp.default.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libalarmservice_jni.so:system/vendor/lib64/libalarmservice_jni.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libasn1cper.so:system/vendor/lib64/libasn1cper.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libasn1crt.so:system/vendor/lib64/libasn1crt.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libasn1crtx.so:system/vendor/lib64/libasn1crtx.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdataitems.so:system/vendor/lib64/libdataitems.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdrplugin_client.so:system/vendor/lib64/libdrplugin_client.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libDRPlugin.so:system/vendor/lib64/libDRPlugin.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libevent_observer.so:system/vendor/lib64/libevent_observer.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libflp.so:system/vendor/lib64/libflp.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libgdtap.so:system/vendor/lib64/libgdtap.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libgeofence.so:system/vendor/lib64/libgeofence.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libizat_client_api.so:system/vendor/lib64/libizat_client_api.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libizat_core.so:system/vendor/lib64/libizat_core.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/liblbs_core.so:system/vendor/lib64/liblbs_core.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libloc_ext.so:system/vendor/lib64/libloc_ext.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/liblocationservice_glue.so:system/vendor/lib64/liblocationservice_glue.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/liblocationservice.so:system/vendor/lib64/liblocationservice.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/liblowi_client.so:system/vendor/lib64/liblowi_client.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/liblowi_wifihal_nl.so:system/vendor/lib64/liblowi_wifihal_nl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/liblowi_wifihal.so:system/vendor/lib64/liblowi_wifihal.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libquipc_os_api.so:system/vendor/lib64/libquipc_os_api.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libulp2.so:system/vendor/lib64/libulp2.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libxt_native.so:system/vendor/lib64/libxt_native.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libxtadapter.so:system/vendor/lib64/libxtadapter.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libxtwifi_ulp_adaptor.so:system/vendor/lib64/libxtwifi_ulp_adaptor.so

# GPS Config
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/flp.conf:system/etc/flp.conf \
    device/oneplus/oneplus3/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/oneplus/oneplus3/prebuilt/etc/izat.conf:system/etc/izat.conf \
    device/oneplus/oneplus3/prebuilt/etc/lowi.conf:system/etc/lowi.conf \
    device/oneplus/oneplus3/prebuilt/etc/sap.conf:system/etc/sap.conf \
    device/oneplus/oneplus3/prebuilt/etc/xtwifi.conf:system/etc/xtwifi.conf

# Graphics
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/egl/eglSubDriverAndroid.so:system/vendor/lib/egl/eglSubDriverAndroid.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/egl/libQTapGLES.so:system/vendor/lib/egl/libQTapGLES.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/hw/vulkan.msm8996.so:system/vendor/lib/hw/vulkan.msm8996.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libbccQTI.so:system/vendor/lib/libbccQTI.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libc2d30_bltlib.so:system/vendor/lib/libc2d30_bltlib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libc2d30-a5xx.so:system/vendor/lib/libc2d30-a5xx.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libllvm-glnext.so:system/vendor/lib/libllvm-glnext.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libllvm-qgl.so:system/vendor/lib/libllvm-qgl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmm-disp-apis.so:system/vendor/lib/libmm-disp-apis.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmm-qdcm.so:system/vendor/lib/libmm-qdcm.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmQSM.so:system/vendor/lib/libmmQSM.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libsd_sdk_display.so:system/vendor/lib/libsd_sdk_display.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/egl/eglSubDriverAndroid.so:system/vendor/lib64/egl/eglSubDriverAndroid.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/egl/libEGL_adreno.so:system/vendor/lib64/egl/libEGL_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/egl/libGLESv1_CM_adreno.so:system/vendor/lib64/egl/libGLESv1_CM_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/egl/libGLESv2_adreno.so:system/vendor/lib64/egl/libGLESv2_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/egl/libq3dtools_adreno.so:system/vendor/lib64/egl/libq3dtools_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/egl/libQTapGLES.so:system/vendor/lib64/egl/libQTapGLES.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/hw/vulkan.msm8996.so:system/vendor/lib64/hw/vulkan.msm8996.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libadreno_utils.so:system/vendor/lib64/libadreno_utils.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libbccQTI.so:system/vendor/lib64/libbccQTI.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libC2D2.so:system/vendor/lib64/libC2D2.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libc2d30_bltlib.so:system/vendor/lib64/libc2d30_bltlib.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libc2d30-a5xx.so:system/vendor/lib64/libc2d30-a5xx.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libCB.so:system/vendor/lib64/libCB.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libgsl.so:system/vendor/lib64/libgsl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libllvm-glnext.so:system/vendor/lib64/libllvm-glnext.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libllvm-qcom.so:system/vendor/lib64/libllvm-qcom.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libllvm-qgl.so:system/vendor/lib64/libllvm-qgl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libmm-disp-apis.so:system/vendor/lib64/libmm-disp-apis.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libmm-qdcm.so:system/vendor/lib64/libmm-qdcm.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libmmQSM.so:system/vendor/lib64/libmmQSM.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libOpenCL.so:system/vendor/lib64/libOpenCL.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/librs_adreno_sha1.so:system/vendor/lib64/librs_adreno_sha1.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/librs_adreno.so:system/vendor/lib64/librs_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libRSDriver_adreno.so:system/vendor/lib64/libRSDriver_adreno.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libscalar.so:system/vendor/lib64/libscalar.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsd_sdk_display.so:system/vendor/lib64/libsd_sdk_display.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsdm-color.so:system/vendor/lib64/libsdm-color.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsdm-diag.so:system/vendor/lib64/libsdm-diag.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsdmextension.so:system/vendor/lib64/libsdmextension.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libuiblur.so:system/vendor/lib64/libuiblur.so

# IRQ
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/etc/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/sec_config:system/etc/sec_config

# Keylayouts
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/usr/keylayout/fpc1020.kl:system/usr/keylayout/fpc1020.kl \
    device/oneplus/oneplus3/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl

# Keystore
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/hw/keystore.msm8996.so:system/vendor/lib/hw/keystore.msm8996.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/hw/keystore.msm8996.so:system/vendor/lib64/hw/keystore.msm8996.so

# Libstagefright
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Listen
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/hw/sound_trigger.primary.msm8996.so:system/vendor/lib/hw/sound_trigger.primary.msm8996.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libadpcmdec.so:system/vendor/lib/libadpcmdec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libsmwrapper.so:system/vendor/lib/libsmwrapper.so

# Media
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/lib/libOmxVpp.so:system/lib/libOmxVpp.so \
    device/oneplus/oneplus3/prebuilt/lib/libvpplibrary.so:system/lib/libvpplibrary.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libI420colorconvert.so:system/vendor/lib/libI420colorconvert.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmm-color-convertor.so:system/vendor/lib/libmm-color-convertor.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmmosal.so:system/vendor/lib/libmmosal.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libOmxAacDec.so:system/vendor/lib/libOmxAacDec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libOmxEvrcDec.so:system/vendor/lib/libOmxEvrcDec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libOmxQcelp13Dec.so:system/vendor/lib/libOmxQcelp13Dec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libvpphvx.so:system/vendor/lib/libvpphvx.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libvqzip.so:system/vendor/lib/libvqzip.so

# Media Config
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/oneplus/oneplus3/prebuilt/etc/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/oneplus/oneplus3/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# NFC Config
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/oneplus/oneplus3/prebuilt/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# NFC firmware
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/firmware/libpn548ad_fw.so:system/vendor/firmware/libpn548ad_fw.so

# Perf
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/energy-awareness:system/bin/energy-awareness \
    device/oneplus/oneplus3/prebuilt/bin/msm_irqbalance:system/bin/msm_irqbalance \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqti-perfd-client.so:system/vendor/lib/libqti-perfd-client.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqti-perfd-client.so:system/vendor/lib64/libqti-perfd-client.so

# Peripheral manager
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/pm-proxy:system/bin/pm-proxy \
    device/oneplus/oneplus3/prebuilt/bin/pm-service:system/bin/pm-service \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libperipheral_client.so:system/vendor/lib/libperipheral_client.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libperipheral_client.so:system/vendor/lib64/libperipheral_client.so

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:system/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:system/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:system/etc/permissions/android.hardware.sensor.relative_humidity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Postprocessing
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/permissions/com.qti.snapdragon.sdk.display.xml:system/etc/permissions/com.qti.snapdragon.sdk.display.xml \
    device/oneplus/oneplus3/prebuilt/framework/com.qti.snapdragon.sdk.display.jar:system/framework/com.qti.snapdragon.sdk.display.jar \
    device/oneplus/oneplus3/prebuilt/vendor/bin/mm-pp-dpps:system/vendor/bin/mm-pp-dpps \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdisp-aba.so:system/vendor/lib64/libdisp-aba.so

# QMI
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/irsc_util:system/bin/irsc_util \
    device/oneplus/oneplus3/prebuilt/etc/permissions/qti_permissions.xml:system/etc/permissions/qti_permissions.xml \
    device/oneplus/oneplus3/prebuilt/vendor/bin/pd-mapper:system/vendor/bin/pd-mapper \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libdsi_netctrl.so:system/vendor/lib/libdsi_netctrl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libdsutils.so:system/vendor/lib/libdsutils.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqdi.so:system/vendor/lib/libqdi.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqdp.so:system/vendor/lib/libqdp.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmi_client_helper.so:system/vendor/lib/libqmi_client_helper.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libsmemlog.so:system/vendor/lib/libsmemlog.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdiag.so:system/vendor/lib64/libdiag.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdsi_netctrl.so:system/vendor/lib64/libdsi_netctrl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libdsutils.so:system/vendor/lib64/libdsutils.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libidl.so:system/vendor/lib64/libidl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqcci_legacy.so:system/vendor/lib64/libqcci_legacy.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqdi.so:system/vendor/lib64/libqdi.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqdp.so:system/vendor/lib64/libqdp.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmi_cci.so:system/vendor/lib64/libqmi_cci.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmi_client_helper.so:system/vendor/lib64/libqmi_client_helper.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmi_client_qmux.so:system/vendor/lib64/libqmi_client_qmux.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmi_common_so.so:system/vendor/lib64/libqmi_common_so.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmi_csi.so:system/vendor/lib64/libqmi_csi.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmi_encdec.so:system/vendor/lib64/libqmi_encdec.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmi.so:system/vendor/lib64/libqmi.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqmiservices.so:system/vendor/lib64/libqmiservices.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsmemlog.so:system/vendor/lib64/libsmemlog.so

# Radio
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/ipacm-diag:system/bin/ipacm-diag \
    device/oneplus/oneplus3/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/oneplus/oneplus3/prebuilt/bin/radish:system/bin/radish \
    device/oneplus/oneplus3/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/oneplus/oneplus3/prebuilt/bin/tftp_server:system/bin/tftp_server \
    device/oneplus/oneplus3/prebuilt/etc/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    device/oneplus/oneplus3/prebuilt/etc/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/embms.xml:system/etc/permissions/embms.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/telephonyservice.xml:system/etc/permissions/telephonyservice.xml \
    device/oneplus/oneplus3/prebuilt/framework/embmslibrary.jar:system/framework/embmslibrary.jar \
    device/oneplus/oneplus3/prebuilt/framework/qti-telephony-common.jar:system/framework/qti-telephony-common.jar \
    device/oneplus/oneplus3/prebuilt/framework/QtiTelephonyServicelibrary.jar:system/framework/QtiTelephonyServicelibrary.jar \
    device/oneplus/oneplus3/prebuilt/vendor/bin/qti:system/vendor/bin/qti \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libmdmdetect.so:system/vendor/lib/libmdmdetect.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libconfigdb.so:system/vendor/lib64/libconfigdb.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/liblqe.so:system/vendor/lib64/liblqe.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libmdmdetect.so:system/vendor/lib64/libmdmdetect.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libnetmgr.so:system/vendor/lib64/libnetmgr.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libqcmaputils.so:system/vendor/lib64/libqcmaputils.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libril-qc-ltedirectdisc.so:system/vendor/lib64/libril-qc-ltedirectdisc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libril-qc-qmi-1.so:system/vendor/lib64/libril-qc-qmi-1.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libril-qc-radioconfig.so:system/vendor/lib64/libril-qc-radioconfig.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libril-qcril-hook-oem.so:system/vendor/lib64/libril-qcril-hook-oem.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/librilqmiservices.so:system/vendor/lib64/librilqmiservices.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsettings.so:system/vendor/lib64/libsettings.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsystem_health_mon.so:system/vendor/lib64/libsystem_health_mon.so \
    device/oneplus/oneplus3/prebuilt/vendor/qcril.db:system/vendor/qcril.db

# Radio - factory
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/lib64/libparam.so:system/lib64/libparam.so

# Radio - IMS
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/ims_rtp_daemon:system/bin/ims_rtp_daemon \
    device/oneplus/oneplus3/prebuilt/bin/imscmservice:system/bin/imscmservice \
    device/oneplus/oneplus3/prebuilt/bin/imsdatadaemon:system/bin/imsdatadaemon \
    device/oneplus/oneplus3/prebuilt/bin/imsqmidaemon:system/bin/imsqmidaemon \
    device/oneplus/oneplus3/prebuilt/etc/permissions/imscm.xml:system/etc/permissions/imscm.xml \
    device/oneplus/oneplus3/prebuilt/etc/permissions/qti-vzw-ims-internal.xml:system/etc/permissions/qti-vzw-ims-internal.xml \
    device/oneplus/oneplus3/prebuilt/framework/imscmlibrary.jar:system/framework/imscmlibrary.jar \
    device/oneplus/oneplus3/prebuilt/framework/rcsimssettings.jar:system/framework/rcsimssettings.jar \
    device/oneplus/oneplus3/prebuilt/vendor/framework/qti-vzw-ims-internal.jar:system/vendor/framework/qti-vzw-ims-internal.jar \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-dplmedia.so:system/vendor/lib64/lib-dplmedia.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-ims-rcscmjni.so:system/vendor/lib64/lib-ims-rcscmjni.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imscamera.so:system/vendor/lib64/lib-imscamera.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsdpl.so:system/vendor/lib64/lib-imsdpl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsqimf.so:system/vendor/lib64/lib-imsqimf.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsrcs.so:system/vendor/lib64/lib-imsrcs.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsrcscm.so:system/vendor/lib64/lib-imsrcscm.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsrcscmclient.so:system/vendor/lib64/lib-imsrcscmclient.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsrcscmservice.so:system/vendor/lib64/lib-imsrcscmservice.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imss.so:system/vendor/lib64/lib-imss.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsSDP.so:system/vendor/lib64/lib-imsSDP.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsvt.so:system/vendor/lib64/lib-imsvt.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-imsxml.so:system/vendor/lib64/lib-imsxml.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-rcsimssjni.so:system/vendor/lib64/lib-rcsimssjni.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-rcsjni.so:system/vendor/lib64/lib-rcsjni.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-rtpcommon.so:system/vendor/lib64/lib-rtpcommon.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-rtpcore.so:system/vendor/lib64/lib-rtpcore.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-rtpdaemoninterface.so:system/vendor/lib64/lib-rtpdaemoninterface.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/lib-rtpsl.so:system/vendor/lib64/lib-rtpsl.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libimscamera_jni.so:system/vendor/lib64/libimscamera_jni.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libimsmedia_jni.so:system/vendor/lib64/libimsmedia_jni.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/librcc.so:system/vendor/lib64/librcc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libvoice-svc.so:system/vendor/lib64/libvoice-svc.so

# Radio - MBN
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mbn_ota.txt:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mbn_ota.txt \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_CMCC_Volte_OpenMkt-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_CMCC_Volte_OpenMkt-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_CU_OpenMkt-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_CU_OpenMkt-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_EE-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_EE-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_MTNL_BSNL.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_MTNL_BSNL.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_OEM_NoCDMA-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_OEM_NoCDMA-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_OEM_Test-VoLTE.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_OEM_Test-VoLTE.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_Reliance-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_Reliance-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_UK-VoLTE.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_UK-VoLTE.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_YTL-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw_NoCDMA/mcfg_sw_YTL-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mbn_ota.txt:system/etc/firmware/mbn_ota/mcfg_sw/mbn_ota.txt \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_ATT-VoLTE.mbn:system/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_ATT-VoLTE.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_CMCC_Volte_OpenMkt-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_CMCC_Volte_OpenMkt-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_CT_OpenMkt-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_CT_OpenMkt-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_CU_OpenMkt-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_CU_OpenMkt-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_OEM_CDMA-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_OEM_CDMA-Commercial.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_OEM_Test-VoLTE.mbn:system/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_OEM_Test-VoLTE.mbn \
    device/oneplus/oneplus3/prebuilt/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_TMO-Commercial.mbn:system/etc/firmware/mbn_ota/mcfg_sw/mcfg_sw_TMO-Commercial.mbn

# Sensors
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/sensors.qcom:system/bin/sensors.qcom \
    device/oneplus/oneplus3/prebuilt/etc/sensors/hals.conf:system/etc/sensors/hals.conf \
    device/oneplus/oneplus3/prebuilt/etc/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf \
    device/oneplus/oneplus3/prebuilt/vendor/lib/hw/activity_recognition.msm8996.so:system/vendor/lib/hw/activity_recognition.msm8996.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libsensor_reg.so:system/vendor/lib/libsensor_reg.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libsensor_thresh.so:system/vendor/lib/libsensor_thresh.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libsensor_user_cal.so:system/vendor/lib/libsensor_user_cal.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libsensor1.so:system/vendor/lib/libsensor1.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/sensors.oem.so:system/vendor/lib/sensors.oem.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/sensors.ssc.so:system/vendor/lib/sensors.ssc.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/hw/activity_recognition.msm8996.so:system/vendor/lib64/hw/activity_recognition.msm8996.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsensor_reg.so:system/vendor/lib64/libsensor_reg.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsensor_thresh.so:system/vendor/lib64/libsensor_thresh.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsensor_user_cal.so:system/vendor/lib64/libsensor_user_cal.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libsensor1.so:system/vendor/lib64/libsensor1.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/sensors.oem.so:system/vendor/lib64/sensors.oem.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/sensors.ssc.so:system/vendor/lib64/sensors.ssc.so

# Signed graphics firmware
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_gpmu.fw2:system/etc/firmware/a530_gpmu.fw2 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_pfp.fw:system/etc/firmware/a530_pfp.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_pm4.fw:system/etc/firmware/a530_pm4.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap.b00:system/etc/firmware/a530_zap.b00 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap.b01:system/etc/firmware/a530_zap.b01 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap.b02:system/etc/firmware/a530_zap.b02 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap.elf:system/etc/firmware/a530_zap.elf \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap.mdt:system/etc/firmware/a530_zap.mdt \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap-pro.b00:system/etc/firmware/a530_zap-pro.b00 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap-pro.b01:system/etc/firmware/a530_zap-pro.b01 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap-pro.b02:system/etc/firmware/a530_zap-pro.b02 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap-pro.elf:system/etc/firmware/a530_zap-pro.elf \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530_zap-pro.mdt:system/etc/firmware/a530_zap-pro.mdt \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530v1_pfp.fw:system/etc/firmware/a530v1_pfp.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530v1_pm4.fw:system/etc/firmware/a530v1_pm4.fw \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530v2_seq.fw2:system/etc/firmware/a530v2_seq.fw2 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530v3_gpmu.fw2:system/etc/firmware/a530v3_gpmu.fw2 \
    device/oneplus/oneplus3/prebuilt/etc/firmware/a530v3_seq.fw2:system/etc/firmware/a530v3_seq.fw2

# TP firmware
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/firmware/tp/fw_synaptics_15801.img:system/etc/firmware/tp/fw_synaptics_15801.img \
    device/oneplus/oneplus3/prebuilt/etc/firmware/tp/fw_synaptics_15801b.img:system/etc/firmware/tp/fw_synaptics_15801b.img \
    device/oneplus/oneplus3/prebuilt/etc/firmware/tp/fw_synaptics_15811.img:system/etc/firmware/tp/fw_synaptics_15811.img \
    device/oneplus/oneplus3/prebuilt/etc/firmware/tp/fw_synaptics_touchkey.img:system/etc/firmware/tp/fw_synaptics_touchkey.img

# Thermal
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/thermal-engine.conf:system/etc/thermal-engine.conf \
    device/oneplus/oneplus3/prebuilt/vendor/bin/thermal-engine:system/vendor/bin/thermal-engine \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libthermalioctl.so:system/vendor/lib64/libthermalioctl.so

# Time services
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/time_daemon:system/bin/time_daemon \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libTimeService.so:system/vendor/lib/libTimeService.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib64/libTimeService.so:system/vendor/lib64/libTimeService.so

# VR
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml

# Widevine
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    device/oneplus/oneplus3/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# Wifi
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/bin/cnss_diag:system/bin/cnss_diag \
    device/oneplus/oneplus3/prebuilt/bin/cnss-daemon:system/bin/cnss-daemon

# Wifi Config
PRODUCT_COPY_FILES += \
    device/oneplus/oneplus3/prebuilt/etc/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/oneplus/oneplus3/prebuilt/etc/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    device/oneplus/oneplus3/prebuilt/etc/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/oneplus/oneplus3/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/oneplus/oneplus3/prebuilt/etc/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/oneplus/oneplus3/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# never dexopt the keyhandler
$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)
