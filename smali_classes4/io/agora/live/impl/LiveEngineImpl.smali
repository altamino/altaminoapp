.class public Lio/agora/live/impl/LiveEngineImpl;
.super Lio/agora/live/LiveEngine;
.source "LiveEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;
    }
.end annotation


# static fields
.field private static final ENCRYPTION_MODE:[Ljava/lang/String;

.field private static final REMOTE_AUDIO_MUTED:I = 0x1

.field private static final REMOTE_VIDEO_MUTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LiveEngineImpl"


# instance fields
.field private mChannelConfig:Lio/agora/live/LiveChannelConfig;

.field private mPublisher:Lio/agora/live/LivePublisher;

.field private mRtcEngine:Lio/agora/rtc/RtcEngine;

.field private mSubscriber:Lio/agora/live/LiveSubscriber;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aes-128-xts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "aes-256-xts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "aes-128-ecb"

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lio/agora/live/impl/LiveEngineImpl;->ENCRYPTION_MODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/agora/live/LiveEngineHandler;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Lio/agora/live/LiveEngine;-><init>()V

    .line 292
    :try_start_0
    invoke-static {}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->get()Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setObjects(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setLiveHandler(Lio/agora/live/LiveEngineHandler;)V

    .line 293
    invoke-static {}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->get()Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lio/agora/rtc/RtcEngine;->create(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)Lio/agora/rtc/RtcEngine;

    move-result-object p1

    iput-object p1, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    invoke-static {}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->get()Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setObjects(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object p2

    invoke-virtual {p2, p3}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setLiveHandler(Lio/agora/live/LiveEngineHandler;)V

    const-string p2, "LiveEngineImpl"

    const-string p3, "failed to create AgoraLiveEngine"

    .line 296
    invoke-static {p2, p3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/agora/live/impl/LiveEngineImpl;->mSubscriber:Lio/agora/live/LiveSubscriber;

    return-object p0
.end method

.method static synthetic access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/agora/live/impl/LiveEngineImpl;->mPublisher:Lio/agora/live/LivePublisher;

    return-object p0
.end method


# virtual methods
.method public doDestroy()V
    .locals 2

    .line 305
    invoke-static {}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->get()Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setObjects(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setLiveHandler(Lio/agora/live/LiveEngineHandler;)V

    return-void
.end method

.method public getLiveChannelConfig()Lio/agora/live/LiveChannelConfig;
    .locals 1

    .line 325
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl;->mChannelConfig:Lio/agora/live/LiveChannelConfig;

    return-object v0
.end method

.method public getRtcEngine()Lio/agora/rtc/RtcEngine;
    .locals 1

    .line 310
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    return-object v0
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;Lio/agora/live/LiveChannelConfig;I)I
    .locals 2

    .line 330
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setChannelProfile(I)I

    .line 332
    iput-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mChannelConfig:Lio/agora/live/LiveChannelConfig;

    .line 334
    iget-boolean p3, p3, Lio/agora/live/LiveChannelConfig;->videoEnabled:Z

    if-eqz p3, :cond_0

    .line 335
    iget-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p3}, Lio/agora/rtc/RtcEngine;->enableVideo()I

    .line 336
    iget-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p3, v1}, Lio/agora/rtc/RtcEngine;->enableDualStreamMode(Z)I

    goto :goto_0

    .line 338
    :cond_0
    iget-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p3}, Lio/agora/rtc/RtcEngine;->disableVideo()I

    .line 341
    :goto_0
    iget-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lio/agora/rtc/RtcEngine;->setClientRole(I)I

    .line 343
    iget-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const-string v0, ""

    invoke-virtual {p3, v0}, Lio/agora/rtc/RtcEngine;->setEncryptionMode(Ljava/lang/String;)I

    .line 344
    iget-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lio/agora/rtc/RtcEngine;->setEncryptionSecret(Ljava/lang/String;)I

    .line 346
    iget-object p3, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p3, p2, p1, v0, p4}, Lio/agora/rtc/RtcEngine;->joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public leaveChannel()I
    .locals 1

    .line 351
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl;->mPublisher:Lio/agora/live/LivePublisher;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lio/agora/live/LivePublisher;->unpublish()V

    .line 355
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->leaveChannel()I

    move-result v0

    return v0
.end method

.method public reinitialize(Landroid/content/Context;Ljava/lang/String;Lio/agora/live/LiveEngineHandler;)V
    .locals 0

    .line 301
    invoke-static {}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->get()Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setObjects(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->setLiveHandler(Lio/agora/live/LiveEngineHandler;)V

    return-void
.end method

.method public renewToken(Ljava/lang/String;)I
    .locals 1

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 364
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->renewToken(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPublisher(Lio/agora/live/LivePublisher;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lio/agora/live/impl/LiveEngineImpl;->mPublisher:Lio/agora/live/LivePublisher;

    return-void
.end method

.method public setSubscriber(Lio/agora/live/LiveSubscriber;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lio/agora/live/impl/LiveEngineImpl;->mSubscriber:Lio/agora/live/LiveSubscriber;

    return-void
.end method

.method public startPreview(Landroid/view/SurfaceView;I)I
    .locals 2

    .line 369
    new-instance v0, Lio/agora/rtc/video/VideoCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/SurfaceView;II)V

    .line 370
    iget-object p1, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p1, v0}, Lio/agora/rtc/RtcEngine;->setupLocalVideo(Lio/agora/rtc/video/VideoCanvas;)I

    .line 371
    iget-object p1, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {p1}, Lio/agora/rtc/RtcEngine;->startPreview()I

    move-result p1

    return p1
.end method

.method public stopPreview()I
    .locals 2

    .line 376
    new-instance v0, Lio/agora/rtc/video/VideoCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/SurfaceView;)V

    .line 377
    iget-object v1, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v1, v0}, Lio/agora/rtc/RtcEngine;->setupLocalVideo(Lio/agora/rtc/video/VideoCanvas;)I

    .line 378
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl;->mRtcEngine:Lio/agora/rtc/RtcEngine;

    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->stopPreview()I

    move-result v0

    return v0
.end method
