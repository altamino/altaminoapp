.class final Landroidx/media3/exoplayer/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;
.implements Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/source/MediaPeriod;",
        "Landroidx/media3/exoplayer/source/SequenceableLoader$Callback<",
        "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
        "Landroidx/media3/exoplayer/dash/DashChunkSource;",
        ">;>;",
        "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback<",
        "Landroidx/media3/exoplayer/dash/DashChunkSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

.field private static final CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private final baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private final elapsedRealtimeOffsetMs:J

.field private eventSampleStreams:[Landroidx/media3/exoplayer/dash/EventSampleStream;

.field private eventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/EventStream;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

.field private final mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private periodIndex:I

.field private final playerEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Landroidx/media3/exoplayer/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private final trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Landroidx/media3/exoplayer/dash/DashChunkSource;",
            ">;",
            "Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final trackGroupInfos:[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

.field private final trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private final transferListener:Landroidx/media3/datasource/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "CC([1-4])=(.+)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;ILandroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;JLandroidx/media3/exoplayer/upstream/LoaderErrorThrower;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 8
    .param p6    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p8

    .line 6
    .line 7
    move-object/from16 v4, p15

    .line 8
    .line 9
    move-object/from16 v5, p16

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    move v6, p1

    .line 14
    .line 15
    iput v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->id:I

    .line 16
    .line 17
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 18
    move-object v6, p3

    .line 19
    .line 20
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 21
    .line 22
    iput v2, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->periodIndex:I

    .line 23
    move-object v6, p5

    .line 24
    .line 25
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

    .line 26
    move-object v6, p6

    .line 27
    .line 28
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->transferListener:Landroidx/media3/datasource/TransferListener;

    .line 29
    move-object v6, p7

    .line 30
    .line 31
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 32
    .line 33
    iput-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 34
    .line 35
    move-object/from16 v6, p9

    .line 36
    .line 37
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 38
    .line 39
    move-object/from16 v6, p10

    .line 40
    .line 41
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 42
    .line 43
    move-object/from16 v6, p11

    .line 44
    .line 45
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 46
    .line 47
    move-wide/from16 v6, p12

    .line 48
    .line 49
    iput-wide v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->elapsedRealtimeOffsetMs:J

    .line 50
    .line 51
    move-object/from16 v6, p14

    .line 52
    .line 53
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 54
    .line 55
    iput-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 56
    .line 57
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 58
    .line 59
    move-object/from16 v6, p18

    .line 60
    .line 61
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 62
    .line 63
    new-instance v6, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 64
    .line 65
    move-object/from16 v7, p17

    .line 66
    .line 67
    .line 68
    invoke-direct {v6, p2, v7, v4}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;-><init>(Landroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;Landroidx/media3/exoplayer/upstream/Allocator;)V

    .line 69
    .line 70
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 71
    const/4 v4, 0x0

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->u(I)[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    iput-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 78
    .line 79
    new-array v4, v4, [Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 80
    .line 81
    iput-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 82
    .line 83
    new-instance v4, Ljava/util/IdentityHashMap;

    .line 84
    .line 85
    .line 86
    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 87
    .line 88
    iput-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    .line 89
    .line 90
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 91
    .line 92
    .line 93
    invoke-interface {v5, v4}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->a([Landroidx/media3/exoplayer/source/SequenceableLoader;)Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    iput-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p4}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->eventStreams:Ljava/util/List;

    .line 103
    .line 104
    iput-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 105
    .line 106
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v1, v2}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->k(Landroidx/media3/exoplayer/drm/DrmSessionManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v2, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 115
    .line 116
    iput-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 117
    .line 118
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, [Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 121
    .line 122
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 123
    return-void
.end method

.method private A([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Landroidx/media3/exoplayer/source/SampleStream;[ZJ[I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    const/4 v3, 0x1

    .line 5
    .line 6
    if-ge v1, v2, :cond_4

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    aget-object v4, p2, v1

    .line 14
    .line 15
    if-nez v4, :cond_2

    .line 16
    .line 17
    aput-boolean v3, p3, v1

    .line 18
    .line 19
    aget v3, p6, v1

    .line 20
    .line 21
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 22
    .line 23
    aget-object v3, v4, v3

    .line 24
    .line 25
    iget v4, v3, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v3, v2, p4, p5}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->j(Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;J)Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    aput-object v2, p2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v5, 0x2

    .line 36
    .line 37
    if-ne v4, v5, :cond_3

    .line 38
    .line 39
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 40
    .line 41
    iget v3, v3, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    .line 42
    .line 43
    .line 44
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    check-cast v3, Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroidx/media3/common/TrackGroup;->c(I)Landroidx/media3/common/Format;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    new-instance v4, Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 58
    .line 59
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 60
    .line 61
    iget-boolean v5, v5, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v3, v2, v5}, Landroidx/media3/exoplayer/dash/EventSampleStream;-><init>(Landroidx/media3/exoplayer/dash/manifest/EventStream;Landroidx/media3/common/Format;Z)V

    .line 65
    .line 66
    aput-object v4, p2, v1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_2
    instance-of v3, v4, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    check-cast v4, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->n()Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    check-cast v3, Landroidx/media3/exoplayer/dash/DashChunkSource;

    .line 80
    .line 81
    .line 82
    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/dash/DashChunkSource;->b(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 83
    .line 84
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_2
    array-length p3, p1

    .line 87
    .line 88
    if-ge v0, p3, :cond_7

    .line 89
    .line 90
    aget-object p3, p2, v0

    .line 91
    .line 92
    if-nez p3, :cond_6

    .line 93
    .line 94
    aget-object p3, p1, v0

    .line 95
    .line 96
    if-eqz p3, :cond_6

    .line 97
    .line 98
    aget p3, p6, v0

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 101
    .line 102
    aget-object p3, v1, p3

    .line 103
    .line 104
    iget v1, p3, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 105
    .line 106
    if-ne v1, v3, :cond_6

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v0, p6}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->q(I[I)I

    .line 110
    move-result v1

    .line 111
    const/4 v2, -0x1

    .line 112
    .line 113
    if-ne v1, v2, :cond_5

    .line 114
    .line 115
    new-instance p3, Landroidx/media3/exoplayer/source/EmptySampleStream;

    .line 116
    .line 117
    .line 118
    invoke-direct {p3}, Landroidx/media3/exoplayer/source/EmptySampleStream;-><init>()V

    .line 119
    .line 120
    aput-object p3, p2, v0

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :cond_5
    aget-object v1, p2, v1

    .line 124
    .line 125
    check-cast v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 126
    .line 127
    iget p3, p3, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p4, p5, p3}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->D(JI)Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 131
    move-result-object p3

    .line 132
    .line 133
    aput-object p3, p2, v0

    .line 134
    .line 135
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_7
    return-void
.end method

.method private static h(Ljava/util/List;[Landroidx/media3/common/TrackGroup;[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/EventStream;",
            ">;[",
            "Landroidx/media3/common/TrackGroup;",
            "[",
            "Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            "I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 15
    .line 16
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/media3/exoplayer/dash/manifest/EventStream;->a()Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    const-string v4, "application/x-emsg"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/media3/exoplayer/dash/manifest/EventStream;->a()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, ":"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    new-instance v4, Landroidx/media3/common/TrackGroup;

    .line 64
    const/4 v5, 0x1

    .line 65
    .line 66
    new-array v5, v5, [Landroidx/media3/common/Format;

    .line 67
    .line 68
    aput-object v3, v5, v0

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, v2, v5}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 72
    .line 73
    aput-object v4, p1, p3

    .line 74
    .line 75
    add-int/lit8 v2, p3, 0x1

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->c(I)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    aput-object v3, p2, p3

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    move p3, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method private static i(Landroidx/media3/exoplayer/drm/DrmSessionManager;Ljava/util/List;[[II[Z[[Landroidx/media3/common/Format;[Landroidx/media3/common/TrackGroup;[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[[II[Z[[",
            "Landroidx/media3/common/Format;",
            "[",
            "Landroidx/media3/common/TrackGroup;",
            "[",
            "Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            ")I"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    move v3, v1

    .line 7
    move v4, v3

    .line 8
    .line 9
    :goto_0
    if-ge v3, v2, :cond_7

    .line 10
    .line 11
    aget-object v5, p2, v3

    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    array-length v7, v5

    .line 18
    move v8, v1

    .line 19
    .line 20
    :goto_1
    if-ge v8, v7, :cond_0

    .line 21
    .line 22
    aget v9, v5, v8

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v9

    .line 27
    .line 28
    check-cast v9, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 29
    .line 30
    iget-object v9, v9, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    add-int/lit8 v8, v8, 0x1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 40
    move-result v7

    .line 41
    .line 42
    new-array v8, v7, [Landroidx/media3/common/Format;

    .line 43
    move v9, v1

    .line 44
    .line 45
    :goto_2
    if-ge v9, v7, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v10

    .line 50
    .line 51
    check-cast v10, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 52
    .line 53
    iget-object v10, v10, Landroidx/media3/exoplayer/dash/manifest/Representation;->format:Landroidx/media3/common/Format;

    .line 54
    .line 55
    move-object/from16 v11, p0

    .line 56
    .line 57
    .line 58
    invoke-interface {v11, v10}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->a(Landroidx/media3/common/Format;)I

    .line 59
    move-result v12

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v12}, Landroidx/media3/common/Format;->c(I)Landroidx/media3/common/Format;

    .line 63
    move-result-object v10

    .line 64
    .line 65
    aput-object v10, v8, v9

    .line 66
    .line 67
    add-int/lit8 v9, v9, 0x1

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_1
    move-object/from16 v11, p0

    .line 71
    .line 72
    aget v6, v5, v1

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v6

    .line 77
    .line 78
    check-cast v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 79
    .line 80
    iget-wide v9, v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    .line 81
    .line 82
    const-wide/16 v12, -0x1

    .line 83
    .line 84
    cmp-long v7, v9, v12

    .line 85
    .line 86
    if-eqz v7, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    const-string v9, "unset:"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    :goto_3
    add-int/lit8 v9, v4, 0x1

    .line 111
    .line 112
    aget-boolean v10, p4, v3

    .line 113
    const/4 v12, -0x1

    .line 114
    .line 115
    if-eqz v10, :cond_3

    .line 116
    .line 117
    add-int/lit8 v10, v4, 0x2

    .line 118
    goto :goto_4

    .line 119
    :cond_3
    move v10, v9

    .line 120
    move v9, v12

    .line 121
    .line 122
    :goto_4
    aget-object v13, p5, v3

    .line 123
    array-length v13, v13

    .line 124
    .line 125
    if-eqz v13, :cond_4

    .line 126
    .line 127
    add-int/lit8 v13, v10, 0x1

    .line 128
    goto :goto_5

    .line 129
    :cond_4
    move v13, v10

    .line 130
    move v10, v12

    .line 131
    .line 132
    :goto_5
    new-instance v14, Landroidx/media3/common/TrackGroup;

    .line 133
    .line 134
    .line 135
    invoke-direct {v14, v7, v8}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 136
    .line 137
    aput-object v14, p6, v4

    .line 138
    .line 139
    iget v6, v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    .line 140
    .line 141
    .line 142
    invoke-static {v6, v5, v4, v9, v10}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->d(I[IIII)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 143
    move-result-object v6

    .line 144
    .line 145
    aput-object v6, p7, v4

    .line 146
    .line 147
    if-eq v9, v12, :cond_5

    .line 148
    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v8, ":emsg"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    .line 166
    new-instance v8, Landroidx/media3/common/Format$Builder;

    .line 167
    .line 168
    .line 169
    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8, v6}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 173
    move-result-object v8

    .line 174
    .line 175
    const-string v14, "application/x-emsg"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v14}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 179
    move-result-object v8

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 183
    move-result-object v8

    .line 184
    .line 185
    new-instance v14, Landroidx/media3/common/TrackGroup;

    .line 186
    const/4 v15, 0x1

    .line 187
    .line 188
    new-array v15, v15, [Landroidx/media3/common/Format;

    .line 189
    .line 190
    aput-object v8, v15, v1

    .line 191
    .line 192
    .line 193
    invoke-direct {v14, v6, v15}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 194
    .line 195
    aput-object v14, p6, v9

    .line 196
    .line 197
    .line 198
    invoke-static {v5, v4}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->b([II)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 199
    move-result-object v6

    .line 200
    .line 201
    aput-object v6, p7, v9

    .line 202
    .line 203
    :cond_5
    if-eq v10, v12, :cond_6

    .line 204
    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v7, ":cc"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v6

    .line 221
    .line 222
    new-instance v7, Landroidx/media3/common/TrackGroup;

    .line 223
    .line 224
    aget-object v8, p5, v3

    .line 225
    .line 226
    .line 227
    invoke-direct {v7, v6, v8}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 228
    .line 229
    aput-object v7, p6, v10

    .line 230
    .line 231
    .line 232
    invoke-static {v5, v4}, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->a([II)Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 233
    move-result-object v4

    .line 234
    .line 235
    aput-object v4, p7, v10

    .line 236
    .line 237
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 238
    move v4, v13

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    :cond_7
    return v4
.end method

.method private j(Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;J)Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            "J)",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Landroidx/media3/exoplayer/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v14, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    iget v1, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, -0x1

    .line 10
    .line 11
    if-eq v1, v4, :cond_0

    .line 12
    .line 13
    move/from16 v25, v2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    move/from16 v25, v3

    .line 17
    :goto_0
    const/4 v5, 0x0

    .line 18
    .line 19
    if-eqz v25, :cond_1

    .line 20
    .line 21
    iget-object v6, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(I)Landroidx/media3/common/TrackGroup;

    .line 25
    move-result-object v1

    .line 26
    move v6, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v6, v3

    .line 29
    move-object v1, v5

    .line 30
    .line 31
    :goto_1
    iget v7, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    .line 32
    .line 33
    if-eq v7, v4, :cond_2

    .line 34
    move v4, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v4, v3

    .line 37
    .line 38
    :goto_2
    if-eqz v4, :cond_3

    .line 39
    .line 40
    iget-object v8, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(I)Landroidx/media3/common/TrackGroup;

    .line 44
    move-result-object v7

    .line 45
    .line 46
    iget v8, v7, Landroidx/media3/common/TrackGroup;->length:I

    .line 47
    add-int/2addr v6, v8

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move-object v7, v5

    .line 50
    .line 51
    :goto_3
    new-array v8, v6, [Landroidx/media3/common/Format;

    .line 52
    .line 53
    new-array v6, v6, [I

    .line 54
    .line 55
    if-eqz v25, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroidx/media3/common/TrackGroup;->c(I)Landroidx/media3/common/Format;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    aput-object v1, v8, v3

    .line 62
    const/4 v1, 0x5

    .line 63
    .line 64
    aput v1, v6, v3

    .line 65
    move v1, v2

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    move v1, v3

    .line 68
    .line 69
    :goto_4
    new-instance v9, Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    if-eqz v4, :cond_5

    .line 75
    .line 76
    :goto_5
    iget v4, v7, Landroidx/media3/common/TrackGroup;->length:I

    .line 77
    .line 78
    if-ge v3, v4, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v3}, Landroidx/media3/common/TrackGroup;->c(I)Landroidx/media3/common/Format;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    aput-object v4, v8, v1

    .line 85
    const/4 v10, 0x3

    .line 86
    .line 87
    aput v10, v6, v1

    .line 88
    .line 89
    .line 90
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/2addr v1, v2

    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    goto :goto_5

    .line 95
    .line 96
    :cond_5
    iget-object v1, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 97
    .line 98
    iget-boolean v1, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    if-eqz v25, :cond_6

    .line 103
    .line 104
    iget-object v1, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->k()Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 108
    move-result-object v5

    .line 109
    :cond_6
    move-object v13, v5

    .line 110
    .line 111
    iget-object v15, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

    .line 112
    .line 113
    iget-object v1, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 114
    .line 115
    iget-object v2, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 116
    .line 117
    iget-object v3, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 118
    .line 119
    iget v4, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->periodIndex:I

    .line 120
    .line 121
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 122
    .line 123
    iget v7, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 124
    .line 125
    iget-wide v10, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->elapsedRealtimeOffsetMs:J

    .line 126
    .line 127
    iget-object v12, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->transferListener:Landroidx/media3/datasource/TransferListener;

    .line 128
    .line 129
    move-object/from16 v31, v8

    .line 130
    .line 131
    iget-object v8, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 132
    .line 133
    move-object/from16 v32, v6

    .line 134
    .line 135
    iget-object v6, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 136
    .line 137
    move-object/from16 v16, v1

    .line 138
    .line 139
    move-object/from16 v17, v2

    .line 140
    .line 141
    move-object/from16 v18, v3

    .line 142
    .line 143
    move/from16 v19, v4

    .line 144
    .line 145
    move-object/from16 v20, v5

    .line 146
    .line 147
    move-object/from16 v21, p2

    .line 148
    .line 149
    move/from16 v22, v7

    .line 150
    .line 151
    move-wide/from16 v23, v10

    .line 152
    .line 153
    move-object/from16 v26, v9

    .line 154
    .line 155
    move-object/from16 v27, v13

    .line 156
    .line 157
    move-object/from16 v28, v12

    .line 158
    .line 159
    move-object/from16 v29, v8

    .line 160
    .line 161
    move-object/from16 v30, v6

    .line 162
    .line 163
    .line 164
    invoke-interface/range {v15 .. v30}, Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;->a(Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;I[ILandroidx/media3/exoplayer/trackselection/ExoTrackSelection;IJZLjava/util/List;Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)Landroidx/media3/exoplayer/dash/DashChunkSource;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    new-instance v15, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 168
    .line 169
    iget v2, v0, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 170
    .line 171
    iget-object v7, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 172
    .line 173
    iget-object v10, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 174
    .line 175
    iget-object v11, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 176
    .line 177
    iget-object v12, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 178
    .line 179
    iget-object v0, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 180
    move-object v1, v15

    .line 181
    .line 182
    move-object/from16 v3, v32

    .line 183
    .line 184
    move-object/from16 v4, v31

    .line 185
    .line 186
    move-object/from16 v6, p0

    .line 187
    .line 188
    move-wide/from16 v8, p3

    .line 189
    .line 190
    move-object/from16 v33, v13

    .line 191
    move-object v13, v0

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;-><init>(I[I[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/chunk/ChunkSource;Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;Landroidx/media3/exoplayer/upstream/Allocator;JLandroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;)V

    .line 195
    monitor-enter p0

    .line 196
    .line 197
    :try_start_0
    iget-object v0, v14, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    .line 198
    .line 199
    move-object/from16 v5, v33

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v15, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit p0

    .line 204
    return-object v15

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    throw v0
.end method

.method private static k(Landroidx/media3/exoplayer/drm/DrmSessionManager;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/EventStream;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "[",
            "Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->p(Ljava/util/List;)[[I

    .line 4
    move-result-object v2

    .line 5
    array-length v3, v2

    .line 6
    .line 7
    new-array v4, v3, [Z

    .line 8
    .line 9
    new-array v5, v3, [[Landroidx/media3/common/Format;

    .line 10
    .line 11
    .line 12
    invoke-static {v3, p1, v2, v4, v5}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->t(ILjava/util/List;[[I[Z[[Landroidx/media3/common/Format;)I

    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v3

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    new-array v8, v0, [Landroidx/media3/common/TrackGroup;

    .line 22
    .line 23
    new-array v9, v0, [Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v6, v8

    .line 27
    move-object v7, v9

    .line 28
    .line 29
    .line 30
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->i(Landroidx/media3/exoplayer/drm/DrmSessionManager;Ljava/util/List;[[II[Z[[Landroidx/media3/common/Format;[Landroidx/media3/common/TrackGroup;[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;)I

    .line 31
    move-result p0

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v8, v9, p0}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->h(Ljava/util/List;[Landroidx/media3/common/TrackGroup;[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;I)V

    .line 35
    .line 36
    new-instance p0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private static l(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "urn:mpeg:dash:adaptation-set-switching:2016"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->m(Ljava/util/List;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static m(Ljava/util/List;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    return-object v1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static n(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "http://dashif.org/guidelines/trickmode"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->m(Ljava/util/List;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static o(Ljava/util/List;[I)[Landroidx/media3/common/Format;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[I)[",
            "Landroidx/media3/common/Format;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_3

    .line 6
    .line 7
    aget v3, p1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v4

    .line 12
    .line 13
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    check-cast v3, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 20
    .line 21
    iget-object v3, v3, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    .line 22
    move v5, v1

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    move-result v6

    .line 27
    .line 28
    if-ge v5, v6, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    check-cast v6, Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 35
    .line 36
    iget-object v7, v6, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 37
    .line 38
    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v7

    .line 43
    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 50
    .line 51
    const-string p1, "application/cea-608"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    iget-wide v0, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, ":cea608"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    sget-object p1, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    .line 85
    .line 86
    .line 87
    invoke-static {v6, p1, p0}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->w(Landroidx/media3/exoplayer/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;

    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    .line 91
    :cond_0
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    .line 92
    .line 93
    iget-object v8, v6, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v7

    .line 98
    .line 99
    if-eqz v7, :cond_1

    .line 100
    .line 101
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 105
    .line 106
    const-string p1, "application/cea-708"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 110
    move-result-object p0

    .line 111
    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    iget-wide v0, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v0, ":cea708"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 133
    move-result-object p0

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 137
    move-result-object p0

    .line 138
    .line 139
    sget-object p1, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    .line 140
    .line 141
    .line 142
    invoke-static {v6, p1, p0}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->w(Landroidx/media3/exoplayer/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;

    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    .line 146
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_3
    new-array p0, v1, [Landroidx/media3/common/Format;

    .line 154
    return-object p0
.end method

.method private static p(Ljava/util/List;)[[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/collect/l0;->g(I)Ljava/util/HashMap;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    new-instance v3, Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    .line 22
    :goto_0
    if-ge v5, v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    check-cast v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 29
    .line 30
    iget-wide v6, v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    .line 31
    .line 32
    .line 33
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v7

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    new-instance v6, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    .line 53
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move v5, v4

    .line 64
    .line 65
    :goto_1
    if-ge v5, v0, :cond_6

    .line 66
    .line 67
    .line 68
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    check-cast v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 72
    .line 73
    iget-object v7, v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->essentialProperties:Ljava/util/List;

    .line 74
    .line 75
    .line 76
    invoke-static {v7}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->n(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    if-nez v7, :cond_1

    .line 80
    .line 81
    iget-object v7, v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 82
    .line 83
    .line 84
    invoke-static {v7}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->n(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    :cond_1
    if-eqz v7, :cond_2

    .line 88
    .line 89
    iget-object v7, v7, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 93
    move-result-wide v7

    .line 94
    .line 95
    .line 96
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    move-result-object v7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object v7

    .line 102
    .line 103
    check-cast v7, Ljava/lang/Integer;

    .line 104
    .line 105
    if-eqz v7, :cond_2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result v7

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move v7, v5

    .line 112
    .line 113
    :goto_2
    if-ne v7, v5, :cond_4

    .line 114
    .line 115
    iget-object v6, v6, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 116
    .line 117
    .line 118
    invoke-static {v6}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->l(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/Descriptor;

    .line 119
    move-result-object v6

    .line 120
    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    iget-object v6, v6, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 124
    .line 125
    const-string v8, ","

    .line 126
    .line 127
    .line 128
    invoke-static {v6, v8}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 129
    move-result-object v6

    .line 130
    array-length v8, v6

    .line 131
    move v9, v4

    .line 132
    .line 133
    :goto_3
    if-ge v9, v8, :cond_4

    .line 134
    .line 135
    aget-object v10, v6, v9

    .line 136
    .line 137
    .line 138
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 139
    move-result-wide v10

    .line 140
    .line 141
    .line 142
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    move-result-object v10

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v10

    .line 148
    .line 149
    check-cast v10, Ljava/lang/Integer;

    .line 150
    .line 151
    if-eqz v10, :cond_3

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 155
    move-result v10

    .line 156
    .line 157
    .line 158
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 159
    move-result v7

    .line 160
    .line 161
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 162
    goto :goto_3

    .line 163
    .line 164
    :cond_4
    if-eq v7, v5, :cond_5

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v6

    .line 169
    .line 170
    check-cast v6, Ljava/util/List;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 175
    .line 176
    check-cast v7, Ljava/util/List;

    .line 177
    .line 178
    .line 179
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    .line 187
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 188
    goto :goto_1

    .line 189
    .line 190
    .line 191
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 192
    move-result p0

    .line 193
    .line 194
    new-array v0, p0, [[I

    .line 195
    .line 196
    :goto_4
    if-ge v4, p0, :cond_7

    .line 197
    .line 198
    .line 199
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    check-cast v1, Ljava/util/Collection;

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 206
    move-result-object v1

    .line 207
    .line 208
    aput-object v1, v0, v4

    .line 209
    .line 210
    .line 211
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 212
    .line 213
    add-int/lit8 v4, v4, 0x1

    .line 214
    goto :goto_4

    .line 215
    :cond_7
    return-object v0
.end method

.method private q(I[I)I
    .locals 4

    .line 1
    .line 2
    aget p1, p2, p1

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 9
    .line 10
    aget-object p1, v1, p1

    .line 11
    .line 12
    iget p1, p1, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, p2

    .line 15
    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    aget v2, p2, v1

    .line 19
    .line 20
    if-ne v2, p1, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    .line 23
    .line 24
    aget-object v2, v3, v2

    .line 25
    .line 26
    iget v2, v2, Landroidx/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    return v1

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v0
.end method

.method private r([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aget-object v2, p1, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/source/TrackGroupArray;->c(Landroidx/media3/common/TrackGroup;)I

    .line 21
    move-result v2

    .line 22
    .line 23
    aput v2, v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, -0x1

    .line 26
    .line 27
    aput v2, v0, v1

    .line 28
    .line 29
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object v0
.end method

.method private static s(Ljava/util/List;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    aget v3, p1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    check-cast v3, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 16
    move v4, v1

    .line 17
    .line 18
    .line 19
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 20
    move-result v5

    .line 21
    .line 22
    if-ge v4, v5, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    check-cast v5, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 29
    .line 30
    iget-object v5, v5, Landroidx/media3/exoplayer/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 34
    move-result v5

    .line 35
    .line 36
    if-nez v5, :cond_0

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v1
.end method

.method private static t(ILjava/util/List;[[I[Z[[Landroidx/media3/common/Format;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[[I[Z[[",
            "Landroidx/media3/common/Format;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    if-ge v0, p0, :cond_2

    .line 5
    .line 6
    aget-object v2, p2, v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->s(Ljava/util/List;[I)Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    aput-boolean v2, p3, v0

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    :cond_0
    aget-object v2, p2, v0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->o(Ljava/util/List;[I)[Landroidx/media3/common/Format;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    aput-object v2, p4, v0

    .line 26
    array-length v2, v2

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v1
.end method

.method private static u(I)[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Landroidx/media3/exoplayer/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-array p0, p0, [Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 3
    return-object p0
.end method

.method private static w(Landroidx/media3/exoplayer/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;
    .locals 9

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [Landroidx/media3/common/Format;

    .line 9
    .line 10
    aput-object p2, p0, v0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    const-string v2, ";"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v2}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    array-length v2, p0

    .line 19
    .line 20
    new-array v2, v2, [Landroidx/media3/common/Format;

    .line 21
    move v3, v0

    .line 22
    :goto_0
    array-length v4, p0

    .line 23
    .line 24
    if-ge v3, v4, :cond_2

    .line 25
    .line 26
    aget-object v4, p0, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 34
    move-result v5

    .line 35
    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    new-array p0, v1, [Landroidx/media3/common/Format;

    .line 39
    .line 40
    aput-object p2, p0, v0

    .line 41
    return-object p0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    move-result v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    iget-object v8, p2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v8, ":"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 79
    move-result-object v6

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v5}, Landroidx/media3/common/Format$Builder;->H(I)Landroidx/media3/common/Format$Builder;

    .line 83
    move-result-object v5

    .line 84
    const/4 v6, 0x2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    aput-object v4, v2, v3

    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    return-object v2
.end method

.method private y([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    .line 4
    if-ge v0, v1, :cond_4

    .line 5
    .line 6
    aget-object v1, p1, v0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    aget-boolean v1, p2, v0

    .line 11
    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    :cond_0
    aget-object v1, p3, v0

    .line 15
    .line 16
    instance-of v2, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->A(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    instance-of v2, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    check-cast v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c()V

    .line 34
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 35
    .line 36
    aput-object v1, p3, v0

    .line 37
    .line 38
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_4
    return-void
.end method

.method private z([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Landroidx/media3/exoplayer/source/SampleStream;[I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    .line 4
    if-ge v0, v1, :cond_5

    .line 5
    .line 6
    aget-object v1, p2, v0

    .line 7
    .line 8
    instance-of v2, v1, Landroidx/media3/exoplayer/source/EmptySampleStream;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    instance-of v1, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->q(I[I)I

    .line 18
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    aget-object v1, p2, v0

    .line 24
    .line 25
    instance-of v1, v1, Landroidx/media3/exoplayer/source/EmptySampleStream;

    .line 26
    .line 27
    if-nez v1, :cond_4

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    aget-object v2, p2, v0

    .line 31
    .line 32
    instance-of v3, v2, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    check-cast v2, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 39
    .line 40
    aget-object v1, p2, v1

    .line 41
    .line 42
    if-ne v2, v1, :cond_2

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_2
    :goto_1
    aget-object v1, p2, v0

    .line 46
    .line 47
    instance-of v2, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    check-cast v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->c()V

    .line 55
    :cond_3
    const/4 v1, 0x0

    .line 56
    .line 57
    aput-object v1, p2, v0

    .line 58
    .line 59
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    return-void
.end method


# virtual methods
.method public B(Landroidx/media3/exoplayer/dash/manifest/DashManifest;I)V
    .locals 9

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 3
    .line 4
    iput p2, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->periodIndex:I

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->q(Landroidx/media3/exoplayer/dash/manifest/DashManifest;)V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    array-length v2, v0

    .line 16
    move v3, v1

    .line 17
    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    aget-object v4, v0, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->n()Landroidx/media3/exoplayer/source/chunk/ChunkSource;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    check-cast v4, Landroidx/media3/exoplayer/dash/DashChunkSource;

    .line 27
    .line 28
    .line 29
    invoke-interface {v4, p1, p2}, Landroidx/media3/exoplayer/dash/DashChunkSource;->f(Landroidx/media3/exoplayer/dash/manifest/DashManifest;I)V

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->f(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->eventStreams:Ljava/util/List;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 48
    array-length v2, v0

    .line 49
    move v3, v1

    .line 50
    .line 51
    :goto_1
    if-ge v3, v2, :cond_5

    .line 52
    .line 53
    aget-object v4, v0, v3

    .line 54
    .line 55
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v6

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    check-cast v6, Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Landroidx/media3/exoplayer/dash/manifest/EventStream;->a()Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Landroidx/media3/exoplayer/dash/EventSampleStream;->a()Ljava/lang/String;

    .line 79
    move-result-object v8

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v7

    .line 84
    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 89
    move-result v5

    .line 90
    const/4 v7, 0x1

    .line 91
    sub-int/2addr v5, v7

    .line 92
    .line 93
    iget-boolean v8, p1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 94
    .line 95
    if-eqz v8, :cond_3

    .line 96
    .line 97
    if-ne p2, v5, :cond_3

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v7, v1

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {v4, v6, v7}, Landroidx/media3/exoplayer/dash/EventSampleStream;->d(Landroidx/media3/exoplayer/dash/manifest/EventStream;Z)V

    .line 103
    .line 104
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    return-void
.end method

.method public a(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    iget v4, v3, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 11
    const/4 v5, 0x2

    .line 12
    .line 13
    if-ne v4, v5, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->a(JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 17
    move-result-wide p1

    .line 18
    return-wide p1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-wide p1
.end method

.method public declared-synchronized b(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Landroidx/media3/exoplayer/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public c([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->r([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[I

    .line 4
    move-result-object v6

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->y([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p3, v6}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->z([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Landroidx/media3/exoplayer/source/SampleStream;[I)V

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move-wide v4, p5

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->A([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Landroidx/media3/exoplayer/source/SampleStream;[ZJ[I)V

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    new-instance p2, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    array-length p4, p3

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    :goto_0
    if-ge v0, p4, :cond_2

    .line 33
    .line 34
    aget-object v1, p3, v0

    .line 35
    .line 36
    instance-of v2, v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    check-cast v1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    instance-of v2, v1, Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    check-cast v1, Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result p3

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->u(I)[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result p1

    .line 74
    .line 75
    new-array p1, p1, [Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 76
    .line 77
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 83
    .line 84
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->a([Landroidx/media3/exoplayer/source/SequenceableLoader;)Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 91
    return-wide p5
.end method

.method public continueLoading(J)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(J)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->discardBuffer(JZ)V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public e(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->d(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 6
    return-void
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->v(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)V

    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 6
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    .line 7
    :goto_0
    if-ge v3, v1, :cond_0

    .line 8
    .line 9
    aget-object v4, v0, v3

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4, p1, p2}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->C(J)V

    .line 13
    .line 14
    add-int/lit8 v3, v3, 0x1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Landroidx/media3/exoplayer/dash/EventSampleStream;

    .line 18
    array-length v1, v0

    .line 19
    .line 20
    :goto_1
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-object v3, v0, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/dash/EventSampleStream;->c(J)V

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    return-wide p1
.end method

.method public v(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Landroidx/media3/exoplayer/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->f(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 6
    return-void
.end method

.method public x()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->o()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p0}, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;->A(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 23
    return-void
.end method
