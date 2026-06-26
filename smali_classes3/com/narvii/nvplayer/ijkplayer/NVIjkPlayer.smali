.class public Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;
.super Ljava/lang/Object;
.source "NVIjkPlayer.java"

# interfaces
.implements Lcom/narvii/nvplayer/INVPlayer;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# static fields
.field private static nvIjkPlayer:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

.field private static referenceCount:I


# instance fields
.field private audioVolume:F

.field private autoStart:Z

.field private currentWindowIndex:I

.field private firstFrameFlag:Z

.field private ignoreBufferingState:Z

.field private loadIjkSucc:Z

.field private lockMute:Z

.field private loop:Z

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

.field private mVolume:F

.field private mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

.field private mediaPreloadServiceInited:Z

.field private mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

.field private pendingManualWindowChange:Z

.field private playWhenReady:Z

.field private prepared:Z

.field private seekToLastPos:Z

.field private settingBeginTime:J

.field private skipLogNextSeek:Z

.field private videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

.field private windowIndexRunnable:Ljava/lang/Runnable;

.field private ytvFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mPositionMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->loop:Z

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->firstFrameFlag:Z

    const-wide/16 v2, 0x0

    .line 76
    iput-wide v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->settingBeginTime:J

    .line 78
    iput-boolean v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ignoreBufferingState:Z

    const/4 v2, 0x0

    .line 84
    :try_start_0
    invoke-static {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    const-string v2, "libijkplayer.so"

    .line 85
    invoke-static {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 86
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->loadIjkSucc:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 89
    iput-boolean v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->loadIjkSucc:Z

    .line 91
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->initMediaPlayer(Landroid/content/Context;)V

    .line 92
    new-instance v0, Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-direct {v0, p1, p0}, Lcom/narvii/nvplayer/VideoLogHelper;-><init>(Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V

    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->isCurrentYtvUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ytvFlag:I

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/video/MediaPreloadService;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->getMediaPreloadService()Lcom/narvii/video/MediaPreloadService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setSimpleDataSource(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setAutoStart(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepare()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/IVideoListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    return p0
.end method

.method private concatenatingQuickSetting(Landroid/content/Context;[Ljava/lang/String;[F)V
    .locals 11

    .line 538
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v0, v1, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->reset()V

    .line 542
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setOption()V

    .line 544
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_1

    .line 545
    iget-object v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {v2, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 548
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/test.ffconcat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 551
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    .line 555
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 556
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ffconcat version 1.0\n"

    .line 557
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->getMediaPreloadService()Lcom/narvii/video/MediaPreloadService;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "\'\n"

    const-string v6, "file \'"

    const/4 v7, 0x0

    if-eqz p3, :cond_5

    .line 559
    :try_start_2
    array-length v8, p3

    array-length v9, p2

    if-ne v8, v9, :cond_5

    .line 560
    :goto_0
    array-length v8, p2

    if-ge v7, v8, :cond_6

    .line 561
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    aget-object v8, p2, v7

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "http"

    .line 563
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "https"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    .line 564
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Lcom/narvii/video/MediaPreloadService;->translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 566
    :cond_4
    aget-object v8, p2, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "duration "

    .line 569
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    aget v8, p3, v7

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    .line 571
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 574
    :cond_5
    array-length p3, p2

    :goto_2
    if-ge v7, p3, :cond_6

    aget-object v4, p2, v7

    .line 575
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 580
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 581
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "file://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setSimpleDataSource(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    invoke-direct {p0, v1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setAutoStart(Z)V

    .line 583
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_5

    :catch_1
    move-exception p1

    .line 585
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_7

    .line 589
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 591
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void

    :goto_5
    if-eqz v3, :cond_8

    .line 589
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception p2

    .line 591
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 594
    :cond_8
    :goto_6
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private configMediaSource(Lcom/narvii/nvplayer/NVMediaSource;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;
    .locals 2

    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "INVPlayer"

    const-string v1, "NVPlayer is accessed on the wrong thread"

    .line 98
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    sget v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->referenceCount:I

    .line 101
    sget-object v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->nvIjkPlayer:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->nvIjkPlayer:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    .line 104
    :cond_1
    sget-object p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->nvIjkPlayer:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    return-object p0
.end method

.method private getMediaPreloadService()Lcom/narvii/video/MediaPreloadService;
    .locals 2

    .line 719
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaPreloadServiceInited:Z

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    return-object v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 724
    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    goto :goto_0

    :cond_1
    const-string v1, "mediapreload"

    .line 726
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaPreloadService;

    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaPreloadServiceInited:Z

    .line 729
    :goto_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    return-object v0
.end method

.method private initMediaPlayer(Landroid/content/Context;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mContext:Landroid/content/Context;

    .line 463
    iget-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->loadIjkSucc:Z

    if-eqz p1, :cond_0

    .line 464
    new-instance p1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 465
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setOption()V

    goto :goto_0

    .line 467
    :cond_0
    new-instance p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 469
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 470
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 471
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 472
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 473
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private isCurrentYtvUrl(Ljava/lang/String;)Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 193
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private pause()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->playWhenReady:Z

    .line 517
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$3;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$3;-><init>(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private prepare()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 490
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    return-void
.end method

.method private quickSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 109
    invoke-virtual {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->reset()V

    .line 111
    iget v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->audioVolume:F

    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setVolume(F)V

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    .line 113
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 115
    invoke-interface {v2, v3, v0}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v2, :cond_1

    .line 118
    iget-object v3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {v3, v2}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 120
    :cond_1
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 121
    iget-object v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 122
    iget v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ytvFlag:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ytvFlag:I

    .line 123
    iget v6, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ytvFlag:I

    const-string v0, "youtube"

    .line 125
    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeService;

    .line 126
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 127
    new-instance v9, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;-><init>(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v9}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    goto/16 :goto_0

    .line 158
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    .line 160
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    if-eqz v1, :cond_3

    .line 162
    invoke-virtual {v1, p2}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 163
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setSimpleDataSource(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setLoop(Z)V

    .line 165
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setAutoStart(Z)V

    .line 166
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepare()V

    goto :goto_0

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz p1, :cond_7

    .line 169
    new-instance p2, Lcom/narvii/nvplayer/NVVideoException;

    const-string v0, "PhotoManager is null!"

    invoke-direct {p2, v0}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    goto :goto_0

    .line 173
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    :cond_5
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->getMediaPreloadService()Lcom/narvii/video/MediaPreloadService;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 177
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Lcom/narvii/video/MediaPreloadService;->translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 180
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setSimpleDataSource(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setLoop(Z)V

    .line 182
    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setAutoStart(Z)V

    .line 183
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepare()V

    :cond_7
    :goto_0
    return-void
.end method

.method private setAutoStart(Z)V
    .locals 0

    .line 485
    iput-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->autoStart:Z

    return-void
.end method

.method private setOption()V
    .locals 10

    .line 733
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    instance-of v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 734
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const-string v1, "safe"

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 735
    invoke-virtual {v0, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v5, 0x4

    const-string v6, "mediacodec"

    .line 736
    invoke-virtual {v0, v5, v6, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v6, 0x1

    const-string v8, "OPT_CATEGORY_PLAYER"

    .line 737
    invoke-virtual {v0, v5, v8, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v8, "protocol_whitelist"

    const-string v9, "rtmp,concat,ffconcat,file,subfile,http,https,tls,rtp,tcp,udp,crypto"

    .line 738
    invoke-virtual {v0, v4, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0, v4, v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v1, "enable-accurate-seek"

    .line 740
    invoke-virtual {v0, v5, v1, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private setSimpleDataSource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 480
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private start()V
    .locals 2

    .line 496
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0}, Lcom/narvii/nvplayer/IVideoListener;->onRenderedFirstFrame()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->playWhenReady:Z

    .line 501
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;-><init>(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    .line 634
    invoke-virtual {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->release()V

    return-void
.end method

.method public clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    :cond_0
    return-void
.end method

.method public clearVideoSurface()V
    .locals 0

    return-void
.end method

.method public concatenatingQuickSetting(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/narvii/nvplayer/NvVideoClip;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getCurrentPosition()J
    .locals 6

    .line 304
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 308
    iget-object v4, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v4, v4, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-wide v4, v4, Lcom/narvii/model/Media;->duration:J

    sub-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentWindowIndex()I
    .locals 9

    .line 679
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    return v4

    .line 683
    :cond_0
    iget-object v5, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v5, :cond_2

    move-wide v5, v2

    const/4 v2, 0x0

    .line 685
    :goto_0
    iget-object v3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v3, v3, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 686
    iget-object v3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v3, v3, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    iget-wide v7, v3, Lcom/narvii/model/Media;->duration:J

    add-long/2addr v5, v7

    cmp-long v3, v0, v5

    if-gtz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public getDuration()J
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-wide v0, v0, Lcom/narvii/model/Media;->duration:J

    return-wide v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->playWhenReady:Z

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    return v0
.end method

.method public getPlayingUrl()Ljava/lang/String;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getPreCachedSize()J
    .locals 2

    invoke-static {p0}, Lcom/narvii/nvplayer/INVPlayer$-CC;->$default$getPreCachedSize(Lcom/narvii/nvplayer/INVPlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isCached(Ljava/lang/String;JJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic isError()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/nvplayer/INVPlayer$-CC;->$default$isError(Lcom/narvii/nvplayer/INVPlayer;)Z

    move-result v0

    return v0
.end method

.method public synthetic isLoadLowResVideo()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/nvplayer/INVPlayer$-CC;->$default$isLoadLowResVideo(Lcom/narvii/nvplayer/INVPlayer;)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public lockMute(Z)V
    .locals 0

    .line 644
    iput-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->lockMute:Z

    return-void
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    const/4 p1, 0x4

    .line 370
    iput p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    .line 371
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0, v1, p1}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->loop:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/VideoLogHelper;->onLoopPlayCompleteOnce()V

    .line 376
    iput-boolean v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->skipLogNextSeek:Z

    .line 377
    iput-boolean v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ignoreBufferingState:Z

    const-wide/16 v0, 0x0

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->seekTo(J)V

    .line 379
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->start()V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    :goto_0
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    const/4 p1, 0x1

    .line 387
    iput p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    .line 388
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_0

    .line 389
    new-instance v1, Lcom/narvii/nvplayer/NVVideoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ijkPlayer error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    :cond_0
    const/4 p2, -0x2

    const/16 v0, -0x3f2

    if-eq p3, v0, :cond_1

    const/16 v0, -0x3ef

    if-eq p3, v0, :cond_2

    const/16 v0, -0x3ec

    if-eq p3, v0, :cond_2

    const/16 v0, -0x6e

    if-eq p3, v0, :cond_2

    const/4 p1, -0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 403
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {p2, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayError(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_5

    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iput p3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    .line 436
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz p2, :cond_1

    .line 437
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->playWhenReady:Z

    invoke-interface {p2, v0, p3}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 439
    :cond_1
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {p2, p3}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 424
    iput p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    .line 425
    iget-object p3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz p3, :cond_4

    .line 426
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ignoreBufferingState:Z

    if-nez v0, :cond_3

    .line 427
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->playWhenReady:Z

    invoke-interface {p3, v0, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 429
    :cond_3
    iput-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->ignoreBufferingState:Z

    .line 431
    :cond_4
    iget-object p3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {p3, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    goto :goto_0

    .line 411
    :cond_5
    iput p3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mState:I

    .line 412
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz p2, :cond_7

    .line 413
    invoke-interface {p2}, Lcom/narvii/nvplayer/IVideoListener;->onRenderedFirstFrame()V

    .line 414
    iget-boolean p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->firstFrameFlag:Z

    if-eqz p2, :cond_6

    .line 415
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->settingBeginTime:J

    sub-long/2addr v0, v2

    invoke-interface {p2, v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onRenderFirstFrameInterval(J)V

    .line 416
    iput-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->firstFrameFlag:Z

    .line 418
    :cond_6
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->playWhenReady:Z

    invoke-interface {p2, v0, p3}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 420
    :cond_7
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {p2, p3}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    :goto_0
    return p1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    const/4 p1, 0x1

    .line 448
    iput-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepared:Z

    .line 449
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz p1, :cond_1

    .line 450
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->autoStart:Z

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mDuration:J

    .line 454
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz p1, :cond_1

    .line 455
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSizeChanged(II)V

    :cond_1
    return-void
.end method

.method public preload(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
    .locals 5

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->firstFrameFlag:Z

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->settingBeginTime:J

    if-nez p2, :cond_0

    return-void

    .line 609
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    iget-object v2, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 611
    invoke-virtual {v3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 612
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    :cond_2
    invoke-direct {p0, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->configMediaSource(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 616
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 618
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    iget-object p2, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->quickSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0, p3}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setVideoSurface(Landroid/view/Surface;)V

    goto :goto_2

    .line 621
    :cond_4
    invoke-static {v1}, Lcom/narvii/model/MediaHelper;->getVideoUrlsFromMediaList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/narvii/model/MediaHelper;->getVideoDurationsFromMediaList(Ljava/util/List;)[F

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->concatenatingQuickSetting(Landroid/content/Context;[Ljava/lang/String;[F)V

    .line 622
    invoke-virtual {p0, p3}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :goto_2
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepared:Z

    .line 278
    sget v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->referenceCount:I

    .line 279
    sget v0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->referenceCount:I

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    :cond_0
    return-void
.end method

.method public removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->prepared:Z

    .line 266
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 268
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->loadIjkSucc:Z

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->initMediaPlayer(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public synthetic retry()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayer/INVPlayer$-CC;->$default$retry(Lcom/narvii/nvplayer/INVPlayer;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .line 253
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->skipLogNextSeek:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 255
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->skipLogNextSeek:Z

    .line 260
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    return-void
.end method

.method public synthetic seekTo(JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/narvii/nvplayer/INVPlayer$-CC;->$default$seekTo(Lcom/narvii/nvplayer/INVPlayer;JZ)V

    return-void
.end method

.method public seekToWindow(I)V
    .locals 8

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 650
    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 651
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    .line 652
    iget-wide v2, v2, Lcom/narvii/model/Media;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 655
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    if-ltz p1, :cond_4

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 658
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->skipLogNextSeek:Z

    .line 661
    invoke-virtual {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->getCurrentWindowIndex()I

    move-result v1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->pendingManualWindowChange:Z

    .line 662
    invoke-virtual {p0, v4, v5}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->seekTo(J)V

    .line 663
    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v2, 0x0

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;Z)V

    goto :goto_4

    .line 665
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekToWindow: error window index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "INVPlayer"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->loop:Z

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setPlayWhenReady(ZZ)V

    return-void
.end method

.method public setPlayWhenReady(ZZ)V
    .locals 2

    if-nez p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz p1, :cond_0

    .line 231
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mPositionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVMediaSource;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->pause()V

    goto :goto_1

    .line 235
    :cond_1
    iput-boolean p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->seekToLastPos:Z

    .line 236
    iget-boolean p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->seekToLastPos:Z

    if-eqz p1, :cond_3

    .line 237
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-nez p1, :cond_2

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mPositionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVMediaSource;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    if-eqz p1, :cond_3

    .line 239
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->seekTo(J)V

    .line 242
    :cond_3
    invoke-direct {p0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->start()V

    :goto_1
    return-void
.end method

.method public setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 2

    .line 201
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mSurface:Landroid/view/Surface;

    .line 202
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 203
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p1

    .line 204
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v1, p1, v0}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->lockMute:Z

    if-eqz v0, :cond_0

    return-void

    .line 349
    :cond_0
    iput p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->audioVolume:F

    .line 350
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public size()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
