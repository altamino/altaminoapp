.class public Lcom/narvii/video/model/WorkerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGE_VIDEO_PROFILE:I = 0x2015

.field private static final ACTION_CONFIG_AUDIO_MANAGER:I = 0x2016

.field private static final ACTION_CONFIG_CHANGE_ROLE:I = 0x2017

.field private static final ACTION_WORKER_CONFIG_AUDIO:I = 0x2013

.field private static final ACTION_WORKER_CONFIG_ENGINE:I = 0x2012

.field private static final ACTION_WORKER_JOIN_CHANNEL:I = 0x2010

.field private static final ACTION_WORKER_LEAVE_CHANNEL:I = 0x2011

.field private static final ACTION_WORKER_PREVIEW:I = 0x2014

.field private static final ACTION_WORKER_THREAD_QUIT:I = 0x1010

.field private static final TAG:Ljava/lang/String; = "WorkerThread"


# instance fields
.field private appId:Ljava/lang/String;

.field private curChannelProfile:I

.field private isDebug:Z

.field private isScreenRoomHostSetBefore:Z

.field private final mContext:Landroid/content/Context;

.field private mEngineConfig:Lcom/narvii/video/model/EngineConfig;

.field private final mEngineEventHandler:Lcom/narvii/video/model/MyEngineEventHandler;

.field private mReady:Z

.field private mRtcEngine:Lio/agora/rtc/RtcEngine;

.field private mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

.field private oldChannelProfile:I

.field private swapWidthHeight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/video/model/EngineConfig;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2}, Lcom/narvii/video/model/EngineConfig;-><init>()V

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/narvii/video/model/WorkerThread;->appId:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p4, p0, Lcom/narvii/video/model/WorkerThread;->isDebug:Z

    .line 19
    .line 20
    const-string p2, "agora_prefs"

    .line 21
    const/4 p3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    iget-object p4, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 28
    .line 29
    const-string v0, "pOCXx_uid"

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 33
    move-result p2

    .line 34
    .line 35
    iput p2, p4, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/video/model/MyEngineEventHandler;

    .line 38
    .line 39
    iget-object p3, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p1, p3}, Lcom/narvii/video/model/MyEngineEventHandler;-><init>(Landroid/content/Context;Lcom/narvii/video/model/EngineConfig;)V

    .line 43
    .line 44
    iput-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mEngineEventHandler:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configChannelProfile()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setChannelProfile(I)I

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/model/WorkerThread;->oldChannelProfile:I

    .line 12
    const/4 v1, 0x3

    .line 13
    .line 14
    const/16 v2, 0xc8

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->enableVideo()I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1, v3}, Lio/agora/rtc/RtcEngine;->enableAudioVolumeIndication(IIZ)I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lio/agora/rtc/RtcEngine;->setVideoQualityParameters(Z)I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1, v3}, Lio/agora/rtc/RtcEngine;->enableAudioVolumeIndication(IIZ)I

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/video/model/WorkerThread;->appId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/video/model/WorkerThread;->mEngineEventHandler:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/narvii/video/model/MyEngineEventHandler;->mRtcEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lio/agora/rtc/RtcEngine;->create(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)Lio/agora/rtc/RtcEngine;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->configChannelProfile()V

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->isDebug:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    new-instance v1, Ljava/io/File;

    .line 39
    .line 40
    const-string v2, "AVChat"

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    new-instance v0, Ljava/io/File;

    .line 49
    .line 50
    const-string v2, "avchat.log"

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lio/agora/rtc/RtcEngine;->setLogFile(Ljava/lang/String;)I

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_0
    iget v0, p0, Lcom/narvii/video/model/WorkerThread;->oldChannelProfile:I

    .line 66
    .line 67
    iget v1, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    .line 68
    .line 69
    if-eq v0, v1, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->configChannelProfile()V

    .line 73
    .line 74
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 75
    return-object v0
.end method


