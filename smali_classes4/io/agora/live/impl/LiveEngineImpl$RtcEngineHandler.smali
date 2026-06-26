.class final Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;
.super Lio/agora/rtc/IRtcEngineEventHandler;
.source "LiveEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/live/impl/LiveEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RtcEngineHandler"
.end annotation


# static fields
.field private static final gRtcHandler:Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;


# instance fields
.field private mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

.field private mLiveHandler:Lio/agora/live/LiveEngineHandler;

.field private remoteStreamMediaStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    invoke-direct {v0}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;-><init>()V

    sput-object v0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->gRtcHandler:Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lio/agora/rtc/IRtcEngineEventHandler;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->remoteStreamMediaStats:Ljava/util/Map;

    return-void
.end method

.method public static get()Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;
    .locals 1

    .line 51
    sget-object v0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->gRtcHandler:Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    return-object v0
.end method

.method private getMediaTypeByStat(I)I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 65
    fill-array-data v0, :array_0

    if-ltz p1, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    .line 68
    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :array_0
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public onConnectionInterrupted()V
    .locals 1

    .line 216
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lio/agora/live/LiveEngineHandler;->onConnectionInterrupted()V

    :cond_0
    return-void
.end method

.method public onConnectionLost()V
    .locals 1

    .line 223
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lio/agora/live/LiveEngineHandler;->onConnectionLost()V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lio/agora/live/LiveEngineHandler;->onError(I)V

    :cond_0
    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/agora/live/LiveSubscriberHandler;->onFirstRemoteVideoDecoded(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 1

    .line 188
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2, p3}, Lio/agora/live/LiveEngineHandler;->onJoinChannel(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lio/agora/live/LiveEngineHandler;->onLeaveChannel()V

    :cond_0
    return-void
.end method

.method public onNetworkQuality(III)V
    .locals 1

    .line 230
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1, p2, p3}, Lio/agora/live/LiveEngineHandler;->onNetworkQuality(III)V

    :cond_0
    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 1

    .line 202
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2, p3}, Lio/agora/live/LiveEngineHandler;->onRejoinChannel(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public onRequestToken()V
    .locals 1

    .line 268
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lio/agora/live/LiveEngineHandler;->onRequestToken()V

    :cond_0
    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 210
    new-instance v1, Lio/agora/live/LiveStats;

    invoke-direct {v1, p1}, Lio/agora/live/LiveStats;-><init>(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    invoke-virtual {v0, v1}, Lio/agora/live/LiveEngineHandler;->onReportLiveStats(Lio/agora/live/LiveStats;)V

    :cond_0
    return-void
.end method

.method public onStreamInjectedStatus(Ljava/lang/String;II)V
    .locals 1

    .line 282
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LivePublisher;->getLivePublisherHandler()Lio/agora/live/LivePublisherHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/live/LivePublisherHandler;->onStreamInjectedStatus(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStreamPublished(Ljava/lang/String;I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 242
    iget-object p2, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {p2}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object p2

    invoke-virtual {p2}, Lio/agora/live/LivePublisher;->getLivePublisherHandler()Lio/agora/live/LivePublisherHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/agora/live/LivePublisherHandler;->onStreamUrlPublished(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LivePublisher;->getLivePublisherHandler()Lio/agora/live/LivePublisherHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/agora/live/LivePublisherHandler;->onPublishStreamUrlFailed(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStreamUnpublished(Ljava/lang/String;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LivePublisher;->getLivePublisherHandler()Lio/agora/live/LivePublisherHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/live/LivePublisherHandler;->onStreamUrlUnpublished(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTokenPrivilegeWillExpire(Ljava/lang/String;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Lio/agora/live/LiveEngineHandler;->onTokenPrivilegeWillExpire(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTranscodingUpdated()V
    .locals 2

    .line 259
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LivePublisher;->getLivePublisherHandler()Lio/agora/live/LivePublisherHandler;

    move-result-object v0

    iget-object v1, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v1}, Lio/agora/live/impl/LiveEngineImpl;->access$100(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LivePublisher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/live/LivePublisherHandler;->onPublisherTranscodingUpdated(Lio/agora/live/LivePublisher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserJoined(II)V
    .locals 3

    .line 107
    iget-object p2, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p2, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-virtual {p2}, Lio/agora/live/impl/LiveEngineImpl;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/RtcEngine;->muteRemoteAudioStream(IZ)I

    .line 112
    iget-object p2, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-virtual {p2}, Lio/agora/live/impl/LiveEngineImpl;->getRtcEngine()Lio/agora/rtc/RtcEngine;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/RtcEngine;->muteRemoteVideoStream(IZ)I

    const/4 p2, 0x0

    .line 115
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->remoteStreamMediaStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0, p2}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->getMediaTypeByStat(I)I

    move-result p2

    .line 118
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/agora/live/LiveSubscriberHandler;->publishedByHost(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 2

    .line 133
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 138
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->remoteStreamMediaStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    and-int/lit8 p2, v1, -0x2

    .line 148
    :goto_0
    invoke-direct {p0, p2}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->getMediaTypeByStat(I)I

    move-result v1

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lio/agora/live/LiveSubscriberHandler;->publishedByHost(II)V

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lio/agora/live/LiveSubscriberHandler;->onStreamTypeChanged(II)V

    .line 156
    :goto_1
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->remoteStreamMediaStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 2

    .line 161
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 165
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->remoteStreamMediaStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 p2, v1, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 p2, v1, -0x3

    .line 175
    :goto_0
    invoke-direct {p0, p2}, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->getMediaTypeByStat(I)I

    move-result v1

    if-nez v0, :cond_3

    .line 178
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lio/agora/live/LiveSubscriberHandler;->publishedByHost(II)V

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lio/agora/live/LiveSubscriberHandler;->onStreamTypeChanged(II)V

    .line 183
    :goto_1
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->remoteStreamMediaStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public onUserOffline(II)V
    .locals 1

    .line 123
    iget-object p2, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object p2, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->remoteStreamMediaStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p2, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {p2}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object p2

    invoke-virtual {p2}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/agora/live/LiveSubscriberHandler;->unpublishedByHost(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(IIII)V
    .locals 1

    .line 98
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    invoke-static {v0}, Lio/agora/live/impl/LiveEngineImpl;->access$000(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/LiveSubscriber;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/live/LiveSubscriber;->getLiveSubscriberHandler()Lio/agora/live/LiveSubscriberHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/agora/live/LiveSubscriberHandler;->onVideoSizeChanged(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWarning(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Lio/agora/live/LiveEngineHandler;->onWarning(I)V

    :cond_0
    return-void
.end method

.method public setLiveHandler(Lio/agora/live/LiveEngineHandler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveHandler:Lio/agora/live/LiveEngineHandler;

    return-void
.end method

.method public setObjects(Lio/agora/live/impl/LiveEngineImpl;)Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;
    .locals 0

    .line 55
    iput-object p1, p0, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->mLiveEngineImpl:Lio/agora/live/impl/LiveEngineImpl;

    .line 57
    sget-object p1, Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;->gRtcHandler:Lio/agora/live/impl/LiveEngineImpl$RtcEngineHandler;

    return-object p1
.end method
