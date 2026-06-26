.class public Lcom/narvii/video/model/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


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

.field private static final TAG:Ljava/lang/String;


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
    .locals 1

    .line 24
    const-class v0, Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mContext:Landroid/content/Context;

    .line 329
    iput p2, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    .line 330
    new-instance p2, Lcom/narvii/video/model/EngineConfig;

    invoke-direct {p2}, Lcom/narvii/video/model/EngineConfig;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    .line 331
    iput-object p3, p0, Lcom/narvii/video/model/WorkerThread;->appId:Ljava/lang/String;

    .line 332
    iput-boolean p4, p0, Lcom/narvii/video/model/WorkerThread;->isDebug:Z

    const/4 p2, 0x0

    const-string p3, "agora_prefs"

    .line 333
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 334
    iget-object p3, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    const-string p4, "pOCXx_uid"

    invoke-interface {p1, p4, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p3, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 335
    new-instance p1, Lcom/narvii/video/model/MyEngineEventHandler;

    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    invoke-direct {p1, p2, p3}, Lcom/narvii/video/model/MyEngineEventHandler;-><init>(Landroid/content/Context;Lcom/narvii/video/model/EngineConfig;)V

    iput-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mEngineEventHandler:Lcom/narvii/video/model/MyEngineEventHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configChannelProfile()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    iget v1, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setChannelProfile(I)I

    .line 285
    iget v0, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    iput v0, p0, Lcom/narvii/video/model/WorkerThread;->oldChannelProfile:I

    const/4 v1, 0x3

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 287
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->enableVideo()I

    .line 288
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0, v2, v1, v3}, Lio/agora/rtc/RtcEngine;->enableAudioVolumeIndication(IIZ)I

    .line 289
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string v1, "{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}"

    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0, v3}, Lio/agora/rtc/RtcEngine;->setVideoQualityParameters(Z)I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0, v2, v1, v3}, Lio/agora/rtc/RtcEngine;->enableAudioVolumeIndication(IIZ)I

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    if-nez v0, :cond_0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/narvii/video/model/WorkerThread;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/video/model/WorkerThread;->mEngineEventHandler:Lcom/narvii/video/model/MyEngineEventHandler;

    iget-object v2, v2, Lcom/narvii/video/model/MyEngineEventHandler;->mRtcEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    invoke-static {v0, v1, v2}, Lio/agora/rtc/RtcEngine;->create(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)Lio/agora/rtc/RtcEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->configChannelProfile()V

    .line 270
    iget-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->isDebug:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/io/File;

    const-string v2, "AVChat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 274
    new-instance v0, Ljava/io/File;

    const-string v2, "avchat.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/agora/rtc/RtcEngine;->setLogFile(Ljava/lang/String;)I

    goto :goto_1

    .line 277
    :cond_0
    iget v0, p0, Lcom/narvii/video/model/WorkerThread;->oldChannelProfile:I

    iget v1, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    if-eq v0, v1, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->configChannelProfile()V

    .line 280
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    return-object v0
.end method


# virtual methods
.method public changeRole(I)V
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lcom/narvii/video/model/WorkerThread;->configEngineRole(I)V

    return-void
.end method

.method public final changeVideoProfile(IZ)V
    .locals 3

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 225
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2015

    .line 226
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 232
    :cond_0
    iput-boolean p2, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    .line 233
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 234
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    iput p1, v0, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    .line 235
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    iget v0, v0, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    iget-boolean v1, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    invoke-virtual {p1, v0, v1}, Lio/agora/rtc/RtcEngine;->setVideoProfile(IZ)I

    if-eqz p2, :cond_1

    .line 237
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string p2, "{\"che.video.lowBitRateStreamParameter\":{\"width\":180,\"height\":320,\"frameRate\":15,\"bitRate\":140}}"

    invoke-virtual {p1, p2}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string p2, "{\"che.video.lowBitRateStreamParameter\":{\"width\":320,\"height\":180,\"frameRate\":15,\"bitRate\":140}}"

    invoke-virtual {p1, p2}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final configAudioManger(Z)V
    .locals 3

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p0, :cond_0

    .line 205
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x2016

    .line 206
    iput v2, v0, Landroid/os/Message;->what:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string v0, "{\"che.audio.stream_type\":3}"

    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string v0, "{\"che.audio.audioMode\":0}"

    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 215
    iput-boolean v1, p0, Lcom/narvii/video/model/WorkerThread;->isScreenRoomHostSetBefore:Z

    goto :goto_0

    .line 216
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/video/model/WorkerThread;->isScreenRoomHostSetBefore:Z

    if-eqz p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string v0, "{\"che.audio.stream_type\":-1}"

    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string v0, "{\"che.audio.audioMode\":3}"

    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setParameters(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final configAudioSource(ZII)V
    .locals 3

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 157
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2013

    .line 158
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 159
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 165
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/rtc/RtcEngine;->setExternalAudioSource(ZII)I

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

    .line 170
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    return-void
.end method

.method public final configEngine(IIZZZ)V
    .locals 4

    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x1

    if-eq v0, p0, :cond_0

    .line 175
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

    .line 176
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2012

    .line 177
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 178
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

    .line 179
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 183
    :cond_0
    iput-boolean p4, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    .line 184
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 185
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    iput p1, v0, Lcom/narvii/video/model/EngineConfig;->mClientRole:I

    .line 186
    iput p2, v0, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    .line 188
    iput-boolean p4, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    if-eqz p3, :cond_2

    .line 190
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p2}, Lio/agora/rtc/RtcEngine;->isTextureEncodeSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 191
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p2, v2, v2, v2}, Lio/agora/rtc/RtcEngine;->setExternalVideoSource(ZZZ)V

    goto :goto_0

    :cond_1
    const-string p2, "Can not work on device do not supporting texture"

    .line 193
    invoke-static {p2}, Lcom/narvii/video/ui/Utils;->logE(Ljava/lang/String;)V

    .line 197
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    iget-object p3, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    iget p3, p3, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    invoke-virtual {p2, p3, p4}, Lio/agora/rtc/RtcEngine;->setVideoProfile(IZ)I

    .line 198
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p2, p1}, Lio/agora/rtc/RtcEngine;->setClientRole(I)I

    .line 199
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p2, p5}, Lio/agora/rtc/RtcEngine;->muteLocalVideoStream(Z)I

    .line 200
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

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 143
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2017

    .line 144
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 151
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->setClientRole(I)I

    return-void
