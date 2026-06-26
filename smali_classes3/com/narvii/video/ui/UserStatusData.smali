.class public Lcom/narvii/video/ui/UserStatusData;
.super Ljava/lang/Object;
.source "UserStatusData.java"


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

    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;ZZILcom/narvii/video/ui/VideoInfoData;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/SurfaceView;ZZILcom/narvii/video/ui/VideoInfoData;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/narvii/video/ui/UserStatusData;->streamType:I

    .line 54
    iput v0, p0, Lcom/narvii/video/ui/UserStatusData;->trackingStatus:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    .line 65
    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    .line 66
    iput-object p2, p0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 67
    iput-boolean p4, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    .line 68
    iput-boolean p3, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    .line 69
    iput p5, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 70
    iput-object p6, p0, Lcom/narvii/video/ui/UserStatusData;->mVideoInfo:Lcom/narvii/video/ui/VideoInfoData;

    return-void
.end method

.method public static getVolumeLevel(I)I
    .locals 1

    .line 141
    div-int/lit8 v0, p0, 0x40

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 177
    :cond_1
    instance-of v2, p1, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v2, :cond_2

    .line 178
    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    .line 179
    iget-boolean v2, p1, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    iget-boolean v3, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p1, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    iget-boolean v3, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->audioRoute:I

    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->audioRoute:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    iget v3, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    iget v2, p0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAudioQuality()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->audioQuality:I

    return v0
.end method

.method public getCurVolumeLevel()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    invoke-static {v0}, Lcom/narvii/video/ui/UserStatusData;->getVolumeLevel(I)I

    move-result v0

    return v0
.end method

.method public getTrackingStatus()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->trackingStatus:I

    return v0
.end method

.method public getVideoFrameStatus()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    return v0
.end method

.method public getVideoInfoData()Lcom/narvii/video/ui/VideoInfoData;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/video/ui/UserStatusData;->mVideoInfo:Lcom/narvii/video/ui/VideoInfoData;

    return-object v0
.end method

.method public isBadNetwork()Z
    .locals 1

    .line 128
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

    .line 166
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

    .line 192
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

    .line 120
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

    .line 132
    iget-boolean v0, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    return v0
.end method

.method public isVoiceMuted()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    return v0
.end method

.method public needUpdateNetWorkSummary(I)Z
    .locals 2

    .line 146
    invoke-direct {p0, p1}, Lcom/narvii/video/ui/UserStatusData;->isGoodNetwork(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/video/ui/UserStatusData;->audioQuality:I

    invoke-direct {p0, p1}, Lcom/narvii/video/ui/UserStatusData;->isSlowNetwork(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 149
    :goto_0
    iget v1, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkSummary:I

    if-eq p1, v1, :cond_1

    .line 150
    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->netWorkSummary:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setAudioQuality(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->audioQuality:I

    return-void
.end method

.method public setTrackingStatus(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->trackingStatus:I

    return-void
.end method

.method public setVideoFrameStatus(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    return-void
.end method

.method public setVideoInfo(Lcom/narvii/video/ui/VideoInfoData;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/video/ui/UserStatusData;->mVideoInfo:Lcom/narvii/video/ui/VideoInfoData;

    return-void
.end method

.method public setVideoMuted(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    return-void
.end method

.method public setVoiceMuted(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    return-void
.end method

.method public shouldShowFaceDetectHint()Z
    .locals 1

    .line 83
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

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserStatusData{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/video/ui/UserStatusData;->mUid:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voiceMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
