.class public Lcom/narvii/nvplayer/VideoLogHelper;
.super Ljava/lang/Object;
.source "VideoLogHelper.java"


# static fields
.field public static final LOAD_STATUS_FAIL_OTHERS:I = -0x2

.field public static final LOAD_STATUS_FAIL_RENDER:I = 0x2

.field public static final LOAD_STATUS_FAIL_SOURCE:I = 0x1

.field public static final LOAD_STATUS_SUCCESS:I


# instance fields
.field private bufferStartTime:J

.field private buffering:Z

.field private context:Landroid/content/Context;

.field lastResType:Ljava/lang/String;

.field lastScene:Lcom/narvii/model/Scene;

.field lastSceneLoadingUrl:Ljava/lang/String;

.field lastScenePlayingUrl:Ljava/lang/String;

.field lastVideoDuration:J

.field private lastWindowIndex:I

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

.field private storyPlayId:Ljava/lang/String;

.field private storyPlaying:Z

.field storyQuitOnBufferingSent:Z

.field private storyStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    .line 40
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLoggingNextPlay:Z

    .line 48
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    .line 49
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    .line 60
    iput-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->context:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 62
    iput-object p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-void
.end method

.method private getCurrentPlayingScene()Lcom/narvii/model/Scene;
    .locals 3

    .line 314
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->isStory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    .line 316
    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentWindowIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 320
    :cond_0
    iget-object v2, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-ltz v1, :cond_1

    iget-object v2, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 321
    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Scene;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPlayingSceneUrl(Lcom/narvii/model/Scene;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p1, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getResType(Lcom/narvii/model/Scene;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 349
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->getPlayingSceneUrl(Lcom/narvii/model/Scene;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    instance-of v1, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v1, :cond_1

    .line 352
    check-cast v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 353
    iget-boolean v0, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "360p"

    goto :goto_0

    .line 356
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->getResType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getStoryLogBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 5

    .line 382
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getLogNvContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 384
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getTotalDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "storyTotalDuration"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 385
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getStoryTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "storyTime"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v1}, Lcom/narvii/nvplayer/NVMediaSource;->getAreaName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlayId:Ljava/lang/String;

    const-string v2, "storyPlayId"

    .line 387
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getStoryTime()J
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentWindowIndex()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 370
    :try_start_0
    iget-object v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v4, v4, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-wide v4, v4, Lcom/narvii/model/Media;->duration:J

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v1, v3

    return-wide v1

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method private getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 9

    .line 332
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getCurrentPlayingScene()Lcom/narvii/model/Scene;

    move-result-object v0

    .line 333
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->getResType(Lcom/narvii/model/Scene;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getLogNvContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/narvii/logging/ActType;->videoPlay:Lcom/narvii/logging/ActType;

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 336
    invoke-interface {v3}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "videoTotalDuration"

    invoke-virtual {v2, v5, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 337
    invoke-interface {v3}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "videoTime"

    invoke-virtual {v2, v5, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playId:Ljava/lang/String;

    const-string v5, "videoPlayId"

    .line 338
    invoke-virtual {v2, v5, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {v3}, Lcom/narvii/nvplayer/NVMediaSource;->getAreaName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlayId:Ljava/lang/String;

    const-string v5, "storyPlayId"

    .line 340
    invoke-virtual {v2, v5, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    :cond_2
    const-string v0, "sceneId"

    .line 341
    invoke-virtual {v2, v0, v4}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v2, "resType"

    .line 342
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private isStory()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetStoryPlayId()V
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->isStory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlayId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlayId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private sendAutoNextPlayEndLog()V
    .locals 5

    .line 293
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

    iget-wide v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastVideoDuration:J

    .line 294
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "videoTotalDuration"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastVideoDuration:J

    .line 295
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "videoTime"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastScene:Lcom/narvii/model/Scene;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "sceneId"

    .line 296
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastResType:Ljava/lang/String;

    const-string v2, "resType"

    .line 297
    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playStatus"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private sendStoryStopEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendStoryStopEvent(Z)V

    return-void
.end method

.method private sendStoryStopEvent(Z)V
    .locals 5

    .line 307
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getStoryLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->stop:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/narvii/logging/ActType;->autoPlay:Lcom/narvii/logging/ActType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 309
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getTotalDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getStoryTime()J

    move-result-wide v1

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "storyTime"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method private sendVideoPlayEndEvent(I)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(ILjava/lang/String;)V

    return-void
.end method

.method private sendVideoPlayEndEvent(ILjava/lang/String;)V
    .locals 6

    .line 175
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->isStory()Z

    move-result v0

    .line 176
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActSemantic;->videoPlayEnd:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "playStatus"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastScene:Lcom/narvii/model/Scene;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const-string v3, "sceneId"

    invoke-virtual {v1, v3, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 180
    iget-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastResType:Ljava/lang/String;

    const-string v3, "resType"

    invoke-virtual {v1, v3, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    const-string p1, "_errorMessage"

    .line 182
    invoke-virtual {v1, p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 183
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method


# virtual methods
.method public getLogNvContext()Lcom/narvii/app/NVContext;
    .locals 2

    .line 393
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/PreviewObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNvObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PreviewObject;

    invoke-interface {v0}, Lcom/narvii/model/PreviewObject;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNVContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    return-object v0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getStoryPlayId()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlayId:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$playAnotherVideo$0$VideoLogHelper()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    return-void
.end method

.method public onLoopPlayCompleteOnce()V
    .locals 3

    .line 208
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 209
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 210
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendAutoNextPlayEndLog()V

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 214
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    .line 215
    invoke-direct {p0, v2}, Lcom/narvii/nvplayer/VideoLogHelper;->sendStoryStopEvent(Z)V

    .line 217
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    .line 218
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetStoryPlayId()V

    .line 219
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetPlayId()V

    .line 220
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    .line 221
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 222
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    return-void
.end method

.method public onPlayError(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(IILjava/lang/String;)V

    return-void
.end method

.method public onPlayError(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 193
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(IILjava/lang/String;)V

    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(II)V

    return-void
.end method

.method public onPlayerStateChanged(II)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(IILjava/lang/String;)V

    return-void
.end method

.method public onPlayerStateChanged(IILjava/lang/String;)V
    .locals 9

    .line 99
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

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 123
    :cond_0
    iget-boolean v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    if-eqz v4, :cond_2

    .line 124
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    .line 125
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

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "loadStatus"

    invoke-virtual {v4, v6, v5}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->isStory()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string v6, "_errorMessage"

    invoke-virtual {v4, v6, v5}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v4

    .line 126
    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 128
    :cond_2
    iget-boolean v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v4}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p1, v3, :cond_4

    .line 129
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playStartTime:J

    .line 131
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    sget-object p3, Lcom/narvii/logging/ActSemantic;->videoPlayStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p2, p3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    .line 132
    iget-boolean p3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    if-eqz p3, :cond_3

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v4, "videoTime"

    invoke-virtual {p2, v4, p3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 135
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 136
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getCurrentPlayingScene()Lcom/narvii/model/Scene;

    move-result-object p2

    .line 137
    invoke-direct {p0, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->getPlayingSceneUrl(Lcom/narvii/model/Scene;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastScenePlayingUrl:Ljava/lang/String;

    .line 138
    invoke-direct {p0, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->getResType(Lcom/narvii/model/Scene;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastResType:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastScene:Lcom/narvii/model/Scene;

    .line 140
    iget-object p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p2}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastVideoDuration:J

    goto :goto_1

    .line 141
    :cond_4
    iget-boolean v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v4}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne p1, v0, :cond_6

    .line 142
    :cond_5
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 143
    invoke-direct {p0, p2, p3}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(ILjava/lang/String;)V

    .line 146
    :cond_6
    :goto_1
    iget-boolean p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    if-nez p2, :cond_8

    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->isStory()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p2}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_8

    if-ne p1, v3, :cond_8

    .line 147
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyStartTime:J

    .line 149
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getStoryLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->play:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 150
    iget-boolean p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    if-eqz p2, :cond_7

    .line 151
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    .line 152
    sget-object p2, Lcom/narvii/logging/ActType;->autoPlay:Lcom/narvii/logging/ActType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 154
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_2

    .line 155
    :cond_8
    iget-boolean p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p2}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_9

    if-ne p1, v0, :cond_d

    .line 156
    :cond_9
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    .line 157
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendStoryStopEvent()V

    goto :goto_2

    .line 102
    :cond_a
    iget-boolean p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    if-nez p1, :cond_d

    .line 103
    iget-boolean p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-eqz p1, :cond_b

    .line 104
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    .line 105
    invoke-direct {p0, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(I)V

    .line 108
    :cond_b
    iget-boolean p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    if-eqz p1, :cond_c

    .line 109
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    .line 110
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendStoryStopEvent()V

    .line 112
    :cond_c
    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    .line 113
    iput-boolean v2, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBufferingSent:Z

    .line 115
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getCurrentPlayingScene()Lcom/narvii/model/Scene;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->getResType(Lcom/narvii/model/Scene;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastResType:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getCurrentPlayingScene()Lcom/narvii/model/Scene;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->getPlayingSceneUrl(Lcom/narvii/model/Scene;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastSceneLoadingUrl:Ljava/lang/String;

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->bufferStartTime:J

    .line 118
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->videoLoadStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_d
    :goto_2
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    instance-of v1, v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-eqz v1, :cond_1

    .line 407
    check-cast v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 408
    iput v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastWindowIndex:I

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->onLoopPlayCompleteOnce()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 414
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;Z)V

    return-void
.end method

.method public playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;ZZ)V

    return-void
.end method

.method public playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;ZZ)V
    .locals 6

    const-string v0, "videoPlay"

    const-string v1, "play another video"

    .line 243
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingLoopPlay:Z

    if-eqz p1, :cond_0

    .line 246
    iput-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 248
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    if-eqz v1, :cond_1

    .line 249
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    .line 250
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActSemantic;->videoLoadEnd:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/narvii/nvplayer/VideoLogHelper;->bufferStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "loadStatus"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 252
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-eqz v1, :cond_3

    .line 253
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playing:Z

    if-eqz p3, :cond_2

    .line 255
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendAutoNextPlayEndLog()V

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendVideoPlayEndEvent(I)V

    .line 261
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 262
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyPlaying:Z

    .line 263
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->sendStoryStopEvent()V

    :cond_4
    if-eqz p1, :cond_5

    .line 267
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    goto :goto_1

    .line 269
    :cond_5
    iget-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLoggingNextPlay:Z

    iput-boolean v1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLogging:Z

    .line 271
    :goto_1
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLoggingNextPlay:Z

    if-eqz p2, :cond_6

    .line 273
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetStoryPlayId()V

    .line 275
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetPlayId()V

    if-nez p1, :cond_8

    if-eqz p3, :cond_7

    const/4 p1, 0x1

    .line 278
    iput-boolean p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    .line 279
    iget-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 280
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->pendingAutoNext:Z

    goto :goto_2

    .line 283
    :cond_7
    iget-object p1, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayerState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    .line 284
    new-instance p1, Lcom/narvii/nvplayer/-$$Lambda$VideoLogHelper$7wLhg1GX_z7M-Fwz6dQ1Bl8Ldgk;

    invoke-direct {p1, p0}, Lcom/narvii/nvplayer/-$$Lambda$VideoLogHelper$7wLhg1GX_z7M-Fwz6dQ1Bl8Ldgk;-><init>(Lcom/narvii/nvplayer/VideoLogHelper;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 288
    :cond_8
    iput v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->lastWindowIndex:I

    :cond_9
    :goto_2
    return-void
.end method

.method public resetIds()V
    .locals 0

    .line 421
    invoke-virtual {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetPlayId()V

    .line 422
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->resetStoryPlayId()V

    return-void
.end method

.method public resetPlayId()V
    .locals 1

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->playId:Ljava/lang/String;

    return-void
.end method

.method public setNoLoggingNextPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->noLoggingNextPlay:Z

    return-void
.end method

.method public storyQuitOnBuffering(Lcom/narvii/nvplayer/BufferingQuit;)V
    .locals 5

    .line 83
    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->buffering:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBufferingSent:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->storyQuitOnBufferingSent:Z

    .line 85
    invoke-direct {p0}, Lcom/narvii/nvplayer/VideoLogHelper;->getVideoLogBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->storyQuitOnBuffering:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/narvii/nvplayer/VideoLogHelper;->bufferStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bufferingQuitType"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->build()Lcom/narvii/logging/LogEvent;

    move-result-object p1

    .line 86
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->isStoryDetailPage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/VideoLogHelper;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    const-string v1, "logEvent"

    .line 90
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/logging/service/LogEventService;

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v0, p1}, Lcom/narvii/logging/service/LogEventService;->logEvent(Lcom/narvii/logging/LogEvent;)V

    :cond_1
    return-void
.end method