.end method

.method public final disablePreProcessor()V
    .locals 0

    return-void
.end method

.method public doConfig(IZ)V
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    iget v3, v0, Lcom/narvii/video/model/EngineConfig;->mVideoProfile:I

    .line 134
    iget-boolean v5, p0, Lcom/narvii/video/model/WorkerThread;->swapWidthHeight:Z

    const/4 v4, 0x1

    move-object v1, p0

    move v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    return-void
.end method

.method public final enablePreProcessor()V
    .locals 0

    return-void
.end method

.method public eventHandler()Lcom/narvii/video/model/MyEngineEventHandler;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineEventHandler:Lcom/narvii/video/model/MyEngineEventHandler;

    return-object v0
.end method

.method public final exit()V
    .locals 2

    .line 309
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 310
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    const-string v1, "exit() - exit app thread asynchronously"

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    const/16 v1, 0x1010

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->mReady:Z

    .line 315
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    const/16 v1, 0x2010

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    const/16 v1, 0x2011

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    const/16 v1, 0x2012

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    const/16 v1, 0x2014

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    const-string v1, "exit() > start"

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 323
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->release()V

    .line 324
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    const-string v1, "exit() > end"

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurChannelprofile()I
    .locals 1

    .line 339
    iget v0, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    return v0
.end method

.method public final getEngineConfig()Lcom/narvii/video/model/EngineConfig;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    return-object v0
.end method

.method public getRtcEngine()Lio/agora/rtc/RtcEngine;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    return-object v0
.end method

.method public isTextureEncodeSupported()Z
    .locals 1

    .line 347
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final joinChannel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, " "

    if-eq v0, p0, :cond_0

    .line 86
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "joinChannel() - worker thread asynchronously "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2010

    .line 88
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 89
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 91
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    .line 96
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    iput p3, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 97
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, p3}, Lio/agora/rtc/RtcEngine;->joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 98
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    iput-object p2, v0, Lcom/narvii/video/model/EngineConfig;->mChannel:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/narvii/video/model/WorkerThread;->enablePreProcessor()V

    .line 100
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "joinChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final leaveChannel(Ljava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V
    .locals 5

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p0, :cond_0

    .line 105
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveChannel() - worker thread asynchronously "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x2011

    .line 107
    iput v3, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 108
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->leaveChannel()I

    move-result v0

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/narvii/video/model/ChannelActionResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, Lcom/narvii/video/model/ChannelActionResult;

    sget-object v1, Lcom/narvii/video/model/ChannelActionError;->LEAVE_CHANNEL_ERROR:Lcom/narvii/video/model/ChannelActionError;

    invoke-direct {v0, v2, v1}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 122
    :goto_0
    invoke-interface {p2, v0}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/model/WorkerThread;->disablePreProcessor()V

    .line 128
    iget-object p2, p0, Lcom/narvii/video/model/WorkerThread;->mEngineConfig:Lcom/narvii/video/model/EngineConfig;

    invoke-virtual {p2}, Lcom/narvii/video/model/EngineConfig;->reset()V

    .line 129
    sget-object p2, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaveChannel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final preview(ZLandroid/view/SurfaceView;I)V
    .locals 7

    .line 244
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p0, :cond_0

    .line 245
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview() - worker thread asynchronously "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x2014

    .line 247
    iput v2, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    new-instance v0, Lio/agora/rtc/video/VideoCanvas;

    invoke-direct {v0, p2, v1, p3}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/SurfaceView;II)V

    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setupLocalVideo(Lio/agora/rtc/video/VideoCanvas;)I

    .line 256
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->startPreview()I

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/model/WorkerThread;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->stopPreview()I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 63
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    const-string v1, "start to run"

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 65
    new-instance v0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    invoke-direct {v0, p0}, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;-><init>(Lcom/narvii/video/model/WorkerThread;)V

    iput-object v0, p0, Lcom/narvii/video/model/WorkerThread;->mWorkerHandler:Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;

    .line 66
    invoke-direct {p0}, Lcom/narvii/video/model/WorkerThread;->ensureRtcEngineReadyLock()Lio/agora/rtc/RtcEngine;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->mReady:Z

    .line 69
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setCurChannelProfile(I)V
    .locals 0

    .line 343
    iput p1, p0, Lcom/narvii/video/model/WorkerThread;->curChannelProfile:I

    return-void
.end method

.method public final waitForReady()V
    .locals 3

    .line 51
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/video/model/WorkerThread;->mReady:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x14

    .line 53
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 57
    :goto_1
    sget-object v0, Lcom/narvii/video/model/WorkerThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/video/model/WorkerThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
