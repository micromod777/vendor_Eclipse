PRODUCT_NAME := Eclipse
PRODUCT_BRAND := Eclipse
PRODUCT_DEVICE := generic

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/common

PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    Stk \
    EclipseWallpapers \
    FileManager \
    Email \
    LiveWallpapers \
    Galaxy4 \
    HoloSpiralWallpaper \
    PhaseBeam    

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    vendor/Eclipse/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip

# CM T-Mobile Theme Engine
include vendor/Eclipse/products/themes_common.mk

# Eclipse-specific init files
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/CHANGELOG-ECLIPSE.txt:system/etc/CHANGELOG-ECLIPSE.txt

# init.d support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/Eclipse/prebuilt/common/bin/sysinit:system/bin/sysinit
    
# Eclipse-specific init files
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/Eclipse/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Google DNS servers and host file
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/Eclipse/prebuilt/common/etc/hosts:system/etc/hosts

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/bash:system/xbin/bash \
    vendor/Eclipse/prebuilt/common/nano:system/xbin/nano \
    vendor/Eclipse/prebuilt/common/sysro:system/xbin/sysro \
    vendor/Eclipse/prebuilt/common/sysrw:system/xbin/sysrw

# Appwidgetpicker
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/AppWidgetPicker.apk:system/app/AppWidgetPicker.apk \
    
# Nova launcher
#PRODUCT_COPY_FILES +=  \
#    vendor/Eclipse/proprietary/NovaLauncher.apk:system/app/NovaLauncher.apk \
    
# Holo launcher
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/HoloLauncher.apk:system/app/HoloLauncher.apk \

# JB 4.2 Keyboard
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/LatinIME.apk:system/app/LatinIME.apk \
    vendor/Eclipse/proprietary/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Term binary for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/Term.apk:system/app/Term.apk \
    vendor/Eclipse/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# SU binary and APK
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/su:system/xbin/su \
    vendor/Eclipse/prebuilt/common/Superuser.apk:system/app/Superuser.apk

# BusyBox binary
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/busybox:system/xbin/busybox
	
# SSH binary
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/ssh:system/xbin/ssh

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.dataroaming=false \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.kernel.android.checkjni=0 \
    ro.eclipse.version=3.1-build-2
    windowsmgr.max_events_per_sec=240
