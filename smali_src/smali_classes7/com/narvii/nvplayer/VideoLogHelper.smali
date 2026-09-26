.class public Lcom/narvii/nvplayer/VideoLogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOAD_STATUS_FAIL_OTHERS:I = -0x2

.field public static final LOAD_STATUS_FAIL_RENDER:I = 0x2

.field public static final LOAD_STATUS_FAIL_SOURCE:I = 0x1

.field public static final LOAD_STATUS_SUCCESS:I


# instance fields
.field private bufferStartTime:J

.field private buffering:Z

.field lastVideoDuration:J

.field private mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

.field private noLogging:Z

.field private noLoggingNextPlay:Z

.field private nvContext:Lcom/narvii/app/NVContext;

.field private nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field pendingAutoNext:Z

.field pendingLoopPlay:Z

.field private playId:Ljava/lang/String;

.field private playStartTime:J

.field private playing:Z

.field storyQuitOnBufferingSent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLoggingNextPlay:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/narvii/nvplayer/VideoLogHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->lambda$playAnotherVideo$0()V

    return-void
.end method

.method private getPlayingSceneUrl(Lcom/narvii/model/Scene;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method private getResType(Lcom/narvii/model/Scene;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->getPlayingSceneUrl(Lcom/narvii/model/Scene;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string p1, "360p"

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->getResType(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    return-object p1
.end method

.method private getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getLogNvContext()Lcom/narvii/app/NVContext;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/logging/ActType;->videoPlay:Lcom/narvii/logging/ActType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    .line 39
    move-result-wide v3

    .line 40
    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 45
    move-result-wide v3

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v3, "videoTotalDuration"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    const-string v3, "videoTime"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    const-string v1, "videoPlayId"

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playId:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/narvii/nvplayer/NVMediaSource;->getAreaName()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method private synthetic lambda$playAnotherVideo$0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 10
    return-void
.end method

.method private sendAutoNextPlayEndLog()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/logging/ActSemantic;->videoPlayEnd:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    iget-wide v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playStartTime:J

    .line 17
    sub-long/2addr v1, v3

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "duration"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-wide v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastVideoDuration:J

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "videoTotalDuration"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-wide v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastVideoDuration:J

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-string v2, "videoTime"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const-string v2, "playStatus"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 66
    return-void
.end method

.method private sendVideoPlayEndEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(ILjava/lang/String;)V

    return-void
.end method

.method private sendVideoPlayEndEvent(ILjava/lang/String;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->videoPlayEnd:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "playStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "_errorMessage"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method


# virtual methods
.method public getLogNvContext()Lcom/narvii/app/NVContext;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    instance-of v0, v0, Lcom/narvii/model/PreviewObject;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/model/PreviewObject;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/narvii/model/PreviewObject;->isPreview()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    return-object v1

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNVContext()Lcom/narvii/app/NVContext;

    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 45
    return-object v0
.end method

.method public onLoopPlayCompleteOnce()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendAutoNextPlayEndLog()V

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetPlayId()V

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    .line 30
    return-void
.end method

.method public onPlayError(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(IILjava/lang/String;)V

    return-void
.end method

.method public onPlayError(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "statistics"

    .line 3
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPlayError"

    .line 6
    invoke-interface {v0, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v0

    const-string v3, "code"

    .line 7
    invoke-virtual {v0, v3, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "message"

    .line 8
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "url"

    .line 9
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    if-eqz v2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const-string v0, "youtube"

    .line 10
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_2
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(II)V

    return-void
.end method

.method public onPlayerStateChanged(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(IILjava/lang/String;)V

    return-void
.end method

.method public onPlayerStateChanged(IILjava/lang/String;)V
    .locals 9

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoPlay"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    if-eqz v4, :cond_1

    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    .line 4
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    sget-object v5, Lcom/narvii/logging/ActSemantic;->videoLoadEnd:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v4, v5}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/narvii/nvplayer/VideoLogHelper;->bufferStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "duration"

    invoke-virtual {v4, v6, v5}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    const-string v5, "loadStatus"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    const-string v5, "_errorMessage"

    invoke-virtual {v4, v5, p3}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_1
    iget-boolean v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 6
    invoke-interface {v4}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne p1, v3, :cond_3

    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playStartTime:J

    .line 8
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->videoPlayStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    if-eqz p2, :cond_2

    const-string p2, "videoTime"

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 11
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastVideoDuration:J

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 12
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_7

    :cond_4
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 13
    invoke-direct {p0, p2, p3}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-eqz p1, :cond_6

    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 14
    invoke-direct {p0, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(I)V

    :cond_6
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBufferingSent:Z

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->bufferStartTime:J

    .line 16
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->videoLoadStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_7
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->onLoopPlayCompleteOnce()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "videoPlay"

    .line 3
    .line 4
    const-string v1, "play another video"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 15
    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    sget-object v2, Lcom/narvii/logging/ActSemantic;->videoLoadEnd:Lcom/narvii/logging/ActSemantic;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide v2

    .line 35
    .line 36
    iget-wide v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->bufferStartTime:J

    .line 37
    sub-long/2addr v2, v4

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    const-string v3, "duration"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v2, "loadStatus"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 61
    .line 62
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(I)V

    .line 70
    .line 71
    :cond_2
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_3
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLoggingNextPlay:Z

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    .line 79
    .line 80
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLoggingNextPlay:Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetPlayId()V

    .line 84
    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    .line 91
    move-result p1

    .line 92
    const/4 v0, 0x2

    .line 93
    .line 94
    if-ne p1, v0, :cond_4

    .line 95
    .line 96
    new-instance p1, Lcom/narvii/nvplayer/c;

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/narvii/nvplayer/c;-><init>(Lcom/narvii/nvplayer/VideoLogHelper;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 103
    :cond_4
    return-void
.end method

.method public resetIds()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetPlayId()V

    .line 4
    return-void
.end method

.method public resetPlayId()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playId:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public storyQuitOnBuffering(Lcom/narvii/nvplayer/BufferingQuit;)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBufferingSent:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBufferingSent:Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Lcom/narvii/logging/ActSemantic;->storyQuitOnBuffering:Lcom/narvii/logging/ActSemantic;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->bufferStartTime:J

    .line 28
    sub-long/2addr v1, v3

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "duration"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "bufferingQuitType"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->build()Lcom/narvii/logging/LogEvent;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->isStoryDetailPage(Ljava/lang/String;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    return-void

    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const-string v1, "logEvent"

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Lcom/narvii/logging/service/LogEventService;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, p1}, Lcom/narvii/logging/service/LogEventService;->logEvent(Lcom/narvii/logging/LogEvent;)V

    .line 79
    :cond_1
    return-void
.end method
