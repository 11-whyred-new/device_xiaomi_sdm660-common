# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true \
    ro.vendor.qti.am.reschedule_service=true \
    ro.sys.fw.dex2oat_thread_count=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.image-dex2oat-cpu-set=4,5,6,7 \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-threads=4

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    vendor.audio_hal.period_size=240 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.audio.fluence.voicecomm=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.speaker=true \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=true \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=true \
    audio.sys.noisy.broadcast.delay=600 \
    audio.sys.offload.pstimeout.secs=3 \
    persist.vendor.audio.hifi.int_codec=true \
    ro.af.client_heap_size_kbyte=7168 \
    vendor.audio.volume.headset.gain.depcal=true \
    vendor.audio.spkr_prot.tx.sampling_rate=48000

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=false \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.spkr_prot.enable=true \
    vendor.audio.feature.ssrec.enable=true \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.snd_mon.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7 \
    vendor.audio.adm.buffering.ms=6

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=cherokee

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.preview.ubwc=0 \
    vendor.video.disable.ubwc=1 \
    sys.display-size=3840x2160 \
    vidc.enc.dcvs.extra-buff-count=2 \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.stats.test=5 \
    persist.vendor.camera.depth.focus.cb=0 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.linkpreview=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.exif.make=Xiaomi \
    persist.vendor.camera.exif.model=Redmi Note 5 \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.fdvideo=1 \
    persist.vendor.camera.awb.sync=2 \
    persist.vendor.camera.fdvideo=1 \
    persist.vendor.camera.awb.sync=2 \
    persist.vendor.flash.low.lux=390 \
    persist.vendor.flash.light.lux=340 \
    persist.vendor.imx376_ofilm.low.lux=310 \
    persist.vendor.imx376_ofilm.light.lux=280 \
    persist.vendor.imx376_sunny.low.lux=310 \
    persist.vendor.imx376_sunny.light.lux=280 \
    persist.vendor.ov13855_sunny.low.lux=385 \
    persist.vendor.ov13855_sunny.light.lux=370 \
    persist.vendor.s5k3l8_ofilm.low.lux=379 \
    persist.vendor.s5k3l8_ofilm.light.lux=367 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.ltm.overlap=13 \
    persist.vendor.camera.enableAdvanceFeatures=0x347 \
    persist.camera.max.previewfps=60 \
    persist.vendor.camera.max.previewfps=60

    PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.whatsapp,com.intsig.camscanner,com.instagram.android \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera \
    vendor.camera.aux.packageexcludelist=com.discord

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.disable_init_blank=true \
    ro.charger.enable_suspend=true

# CNE
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.cne.feature=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_phase_offset_ns=500000 \
    debug.sf.early_app_phase_offset_ns=500000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=0 \
    ro.opengles.version=196610 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    ro.surface_flinger.set_display_power_timer_ms=10000 \
    ro.surface_flinger.set_touch_timer_ms=5000 \
    ro.surface_flinger.set_idle_timer_ms=9000 
    ro.surface_flinger.use_smart_90_for_video=true \
    ro.surface_flinger.wcg_composition_dataspace=143261696 \
    ro.vendor.display.cabl=0 \
    vendor.display.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=1 \
    vendor.gralloc.enable_fb_ubwc=1

# The default sf phase offset is set to 6ms, to avoid it be included into next
# vsync threshold, set high fps early sf and next vsync threshold phase offset
# to 6.1ms, which is bigger than all sf phase offsets in normal frame rate.
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.high_fps_early_phase_offset_ns=6100000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=9000000 \
    debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1  \
    persist.dbg.wfc_avail_ovr=1

# LMKD
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.low_ram=false \
    ro.lmk.log_stats=true \
    ro.lmk.use_psi=false

ifeq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ims.disableADBLogs=1 \
    persist.vendor.ims.disableDebugLogs=1 \
    persist.vendor.ims.disableIMSLogs=1 \
    persist.vendor.ims.disableQXDMLogs=1
endif

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    vendor.vidc.dec.enable.downscalar=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.enc.disable.pq=true

# Netflix
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.netflix.bsp_rev=Q660-13149-1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.data.mode=concurrent \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    ro.telephony.default_network=22,22 \
    ro.vendor.use_data_netmgrd=true 

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    DEVICE_PROVISIONED=1 \
    ril.subscription.types=NV,RUIM \
    telephony.lteOnCdmaDevice=1

# Sensor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.facing=false \
    ro.vendor.sensors.dev_ori=true \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.mot_detect=true

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true

# WFD
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.debug.wfd.enable=1

# IORap
PRODUCT_PROPERTY_OVERRIDES += \
    ro.iorapd.enable=true \
    iorapd.perfetto.enable=true \
    iorapd.readahead.enable=true
