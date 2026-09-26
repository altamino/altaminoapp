.class public final Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/BaseMediaSource;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
        "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L


# instance fields
.field private final chunkSourceFactory:Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private final livePresentationDelayMs:J

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

.field private manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Landroidx/media3/datasource/DataSource;

.field private final manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Landroidx/media3/exoplayer/upstream/Loader;

.field private manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

.field private final manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTransferListener:Landroidx/media3/datasource/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final sideloadedManifest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "media3.exoplayer.smoothstreaming"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;J)V
    .locals 4
    .param p2    # Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;
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
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
            "Landroidx/media3/datasource/DataSource$Factory;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
            ">;",
            "Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;",
            "Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 3
    iget-boolean v2, p2, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->g(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 4
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object p2, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 5
    iget-object v2, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object p1, v3

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p4, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    iput-object p5, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->chunkSourceFactory:Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;

    iput-object p6, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iput-object p7, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iput-object p8, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p9, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-wide p10, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 7
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/BaseMediaSource;->c0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JLandroidx/media3/exoplayer/smoothstreaming/SsMediaSource$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method public static synthetic k0(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->q0()V

    return-void
.end method

.method private o0()V
    .locals 30

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
    iget-object v3, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v3

    .line 11
    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;->l(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;)V

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->streamElements:[Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 33
    array-length v3, v2

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v4, 0x7fffffffffffffffL

    .line 39
    .line 40
    const-wide/high16 v6, -0x8000000000000000L

    .line 41
    move v8, v1

    .line 42
    move-wide v14, v4

    .line 43
    .line 44
    :goto_1
    if-ge v8, v3, :cond_2

    .line 45
    .line 46
    aget-object v9, v2, v8

    .line 47
    .line 48
    iget v10, v9, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    .line 49
    .line 50
    if-lez v10, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->e(I)J

    .line 54
    move-result-wide v10

    .line 55
    .line 56
    .line 57
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 58
    move-result-wide v14

    .line 59
    .line 60
    iget v10, v9, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    .line 61
    .line 62
    add-int/lit8 v10, v10, -0x1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v10}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->e(I)J

    .line 66
    move-result-wide v10

    .line 67
    .line 68
    iget v12, v9, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    .line 69
    .line 70
    add-int/lit8 v12, v12, -0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v9, v12}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest$StreamElement;->c(I)J

    .line 74
    move-result-wide v12

    .line 75
    add-long/2addr v10, v12

    .line 76
    .line 77
    .line 78
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 79
    move-result-wide v6

    .line 80
    .line 81
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_2
    cmp-long v1, v14, v4

    .line 85
    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 92
    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    iget-object v1, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 96
    .line 97
    iget-boolean v1, v1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->isLive:Z

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    move-wide v7, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move-wide v7, v2

    .line 103
    .line 104
    :goto_2
    new-instance v1, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    .line 105
    .line 106
    const-wide/16 v9, 0x0

    .line 107
    .line 108
    const-wide/16 v11, 0x0

    .line 109
    .line 110
    const-wide/16 v13, 0x0

    .line 111
    const/4 v15, 0x1

    .line 112
    .line 113
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 114
    .line 115
    iget-boolean v3, v2, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->isLive:Z

    .line 116
    .line 117
    iget-object v4, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 118
    move-object v6, v1

    .line 119
    .line 120
    move/from16 v16, v3

    .line 121
    .line 122
    move/from16 v17, v3

    .line 123
    .line 124
    move-object/from16 v18, v2

    .line 125
    .line 126
    move-object/from16 v19, v4

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v6 .. v19}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    .line 130
    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :cond_4
    iget-object v1, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 134
    .line 135
    iget-boolean v8, v1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->isLive:Z

    .line 136
    .line 137
    if-eqz v8, :cond_7

    .line 138
    .line 139
    iget-wide v8, v1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    .line 140
    .line 141
    cmp-long v1, v8, v4

    .line 142
    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    cmp-long v1, v8, v2

    .line 146
    .line 147
    if-lez v1, :cond_5

    .line 148
    .line 149
    sub-long v1, v6, v8

    .line 150
    .line 151
    .line 152
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 153
    move-result-wide v14

    .line 154
    .line 155
    :cond_5
    move-wide/from16 v21, v14

    .line 156
    .line 157
    sub-long v19, v6, v21

    .line 158
    .line 159
    iget-wide v1, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 163
    move-result-wide v1

    .line 164
    .line 165
    sub-long v1, v19, v1

    .line 166
    .line 167
    .line 168
    const-wide/32 v3, 0x4c4b40

    .line 169
    .line 170
    cmp-long v5, v1, v3

    .line 171
    .line 172
    if-gez v5, :cond_6

    .line 173
    .line 174
    const-wide/16 v1, 0x2

    .line 175
    .line 176
    div-long v1, v19, v1

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 180
    move-result-wide v1

    .line 181
    .line 182
    :cond_6
    move-wide/from16 v23, v1

    .line 183
    .line 184
    new-instance v1, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    .line 191
    const/16 v25, 0x1

    .line 192
    .line 193
    const/16 v26, 0x1

    .line 194
    .line 195
    const/16 v27, 0x1

    .line 196
    .line 197
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 198
    .line 199
    iget-object v3, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 200
    .line 201
    move-object/from16 v16, v1

    .line 202
    .line 203
    move-object/from16 v28, v2

    .line 204
    .line 205
    move-object/from16 v29, v3

    .line 206
    .line 207
    .line 208
    invoke-direct/range {v16 .. v29}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    .line 209
    goto :goto_4

    .line 210
    .line 211
    :cond_7
    iget-wide v1, v1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->durationUs:J

    .line 212
    .line 213
    cmp-long v3, v1, v4

    .line 214
    .line 215
    if-eqz v3, :cond_8

    .line 216
    move-wide v12, v1

    .line 217
    goto :goto_3

    .line 218
    :cond_8
    sub-long/2addr v6, v14

    .line 219
    move-wide v12, v6

    .line 220
    .line 221
    :goto_3
    new-instance v1, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    .line 222
    .line 223
    add-long v10, v14, v12

    .line 224
    .line 225
    const-wide/16 v16, 0x0

    .line 226
    .line 227
    const/16 v18, 0x1

    .line 228
    .line 229
    const/16 v19, 0x0

    .line 230
    .line 231
    const/16 v20, 0x0

    .line 232
    .line 233
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 234
    .line 235
    iget-object v3, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 236
    move-object v9, v1

    .line 237
    .line 238
    move-object/from16 v21, v2

    .line 239
    .line 240
    move-object/from16 v22, v3

    .line 241
    .line 242
    .line 243
    invoke-direct/range {v9 .. v22}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    .line 244
    .line 245
    .line 246
    :goto_4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i0(Landroidx/media3/common/Timeline;)V

    .line 247
    return-void
