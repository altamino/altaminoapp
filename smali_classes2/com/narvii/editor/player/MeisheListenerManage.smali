.class public final Lcom/narvii/editor/player/MeisheListenerManage;
.super Ljava/lang/Object;
.source "MeisheListenerManage.kt"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/player/MeisheListenerManage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheListenerManage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheListenerManage.kt\ncom/narvii/editor/player/MeisheListenerManage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,166:1\n1587#2,2:167\n1587#2,2:169\n1587#2,2:171\n1587#2,2:173\n1587#2,2:175\n1587#2,2:177\n1587#2,2:179\n1587#2,2:181\n1587#2,2:183\n*E\n*S KotlinDebug\n*F\n+ 1 MeisheListenerManage.kt\ncom/narvii/editor/player/MeisheListenerManage\n*L\n105#1,2:167\n112#1,2:169\n119#1,2:171\n126#1,2:173\n133#1,2:175\n140#1,2:177\n147#1,2:179\n154#1,2:181\n161#1,2:183\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/player/MeisheListenerManage$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private final hardwareErrorCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playbackCallback2s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playbackCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playbackExceptionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final seekingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final streamingEngineCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/player/MeisheListenerManage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/player/MeisheListenerManage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/player/MeisheListenerManage;->Companion:Lcom/narvii/editor/player/MeisheListenerManage$Companion;

    .line 23
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/narvii/editor/player/MeisheListenerManage$Companion$instance$2;->INSTANCE:Lcom/narvii/editor/player/MeisheListenerManage$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/narvii/editor/player/MeisheListenerManage;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallbacks:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallback2s:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->streamingEngineCallbacks:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->seekingCallbacks:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackExceptionCallbacks:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->hardwareErrorCallbacks:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 31
    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 32
    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    .line 33
    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V

    .line 34
    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V

    .line 35
    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/editor/player/MeisheListenerManage;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 8
    sget-object v0, Lcom/narvii/editor/player/MeisheListenerManage;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final removeElement(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 94
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 96
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onFirstVideoFramePresented(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->streamingEngineCallbacks:Ljava/util/List;

    .line 175
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;->onFirstVideoFramePresented(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onHardwareError(ILjava/lang/String;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->hardwareErrorCallbacks:Ljava/util/List;

    .line 183
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 162
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;

    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v1, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;->onHardwareError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallbacks:Ljava/util/List;

    .line 169
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;->onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPlaybackException(Lcom/meicam/sdk/NvsTimeline;ILjava/lang/String;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackExceptionCallbacks:Ljava/util/List;

    .line 181
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 155
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;->onPlaybackException(Lcom/meicam/sdk/NvsTimeline;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallbacks:Ljava/util/List;

    .line 171
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 120
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;->onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallbacks:Ljava/util/List;

    .line 173
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 127
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;->onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPlaybackTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallback2s:Ljava/util/List;

    .line 167
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 106
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v1, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;->onPlaybackTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSeekingTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->seekingCallbacks:Ljava/util/List;

    .line 179
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 148
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v1, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;->onSeekingTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStreamingEngineStateChanged(I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->streamingEngineCallbacks:Ljava/util/List;

    .line 177
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 141
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1, p1}, Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;->onStreamingEngineStateChanged(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final registerHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V
    .locals 2

    const-string v0, "hardwareErrorCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->hardwareErrorCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->hardwareErrorCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V
    .locals 2

    const-string v0, "playbackCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V
    .locals 2

    const-string v0, "playbackCallback2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallback2s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallback2s:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V
    .locals 2

    const-string v0, "playbackExceptionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackExceptionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackExceptionCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V
    .locals 2

    const-string v0, "seekingCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->seekingCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->seekingCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V
    .locals 2

    const-string v0, "streamingEngineCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->streamingEngineCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->streamingEngineCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unRegisterHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V
    .locals 1

    const-string v0, "hardwareErrorCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->hardwareErrorCallbacks:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/player/MeisheListenerManage;->removeElement(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final unRegisterPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V
    .locals 1

    const-string v0, "playbackCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallbacks:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/player/MeisheListenerManage;->removeElement(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final unRegisterPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V
    .locals 1

    const-string v0, "playbackCallback2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackCallback2s:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/player/MeisheListenerManage;->removeElement(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final unRegisterPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V
    .locals 1

    const-string v0, "playbackExceptionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->playbackExceptionCallbacks:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/player/MeisheListenerManage;->removeElement(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final unRegisterSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V
    .locals 1

    const-string v0, "seekingCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->seekingCallbacks:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/player/MeisheListenerManage;->removeElement(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final unRegisterStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V
    .locals 1

    const-string v0, "streamingEngineCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheListenerManage;->streamingEngineCallbacks:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/player/MeisheListenerManage;->removeElement(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
