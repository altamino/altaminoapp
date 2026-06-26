.class public Lio/agora/live/LiveSubscriber;
.super Ljava/lang/Object;
.source "LiveSubscriber.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveSubscriber"


# instance fields
.field private final mHandler:Lio/agora/live/LiveSubscriberHandler;

.field private mLiveEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/live/LiveEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/agora/live/LiveEngine;Lio/agora/live/LiveSubscriberHandler;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/live/LiveSubscriber;->mLiveEngine:Ljava/lang/ref/WeakReference;

    .line 20
    iput-object p2, p0, Lio/agora/live/LiveSubscriber;->mHandler:Lio/agora/live/LiveSubscriberHandler;

    .line 22
    iget-object p1, p0, Lio/agora/live/LiveSubscriber;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/live/LiveEngine;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1, p0}, Lio/agora/live/LiveEngine;->setSubscriber(Lio/agora/live/LiveSubscriber;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/agora/live/LiveSubscriber;->mHandler:Lio/agora/live/LiveSubscriberHandler;

    return-object v0
.end method

.method public subscribe(IILandroid/view/SurfaceView;II)V
    .locals 2

    .line 33
    iget-object v0, p0, Lio/agora/live/LiveSubscriber;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    .line 35
    sget-object p1, Lio/agora/live/LiveSubscriber;->TAG:Ljava/lang/String;

    const-string p2, "LiveEngine is null, none subscribing..."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 40
    new-instance v1, Lio/agora/rtc/video/VideoCanvas;

    invoke-direct {v1, p3, p4, p1}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/SurfaceView;II)V

    .line 41
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)I

    .line 43
    invoke-virtual {v0, p1, p5}, Lio/agora/rtc/RtcEngine;->setRemoteVideoStreamType(II)I

    .line 44
    invoke-virtual {v0, p1, p4}, Lio/agora/rtc/RtcEngine;->setRemoteRenderMode(II)I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_3

    if-eq p2, p4, :cond_2

    const/4 p5, 0x2

    if-eq p2, p5, :cond_1

    const/4 p3, 0x3

    const/4 p2, 0x1

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_1
    xor-int/2addr p3, p4

    .line 67
    invoke-virtual {v0, p1, p3}, Lio/agora/rtc/RtcEngine;->muteRemoteAudioStream(IZ)I

    xor-int/2addr p2, p4

    .line 68
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->muteRemoteVideoStream(IZ)I

    return-void
.end method

.method public unsubscribe(I)V
    .locals 4

    .line 72
    iget-object v0, p0, Lio/agora/live/LiveSubscriber;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    .line 74
    sget-object p1, Lio/agora/live/LiveSubscriber;->TAG:Ljava/lang/String;

    const-string v0, "LiveEngine is null while unsubscribing"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 79
    new-instance v1, Lio/agora/rtc/video/VideoCanvas;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lio/agora/rtc/video/VideoCanvas;-><init>(Landroid/view/SurfaceView;II)V

    .line 80
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)I

    .line 82
    invoke-virtual {v0, p1, v3}, Lio/agora/rtc/RtcEngine;->muteRemoteAudioStream(IZ)I

    .line 83
    invoke-virtual {v0, p1, v3}, Lio/agora/rtc/RtcEngine;->muteRemoteVideoStream(IZ)I

    return-void
.end method