.end method

.method private p0()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 3
    .line 4
    iget-boolean v0, v0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;->isLive:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 10
    .line 11
    const-wide/16 v2, 0x1388

    .line 12
    add-long/2addr v0, v2

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v2

    .line 17
    sub-long/2addr v0, v2

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v3, Landroidx/media3/exoplayer/smoothstreaming/a;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/smoothstreaming/a;-><init>(Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    return-void
.end method

.method private q0()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->h()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestDataSource:Landroidx/media3/datasource/DataSource;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 16
    const/4 v3, 0x4

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;-><init>(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;ILandroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 26
    .line 27
    iget v3, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, p0, v2}, Landroidx/media3/exoplayer/upstream/Loader;->m(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    .line 35
    move-result-wide v7

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 38
    .line 39
    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 40
    .line 41
    iget-wide v4, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 42
    .line 43
    iget-object v6, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 44
    move-object v3, v2

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 48
    .line 49
    iget v0, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->y(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;->k()V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public bridge synthetic H(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->l0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJZ)V

    .line 6
    return-void
.end method

.method public M(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->c0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    move-result-object v10

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->a0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 9
    move-result-object v8

    .line 10
    .line 11
    new-instance v13, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 14
    .line 15
    iget-object v3, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->chunkSourceFactory:Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;

    .line 16
    .line 17
    iget-object v4, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    .line 18
    .line 19
    iget-object v5, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 20
    .line 21
    iget-object v6, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 22
    .line 23
    iget-object v7, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 24
    .line 25
    iget-object v9, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 26
    .line 27
    iget-object v11, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 28
    move-object v1, v13

    .line 29
    .line 30
    move-object/from16 v12, p2

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;-><init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;Landroidx/media3/exoplayer/upstream/Allocator;)V

    .line 34
    .line 35
    iget-object v1, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v13
.end method

.method public bridge synthetic Y(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->m0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    .line 6
    return-void
.end method

.method protected h0(Landroidx/media3/datasource/TransferListener;)V
    .locals 2
    .param p1    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

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
    iget-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    .line 21
    .line 22
    iget-boolean p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;-><init>()V

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->o0()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestDataSource:Landroidx/media3/datasource/DataSource;

    .line 44
    .line 45
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    .line 46
    .line 47
    const-string v0, "SsMediaSource"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Landroidx/media3/common/util/Util;->w()Landroid/os/Handler;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->q0()V

    .line 64
    :goto_0
    return-void
.end method

.method public j()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method protected j0()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, v1

    .line 10
    .line 11
    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestDataSource:Landroidx/media3/datasource/DataSource;

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    iput-wide v2, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->k()V

    .line 25
    .line 26
    iput-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoader:Landroidx/media3/exoplayer/upstream/Loader;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    .line 35
    iput-object v1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->release()V

    .line 41
    return-void
.end method

.method public l0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
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
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 32
    .line 33
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(J)V

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

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

.method public m0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
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
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 32
    .line 33
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(J)V

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

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
    check-cast v1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 50
    .line 51
    iput-object v1, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifest:Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;

    .line 52
    .line 53
    sub-long v1, p2, p4

    .line 54
    .line 55
    iput-wide v1, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->o0()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->p0()V

    .line 62
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
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 6
    return-void
.end method

.method public n0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
            "Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifest;",
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
    iget-object v4, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 42
    .line 43
    new-instance v5, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    .line 44
    .line 45
    move/from16 v6, p7

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v15, v3, v2, v6}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->d(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

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
    iget-object v5, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

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
    iget-object v2, v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

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

.method public bridge synthetic w(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;->n0(Landroidx/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
