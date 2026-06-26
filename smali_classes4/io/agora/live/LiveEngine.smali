.class public abstract Lio/agora/live/LiveEngine;
.super Ljava/lang/Object;
.source "LiveEngine.java"


# static fields
.field private static gLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLiveEngine(Landroid/content/Context;Ljava/lang/String;Lio/agora/live/LiveEngineHandler;)Lio/agora/live/LiveEngine;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    sget-object v0, Lio/agora/live/LiveEngine;->gLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lio/agora/live/impl/LiveEngineImpl;

    invoke-direct {v0, p0, p1, p2}, Lio/agora/live/impl/LiveEngineImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/agora/live/LiveEngineHandler;)V

    sput-object v0, Lio/agora/live/LiveEngine;->gLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lio/agora/live/impl/LiveEngineImpl;->reinitialize(Landroid/content/Context;Ljava/lang/String;Lio/agora/live/LiveEngineHandler;)V

    .line 31
    :goto_0
    sget-object p0, Lio/agora/live/LiveEngine;->gLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    return-object p0
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lio/agora/live/LiveEngine;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lio/agora/live/LiveEngine;->gLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 36
    monitor-exit v0

    return-void

    .line 38
    :cond_0
    :try_start_1
    sget-object v1, Lio/agora/live/LiveEngine;->gLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-virtual {v1}, Lio/agora/live/impl/LiveEngineImpl;->doDestroy()V

    const/4 v1, 0x0

    .line 39
    sput-object v1, Lio/agora/live/LiveEngine;->gLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    .line 40
    invoke-static {}, Lio/agora/rtc/RtcEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMediaEngineVersion()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lio/agora/rtc/RtcEngine;->getMediaEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {}, Lio/agora/rtc/RtcEngine;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getLiveChannelConfig()Lio/agora/live/LiveChannelConfig;
.end method

.method public abstract getRtcEngine()Lio/agora/rtc/RtcEngine;
.end method

.method public abstract joinChannel(Ljava/lang/String;Ljava/lang/String;Lio/agora/live/LiveChannelConfig;I)I
.end method

.method public abstract leaveChannel()I
.end method

.method public abstract renewToken(Ljava/lang/String;)I
.end method

.method public abstract setPublisher(Lio/agora/live/LivePublisher;)V
.end method

.method public abstract setSubscriber(Lio/agora/live/LiveSubscriber;)V
.end method

.method public abstract startPreview(Landroid/view/SurfaceView;I)I
.end method

.method public abstract stopPreview()I
.end method
