.class public Lio/agora/rtc/internal/RtcChannelImpl;
.super Lio/agora/rtc/RtcChannel;
.source "SourceFile"


# instance fields
.field private mInitialized:Z

.field private mJoined:Z

.field private mNativeHandle:J

.field private mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/RtcChannel;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput-object v1, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 14
    .line 15
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mJoined:Z

    .line 16
    return-void
.end method

.method private native nativeRtcChannelAddInjectStreamUrl(JLjava/lang/String;[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url",
            "config"
        }
    .end annotation
.end method

.method private native nativeRtcChannelAddPublishStreamUrl(JLjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url",
            "transcodingEnabled"
        }
    .end annotation
.end method

.method private native nativeRtcChannelAddRemoteVideoRender(JILio/agora/rtc/mediaio/IVideoSink;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "render",
            "type"
        }
    .end annotation
.end method

.method private native nativeRtcChannelAdjustUserPlaybackSignalVolume(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "volume"
        }
    .end annotation
.end method

.method private native nativeRtcChannelChannelId(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeRtcChannelCreateDataStream(JZZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "reliable",
            "ordered"
        }
    .end annotation
.end method

.method private native nativeRtcChannelCreateDataStream2(JZZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "ordered",
            "sync"
        }
    .end annotation
.end method

.method private native nativeRtcChannelEnableEncryption(JZILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "enabled",
            "encryptionMode",
            "encryptionKey"
        }
    .end annotation
.end method

.method private native nativeRtcChannelEnableRemoteSuperResolution(JIZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "enable"
        }
    .end annotation
.end method

.method private native nativeRtcChannelGetCallId(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeRtcChannelGetConncetionState(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeRtcChannelJoinChannel(JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "token",
            "info",
            "uid",
            "options"
        }
    .end annotation
.end method

.method private native nativeRtcChannelJoinChannelWithUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "token",
            "userAccount",
            "options"
        }
    .end annotation
.end method

.method private native nativeRtcChannelLeaveChannel(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeRtcChannelMuteAllRemoteAudioStreams(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "mute"
        }
    .end annotation
.end method

.method private native nativeRtcChannelMuteAllRemoteVideoStreams(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "mute"
        }
    .end annotation
.end method

.method private native nativeRtcChannelMuteRemoteAudioStream(JIZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "mute"
        }
    .end annotation
.end method

.method private native nativeRtcChannelMuteRemoteVideoStream(JIZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativehandle",
            "uid",
            "mute"
        }
    .end annotation
.end method

.method private native nativeRtcChannelPublish(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeRtcChannelRegisterMediaMetadataObserver(JLjava/lang/Object;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "observer",
            "type"
        }
    .end annotation
.end method

.method private native nativeRtcChannelRemoveInjectStreamUrl(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url"
        }
    .end annotation
.end method

.method private native nativeRtcChannelRemovePublishStreamUrl(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url"
        }
    .end annotation
.end method

.method private native nativeRtcChannelRenewToken(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "token"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSendStreamMessage(JI[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "streamId",
            "data"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetClientRole(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "role"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetClientRoleOptions(JILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "role",
            "options"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetDefaultMuteAllRemoteAudioStreams(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "mute"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetDefaultMuteAllRemoteVideoStreams(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "mute"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetEncryptionMode(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "encryptionMode"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetEncryptionSecret(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "secret"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetLiveTranscoding(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "transcoding"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetRemoteDefaultVideoStreamType(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "streamType"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetRemoteRenderMode(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "renderMode"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetRemoteRenderModeWithMirrorMode(JIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "renderMode",
            "mirrorMode"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetRemoteUserPriority(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "userPriority"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetRemoteVideoStreamType(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "streamType"
        }
    .end annotation
.end method

.method private native nativeRtcChannelSetRemoteVoicePosition(JIDD)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "pan",
            "gain"
        }
    .end annotation
.end method

.method private native nativeRtcChannelStartChannelMediaRelay(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "channelMediaRelayInfos"
        }
    .end annotation
.end method

.method private native nativeRtcChannelStopChannelMediaRelay(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeRtcChannelUnpublish(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeRtcChannelUpdateChannelMediaRelay(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "channelMediaRelayInfos"
        }
    .end annotation
.end method


# virtual methods
.method public addInjectStreamUrl(Ljava/lang/String;Lio/agora/rtc/live/LiveInjectStreamConfig;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "config"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_1
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;->marshall(Lio/agora/rtc/live/LiveInjectStreamConfig;)[B

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelAddInjectStreamUrl(JLjava/lang/String;[B)I

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_2
    :goto_0
    const/4 p1, -0x2

    .line 29
    return p1
.end method

.method public addPublishStreamUrl(Ljava/lang/String;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "transcodingEnabled"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelAddPublishStreamUrl(JLjava/lang/String;Z)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public adjustUserPlaybackSignalVolume(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "volume"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelAdjustUserPlaybackSignalVolume(JII)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public channelId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelChannelId(J)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public createDataStream(Lio/agora/rtc/models/DataStreamConfig;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 2
    iget-boolean v2, p1, Lio/agora/rtc/models/DataStreamConfig;->ordered:Z

    iget-boolean p1, p1, Lio/agora/rtc/models/DataStreamConfig;->syncWithAudio:Z

    invoke-direct {p0, v0, v1, v2, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelCreateDataStream2(JZZ)I

    move-result p1

    return p1
.end method

.method public createDataStream(ZZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reliable",
            "ordered"
        }
    .end annotation

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 1
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelCreateDataStream(JZZ)I

    move-result p1

    return p1
.end method

.method public destroy()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->destroyRtcChannel(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    iput-boolean v1, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, -0x7

    .line 20
    return v0
.end method

.method public enableEncryption(ZLio/agora/rtc/internal/EncryptionConfig;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "config"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    iget-object v0, p2, Lio/agora/rtc/internal/EncryptionConfig;->encryptionMode:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->getValue()I

    .line 14
    move-result v4

    .line 15
    .line 16
    iget-object v5, p2, Lio/agora/rtc/internal/EncryptionConfig;->encryptionKey:Ljava/lang/String;

    .line 17
    move-object v0, p0

    .line 18
    move v3, p1

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelEnableEncryption(JZILjava/lang/String;)I

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public enableRemoteSuperResolution(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "enable"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelEnableRemoteSuperResolution(JIZ)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelGetCallId(J)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getConnectionState()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelGetConncetionState(J)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    return-wide v0
.end method

.method public hasJoined()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mJoined:Z

    return v0
.end method

.method public initialize(Lio/agora/rtc/internal/RtcEngineImpl;J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcEngineImpl",
            "nativeHandle"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    iput-wide p2, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    const/4 p1, 0x0

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    return v0
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;ILio/agora/rtc/models/ChannelMediaOptions;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "optionalInfo",
            "optionalUid",
            "options"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    const/4 v1, -0x7

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    if-nez p4, :cond_2

    .line 18
    const/4 p1, -0x2

    .line 19
    return p1

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelJoinChannel()V

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mJoined:Z

    .line 28
    .line 29
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 30
    move-object v1, p0

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move v6, p3

    .line 34
    move-object v7, p4

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v1 .. v7}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelJoinChannel(JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)I

    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public joinChannelWithUserAccount(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtc/models/ChannelMediaOptions;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "userAccount",
            "options"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    const/4 v1, -0x7

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    if-nez p3, :cond_2

    .line 18
    const/4 p1, -0x2

    .line 19
    return p1

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelJoinChannel()V

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mJoined:Z

    .line 28
    .line 29
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 30
    move-object v1, p0

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v6}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelJoinChannelWithUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public leaveChannel()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x7

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mJoined:Z

    .line 10
    .line 11
    iget-object v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mRtcEngineImpl:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelLeaveChannel()V

    .line 15
    .line 16
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelLeaveChannel(J)I

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public muteAllRemoteAudioStreams(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelMuteAllRemoteAudioStreams(JZ)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public muteAllRemoteVideoStreams(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelMuteAllRemoteVideoStreams(JZ)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public muteRemoteAudioStream(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "muted"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelMuteRemoteAudioStream(JIZ)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public muteRemoteVideoStream(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "muted"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelMuteRemoteVideoStream(JIZ)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onEngineDestroy()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    return-void
.end method

.method public publish()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x7

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelPublish(J)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public registerMediaMetadataObserver(Lio/agora/rtc/IMetadataObserver;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observer",
            "type"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelRegisterMediaMetadataObserver(JLjava/lang/Object;I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public removeInjectStreamUrl(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelRemoveInjectStreamUrl(JLjava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public removePublishStreamUrl(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelRemovePublishStreamUrl(JLjava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public renewToken(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelRenewToken(JLjava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public sendStreamMessage(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamId",
            "message"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSendStreamMessage(JI[B)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setClientRole(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetClientRole(JI)I

    move-result p1

    return p1
.end method

.method public setClientRole(ILio/agora/rtc/models/ClientRoleOptions;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "role",
            "options"
        }
    .end annotation

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetClientRoleOptions(JILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setDefaultMuteAllRemoteAudioStreams(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetDefaultMuteAllRemoteAudioStreams(JZ)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setDefaultMuteAllRemoteVideoStreams(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetDefaultMuteAllRemoteVideoStreams(JZ)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setEncryptionMode(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionMode"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetEncryptionMode(JLjava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setEncryptionSecret(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secret"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetEncryptionSecret(JLjava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setLiveTranscoding(Lio/agora/rtc/live/LiveTranscoding;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transcoding"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    const/4 p1, -0x2

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p1}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lio/agora/rtc/live/LiveTranscoding;->getUsers()Ljava/util/ArrayList;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;

    .line 37
    .line 38
    iget v2, v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->width:I

    .line 39
    .line 40
    if-lez v2, :cond_2

    .line 41
    .line 42
    iget v1, v1, Lio/agora/rtc/live/LiveTranscoding$TranscodingUser;->height:I

    .line 43
    .line 44
    if-lez v1, :cond_2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "transcoding user\'s width and height must be >0"

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1

    .line 55
    .line 56
    :cond_3
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshall(Lio/agora/rtc/live/LiveTranscoding;)[B

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetLiveTranscoding(J[B)I

    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public setRemoteDefaultVideoStreamType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetRemoteDefaultVideoStreamType(JI)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setRemoteRenderMode(III)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "renderMode",
            "mirrorMode"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    move-object v0, p0

    .line 10
    move v3, p1

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetRemoteRenderModeWithMirrorMode(JIII)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public setRemoteUserPriority(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "userPriority"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetRemoteUserPriority(JII)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setRemoteVideoRenderer(ILio/agora/rtc/mediaio/IVideoSink;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "render"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    move v6, v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_1
    instance-of v0, p2, Lio/agora/rtc/mediaio/AgoraDefaultRender;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :goto_1
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 22
    move-object v1, p0

    .line 23
    move v4, p1

    .line 24
    move-object v5, p2

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v1 .. v6}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelAddRemoteVideoRender(JILio/agora/rtc/mediaio/IVideoSink;I)I

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public setRemoteVideoStreamType(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "streamType"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetRemoteVideoStreamType(JII)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setRemoteVoicePosition(IDD)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "pan",
            "gain"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    move-object v0, p0

    .line 10
    move v3, p1

    .line 11
    move-wide v4, p2

    .line 12
    move-wide v6, p4

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelSetRemoteVoicePosition(JIDD)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public startChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelMediaRelayConfiguration"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getSrcChannelMediaInfo()Lio/agora/rtc/video/ChannelMediaInfo;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Lio/agora/rtc/video/ChannelMediaInfo;

    .line 57
    .line 58
    iget-object v3, v3, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Lio/agora/rtc/video/ChannelMediaInfo;

    .line 67
    .line 68
    iget-object v2, v2, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 72
    move-result v2

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    :cond_3
    return v0

    .line 76
    .line 77
    :cond_4
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;->marshall(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)[B

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelStartChannelMediaRelay(J[B)I

    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_5
    :goto_0
    return v0
.end method

.method public stopChannelMediaRelay()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x7

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelStopChannelMediaRelay(J)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public unpublish()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x7

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelUnpublish(J)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public updateChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelMediaRelayConfiguration"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mInitialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, -0x7

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v0, -0x2

    .line 8
    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getSrcChannelMediaInfo()Lio/agora/rtc/video/ChannelMediaInfo;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Lio/agora/rtc/video/ChannelMediaInfo;

    .line 57
    .line 58
    iget-object v3, v3, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Lio/agora/rtc/video/ChannelMediaInfo;

    .line 67
    .line 68
    iget-object v2, v2, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 72
    move-result v2

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    :cond_3
    return v0

    .line 76
    .line 77
    :cond_4
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;->marshall(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)[B

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcChannelImpl;->mNativeHandle:J

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcChannelImpl;->nativeRtcChannelUpdateChannelMediaRelay(J[B)I

    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_5
    :goto_0
    return v0
.end method
