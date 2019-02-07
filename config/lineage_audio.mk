#
# Lineage Audio Files
#

ALARM_PATH := vendor/rr/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/rr/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/rr/prebuilt/common/media/audio/ringtones

# Alarms
PRODUCT_COPY_FILES += \
    $(ALARM_PATH)/Helium.ogg:system/media/audio/alarms/Helium.ogg

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/Carme.ogg:system/media/audio/notifications/Carme.ogg \
    $(NOTIFICATION_PATH)/Ceres.ogg:system/media/audio/notifications/Ceres.ogg \
    $(NOTIFICATION_PATH)/Elara.ogg:system/media/audio/notifications/Elara.ogg \
    $(NOTIFICATION_PATH)/Tethys.ogg:system/media/audio/notifications/Tethys.ogg

# Ringtones
ifeq ($(TARGET_NEEDS_BOOSTED_SOUNDS),true)
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/boosted/Boxbeat.ogg:system/media/audio/ringtones/Boxbeat.ogg \
    $(RINGTONE_PATH)/boosted/CyanTone.ogg:system/media/audio/ringtones/CyanTone.ogg \
    $(RINGTONE_PATH)/boosted/Highscore.ogg:system/media/audio/ringtones/Highscore.ogg \
    $(RINGTONE_PATH)/boosted/Lyon.ogg:system/media/audio/ringtones/Lyon.ogg \
    $(RINGTONE_PATH)/boosted/Rockin.ogg:system/media/audio/ringtones/Rockin.ogg
else
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/Titania.ogg:system/media/audio/ringtones/Titania.ogg
endif