# virtual methods
.method public changeRole(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/video/model/WorkerThread;->configEngineRole(I)V

    .line 4
    return-void
.end method

.method public final changeVideoProfile(IZ)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq v0, p0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    const/16 v1, 0x2015

    .line 14
    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    aput-object p1, v1, v2

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    aput-object p2, v1, p1

    .line 33
    .line 34
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    return-void

    .line 41
    .line 42
    :cond_0
    iput-boolean p2, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 48
    .line 49
    iput p1, v0, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, Lio/agora/rtc/RtcEngine;->setVideoProfile(IZ)I

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 61
    .line 62
    .line 63
    const-string/jumbo p2, "{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 70
    .line 71
    .line 72
    const-string/jumbo p2, "{\"che.video.lowBitRateStreamParameter\":{\"width\":320,\"height\":180,\"frameRate\":15,\"bitRate\":140}}"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void
.end method

.method public final configAudioManger(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 13
    .line 14
    const/16 v2, 0x2016

    .line 15
    .line 16
    iput v2, v0, Landroid/os/Message;->what:I

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    aput-object p1, v1, v2

    .line 26
    .line 27
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "{\"che.audio.stream_type\":3}"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v0, "{\"che.audio.audioMode\":0}"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/narvii/video/model/WorkerThread;->isScreenRoomHostSetBefore:Z

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/video/model/WorkerThread;->isScreenRoomHostSetBefore:Z

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v0, "{\"che.audio.stream_type\":-1}"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 72
    .line 73
    .line 74
    const-string/jumbo v0, "{\"che.audio.audioMode\":3}"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 78
    :cond_2
    :goto_0
    return-void
.end method

.method public final configAudioSource(ZII)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq v0, p0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    const/16 v1, 0x2013

    .line 14
    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    const/4 v1, 0x3

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    aput-object p1, v1, v2

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    aput-object p2, v1, p1

    .line 33
    const/4 p1, 0x2

    .line 34
    .line 35
    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    aput-object p2, v1, p1

    .line 40
    .line 41
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p2, p3}, Lio/agora/rtc/RtcEngine;->setExternalAudioSource(ZII)I

    .line 56
    return-void
.end method

.method public final configEngine(IIZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    return-void
.end method

.method public final configEngine(IIZZZ)V
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x1

    if-eq v0, p0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configEngine() - worker thread asynchronously "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2012

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iput-boolean p4, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    .line 7
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 8
    iput p1, v0, Lcom/narvii/video/model/EngineConfig;->mClientRole:I

    .line 9
    iput p2, v0, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    iput-boolean p4, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 10
    invoke-virtual {p2}, Lio/agora/rtc/RtcEngine;->isTextureEncodeSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 11
    invoke-virtual {p2, v2, v2, v2}, Lio/agora/rtc/RtcEngine;->setExternalVideoSource(ZZZ)V

    goto :goto_0

    :cond_1
    const-string p2, "Can not work on device do not supporting texture"

    .line 12
    invoke-static {p2}, Lcom/narvii/video/ui/Utils;->logE(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    iget-object p3, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 13
    iget p3, p3, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    invoke-virtual {p2, p3, p4}, Lio/agora/rtc/RtcEngine;->setVideoProfile(IZ)I

    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 14
    invoke-virtual {p2, p1}, Lio/agora/rtc/RtcEngine;->setClientRole(I)I

    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 15
    invoke-virtual {p2, p5}, Lio/agora/rtc/RtcEngine;->muteLocalVideoStream(Z)I

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "configEngine "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    iget p1, p1, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final configEngineRole(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq v0, p0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    const/16 v1, 0x2017

    .line 14
    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    aput-object p1, v1, v2

    .line 26
    .line 27
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->setClientRole(I)I

    .line 42
    return-void
.end method

.method public destroyRtcEngine()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lio/agora/rtc/RtcEngine;->destroy()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->mReady:Z

    .line 14
    :cond_0
    return-void
.end method

.method public final disablePreProcessor()V
    .locals 0

    return-void
.end method

.method public doConfig(IZ)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 3
    .line 4
    iget v3, v0, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    .line 5
    const/4 v4, 0x1

    .line 6
    .line 7
    iget-boolean v5, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    .line 8
    move-object v1, p0

    .line 9
    move v2, p1

    .line 10
    move v6, p2

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    .line 14
    return-void
.end method

.method public final enablePreProcessor()V
    .locals 0

    return-void
.end method

.method public eventHandler()Lcom/narvii/video/model/MyEngineEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineEventHandler:Lcom/narvii/video/model/MyEngineEventHandler;

    return-object v0
.end method

.method public final exit()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq v0, p0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "exit() - exit app thread asynchronously"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 16
    .line 17
    const/16 v1, 0x1010

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->mReady:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 27
    .line 28
    const/16 v1, 0x2010

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 34
    .line 35
    const/16 v1, 0x2011

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 41
    .line 42
    const/16 v1, 0x2012

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 48
    .line 49
    const/16 v1, 0x2014

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, "exit() > start"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->release()V

    .line 72
    .line 73
    const-string v1, "exit() > end"

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public getCurChannelprofile()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    return v0
.end method

.method public final getEngineConfig()Lcom/narvii/video/model/EngineConfig;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    return-object v0
.end method

.method public getRtcEngine()Lio/agora/rtc/RtcEngine;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 10
    return-object v0
.end method

.method public isTextureEncodeSupported()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final joinChannel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, " "

    .line 7
    .line 8
    if-eq v0, p0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v3, "joinChannel() - worker thread asynchronously "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    new-instance v0, Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 42
    .line 43
    const/16 v1, 0x2010

    .line 44
    .line 45
    iput v1, v0, Landroid/os/Message;->what:I

    .line 46
    .line 47
    .line 48
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 65
    .line 66
    iput p3, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 69
    const/4 v2, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1, p2, v2, p3}, Lio/agora/rtc/RtcEngine;->joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 75
    .line 76
    iput-object p2, v0, Lcom/narvii/video/model/EngineConfig;->mChannel:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/video/model/WorkerThread;->enablePreProcessor()V

    .line 80
    .line 81
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v3, "joinChannel "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final leaveChannel(Ljava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/video/model/ChannelActionCallback<",
            "Lcom/narvii/video/model/ChannelActionResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eq v0, p0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v4, "leaveChannel() - worker thread asynchronously "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v3}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    new-instance v0, Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 36
    .line 37
    const/16 v3, 0x2011

    .line 38
    .line 39
    iput v3, v0, Landroid/os/Message;->what:I

    .line 40
    const/4 v3, 0x2

    .line 41
    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p1, v3, v2

    .line 45
    .line 46
    aput-object p2, v3, v1

    .line 47
    .line 48
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    return-void

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->leaveChannel()I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/video/model/ChannelActionResult;

    .line 69
    const/4 v2, 0x0

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1, v2}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_1
    new-instance v0, Lcom/narvii/video/model/ChannelActionResult;

    .line 76
    .line 77
    sget-object v1, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2, v1}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-interface {p2, v0}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/model/WorkerThread;->disablePreProcessor()V

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/narvii/video/model/EngineConfig;->reset()V

    .line 92
    .line 93
    sget-object p2, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v1, "leaveChannel "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-static {p2, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final preview(ZLandroid/view/SurfaceView;I)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v3, "preview() - worker thread asynchronously "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, " "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    int-to-long v3, p3

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide v5, 0xffffffffL

    .line 40
    and-long/2addr v3, v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    new-instance v0, Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 56
    .line 57
    const/16 v2, 0x2014

    .line 58
    .line 59
    iput v2, v0, Landroid/os/Message;->what:I

    .line 60
    const/4 v2, 0x3

    .line 61
    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    const/4 v3, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    aput-object p1, v2, v3

    .line 70
    .line 71
    aput-object p2, v2, v1

    .line 72
    const/4 p1, 0x2

    .line 73
    .line 74
    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    aput-object p2, v2, p1

    .line 79
    .line 80
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    return-void

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 94
    .line 95
    new-instance v0, Lio/agora/rtc/video/VideoCanvas;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, p2, v1, p3}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/View;II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setupLocalVideo(Lio/agora/rtc/video/VideoCanvas;)I

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->startPreview()I

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->stopPreview()I

    .line 113
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "start to run"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;-><init>(Lcom/narvii/video/model/WorkerThread;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->mReady:Z

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 27
    return-void
.end method

.method public setCurChannelProfile(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    return-void
.end method

.method public final waitForReady()V
    .locals 3

    .line 1
    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->mReady:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x14

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_1

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    :goto_1
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "wait for "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-class v2, Lcom/narvii/video/model/WorkerThread;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
