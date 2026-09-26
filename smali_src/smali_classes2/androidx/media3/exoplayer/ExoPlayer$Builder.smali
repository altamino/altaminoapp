.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/g<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Landroidx/media3/common/AudioAttributes;

.field bandwidthMeterSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Landroidx/media3/common/util/Clock;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field deviceVolumeControlEnabled:Z

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field loadControlSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field mediaSourceFactorySupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field playbackLooper:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field skipSilenceEnabled:Z

.field trackSelectorSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/m;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/m;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/media3/exoplayer/y;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/y;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 2
    new-instance v0, Landroidx/media3/exoplayer/o;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/o;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v1, Landroidx/media3/exoplayer/p;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/p;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    .line 3
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 6
    new-instance v0, Landroidx/media3/exoplayer/q;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/q;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v1, Landroidx/media3/exoplayer/s;

    invoke-direct {v1, p3}, Landroidx/media3/exoplayer/s;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    .line 7
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V
    .locals 8
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 9
    new-instance v2, Landroidx/media3/exoplayer/a0;

    invoke-direct {v2, p2}, Landroidx/media3/exoplayer/a0;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v3, Landroidx/media3/exoplayer/b0;

    invoke-direct {v3, p3}, Landroidx/media3/exoplayer/b0;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    new-instance v4, Landroidx/media3/exoplayer/c0;

    invoke-direct {v4, p4}, Landroidx/media3/exoplayer/c0;-><init>(Landroidx/media3/exoplayer/trackselection/TrackSelector;)V

    new-instance v5, Landroidx/media3/exoplayer/d0;

    invoke-direct {v5, p5}, Landroidx/media3/exoplayer/d0;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    new-instance v6, Landroidx/media3/exoplayer/e0;

    invoke-direct {v6, p6}, Landroidx/media3/exoplayer/e0;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    new-instance v7, Landroidx/media3/exoplayer/f0;

    invoke-direct {v7, p7}, Landroidx/media3/exoplayer/f0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/g;)V

    .line 10
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p6}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p7}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 4
    new-instance v0, Landroidx/media3/exoplayer/g0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/g0;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/media3/exoplayer/h0;

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/h0;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    .line 5
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;)V"
        }
    .end annotation

    .line 15
    new-instance v4, Landroidx/media3/exoplayer/v;

    invoke-direct {v4, p1}, Landroidx/media3/exoplayer/v;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroidx/media3/exoplayer/w;

    invoke-direct {v5}, Landroidx/media3/exoplayer/w;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/x;

    invoke-direct {v6, p1}, Landroidx/media3/exoplayer/x;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroidx/media3/exoplayer/z;

    invoke-direct {v7}, Landroidx/media3/exoplayer/z;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/g;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;",
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;",
            "Lcom/google/common/base/u<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;",
            "Lcom/google/common/base/g<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/u;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/u;

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/u;

    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/u;

    iput-object p6, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/u;

    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/g;

    .line 18
    invoke-static {}, Landroidx/media3/common/util/Util;->R()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 19
    sget-object p1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 20
    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 21
    new-instance p1, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->a()Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 22
    sget-object p1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    const-wide/16 p3, 0x1f4

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-void
.end method

.method private static synthetic A(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private static synthetic B(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->m(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic C(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic D(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    .line 11
    return-object v0
.end method

.method private static synthetic E(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private static synthetic F(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic G(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic H(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic I(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic J(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic K(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic L(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic M(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->F(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->L(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->D(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->B(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->I(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->y(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->H(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->C(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->J(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->x(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->u(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->K(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->w(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->G(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->v(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->z(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->M(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic u(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private static synthetic v(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    .line 11
    return-object v0
.end method

.method private static synthetic w(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic x(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic y(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic z(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public N(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/exoplayer/u;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/u;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/u;

    .line 18
    return-object p0
.end method

.method public O(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/exoplayer/t;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/t;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/u;

    .line 18
    return-object p0
.end method

.method public P(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/exoplayer/n;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/n;-><init>(Landroidx/media3/exoplayer/trackselection/TrackSelector;)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/u;

    .line 18
    return-object p0
.end method

.method public t()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 8
    .line 9
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V

    .line 16
    return-object v0
.end method
