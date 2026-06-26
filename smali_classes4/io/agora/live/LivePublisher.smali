.class public Lio/agora/live/LivePublisher;
.super Ljava/lang/Object;
.source "LivePublisher.java"


# instance fields
.field private final mHandler:Lio/agora/live/LivePublisherHandler;

.field private mLiveEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/live/LiveEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishAudio:Z

.field private mPublishVideo:Z

.field private mPublishing:Z


# direct methods
.method public constructor <init>(Lio/agora/live/LiveEngine;Lio/agora/live/LivePublisherHandler;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object p2, p0, Lio/agora/live/LivePublisher;->mHandler:Lio/agora/live/LivePublisherHandler;

    .line 27
    iget-object p1, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/live/LiveEngine;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object p2

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2, v0}, Lio/agora/rtc/RtcEngine;->enableDualStreamMode(Z)I

    .line 31
    invoke-virtual {p1, p0}, Lio/agora/live/LiveEngine;->setPublisher(Lio/agora/live/LivePublisher;)V

    :cond_0
    const/4 p1, 0x3

    .line 33
    invoke-virtual {p0, p1}, Lio/agora/live/LivePublisher;->setMediaType(I)V

    return-void
.end method

.method private applyPublishingMediaType()V
    .locals 3

    .line 175
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v1

    .line 180
    iget-boolean v2, p0, Lio/agora/live/LivePublisher;->mPublishing:Z

    if-eqz v2, :cond_1

    .line 181
    iget-boolean v2, p0, Lio/agora/live/LivePublisher;->mPublishAudio:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lio/agora/rtc/RtcEngine;->muteLocalAudioStream(Z)I

    .line 182
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getLiveChannelConfig()Lio/agora/live/LiveChannelConfig;

    move-result-object v0

    iget-boolean v0, v0, Lio/agora/live/LiveChannelConfig;->videoEnabled:Z

    if-eqz v0, :cond_1

    .line 183
    iget-boolean v0, p0, Lio/agora/live/LivePublisher;->mPublishVideo:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lio/agora/rtc/RtcEngine;->muteLocalVideoStream(Z)I

    :cond_1
    return-void
.end method


# virtual methods
.method public addInjectStreamUrl(Ljava/lang/String;Lio/agora/rtc/live/LiveInjectStreamConfig;)I
    .locals 1

    .line 157
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 161
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->addInjectStreamUrl(Ljava/lang/String;Lio/agora/rtc/live/LiveInjectStreamConfig;)I

    move-result p1

    return p1
.end method

.method public addStreamUrl(Ljava/lang/String;Z)I
    .locals 1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 99
    :cond_0
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 103
    :cond_1
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/RtcEngine;->addPublishStreamUrl(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public addVideoWatermark(Lio/agora/rtc/video/AgoraImage;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->addVideoWatermark(Lio/agora/rtc/video/AgoraImage;)I

    return-void
.end method

.method public clearVideoWatermarks()V
    .locals 1

    .line 139
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->clearVideoWatermarks()I

    return-void
.end method

.method public getLivePublisherHandler()Lio/agora/live/LivePublisherHandler;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mHandler:Lio/agora/live/LivePublisherHandler;

    return-object v0
.end method

.method public publish()V
    .locals 3

    .line 81
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v1

    const/4 v2, 0x1

    .line 86
    iput-boolean v2, p0, Lio/agora/live/LivePublisher;->mPublishing:Z

    .line 87
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getLiveChannelConfig()Lio/agora/live/LiveChannelConfig;

    move-result-object v0

    iget-boolean v0, v0, Lio/agora/live/LiveChannelConfig;->videoEnabled:Z

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v1, v2}, Lio/agora/rtc/RtcEngine;->enableLocalVideo(Z)I

    .line 90
    :cond_1
    invoke-virtual {v1, v2}, Lio/agora/rtc/RtcEngine;->setClientRole(I)I

    .line 91
    invoke-direct {p0}, Lio/agora/live/LivePublisher;->applyPublishingMediaType()V

    return-void
.end method

.method public removeInjectStreamUrl(Ljava/lang/String;)I
    .locals 1

    .line 166
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 170
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->removeInjectStreamUrl(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removeStreamUrl(Ljava/lang/String;)I
    .locals 1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 112
    :cond_0
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 116
    :cond_1
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->removePublishStreamUrl(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLiveTranscoding(Lio/agora/rtc/live/LiveTranscoding;)I
    .locals 1

    .line 41
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 45
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/RtcEngine;->setLiveTranscoding(Lio/agora/rtc/live/LiveTranscoding;)I

    move-result p1

    return p1
.end method

.method public setMediaType(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iput-boolean v1, p0, Lio/agora/live/LivePublisher;->mPublishAudio:Z

    .line 64
    iput-boolean v1, p0, Lio/agora/live/LivePublisher;->mPublishVideo:Z

    goto :goto_0

    .line 59
    :cond_1
    iput-boolean v0, p0, Lio/agora/live/LivePublisher;->mPublishAudio:Z

    .line 60
    iput-boolean v1, p0, Lio/agora/live/LivePublisher;->mPublishVideo:Z

    goto :goto_0

    .line 55
    :cond_2
    iput-boolean v1, p0, Lio/agora/live/LivePublisher;->mPublishAudio:Z

    .line 56
    iput-boolean v0, p0, Lio/agora/live/LivePublisher;->mPublishVideo:Z

    goto :goto_0

    .line 51
    :cond_3
    iput-boolean v0, p0, Lio/agora/live/LivePublisher;->mPublishAudio:Z

    .line 52
    iput-boolean v0, p0, Lio/agora/live/LivePublisher;->mPublishVideo:Z

    .line 67
    :goto_0
    invoke-direct {p0}, Lio/agora/live/LivePublisher;->applyPublishingMediaType()V

    return-void
.end method

.method public setVideoProfile(IIII)I
    .locals 1

    .line 71
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 76
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/agora/rtc/RtcEngine;->setVideoProfile(IIII)I

    move-result p1

    return p1
.end method

.method public switchCamera()V
    .locals 1

    .line 148
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lio/agora/rtc/RtcEngine;->switchCamera()I

    return-void
.end method

.method public unpublish()V
    .locals 2

    .line 121
    iget-object v0, p0, Lio/agora/live/LivePublisher;->mLiveEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/live/LiveEngine;

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Lio/agora/live/LiveEngine;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object v0

    const/4 v1, 0x2

    .line 126
    invoke-virtual {v0, v1}, Lio/agora/rtc/RtcEngine;->setClientRole(I)I

    return-void
.end method
