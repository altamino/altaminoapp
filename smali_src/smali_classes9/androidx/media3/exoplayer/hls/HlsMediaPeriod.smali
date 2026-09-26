.class public final Landroidx/media3/exoplayer/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private final allowChunklessPreparation:Z

.field private audioVideoSampleStreamWrapperCount:I

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

.field private final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private final extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private manifestUrlIndicesPerWrapper:[[I

.field private mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaTransferListener:Landroidx/media3/datasource/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final metadataType:I

.field private pendingPrepareCount:I

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final sampleStreamWrapperCallback:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

.field private sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterInitializationTimeoutMs:J

.field private final timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

.field private trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private final useSessionKeys:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;ZIZLandroidx/media3/exoplayer/analytics/PlayerId;J)V
    .locals 4
    .param p4    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    move-object v2, p2

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-object v2, p3

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    move-object v2, p4

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    move-object v2, p5

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    move-object v2, p6

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-object v2, p7

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-object v2, p8

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-object v2, p9

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-object v2, p10

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    move/from16 v2, p12

    iput-boolean v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    move/from16 v2, p13

    iput v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->metadataType:I

    move/from16 v2, p14

    iput-boolean v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->useSessionKeys:Z

    move-object/from16 v2, p15

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    move-wide/from16 v2, p16

    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    .line 2
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;Landroidx/media3/exoplayer/hls/HlsMediaPeriod$1;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    const/4 v2, 0x0

    new-array v3, v2, [Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 3
    invoke-interface {p11, v3}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->a([Landroidx/media3/exoplayer/source/SequenceableLoader;)Landroidx/media3/exoplayer/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 4
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 5
    new-instance v1, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-direct {v1}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    new-array v1, v2, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    new-array v1, v2, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    new-array v1, v2, [[I

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    return-void
.end method

.method static synthetic f(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 7
    return v0
.end method

.method static synthetic g(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 3
    return-object p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;Landroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 3
    return-object p1
.end method

.method static synthetic i(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 3
    return-object p0
.end method

.method static synthetic j(Landroidx/media3/exoplayer/hls/HlsMediaPeriod;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 3
    return-object p0
.end method

.method private k(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p3

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    new-instance v4, Ljava/util/HashSet;

    .line 32
    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 35
    const/4 v5, 0x0

    .line 36
    move v6, v5

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 40
    move-result v7

    .line 41
    .line 42
    if-ge v6, v7, :cond_5

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    .line 48
    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 49
    .line 50
    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    move-result v8

    .line 55
    .line 56
    if-nez v8, :cond_0

    .line 57
    .line 58
    move-object/from16 v13, p0

    .line 59
    .line 60
    move-object/from16 v11, p4

    .line 61
    .line 62
    move-object/from16 v12, p5

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 74
    const/4 v8, 0x1

    .line 75
    move v9, v5

    .line 76
    move v10, v8

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 80
    move-result v11

    .line 81
    .line 82
    if-ge v9, v11, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v11

    .line 87
    .line 88
    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 89
    .line 90
    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-static {v7, v11}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result v11

    .line 95
    .line 96
    if-eqz v11, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v11

    .line 101
    .line 102
    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 103
    .line 104
    .line 105
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v12

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Landroidx/media3/common/Format;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Landroidx/media3/common/Format;

    .line 122
    .line 123
    iget-object v11, v11, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-static {v11, v8}, Landroidx/media3/common/util/Util;->L(Ljava/lang/String;I)I

    .line 127
    move-result v11

    .line 128
    .line 129
    if-ne v11, v8, :cond_1

    .line 130
    move v11, v8

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    move v11, v5

    .line 133
    :goto_2
    and-int/2addr v10, v11

    .line 134
    .line 135
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    const-string v11, "audio:"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v7

    .line 154
    const/4 v14, 0x1

    .line 155
    .line 156
    new-array v9, v5, [Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    invoke-static {v9}, Landroidx/media3/common/util/Util;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    move-result-object v9

    .line 161
    .line 162
    check-cast v9, [Landroid/net/Uri;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    move-result-object v9

    .line 167
    move-object v15, v9

    .line 168
    .line 169
    check-cast v15, [Landroid/net/Uri;

    .line 170
    .line 171
    new-array v9, v5, [Landroidx/media3/common/Format;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 175
    move-result-object v9

    .line 176
    .line 177
    move-object/from16 v16, v9

    .line 178
    .line 179
    check-cast v16, [Landroidx/media3/common/Format;

    .line 180
    .line 181
    const/16 v17, 0x0

    .line 182
    .line 183
    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 185
    move-result-object v18

    .line 186
    .line 187
    move-object/from16 v12, p0

    .line 188
    move-object v13, v7

    .line 189
    .line 190
    move-object/from16 v19, p6

    .line 191
    .line 192
    move-wide/from16 v20, p1

    .line 193
    .line 194
    .line 195
    invoke-direct/range {v12 .. v21}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->n(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 196
    move-result-object v9

    .line 197
    .line 198
    .line 199
    invoke-static {v3}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 200
    move-result-object v11

    .line 201
    .line 202
    move-object/from16 v12, p5

    .line 203
    .line 204
    .line 205
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    move-object/from16 v11, p4

    .line 208
    .line 209
    .line 210
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    move-object/from16 v13, p0

    .line 213
    .line 214
    iget-boolean v14, v13, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 215
    .line 216
    if-eqz v14, :cond_4

    .line 217
    .line 218
    if-eqz v10, :cond_4

    .line 219
    .line 220
    new-array v10, v5, [Landroidx/media3/common/Format;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 224
    move-result-object v10

    .line 225
    .line 226
    check-cast v10, [Landroidx/media3/common/Format;

    .line 227
    .line 228
    new-array v8, v8, [Landroidx/media3/common/TrackGroup;

    .line 229
    .line 230
    new-instance v14, Landroidx/media3/common/TrackGroup;

    .line 231
    .line 232
    .line 233
    invoke-direct {v14, v7, v10}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 234
    .line 235
    aput-object v14, v8, v5

    .line 236
    .line 237
    new-array v7, v5, [I

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v8, v5, v7}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P([Landroidx/media3/common/TrackGroup;I[I)V

    .line 241
    .line 242
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_5
    move-object/from16 v13, p0

    .line 247
    return-void
.end method

.method private l(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    new-array v2, v1, [I

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    move v6, v5

    .line 15
    .line 16
    :goto_0
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 20
    move-result v7

    .line 21
    const/4 v8, 0x2

    .line 22
    const/4 v9, 0x1

    .line 23
    .line 24
    if-ge v4, v7, :cond_3

    .line 25
    .line 26
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v7

    .line 31
    .line 32
    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 33
    .line 34
    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 35
    .line 36
    iget v10, v7, Landroidx/media3/common/Format;->height:I

    .line 37
    .line 38
    if-gtz v10, :cond_2

    .line 39
    .line 40
    iget-object v10, v7, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v10, v8}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    move-result-object v10

    .line 45
    .line 46
    if-eqz v10, :cond_0

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_0
    iget-object v7, v7, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {v7, v9}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    move-result-object v7

    .line 54
    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    aput v9, v2, v4

    .line 58
    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    const/4 v7, -0x1

    .line 62
    .line 63
    aput v7, v2, v4

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    :goto_1
    aput v8, v2, v4

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    if-lez v5, :cond_4

    .line 74
    move v1, v5

    .line 75
    move v4, v9

    .line 76
    move v5, v3

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_4
    if-ge v6, v1, :cond_5

    .line 80
    sub-int/2addr v1, v6

    .line 81
    move v4, v3

    .line 82
    move v5, v9

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v4, v3

    .line 85
    move v5, v4

    .line 86
    .line 87
    :goto_3
    new-array v13, v1, [Landroid/net/Uri;

    .line 88
    .line 89
    new-array v6, v1, [Landroidx/media3/common/Format;

    .line 90
    .line 91
    new-array v7, v1, [I

    .line 92
    move v10, v3

    .line 93
    move v11, v10

    .line 94
    .line 95
    :goto_4
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 96
    .line 97
    .line 98
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 99
    move-result v12

    .line 100
    .line 101
    if-ge v10, v12, :cond_9

    .line 102
    .line 103
    if-eqz v4, :cond_6

    .line 104
    .line 105
    aget v12, v2, v10

    .line 106
    .line 107
    if-ne v12, v8, :cond_8

    .line 108
    .line 109
    :cond_6
    if-eqz v5, :cond_7

    .line 110
    .line 111
    aget v12, v2, v10

    .line 112
    .line 113
    if-eq v12, v9, :cond_8

    .line 114
    .line 115
    :cond_7
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 116
    .line 117
    .line 118
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v12

    .line 120
    .line 121
    check-cast v12, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 122
    .line 123
    iget-object v14, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 124
    .line 125
    aput-object v14, v13, v11

    .line 126
    .line 127
    iget-object v12, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 128
    .line 129
    aput-object v12, v6, v11

    .line 130
    .line 131
    add-int/lit8 v12, v11, 0x1

    .line 132
    .line 133
    aput v10, v7, v11

    .line 134
    move v11, v12

    .line 135
    .line 136
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 137
    goto :goto_4

    .line 138
    .line 139
    :cond_9
    aget-object v2, v6, v3

    .line 140
    .line 141
    iget-object v2, v2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v8}, Landroidx/media3/common/util/Util;->L(Ljava/lang/String;I)I

    .line 145
    move-result v5

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v9}, Landroidx/media3/common/util/Util;->L(Ljava/lang/String;I)I

    .line 149
    move-result v2

    .line 150
    .line 151
    if-eq v2, v9, :cond_a

    .line 152
    .line 153
    if-nez v2, :cond_b

    .line 154
    .line 155
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 156
    .line 157
    .line 158
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 159
    move-result v8

    .line 160
    .line 161
    if-eqz v8, :cond_b

    .line 162
    .line 163
    :cond_a
    if-gt v5, v9, :cond_b

    .line 164
    .line 165
    add-int v8, v2, v5

    .line 166
    .line 167
    if-lez v8, :cond_b

    .line 168
    move v8, v9

    .line 169
    goto :goto_5

    .line 170
    :cond_b
    move v8, v3

    .line 171
    .line 172
    :goto_5
    if-nez v4, :cond_c

    .line 173
    .line 174
    if-lez v2, :cond_c

    .line 175
    move v12, v9

    .line 176
    goto :goto_6

    .line 177
    :cond_c
    move v12, v3

    .line 178
    .line 179
    :goto_6
    const-string v4, "main"

    .line 180
    .line 181
    iget-object v15, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    .line 182
    .line 183
    iget-object v14, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 184
    .line 185
    move-object/from16 v10, p0

    .line 186
    move-object v11, v4

    .line 187
    .line 188
    move-object/from16 v16, v14

    .line 189
    move-object v14, v6

    .line 190
    .line 191
    move-object/from16 v17, p6

    .line 192
    .line 193
    move-wide/from16 v18, p2

    .line 194
    .line 195
    .line 196
    invoke-direct/range {v10 .. v19}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->n(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 197
    move-result-object v10

    .line 198
    .line 199
    move-object/from16 v11, p4

    .line 200
    .line 201
    .line 202
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    move-object/from16 v11, p5

    .line 205
    .line 206
    .line 207
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    move-object/from16 v7, p0

    .line 210
    .line 211
    iget-boolean v11, v7, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 212
    .line 213
    if-eqz v11, :cond_13

    .line 214
    .line 215
    if-eqz v8, :cond_13

    .line 216
    .line 217
    new-instance v8, Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    if-lez v5, :cond_10

    .line 223
    .line 224
    new-array v5, v1, [Landroidx/media3/common/Format;

    .line 225
    move v11, v3

    .line 226
    .line 227
    :goto_7
    if-ge v11, v1, :cond_d

    .line 228
    .line 229
    aget-object v12, v6, v11

    .line 230
    .line 231
    .line 232
    invoke-static {v12}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->q(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    .line 233
    move-result-object v12

    .line 234
    .line 235
    aput-object v12, v5, v11

    .line 236
    .line 237
    add-int/lit8 v11, v11, 0x1

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_d
    new-instance v1, Landroidx/media3/common/TrackGroup;

    .line 241
    .line 242
    .line 243
    invoke-direct {v1, v4, v5}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    if-lez v2, :cond_f

    .line 249
    .line 250
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    .line 251
    .line 252
    if-nez v1, :cond_e

    .line 253
    .line 254
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 255
    .line 256
    .line 257
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 258
    move-result v1

    .line 259
    .line 260
    if-eqz v1, :cond_f

    .line 261
    .line 262
    :cond_e
    new-instance v1, Landroidx/media3/common/TrackGroup;

    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v5, ":audio"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object v2

    .line 280
    .line 281
    new-array v5, v9, [Landroidx/media3/common/Format;

    .line 282
    .line 283
    aget-object v6, v6, v3

    .line 284
    .line 285
    iget-object v11, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    .line 286
    .line 287
    .line 288
    invoke-static {v6, v11, v3}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->o(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    .line 289
    move-result-object v6

    .line 290
    .line 291
    aput-object v6, v5, v3

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, v2, v5}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    :cond_f
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 300
    .line 301
    if-eqz v0, :cond_12

    .line 302
    move v1, v3

    .line 303
    .line 304
    .line 305
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 306
    move-result v2

    .line 307
    .line 308
    if-ge v1, v2, :cond_12

    .line 309
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v5, ":cc:"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v2

    .line 329
    .line 330
    new-instance v5, Landroidx/media3/common/TrackGroup;

    .line 331
    .line 332
    new-array v6, v9, [Landroidx/media3/common/Format;

    .line 333
    .line 334
    .line 335
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    move-result-object v11

    .line 337
    .line 338
    check-cast v11, Landroidx/media3/common/Format;

    .line 339
    .line 340
    aput-object v11, v6, v3

    .line 341
    .line 342
    .line 343
    invoke-direct {v5, v2, v6}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 349
    goto :goto_8

    .line 350
    .line 351
    :cond_10
    new-array v2, v1, [Landroidx/media3/common/Format;

    .line 352
    move v5, v3

    .line 353
    .line 354
    :goto_9
    if-ge v5, v1, :cond_11

    .line 355
    .line 356
    aget-object v11, v6, v5

    .line 357
    .line 358
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Landroidx/media3/common/Format;

    .line 359
    .line 360
    .line 361
    invoke-static {v11, v12, v9}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->o(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    .line 362
    move-result-object v11

    .line 363
    .line 364
    aput-object v11, v2, v5

    .line 365
    .line 366
    add-int/lit8 v5, v5, 0x1

    .line 367
    goto :goto_9

    .line 368
    .line 369
    :cond_11
    new-instance v0, Landroidx/media3/common/TrackGroup;

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, v4, v2}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    :cond_12
    new-instance v0, Landroidx/media3/common/TrackGroup;

    .line 378
    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v2, ":id3"

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    move-result-object v1

    .line 395
    .line 396
    new-array v2, v9, [Landroidx/media3/common/Format;

    .line 397
    .line 398
    new-instance v4, Landroidx/media3/common/Format$Builder;

    .line 399
    .line 400
    .line 401
    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 402
    .line 403
    const-string v5, "ID3"

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 407
    move-result-object v4

    .line 408
    .line 409
    const-string v5, "application/id3"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 413
    move-result-object v4

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 417
    move-result-object v4

    .line 418
    .line 419
    aput-object v4, v2, v3

    .line 420
    .line 421
    .line 422
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    new-array v1, v3, [Landroidx/media3/common/TrackGroup;

    .line 428
    .line 429
    .line 430
    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 431
    move-result-object v1

    .line 432
    .line 433
    check-cast v1, [Landroidx/media3/common/TrackGroup;

    .line 434
    .line 435
    .line 436
    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 437
    move-result v0

    .line 438
    .line 439
    .line 440
    filled-new-array {v0}, [I

    .line 441
    move-result-object v0

    .line 442
    .line 443
    .line 444
    invoke-virtual {v10, v1, v3, v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P([Landroidx/media3/common/TrackGroup;I[I)V

    .line 445
    :cond_13
    return-void
.end method

.method private m(J)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v10, p0

    .line 3
    .line 4
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    .line 15
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 16
    .line 17
    iget-boolean v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->useSessionKeys:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->p(Ljava/util/List;)Ljava/util/Map;

    .line 25
    move-result-object v0

    .line 26
    :goto_0
    move-object v11, v0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    const/4 v12, 0x1

    .line 40
    xor-int/2addr v0, v12

    .line 41
    .line 42
    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 43
    .line 44
    iget-object v13, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    .line 45
    const/4 v14, 0x0

    .line 46
    .line 47
    iput v14, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 48
    .line 49
    new-instance v15, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    new-instance v8, Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    move-object/from16 v0, p0

    .line 62
    .line 63
    move-wide/from16 v2, p1

    .line 64
    move-object v4, v15

    .line 65
    move-object v5, v8

    .line 66
    move-object v6, v11

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->l(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 70
    .line 71
    :cond_1
    move-object/from16 v0, p0

    .line 72
    .line 73
    move-wide/from16 v1, p1

    .line 74
    move-object v3, v7

    .line 75
    move-object v4, v15

    .line 76
    move-object v5, v8

    .line 77
    move-object v6, v11

    .line 78
    .line 79
    .line 80
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->k(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v0

    .line 85
    .line 86
    iput v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    .line 87
    move v9, v14

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 91
    move-result v0

    .line 92
    .line 93
    if-ge v9, v0, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    move-object v7, v0

    .line 99
    .line 100
    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v1, "subtitle:"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, ":"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    iget-object v1, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v6

    .line 129
    const/4 v2, 0x3

    .line 130
    .line 131
    new-array v3, v12, [Landroid/net/Uri;

    .line 132
    .line 133
    iget-object v0, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 134
    .line 135
    aput-object v0, v3, v14

    .line 136
    .line 137
    new-array v4, v12, [Landroidx/media3/common/Format;

    .line 138
    .line 139
    iget-object v0, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Landroidx/media3/common/Format;

    .line 140
    .line 141
    aput-object v0, v4, v14

    .line 142
    const/4 v5, 0x0

    .line 143
    .line 144
    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 146
    move-result-object v16

    .line 147
    .line 148
    move-object/from16 v0, p0

    .line 149
    move-object v1, v6

    .line 150
    .line 151
    move-object/from16 v17, v6

    .line 152
    .line 153
    move-object/from16 v6, v16

    .line 154
    move-object v14, v7

    .line 155
    move-object v7, v11

    .line 156
    move-object v12, v8

    .line 157
    .line 158
    move/from16 v18, v9

    .line 159
    .line 160
    move-wide/from16 v8, p1

    .line 161
    .line 162
    .line 163
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->n(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    filled-new-array/range {v18 .. v18}, [I

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const/4 v1, 0x1

    .line 176
    .line 177
    new-array v2, v1, [Landroidx/media3/common/TrackGroup;

    .line 178
    .line 179
    new-instance v3, Landroidx/media3/common/TrackGroup;

    .line 180
    .line 181
    new-array v4, v1, [Landroidx/media3/common/Format;

    .line 182
    .line 183
    iget-object v1, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Landroidx/media3/common/Format;

    .line 184
    const/4 v5, 0x0

    .line 185
    .line 186
    aput-object v1, v4, v5

    .line 187
    .line 188
    move-object/from16 v1, v17

    .line 189
    .line 190
    .line 191
    invoke-direct {v3, v1, v4}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 192
    .line 193
    aput-object v3, v2, v5

    .line 194
    .line 195
    new-array v1, v5, [I

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2, v5, v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P([Landroidx/media3/common/TrackGroup;I[I)V

    .line 199
    .line 200
    add-int/lit8 v9, v18, 0x1

    .line 201
    move v14, v5

    .line 202
    move-object v8, v12

    .line 203
    const/4 v12, 0x1

    .line 204
    goto :goto_2

    .line 205
    :cond_2
    move-object v12, v8

    .line 206
    move v5, v14

    .line 207
    .line 208
    new-array v0, v5, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    check-cast v0, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 215
    .line 216
    iput-object v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 217
    .line 218
    new-array v0, v5, [[I

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    check-cast v0, [[I

    .line 225
    .line 226
    iput-object v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 227
    .line 228
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 229
    array-length v0, v0

    .line 230
    .line 231
    iput v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 232
    move v0, v5

    .line 233
    .line 234
    :goto_3
    iget v1, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    .line 235
    .line 236
    if-ge v0, v1, :cond_3

    .line 237
    .line 238
    iget-object v1, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 239
    .line 240
    aget-object v1, v1, v0

    .line 241
    const/4 v2, 0x1

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Z(Z)V

    .line 245
    .line 246
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto :goto_3

    .line 248
    .line 249
    :cond_3
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 250
    array-length v1, v0

    .line 251
    move v14, v5

    .line 252
    .line 253
    :goto_4
    if-ge v14, v1, :cond_4

    .line 254
    .line 255
    aget-object v2, v0, v14

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l()V

    .line 259
    .line 260
    add-int/lit8 v14, v14, 0x1

    .line 261
    goto :goto_4

    .line 262
    .line 263
    :cond_4
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 264
    .line 265
    iput-object v0, v10, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 266
    return-void
.end method

.method private n(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .locals 18
    .param p5    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;J)",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v14, Landroidx/media3/exoplayer/hls/HlsChunkSource;

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 9
    .line 10
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->dataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 11
    .line 12
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    .line 13
    .line 14
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 15
    .line 16
    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    .line 17
    .line 18
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 19
    .line 20
    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 21
    move-object v1, v14

    .line 22
    .line 23
    move-object/from16 v4, p3

    .line 24
    .line 25
    move-object/from16 v5, p4

    .line 26
    .line 27
    move-object/from16 v11, p6

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/hls/HlsChunkSource;-><init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V

    .line 31
    .line 32
    new-instance v16, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 33
    .line 34
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    .line 35
    .line 36
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 37
    .line 38
    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 39
    .line 40
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 41
    .line 42
    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 43
    .line 44
    iget-object v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->eventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 45
    .line 46
    iget v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->metadataType:I

    .line 47
    .line 48
    move-object/from16 v1, v16

    .line 49
    .line 50
    move-object/from16 v2, p1

    .line 51
    .line 52
    move/from16 v3, p2

    .line 53
    move-object v5, v14

    .line 54
    .line 55
    move-object/from16 v6, p7

    .line 56
    .line 57
    move-wide/from16 v8, p8

    .line 58
    .line 59
    move/from16 v17, v10

    .line 60
    .line 61
    move-object/from16 v10, p5

    .line 62
    move-object v14, v15

    .line 63
    .line 64
    move/from16 v15, v17

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;-><init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;Landroidx/media3/exoplayer/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/Allocator;JLandroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;I)V

    .line 68
    return-object v16
.end method

.method private static o(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;
    .locals 10
    .param p1    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 8
    .line 9
    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    .line 10
    .line 11
    iget v4, p1, Landroidx/media3/common/Format;->selectionFlags:I

    .line 12
    .line 13
    iget v5, p1, Landroidx/media3/common/Format;->roleFlags:I

    .line 14
    .line 15
    iget-object v6, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget v3, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 32
    .line 33
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 34
    .line 35
    iget v5, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 36
    .line 37
    iget-object v6, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    move v3, v0

    .line 44
    move v5, v4

    .line 45
    move-object p1, v6

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v7

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget v8, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v8, v0

    .line 56
    .line 57
    :goto_1
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget v0, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 60
    .line 61
    :cond_3
    new-instance p2, Landroidx/media3/common/Format$Builder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 65
    .line 66
    iget-object v9, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v9}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iget-object p0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v7}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v8}, Landroidx/media3/common/Format$Builder;->I(I)Landroidx/media3/common/Format$Builder;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->b0(I)Landroidx/media3/common/Format$Builder;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Landroidx/media3/common/Format$Builder;->J(I)Landroidx/media3/common/Format$Builder;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v4}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v5}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v6}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 116
    move-result-object p0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method private static p(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-ge v2, v3, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Landroidx/media3/common/DrmInitData;

    .line 24
    .line 25
    iget-object v4, v3, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    move v5, v2

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v6

    .line 33
    .line 34
    if-ge v5, v6, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    check-cast v6, Landroidx/media3/common/DrmInitData;

    .line 41
    .line 42
    iget-object v7, v6, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    move-result v7

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v6}, Landroidx/media3/common/DrmInitData;->i(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-object v1
.end method

.method private static q(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    new-instance v2, Landroidx/media3/common/Format$Builder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget v1, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->I(I)Landroidx/media3/common/Format$Builder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->b0(I)Landroidx/media3/common/Format$Builder;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->R(F)Landroidx/media3/common/Format$Builder;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iget p0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method


# virtual methods
.method public a(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

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
    .line 11
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->C()Z

    .line 12
    move-result v4

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->a(JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 18
    move-result-wide p1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-wide p1
.end method

.method public b()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->N()V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->f(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 20
    return-void
.end method

.method public c([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    array-length v3, v1

    .line 8
    .line 9
    new-array v3, v3, [I

    .line 10
    array-length v4, v1

    .line 11
    .line 12
    new-array v4, v4, [I

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    array-length v7, v1

    .line 15
    .line 16
    if-ge v6, v7, :cond_3

    .line 17
    .line 18
    aget-object v7, v2, v6

    .line 19
    const/4 v8, -0x1

    .line 20
    .line 21
    if-nez v7, :cond_0

    .line 22
    move v7, v8

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v7

    .line 30
    .line 31
    check-cast v7, Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v7

    .line 36
    .line 37
    :goto_1
    aput v7, v3, v6

    .line 38
    .line 39
    aput v8, v4, v6

    .line 40
    .line 41
    aget-object v7, v1, v6

    .line 42
    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    .line 47
    move-result-object v7

    .line 48
    const/4 v9, 0x0

    .line 49
    .line 50
    :goto_2
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 51
    array-length v11, v10

    .line 52
    .line 53
    if-ge v9, v11, :cond_2

    .line 54
    .line 55
    aget-object v10, v10, v9

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 59
    move-result-object v10

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->c(Landroidx/media3/common/TrackGroup;)I

    .line 63
    move-result v10

    .line 64
    .line 65
    if-eq v10, v8, :cond_1

    .line 66
    .line 67
    aput v9, v4, v6

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 80
    array-length v6, v1

    .line 81
    .line 82
    new-array v7, v6, [Landroidx/media3/exoplayer/source/SampleStream;

    .line 83
    array-length v8, v1

    .line 84
    .line 85
    new-array v8, v8, [Landroidx/media3/exoplayer/source/SampleStream;

    .line 86
    array-length v9, v1

    .line 87
    .line 88
    new-array v14, v9, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 89
    .line 90
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 91
    array-length v9, v9

    .line 92
    .line 93
    new-array v15, v9, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    :goto_4
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 100
    array-length v9, v9

    .line 101
    .line 102
    if-ge v13, v9, :cond_10

    .line 103
    const/4 v9, 0x0

    .line 104
    :goto_5
    array-length v10, v1

    .line 105
    .line 106
    if-ge v9, v10, :cond_6

    .line 107
    .line 108
    aget v10, v3, v9

    .line 109
    const/4 v11, 0x0

    .line 110
    .line 111
    if-ne v10, v13, :cond_4

    .line 112
    .line 113
    aget-object v10, v2, v9

    .line 114
    goto :goto_6

    .line 115
    :cond_4
    move-object v10, v11

    .line 116
    .line 117
    :goto_6
    aput-object v10, v8, v9

    .line 118
    .line 119
    aget v10, v4, v9

    .line 120
    .line 121
    if-ne v10, v13, :cond_5

    .line 122
    .line 123
    aget-object v11, v1, v9

    .line 124
    .line 125
    :cond_5
    aput-object v11, v14, v9

    .line 126
    .line 127
    add-int/lit8 v9, v9, 0x1

    .line 128
    goto :goto_5

    .line 129
    .line 130
    :cond_6
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 131
    .line 132
    aget-object v11, v9, v13

    .line 133
    move-object v9, v11

    .line 134
    move-object v10, v14

    .line 135
    move-object v5, v11

    .line 136
    .line 137
    move-object/from16 v11, p2

    .line 138
    move v2, v12

    .line 139
    move-object v12, v8

    .line 140
    .line 141
    move/from16 v18, v6

    .line 142
    move v6, v13

    .line 143
    .line 144
    move-object/from16 v13, p4

    .line 145
    .line 146
    move-object/from16 v19, v14

    .line 147
    .line 148
    move-object/from16 v20, v15

    .line 149
    .line 150
    move-wide/from16 v14, p5

    .line 151
    .line 152
    move/from16 v16, v17

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {v9 .. v16}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJZ)Z

    .line 156
    move-result v9

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    :goto_7
    array-length v12, v1

    .line 160
    const/4 v13, 0x1

    .line 161
    .line 162
    if-ge v10, v12, :cond_a

    .line 163
    .line 164
    aget-object v12, v8, v10

    .line 165
    .line 166
    aget v14, v4, v10

    .line 167
    .line 168
    if-ne v14, v6, :cond_7

    .line 169
    .line 170
    .line 171
    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    aput-object v12, v7, v10

    .line 174
    .line 175
    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 176
    .line 177
    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v14

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move v11, v13

    .line 184
    goto :goto_9

    .line 185
    .line 186
    :cond_7
    aget v14, v3, v10

    .line 187
    .line 188
    if-ne v14, v6, :cond_9

    .line 189
    .line 190
    if-nez v12, :cond_8

    .line 191
    goto :goto_8

    .line 192
    :cond_8
    const/4 v13, 0x0

    .line 193
    .line 194
    .line 195
    :goto_8
    invoke-static {v13}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 196
    .line 197
    :cond_9
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 198
    goto :goto_7

    .line 199
    .line 200
    :cond_a
    move-object/from16 v10, v20

    .line 201
    .line 202
    if-eqz v11, :cond_e

    .line 203
    .line 204
    aput-object v5, v10, v2

    .line 205
    .line 206
    add-int/lit8 v12, v2, 0x1

    .line 207
    .line 208
    if-nez v2, :cond_c

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Z(Z)V

    .line 212
    .line 213
    if-nez v9, :cond_b

    .line 214
    .line 215
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 216
    array-length v9, v2

    .line 217
    .line 218
    if-eqz v9, :cond_b

    .line 219
    const/4 v9, 0x0

    .line 220
    .line 221
    aget-object v2, v2, v9

    .line 222
    .line 223
    if-eq v5, v2, :cond_f

    .line 224
    .line 225
    :cond_b
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->b()V

    .line 229
    .line 230
    move/from16 v17, v13

    .line 231
    goto :goto_b

    .line 232
    .line 233
    :cond_c
    iget v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    .line 234
    .line 235
    if-ge v6, v2, :cond_d

    .line 236
    goto :goto_a

    .line 237
    :cond_d
    const/4 v13, 0x0

    .line 238
    .line 239
    .line 240
    :goto_a
    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Z(Z)V

    .line 241
    goto :goto_b

    .line 242
    :cond_e
    move v12, v2

    .line 243
    .line 244
    :cond_f
    :goto_b
    add-int/lit8 v13, v6, 0x1

    .line 245
    .line 246
    move-object/from16 v2, p3

    .line 247
    move-object v15, v10

    .line 248
    .line 249
    move/from16 v6, v18

    .line 250
    .line 251
    move-object/from16 v14, v19

    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    :cond_10
    move-object v10, v15

    .line 255
    const/4 v5, 0x0

    .line 256
    .line 257
    .line 258
    invoke-static {v7, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    .line 260
    .line 261
    invoke-static {v10, v12}, Landroidx/media3/common/util/Util;->P0([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 262
    move-result-object v1

    .line 263
    .line 264
    check-cast v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 265
    .line 266
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 267
    .line 268
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 269
    .line 270
    .line 271
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->a([Landroidx/media3/exoplayer/source/SequenceableLoader;)Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 275
    return-wide p5
.end method

.method public continueLoading(J)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 7
    array-length p2, p1

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    .line 11
    :goto_0
    if-ge v1, p2, :cond_0

    .line 12
    .line 13
    aget-object v2, p1, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l()V

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v0

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(J)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public d(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

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
    invoke-virtual {v4, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->M(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    .line 13
    move-result v4

    .line 14
    and-int/2addr v2, v4

    .line 15
    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->f(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 23
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

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
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

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
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->m(J)V

    .line 11
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

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

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 9
    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public r()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

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
    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R()V

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
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 23
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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-lez v1, :cond_1

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->U(JZ)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 16
    array-length v3, v2

    .line 17
    .line 18
    if-ge v1, v3, :cond_0

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->U(JZ)Z

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->b()V

    .line 34
    :cond_1
    return-wide p1
.end method
