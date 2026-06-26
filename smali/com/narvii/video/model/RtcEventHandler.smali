.class public interface abstract Lcom/narvii/video/model/RtcEventHandler;
.super Ljava/lang/Object;
.source "RtcEventHandler.java"


# static fields
.field public static final EVENT_TYPE_ON_AGORA_MEDIA_ERROR:I = 0x9

.field public static final EVENT_TYPE_ON_APP_ERROR:I = 0xd

.field public static final EVENT_TYPE_ON_AUDIO_QUALITY:I = 0x14

.field public static final EVENT_TYPE_ON_DATA_CHANNEL_MSG:I = 0x3

.field public static final EVENT_TYPE_ON_JOIN_ERROR:I = 0x1

.field public static final EVENT_TYPE_ON_USER_VIDEO_STATS:I = 0xa

.field public static final NETWORK_STATUS_BAD:I = 0x1

.field public static final NETWORK_STATUS_BROKEN:I = 0x2

.field public static final NETWORK_STATUS_INTERRUPT:I = 0x3


# virtual methods
.method public abstract onAudioQuality(IISS)V
.end method

.method public abstract onAudioRouteChanged(I)V
.end method

.method public abstract onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public varargs abstract onExtraCallback(I[Ljava/lang/Object;)V
.end method

.method public abstract onFirstRemoteVideoDecoded(IIII)V
.end method

.method public abstract onJoinChannelSuccess(Ljava/lang/String;II)V
.end method

.method public abstract onLeaveChannel()V
.end method

.method public abstract onLocalUserSteamDecoded(I)V
.end method

.method public abstract onNetworkQuality(III)V
.end method

.method public abstract onNetworkStatusChanged(I)V
.end method

.method public abstract onRejoinChannelSuccess(Ljava/lang/String;II)V
.end method

.method public abstract onRemoteUserJoined(I)V
.end method

.method public abstract onRequestToken()V
.end method

.method public abstract onUserMuteAudio(IZ)V
.end method

.method public abstract onUserMuteVideo(IZ)V
.end method

.method public abstract onUserOffline(II)V
.end method
