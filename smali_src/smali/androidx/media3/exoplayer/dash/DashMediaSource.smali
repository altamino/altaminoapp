.class public final Landroidx/media3/exoplayer/dash/DashMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;,
        Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestCallback;,
        Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;,
        Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;,
        Landroidx/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;,
        Landroidx/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;,
        Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;,
        Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_MEDIA_ID:Ljava/lang/String; = "DashMediaSource"

.field private static final DEFAULT_NOTIFY_MANIFEST_INTERVAL_MS:J = 0x1388L

.field public static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

.field private final chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private dataSource:Landroidx/media3/datasource/DataSource;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private elapsedRealtimeOffsetMs:J

.field private expiredManifestPublishTimeUs:J

.field private final fallbackTargetLiveOffsetMs:J

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private initialManifestUri:Landroid/net/Uri;

.field private liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private loader:Landroidx/media3/exoplayer/upstream/Loader;

.field private manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

.field private final manifestCallback:Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private manifestFatalError:Ljava/io/IOException;

.field private manifestLoadEndTimestampMs:J

.field private final manifestLoadErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

.field private manifestLoadPending:Z

.field private manifestLoadStartTimestampMs:J

.field private final manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private mediaTransferListener:Landroidx/media3/datasource/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final minLiveStartPositionUs:J

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private staleManifestReloadAttempt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "media3.exoplayer.dash"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJ)V
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/dash/manifest/DashManifest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/media3/datasource/DataSource$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            "Landroidx/media3/datasource/DataSource$Factory;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            ">;",
            "Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;",
            "Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "JJ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 3
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 4
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 5
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object p2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    iput-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    iput-object p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

    iput-object p7, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iput-object p8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p9, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-wide p10, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    iput-wide p12, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->minLiveStartPositionUs:J

    iput-object p6, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 6
    new-instance p1, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    invoke-direct {p1}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->sideloadedManifest:Z

    const/4 p4, 0x0

    .line 7
    invoke-virtual {p0, p4}, Landroidx/media3/exoplayer/source/BaseMediaSource;->c0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p5

    iput-object p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 8
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 9
    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iput-object p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 10
    new-instance p5, Landroidx/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;

    invoke-direct {p5, p0, p4}, Landroidx/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;Landroidx/media3/exoplayer/dash/DashMediaSource$1;)V

    iput-object p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->playerEmsgCallback:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    if-eqz p3, :cond_1

    .line 11
    iget-boolean p2, p2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    iput-object p4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestCallback:Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    iput-object p4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 12
    new-instance p1, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    invoke-direct {p1, p0, p4}, Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestCallback;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;Landroidx/media3/exoplayer/dash/DashMediaSource$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestCallback:Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    .line 14
    new-instance p1, Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 15
    new-instance p1, Landroidx/media3/exoplayer/dash/b;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/dash/b;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 16
    new-instance p1, Landroidx/media3/exoplayer/dash/c;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/dash/c;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJLandroidx/media3/exoplayer/dash/DashMediaSource$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Landroidx/media3/exoplayer/dash/DashMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJ)V

    return-void
.end method

