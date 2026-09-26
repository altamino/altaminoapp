.class public Lcom/narvii/video/ui/UserStatusData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_MUTED:I = 0x2

.field public static final AUDIO_ROUTE_SPEAKER:I = 0x3

.field public static final DEFAULT_STATUS:I = 0x0

.field public static final DEFAULT_VOLUME:I = 0x0

.field public static final NETWORK_STATUS_BAD:I = 0x2

.field public static final NETWORK_STATUS_FINE:I = 0x0

.field public static final NETWORK_STATUS_LOST:I = 0x1

.field public static final PROP_STATUS_LOADING:I = 0x1

.field public static final PROP_STATUS_NONE:I = 0x0

.field public static final PROP_STATUS_UPDATED:I = 0x2

.field public static final QUALITY_BAD:I = 0x4

.field public static final QUALITY_DOWN:I = 0x6

.field public static final QUALITY_EXCELLENT:I = 0x1

.field public static final QUALITY_GOOD:I = 0x2

.field public static final QUALITY_POOR:I = 0x3

.field public static final QUALITY_UNKNOWN:I = 0x0

.field public static final QUALITY_VBAD:I = 0x5

.field public static final VIDEO_FRAME_READY:I = 0x2

.field public static final VIDEO_FRAME_UNREADY:I = 0x1

.field public static final VIDEO_MUTED:I = 0x1

.field public static final VOLUME_LEVEL_STEP:I = 0x40

.field public static final VOLUME_MAX:I = 0x100


# instance fields
.field private audioQuality:I

.field public audioRoute:I

.field private isVideoMuted:Z

.field private isVoiceMuted:Z

.field public mUid:I

.field private mVideoInfo:Lcom/narvii/video/ui/VideoInfoData;

.field public mView:Landroid/view/SurfaceView;

.field public mVolume:I

.field public netWorkQuality:I

.field public netWorkStatus:I

.field private netWorkSummary:I

.field public proItemStaus:I

.field public streamType:I

.field private trackingStatus:I

.field public videoFrameStatus:I


# direct methods
.method public constructor <init>(ILandroid/view/SurfaceView;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;ZZILcom/narvii/video/ui/VideoInfoData;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/SurfaceView;ZZILcom/narvii/video/ui/VideoInfoData;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/video/ui/UserStatusData;->streamType:I

    iput v0, p0, Lcom/narvii/video/ui/UserStatusData;->trackingStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    iput-object p2, p0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    iput-boolean p4, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    iput-boolean p3, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    iput p5, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    iput-object p6, p0, Lcom/narvii/video/ui/UserStatusData;->mVideoInfo:Lcom/narvii/video/ui/VideoInfoData;

    return-void
.end method

.method public static getVolumeLevel(I)I
    .locals 1

    .line 1
    .line 2
    div-int/lit8 v0, p0, 0x40

    .line 3
    .line 4
    if-lez p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    add-int/2addr v0, p0

    .line 9
    return v0
.end method

.method private isGoodNetwork(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isSlowNetwork(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/narvii/video/ui/UserStatusData;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    .line 15
    .line 16
    iget-boolean v2, p1, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    .line 19
    .line 20
    if-ne v2, v3, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p1, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    .line 25
    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    .line 29
    .line 30
    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->audioRoute:I

    .line 41
    .line 42
    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->audioRoute:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    iget-object v2, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 49
    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    .line 53
    .line 54
    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iget p1, p1, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 59
    .line 60
    iget v2, p0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 61
    .line 62
    if-ne p1, v2, :cond_2

    .line 63
    move v0, v1

    .line 64
    :cond_2
    return v0
.end method

.method public getAudioQuality()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->audioQuality:I

    return v0
.end method

.method public getCurVolumeLevel()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTrackingStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->trackingStatus:I

    return v0
.end method

.method public getVideoFrameStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    return v0
.end method

.method public getVideoInfoData()Lcom/narvii/video/ui/VideoInfoData;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/ui/UserStatusData;->mVideoInfo:Lcom/narvii/video/ui/VideoInfoData;

    return-object v0
.end method

.method public isBadNetwork()Z
    .locals 1

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkSummaryBad()Z
    .locals 2

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkSummary:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeakerMode()Z
    .locals 2

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->audioRoute:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    return v0
.end method

.method public isVoiceMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    return v0
.end method

.method public needUpdateNetWorkSummary(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/ui/UserStatusData;->isGoodNetwork(I)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/narvii/video/ui/UserStatusData;->audioQuality:I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/video/ui/UserStatusData;->isSlowNetwork(I)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 p1, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move p1, v0

    .line 23
    .line 24
    :goto_0
    iget v1, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkSummary:I

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkSummary:I

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    return v0
.end method

.method public setAudioQuality(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->audioQuality:I

    return-void
.end method

.method public setTrackingStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->trackingStatus:I

    return-void
.end method

.method public setVideoFrameStatus(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    return-void
.end method

.method public setVideoInfo(Lcom/narvii/video/ui/VideoInfoData;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/ui/UserStatusData;->mVideoInfo:Lcom/narvii/video/ui/VideoInfoData;

    return-void
.end method

.method public setVideoMuted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    return-void
.end method

.method public setVoiceMuted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    return-void
.end method

.method public shouldShowFaceDetectHint()Z
    .locals 1

    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->trackingStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "UserStatusData{mUid="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    .line 13
    int-to-long v1, v1

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v3, 0xffffffffL

    .line 19
    and-long/2addr v1, v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, ", mView="

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, ", voiceMuted="

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, ", videoMuted="

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, ", mVolume="

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    iget v1, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const/16 v1, 0x7d

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