.method private F0(Ljava/io/IOException;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "DashMediaSource"

    .line 3
    .line 4
    const-string v1, "Failed to resolve time offset."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->H0(Z)V

    .line 12
    return-void
.end method

.method private G0(J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->H0(Z)V

    .line 7
    return-void
.end method

.method private H0(Z)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    .line 6
    :goto_0
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v3

    .line 11
    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    move-result v3

    .line 19
    .line 20
    iget v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 21
    .line 22
    if-lt v3, v4, :cond_0

    .line 23
    .line 24
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    check-cast v4, Landroidx/media3/exoplayer/dash/DashMediaPeriod;

    .line 31
    .line 32
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 33
    .line 34
    iget v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 35
    sub-int/2addr v3, v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5, v3}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->B(Landroidx/media3/exoplayer/dash/manifest/DashManifest;I)V

    .line 39
    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x1

    .line 55
    sub-int/2addr v3, v4

    .line 56
    .line 57
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 67
    move-result-wide v6

    .line 68
    .line 69
    iget-wide v8, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 70
    .line 71
    .line 72
    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->e0(J)J

    .line 73
    move-result-wide v8

    .line 74
    .line 75
    .line 76
    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 77
    move-result-wide v8

    .line 78
    .line 79
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 83
    move-result-wide v10

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v10, v11, v8, v9}, Landroidx/media3/exoplayer/dash/DashMediaSource;->r0(Landroidx/media3/exoplayer/dash/manifest/Period;JJ)J

    .line 87
    move-result-wide v10

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v6, v7, v8, v9}, Landroidx/media3/exoplayer/dash/DashMediaSource;->q0(Landroidx/media3/exoplayer/dash/manifest/Period;JJ)J

    .line 91
    move-result-wide v6

    .line 92
    .line 93
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 94
    .line 95
    iget-boolean v3, v3, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 96
    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Landroidx/media3/exoplayer/dash/DashMediaSource;->v0(Landroidx/media3/exoplayer/dash/manifest/Period;)Z

    .line 101
    move-result v3

    .line 102
    .line 103
    if-nez v3, :cond_2

    .line 104
    move v3, v4

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move v3, v1

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :goto_1
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 112
    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 116
    .line 117
    iget-wide v14, v5, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 118
    .line 119
    cmp-long v5, v14, v12

    .line 120
    .line 121
    if-eqz v5, :cond_3

    .line 122
    .line 123
    .line 124
    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 125
    move-result-wide v14

    .line 126
    .line 127
    sub-long v14, v6, v14

    .line 128
    .line 129
    .line 130
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 131
    move-result-wide v10

    .line 132
    .line 133
    :cond_3
    sub-long v5, v6, v10

    .line 134
    .line 135
    iget-object v7, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 136
    .line 137
    iget-boolean v14, v7, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 138
    .line 139
    move-object/from16 v16, v2

    .line 140
    .line 141
    if-eqz v14, :cond_6

    .line 142
    .line 143
    iget-wide v1, v7, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 144
    .line 145
    cmp-long v1, v1, v12

    .line 146
    .line 147
    if-eqz v1, :cond_4

    .line 148
    move v1, v4

    .line 149
    goto :goto_2

    .line 150
    :cond_4
    const/4 v1, 0x0

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 154
    .line 155
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 156
    .line 157
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 158
    .line 159
    .line 160
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 161
    move-result-wide v1

    .line 162
    sub-long/2addr v8, v1

    .line 163
    sub-long/2addr v8, v10

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v8, v9, v5, v6}, Landroidx/media3/exoplayer/dash/DashMediaSource;->O0(JJ)V

    .line 167
    .line 168
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 169
    .line 170
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 171
    .line 172
    .line 173
    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 174
    move-result-wide v14

    .line 175
    add-long/2addr v1, v14

    .line 176
    .line 177
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 178
    .line 179
    iget-wide v14, v4, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 180
    .line 181
    .line 182
    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 183
    move-result-wide v14

    .line 184
    sub-long/2addr v8, v14

    .line 185
    .line 186
    iget-wide v14, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->minLiveStartPositionUs:J

    .line 187
    .line 188
    const-wide/16 v17, 0x2

    .line 189
    .line 190
    div-long v12, v5, v17

    .line 191
    .line 192
    .line 193
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 194
    move-result-wide v12

    .line 195
    .line 196
    cmp-long v4, v8, v12

    .line 197
    .line 198
    move-wide/from16 v17, v1

    .line 199
    .line 200
    if-gez v4, :cond_5

    .line 201
    .line 202
    move-wide/from16 v26, v12

    .line 203
    .line 204
    :goto_3
    move-object/from16 v1, v16

    .line 205
    goto :goto_4

    .line 206
    .line 207
    :cond_5
    move-wide/from16 v26, v8

    .line 208
    goto :goto_3

    .line 209
    .line 210
    :cond_6
    move-object/from16 v1, v16

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 216
    .line 217
    const-wide/16 v26, 0x0

    .line 218
    .line 219
    :goto_4
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 223
    move-result-wide v1

    .line 224
    .line 225
    sub-long v22, v10, v1

    .line 226
    .line 227
    new-instance v1, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;

    .line 228
    .line 229
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 230
    .line 231
    iget-wide v7, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 232
    .line 233
    iget-wide v9, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 234
    .line 235
    iget v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 236
    .line 237
    iget-object v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 238
    .line 239
    iget-boolean v12, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 240
    .line 241
    if-eqz v12, :cond_7

    .line 242
    .line 243
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 244
    .line 245
    :goto_5
    move-object/from16 v30, v12

    .line 246
    goto :goto_6

    .line 247
    :cond_7
    const/4 v12, 0x0

    .line 248
    goto :goto_5

    .line 249
    :goto_6
    move-object v14, v1

    .line 250
    move-wide v15, v7

    .line 251
    .line 252
    move-wide/from16 v19, v9

    .line 253
    .line 254
    move/from16 v21, v4

    .line 255
    .line 256
    move-wide/from16 v24, v5

    .line 257
    .line 258
    move-object/from16 v28, v2

    .line 259
    .line 260
    move-object/from16 v29, v11

    .line 261
    .line 262
    .line 263
    invoke-direct/range {v14 .. v30}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;-><init>(JJJIJJJLandroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i0(Landroidx/media3/common/Timeline;)V

    .line 267
    .line 268
    iget-boolean v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->sideloadedManifest:Z

    .line 269
    .line 270
    if-nez v1, :cond_b

    .line 271
    .line 272
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 273
    .line 274
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    .line 279
    if-eqz v3, :cond_8

    .line 280
    .line 281
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 282
    .line 283
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 284
    .line 285
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 286
    .line 287
    iget-wide v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 288
    .line 289
    .line 290
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->e0(J)J

    .line 291
    move-result-wide v4

    .line 292
    .line 293
    .line 294
    invoke-static {v3, v4, v5}, Landroidx/media3/exoplayer/dash/DashMediaSource;->s0(Landroidx/media3/exoplayer/dash/manifest/DashManifest;J)J

    .line 295
    move-result-wide v3

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    .line 300
    :cond_8
    iget-boolean v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    .line 301
    .line 302
    if-eqz v1, :cond_9

    .line 303
    .line 304
    .line 305
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->N0()V

    .line 306
    goto :goto_7

    .line 307
    .line 308
    :cond_9
    if-eqz p1, :cond_b

    .line 309
    .line 310
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 311
    .line 312
    iget-boolean v2, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 313
    .line 314
    if-eqz v2, :cond_b

    .line 315
    .line 316
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 322
    .line 323
    cmp-long v3, v1, v3

    .line 324
    .line 325
    if-eqz v3, :cond_b

    .line 326
    .line 327
    const-wide/16 v3, 0x0

    .line 328
    .line 329
    cmp-long v5, v1, v3

    .line 330
    .line 331
    if-nez v5, :cond_a

    .line 332
    .line 333
    const-wide/16 v1, 0x1388

    .line 334
    .line 335
    :cond_a
    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 336
    add-long/2addr v5, v1

    .line 337
    .line 338
    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 340
    move-result-wide v1

    .line 341
    sub-long/2addr v5, v1

    .line 342
    .line 343
    .line 344
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 345
    move-result-wide v1

    .line 346
    .line 347
    .line 348
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/dash/DashMediaSource;->L0(J)V

    .line 349
    :cond_b
    :goto_7
    return-void
.end method

.method private I0(Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    .line 3
    .line 4
    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2014"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_7

    .line 11
    .line 12
    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2012"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    goto :goto_3

    .line 20
    .line 21
    :cond_0
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_6

    .line 28
    .line 29
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_2
    const-string/jumbo p1, "urn:mpeg:dash:utc:ntp:2014"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    const-string/jumbo p1, "urn:mpeg:dash:utc:ntp:2012"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 73
    .line 74
    const-string v0, "Unsupported UTC timing scheme"

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->F0(Ljava/io/IOException;)V

    .line 81
    goto :goto_4

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->x0()V

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_5
    :goto_1
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;

    .line 88
    const/4 v1, 0x0

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource$1;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->K0(Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :cond_6
    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;

    .line 98
    .line 99
    .line 100
    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->K0(Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    .line 104
    goto :goto_4

    .line 105
    .line 106
    .line 107
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->J0(Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;)V

    .line 108
    :goto_4
    return-void
.end method

.method private J0(Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;)V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/Util;->R0(Ljava/lang/String;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 9
    sub-long/2addr v0, v2

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->G0(J)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->F0(Ljava/io/IOException;)V

    .line 18
    :goto_0
    return-void
.end method

.method private K0(Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x5

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILandroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    .line 15
    .line 16
    new-instance p1, Landroidx/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;Landroidx/media3/exoplayer/dash/DashMediaSource$1;)V

    .line 21
    const/4 p2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/dash/DashMediaSource;->M0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    .line 25
    return-void
.end method

.method private L0(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    return-void
.end method

.method private M0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "TT;>;",
            "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    .line 6
    move-result-wide v5

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 9
    .line 10
    new-instance p3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 11
    .line 12
    iget-wide v2, p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 13
    .line 14
    iget-object v4, p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 15
    move-object v1, p3

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 19
    .line 20
    iget p1, p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->y(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V

    .line 24
    return-void
.end method

.method private N0()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->i()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 31
    monitor-enter v0

    .line 32
    .line 33
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    .line 38
    .line 39
    new-instance v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 44
    const/4 v4, 0x4

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v2, v1, v4, v3}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILandroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestCallback:Landroidx/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    .line 55
    move-result v2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/dash/DashMediaSource;->M0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v1
.end method

.method private O0(JJ)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p2}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 6
    move-result-wide v5

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 11
    .line 12
    iget-wide v1, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    cmp-long v3, v1, v7

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 25
    move-result-wide v1

    .line 26
    :goto_0
    move-wide v9, v1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    .line 36
    .line 37
    cmp-long v3, v1, v7

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 43
    move-result-wide v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-wide v9, v5

    .line 46
    .line 47
    :goto_1
    sub-long v1, p1, p3

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 51
    move-result-wide v1

    .line 52
    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    cmp-long v11, v1, v3

    .line 56
    .line 57
    if-gez v11, :cond_2

    .line 58
    .line 59
    cmp-long v11, v9, v3

    .line 60
    .line 61
    if-lez v11, :cond_2

    .line 62
    move-wide v1, v3

    .line 63
    .line 64
    :cond_2
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 65
    .line 66
    iget-wide v3, v3, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minBufferTimeMs:J

    .line 67
    .line 68
    cmp-long v11, v3, v7

    .line 69
    .line 70
    if-eqz v11, :cond_3

    .line 71
    add-long/2addr v1, v3

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 75
    move-result-wide v1

    .line 76
    :cond_3
    move-wide v3, v1

    .line 77
    .line 78
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 81
    .line 82
    iget-wide v1, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 83
    .line 84
    cmp-long v11, v1, v7

    .line 85
    .line 86
    if-eqz v11, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/Util;->r(JJJ)J

    .line 90
    move-result-wide v3

    .line 91
    goto :goto_2

    .line 92
    .line 93
    :cond_4
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 94
    .line 95
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    .line 100
    .line 101
    cmp-long v11, v1, v7

    .line 102
    .line 103
    if-eqz v11, :cond_5

    .line 104
    .line 105
    .line 106
    invoke-static/range {v1 .. v6}, Landroidx/media3/common/util/Util;->r(JJJ)J

    .line 107
    move-result-wide v3

    .line 108
    .line 109
    :cond_5
    :goto_2
    cmp-long v1, v3, v9

    .line 110
    .line 111
    if-lez v1, :cond_6

    .line 112
    move-wide v9, v3

    .line 113
    .line 114
    :cond_6
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 115
    .line 116
    iget-wide v1, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 117
    .line 118
    cmp-long v5, v1, v7

    .line 119
    .line 120
    if-eqz v5, :cond_7

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :cond_7
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 124
    .line 125
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 126
    .line 127
    if-eqz v2, :cond_8

    .line 128
    .line 129
    iget-wide v5, v2, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    .line 130
    .line 131
    cmp-long v2, v5, v7

    .line 132
    .line 133
    if-eqz v2, :cond_8

    .line 134
    move-wide v1, v5

    .line 135
    goto :goto_3

    .line 136
    .line 137
    :cond_8
    iget-wide v1, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .line 138
    .line 139
    cmp-long v5, v1, v7

    .line 140
    .line 141
    if-eqz v5, :cond_9

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_9
    iget-wide v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    .line 145
    .line 146
    :goto_3
    cmp-long v5, v1, v3

    .line 147
    .line 148
    if-gez v5, :cond_a

    .line 149
    move-wide v1, v3

    .line 150
    .line 151
    :cond_a
    cmp-long v5, v1, v9

    .line 152
    .line 153
    if-lez v5, :cond_b

    .line 154
    .line 155
    iget-wide v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->minLiveStartPositionUs:J

    .line 156
    .line 157
    const-wide/16 v5, 0x2

    .line 158
    .line 159
    div-long v5, p3, v5

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 163
    move-result-wide v1

    .line 164
    .line 165
    sub-long v1, p1, v1

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 169
    move-result-wide v11

    .line 170
    move-wide v13, v3

    .line 171
    move-wide v15, v9

    .line 172
    .line 173
    .line 174
    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->r(JJJ)J

    .line 175
    move-result-wide v1

    .line 176
    .line 177
    :cond_b
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 178
    .line 179
    iget-object v5, v5, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 180
    .line 181
    iget v6, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 182
    .line 183
    .line 184
    const v11, -0x800001

    .line 185
    .line 186
    cmpl-float v12, v6, v11

    .line 187
    .line 188
    if-eqz v12, :cond_c

    .line 189
    goto :goto_4

    .line 190
    .line 191
    :cond_c
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 192
    .line 193
    iget-object v6, v6, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 194
    .line 195
    if-eqz v6, :cond_d

    .line 196
    .line 197
    iget v6, v6, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    .line 198
    goto :goto_4

    .line 199
    :cond_d
    move v6, v11

    .line 200
    .line 201
    :goto_4
    iget v5, v5, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 202
    .line 203
    cmpl-float v12, v5, v11

    .line 204
    .line 205
    if-eqz v12, :cond_e

    .line 206
    goto :goto_5

    .line 207
    .line 208
    :cond_e
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 209
    .line 210
    iget-object v5, v5, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 211
    .line 212
    if-eqz v5, :cond_f

    .line 213
    .line 214
    iget v5, v5, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    .line 215
    goto :goto_5

    .line 216
    :cond_f
    move v5, v11

    .line 217
    .line 218
    :goto_5
    cmpl-float v12, v6, v11

    .line 219
    .line 220
    if-nez v12, :cond_11

    .line 221
    .line 222
    cmpl-float v11, v5, v11

    .line 223
    .line 224
    if-nez v11, :cond_11

    .line 225
    .line 226
    iget-object v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 227
    .line 228
    iget-object v11, v11, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 229
    .line 230
    if-eqz v11, :cond_10

    .line 231
    .line 232
    iget-wide v11, v11, Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    .line 233
    .line 234
    cmp-long v7, v11, v7

    .line 235
    .line 236
    if-nez v7, :cond_11

    .line 237
    .line 238
    :cond_10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 239
    move v5, v6

    .line 240
    .line 241
    :cond_11
    new-instance v7, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 242
    .line 243
    .line 244
    invoke-direct {v7}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v1, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->k(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 248
    move-result-object v1

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->i(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v9, v10}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->g(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v6}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->j(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 260
    move-result-object v1

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v5}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->h(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 264
    move-result-object v1

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->f()Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 268
    move-result-object v1

    .line 269
    .line 270
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 271
    return-void
.end method

.method public static synthetic k0(Landroidx/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->w0()V

    return-void
.end method

.method public static synthetic l0(Landroidx/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->N0()V

    return-void
.end method

.method static synthetic m0(Landroidx/media3/exoplayer/dash/DashMediaSource;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DashMediaSource;->G0(J)V

    .line 4
    return-void
.end method

.method static synthetic n0(Landroidx/media3/exoplayer/dash/DashMediaSource;Ljava/io/IOException;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->F0(Ljava/io/IOException;)V

    .line 4
    return-void
.end method

.method static synthetic o0(Landroidx/media3/exoplayer/dash/DashMediaSource;)Landroidx/media3/exoplayer/upstream/Loader;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 3
    return-object p0
.end method

.method static synthetic p0(Landroidx/media3/exoplayer/dash/DashMediaSource;)Ljava/io/IOException;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 3
    return-object p0
.end method

.method private static q0(Landroidx/media3/exoplayer/dash/manifest/Period;JJ)J
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v1, p1

    .line 5
    .line 6
    move-wide/from16 v3, p3

    .line 7
    .line 8
    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 9
    .line 10
    .line 11
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 12
    move-result-wide v5

    .line 13
    .line 14
    .line 15
    invoke-static/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->u0(Landroidx/media3/exoplayer/dash/manifest/Period;)Z

    .line 16
    move-result v7

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v8, 0x7fffffffffffffffL

    .line 22
    const/4 v10, 0x0

    .line 23
    move v11, v10

    .line 24
    .line 25
    :goto_0
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 29
    move-result v12

    .line 30
    .line 31
    if-ge v11, v12, :cond_6

    .line 32
    .line 33
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v12

    .line 38
    .line 39
    check-cast v12, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 40
    .line 41
    iget-object v13, v12, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 42
    .line 43
    iget v12, v12, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    .line 44
    const/4 v14, 0x1

    .line 45
    .line 46
    if-eq v12, v14, :cond_0

    .line 47
    const/4 v15, 0x2

    .line 48
    .line 49
    if-eq v12, v15, :cond_0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move v14, v10

    .line 52
    .line 53
    :goto_1
    if-eqz v7, :cond_1

    .line 54
    .line 55
    if-nez v14, :cond_5

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 59
    move-result v12

    .line 60
    .line 61
    if-eqz v12, :cond_2

    .line 62
    goto :goto_2

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v12

    .line 67
    .line 68
    check-cast v12, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v12}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 72
    move-result-object v12

    .line 73
    .line 74
    if-nez v12, :cond_3

    .line 75
    add-long/2addr v5, v1

    .line 76
    return-wide v5

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->i(JJ)J

    .line 80
    move-result-wide v13

    .line 81
    .line 82
    const-wide/16 v15, 0x0

    .line 83
    .line 84
    cmp-long v15, v13, v15

    .line 85
    .line 86
    if-nez v15, :cond_4

    .line 87
    return-wide v5

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->b(JJ)J

    .line 91
    move-result-wide v15

    .line 92
    add-long/2addr v15, v13

    .line 93
    .line 94
    const-wide/16 v13, 0x1

    .line 95
    .line 96
    sub-long v13, v15, v13

    .line 97
    .line 98
    .line 99
    invoke-interface {v12, v13, v14}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 100
    move-result-wide v15

    .line 101
    add-long/2addr v15, v5

    .line 102
    .line 103
    .line 104
    invoke-interface {v12, v13, v14, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->a(JJ)J

    .line 105
    move-result-wide v12

    .line 106
    add-long/2addr v12, v15

    .line 107
    .line 108
    .line 109
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 110
    move-result-wide v8

    .line 111
    .line 112
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    return-wide v8
.end method

.method private static r0(Landroidx/media3/exoplayer/dash/manifest/Period;JJ)J
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v1, p1

    .line 5
    .line 6
    move-wide/from16 v3, p3

    .line 7
    .line 8
    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 9
    .line 10
    .line 11
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 12
    move-result-wide v5

    .line 13
    .line 14
    .line 15
    invoke-static/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->u0(Landroidx/media3/exoplayer/dash/manifest/Period;)Z

    .line 16
    move-result v7

    .line 17
    const/4 v8, 0x0

    .line 18
    move-wide v10, v5

    .line 19
    move v9, v8

    .line 20
    .line 21
    :goto_0
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 25
    move-result v12

    .line 26
    .line 27
    if-ge v9, v12, :cond_6

    .line 28
    .line 29
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v12

    .line 34
    .line 35
    check-cast v12, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 36
    .line 37
    iget-object v13, v12, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 38
    .line 39
    iget v12, v12, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    .line 40
    const/4 v14, 0x1

    .line 41
    .line 42
    if-eq v12, v14, :cond_0

    .line 43
    const/4 v15, 0x2

    .line 44
    .line 45
    if-eq v12, v15, :cond_0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v14, v8

    .line 48
    .line 49
    :goto_1
    if-eqz v7, :cond_1

    .line 50
    .line 51
    if-nez v14, :cond_5

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 55
    move-result v12

    .line 56
    .line 57
    if-eqz v12, :cond_2

    .line 58
    goto :goto_2

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v12

    .line 63
    .line 64
    check-cast v12, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 68
    move-result-object v12

    .line 69
    .line 70
    if-nez v12, :cond_3

    .line 71
    return-wide v5

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->i(JJ)J

    .line 75
    move-result-wide v13

    .line 76
    .line 77
    const-wide/16 v15, 0x0

    .line 78
    .line 79
    cmp-long v13, v13, v15

    .line 80
    .line 81
    if-nez v13, :cond_4

    .line 82
    return-wide v5

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-interface {v12, v1, v2, v3, v4}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->b(JJ)J

    .line 86
    move-result-wide v13

    .line 87
    .line 88
    .line 89
    invoke-interface {v12, v13, v14}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 90
    move-result-wide v12

    .line 91
    add-long/2addr v12, v5

    .line 92
    .line 93
    .line 94
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 95
    move-result-wide v10

    .line 96
    .line 97
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    return-wide v10
.end method

.method private static s0(Landroidx/media3/exoplayer/dash/manifest/DashManifest;J)J
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 6
    move-result v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    iget-wide v3, v2, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 18
    move-result-wide v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 22
    move-result-wide v5

    .line 23
    .line 24
    .line 25
    invoke-static/range {p1 .. p2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 26
    move-result-wide v7

    .line 27
    .line 28
    iget-wide v0, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    const-wide/16 v9, 0x1388

    .line 35
    .line 36
    .line 37
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 38
    move-result-wide v9

    .line 39
    const/4 v11, 0x0

    .line 40
    move v12, v11

    .line 41
    .line 42
    :goto_0
    iget-object v13, v2, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 46
    move-result v13

    .line 47
    .line 48
    if-ge v12, v13, :cond_3

    .line 49
    .line 50
    iget-object v13, v2, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v13

    .line 55
    .line 56
    check-cast v13, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 57
    .line 58
    iget-object v13, v13, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 62
    move-result v14

    .line 63
    .line 64
    if-eqz v14, :cond_0

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v13

    .line 70
    .line 71
    check-cast v13, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 75
    move-result-object v13

    .line 76
    .line 77
    if-eqz v13, :cond_2

    .line 78
    .line 79
    add-long v14, v0, v3

    .line 80
    .line 81
    .line 82
    invoke-interface {v13, v5, v6, v7, v8}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->c(JJ)J

    .line 83
    move-result-wide v16

    .line 84
    .line 85
    add-long v14, v14, v16

    .line 86
    sub-long/2addr v14, v7

    .line 87
    .line 88
    .line 89
    const-wide/32 v16, 0x186a0

    .line 90
    .line 91
    sub-long v18, v9, v16

    .line 92
    .line 93
    cmp-long v13, v14, v18

    .line 94
    .line 95
    if-ltz v13, :cond_1

    .line 96
    .line 97
    cmp-long v13, v14, v9

    .line 98
    .line 99
    if-lez v13, :cond_2

    .line 100
    .line 101
    add-long v16, v9, v16

    .line 102
    .line 103
    cmp-long v13, v14, v16

    .line 104
    .line 105
    if-gez v13, :cond_2

    .line 106
    :cond_1
    move-wide v9, v14

    .line 107
    .line 108
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_3
    const-wide/16 v0, 0x3e8

    .line 112
    .line 113
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 114
    .line 115
    .line 116
    invoke-static {v9, v10, v0, v1, v2}, Lcom/google/common/math/c;->a(JJLjava/math/RoundingMode;)J

    .line 117
    move-result-wide v0

    .line 118
    return-wide v0
.end method

.method private t0()J
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    mul-int/lit16 v0, v0, 0x3e8

    .line 7
    .line 8
    const/16 v1, 0x1388

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v0

    .line 13
    int-to-long v0, v0

    .line 14
    return-wide v0
.end method

.method private static u0(Landroidx/media3/exoplayer/dash/manifest/Period;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-ge v1, v2, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 19
    .line 20
    iget v2, v2, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    const/4 v4, 0x2

    .line 25
    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return v3

    .line 32
    :cond_2
    return v0
.end method

.method private static v0(Landroidx/media3/exoplayer/dash/manifest/Period;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-ge v1, v2, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 19
    .line 20
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->h()Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_2
    return v0
.end method

.method private synthetic w0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->H0(Z)V

    .line 5
    return-void
.end method

.method private x0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/exoplayer/dash/DashMediaSource$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$1;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/util/SntpClient;->j(Landroidx/media3/exoplayer/upstream/Loader;Landroidx/media3/exoplayer/util/SntpClient$InitializationCallback;)V

    .line 11
    return-void
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/dash/DashMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->x()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget p1, p1, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->id:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    return-void
.end method

.method A0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v14, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 6
    .line 7
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 8
    .line 9
    iget-object v5, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d()Landroid/net/Uri;

    .line 13
    move-result-object v6

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b()Ljava/util/Map;

    .line 17
    move-result-object v7

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a()J

    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    .line 24
    move-wide/from16 v8, p2

    .line 25
    .line 26
    move-wide/from16 v10, p4

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 32
    .line 33
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(J)V

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 39
    .line 40
    iget v1, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v14, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->p(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V

    .line 44
    return-void
.end method

.method B0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-wide/from16 v14, p2

    .line 7
    .line 8
    new-instance v12, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 9
    .line 10
    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 11
    .line 12
    iget-object v5, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d()Landroid/net/Uri;

    .line 16
    move-result-object v6

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b()Ljava/util/Map;

    .line 20
    move-result-object v7

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a()J

    .line 24
    move-result-wide v16

    .line 25
    move-object v2, v12

    .line 26
    .line 27
    move-wide/from16 v8, p2

    .line 28
    .line 29
    move-wide/from16 v10, p4

    .line 30
    move-object v14, v12

    .line 31
    .line 32
    move-wide/from16 v12, v16

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 36
    .line 37
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 38
    .line 39
    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(J)V

    .line 43
    .line 44
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 45
    .line 46
    iget v3, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v14, v3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->s(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->c()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 56
    .line 57
    iget-object v3, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 58
    const/4 v4, 0x0

    .line 59
    .line 60
    if-nez v3, :cond_0

    .line 61
    move v3, v4

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    iget-wide v5, v5, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 73
    move v7, v4

    .line 74
    .line 75
    :goto_1
    if-ge v7, v3, :cond_1

    .line 76
    .line 77
    iget-object v8, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v7}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 81
    move-result-object v8

    .line 82
    .line 83
    iget-wide v8, v8, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 84
    .line 85
    cmp-long v8, v8, v5

    .line 86
    .line 87
    if-gez v8, :cond_1

    .line 88
    .line 89
    add-int/lit8 v7, v7, 0x1

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_1
    iget-boolean v5, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 93
    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    sub-int v5, v3, v7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 100
    move-result v6

    .line 101
    .line 102
    if-le v5, v6, :cond_2

    .line 103
    .line 104
    const-string v2, "DashMediaSource"

    .line 105
    .line 106
    const-string v3, "Loaded out of sync manifest"

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto :goto_2

    .line 111
    .line 112
    :cond_2
    iget-wide v5, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    .line 119
    cmp-long v8, v5, v8

    .line 120
    .line 121
    if-eqz v8, :cond_4

    .line 122
    .line 123
    iget-wide v8, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    .line 124
    .line 125
    const-wide/16 v10, 0x3e8

    .line 126
    mul-long/2addr v8, v10

    .line 127
    .line 128
    cmp-long v5, v8, v5

    .line 129
    .line 130
    if-gtz v5, :cond_4

    .line 131
    .line 132
    const-string v3, "DashMediaSource"

    .line 133
    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    const-string v5, "Loaded stale dynamic manifest: "

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    iget-wide v5, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, ", "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    iget-wide v5, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    .line 164
    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    :goto_2
    iget v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 167
    .line 168
    add-int/lit8 v3, v2, 0x1

    .line 169
    .line 170
    iput v3, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 171
    .line 172
    iget-object v3, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 173
    .line 174
    iget v0, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 175
    .line 176
    .line 177
    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    .line 178
    move-result v0

    .line 179
    .line 180
    if-ge v2, v0, :cond_3

    .line 181
    .line 182
    .line 183
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->t0()J

    .line 184
    move-result-wide v2

    .line 185
    .line 186
    .line 187
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/dash/DashMediaSource;->L0(J)V

    .line 188
    goto :goto_3

    .line 189
    .line 190
    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/dash/DashManifestStaleException;

    .line 191
    .line 192
    .line 193
    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/DashManifestStaleException;-><init>()V

    .line 194
    .line 195
    iput-object v0, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 196
    :goto_3
    return-void

    .line 197
    .line 198
    :cond_4
    iput v4, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 199
    .line 200
    :cond_5
    iput-object v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 201
    .line 202
    iget-boolean v4, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    .line 203
    .line 204
    iget-boolean v2, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 205
    and-int/2addr v2, v4

    .line 206
    .line 207
    iput-boolean v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    .line 208
    .line 209
    move-wide/from16 v4, p2

    .line 210
    .line 211
    sub-long v8, v4, p4

    .line 212
    .line 213
    iput-wide v8, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 214
    .line 215
    iput-wide v4, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 216
    .line 217
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 218
    monitor-enter v2

    .line 219
    .line 220
    :try_start_0
    iget-object v4, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 221
    .line 222
    iget-object v4, v4, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 223
    .line 224
    iget-object v5, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 225
    .line 226
    if-ne v4, v5, :cond_7

    .line 227
    .line 228
    iget-object v4, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 229
    .line 230
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    .line 231
    .line 232
    if-eqz v4, :cond_6

    .line 233
    goto :goto_4

    .line 234
    .line 235
    .line 236
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d()Landroid/net/Uri;

    .line 237
    move-result-object v4

    .line 238
    .line 239
    :goto_4
    iput-object v4, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 240
    goto :goto_5

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    goto :goto_7

    .line 243
    :cond_7
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    const/4 v0, 0x1

    .line 245
    .line 246
    if-nez v3, :cond_a

    .line 247
    .line 248
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 249
    .line 250
    iget-boolean v3, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 251
    .line 252
    if-eqz v3, :cond_9

    .line 253
    .line 254
    iget-object v0, v2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->utcTiming:Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;

    .line 255
    .line 256
    if-eqz v0, :cond_8

    .line 257
    .line 258
    .line 259
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->I0(Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;)V

    .line 260
    goto :goto_6

    .line 261
    .line 262
    .line 263
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->x0()V

    .line 264
    goto :goto_6

    .line 265
    .line 266
    .line 267
    :cond_9
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->H0(Z)V

    .line 268
    goto :goto_6

    .line 269
    .line 270
    :cond_a
    iget v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 271
    add-int/2addr v2, v7

    .line 272
    .line 273
    iput v2, v1, Landroidx/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 274
    .line 275
    .line 276
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->H0(Z)V

    .line 277
    :goto_6
    return-void

    .line 278
    :goto_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    throw v0
.end method

.method C0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    new-instance v15, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 9
    .line 10
    iget-wide v4, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 11
    .line 12
    iget-object v6, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d()Landroid/net/Uri;

    .line 16
    move-result-object v7

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b()Ljava/util/Map;

    .line 20
    move-result-object v8

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a()J

    .line 24
    move-result-wide v13

    .line 25
    move-object v3, v15

    .line 26
    .line 27
    move-wide/from16 v9, p2

    .line 28
    .line 29
    move-wide/from16 v11, p4

    .line 30
    .line 31
    .line 32
    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 33
    .line 34
    new-instance v3, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 35
    .line 36
    iget v4, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    .line 40
    .line 41
    new-instance v4, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    .line 42
    .line 43
    move/from16 v5, p7

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v15, v3, v2, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 47
    .line 48
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 49
    .line 50
    .line 51
    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->d(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    .line 52
    move-result-wide v3

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    cmp-long v5, v3, v5

    .line 60
    .line 61
    if-nez v5, :cond_0

    .line 62
    .line 63
    sget-object v3, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v5, 0x0

    .line 66
    .line 67
    .line 68
    invoke-static {v5, v3, v4}, Landroidx/media3/exoplayer/upstream/Loader;->g(ZJ)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->c()Z

    .line 73
    move-result v4

    .line 74
    .line 75
    xor-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 78
    .line 79
    iget v6, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v15, v6, v2, v4}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->w(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 83
    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 87
    .line 88
    iget-wide v4, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 89
    .line 90
    .line 91
    invoke-interface {v2, v4, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(J)V

    .line 92
    :cond_1
    return-object v3
.end method

.method D0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v14, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 6
    .line 7
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 8
    .line 9
    iget-object v5, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d()Landroid/net/Uri;

    .line 13
    move-result-object v6

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b()Ljava/util/Map;

    .line 17
    move-result-object v7

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a()J

    .line 21
    move-result-wide v12

    .line 22
    move-object v2, v14

    .line 23
    .line 24
    move-wide/from16 v8, p2

    .line 25
    .line 26
    move-wide/from16 v10, p4

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 32
    .line 33
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(J)V

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 39
    .line 40
    iget v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v14, v3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->s(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->c()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide v1

    .line 54
    .line 55
    sub-long v1, v1, p2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/dash/DashMediaSource;->G0(J)V

    .line 59
    return-void
.end method

.method E0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 9
    .line 10
    new-instance v14, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 11
    .line 12
    iget-wide v5, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 13
    .line 14
    iget-object v7, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d()Landroid/net/Uri;

    .line 18
    move-result-object v8

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b()Ljava/util/Map;

    .line 22
    move-result-object v9

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a()J

    .line 26
    move-result-wide v15

    .line 27
    move-object v4, v14

    .line 28
    .line 29
    move-wide/from16 v10, p2

    .line 30
    .line 31
    move-wide/from16 v12, p4

    .line 32
    move-object v0, v14

    .line 33
    move-wide v14, v15

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v4 .. v15}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 37
    .line 38
    iget v4, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 39
    const/4 v5, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0, v4, v2, v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->w(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 43
    .line 44
    move-object/from16 v0, p0

    .line 45
    .line 46
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 47
    .line 48
    iget-wide v4, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 49
    .line 50
    .line 51
    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(J)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/dash/DashMediaSource;->F0(Ljava/io/IOException;)V

    .line 55
    .line 56
    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 57
    return-object v1
.end method

.method public M(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v16, p2

    .line 5
    .line 6
    move-object/from16 v1, p1

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v2

    .line 15
    .line 16
    iget v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 17
    sub-int/2addr v2, v3

    .line 18
    move v5, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->c0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 22
    move-result-object v12

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->a0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 26
    move-result-object v10

    .line 27
    .line 28
    new-instance v15, Landroidx/media3/exoplayer/dash/DashMediaPeriod;

    .line 29
    move-object v1, v15

    .line 30
    .line 31
    iget v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 32
    add-int/2addr v2, v3

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 35
    .line 36
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 37
    .line 38
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

    .line 39
    .line 40
    iget-object v7, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    .line 41
    .line 42
    iget-object v8, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 43
    .line 44
    iget-object v9, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 45
    .line 46
    iget-object v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 47
    .line 48
    iget-wide v13, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 49
    .line 50
    move-object/from16 p1, v15

    .line 51
    .line 52
    iget-object v15, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 53
    .line 54
    move-object/from16 v20, p1

    .line 55
    .line 56
    move-object/from16 p1, v1

    .line 57
    .line 58
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 59
    .line 60
    move-object/from16 v17, v1

    .line 61
    .line 62
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->playerEmsgCallback:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 63
    .line 64
    move-object/from16 v18, v1

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->f0()Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 68
    move-result-object v19

    .line 69
    .line 70
    move-object/from16 v1, p1

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v1 .. v19}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;-><init>(ILandroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;ILandroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;JLandroidx/media3/exoplayer/upstream/LoaderErrorThrower;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 74
    .line 75
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 76
    .line 77
    move-object/from16 v2, v20

    .line 78
    .line 79
    iget v3, v2, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->id:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    return-object v2
.end method

.method protected h0(Landroidx/media3/datasource/TransferListener;)V
    .locals 2
    .param p1    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->f0()Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->b(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    .line 21
    .line 22
    iget-boolean p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->sideloadedManifest:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource;->H0(Z)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 38
    .line 39
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    .line 40
    .line 41
    const-string v0, "DashMediaSource"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroidx/media3/common/util/Util;->w()Landroid/os/Handler;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->N0()V

    .line 56
    :goto_0
    return-void
.end method

.method public j()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method protected j0()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iput-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/Loader;->k()V

    .line 14
    .line 15
    iput-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 16
    .line 17
    :cond_0
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    iput-wide v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 20
    .line 21
    iput-wide v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 22
    .line 23
    iget-boolean v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->sideloadedManifest:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    .line 31
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 34
    .line 35
    iput-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45
    .line 46
    iput-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 54
    .line 55
    iput v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 56
    .line 57
    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->i()V

    .line 68
    .line 69
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->release()V

    .line 73
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 6
    return-void
.end method

.method y0(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    :cond_1
    return-void
.end method

.method z0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource;->N0()V

    .line 11
    return-void
.end method
