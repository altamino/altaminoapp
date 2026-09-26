.class public Landroidx/media3/exoplayer/dash/manifest/DashManifest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/offline/FilterableManifest;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/offline/FilterableManifest<",
        "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# instance fields
.field public final availabilityStartTimeMs:J

.field public final durationMs:J

.field public final dynamic:Z

.field public final location:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final minBufferTimeMs:J

.field public final minUpdatePeriodMs:J

.field private final periods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Period;",
            ">;"
        }
    .end annotation
.end field

.field public final programInformation:Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final publishTimeMs:J

.field public final serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final suggestedPresentationDelayMs:J

.field public final timeShiftBufferDepthMs:J

.field public final utcTiming:Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJJZJJJJLandroidx/media3/exoplayer/dash/manifest/ProgramInformation;Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .param p16    # Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJJ",
            "Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;",
            "Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;",
            "Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/Period;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-wide v1, p1

    .line 6
    .line 7
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 8
    move-wide v1, p3

    .line 9
    .line 10
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->durationMs:J

    .line 11
    move-wide v1, p5

    .line 12
    .line 13
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minBufferTimeMs:J

    .line 14
    move v1, p7

    .line 15
    .line 16
    iput-boolean v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 17
    move-wide v1, p8

    .line 18
    .line 19
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 20
    move-wide v1, p10

    .line 21
    .line 22
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 23
    move-wide v1, p12

    .line 24
    .line 25
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .line 26
    .line 27
    move-wide/from16 v1, p14

    .line 28
    .line 29
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    .line 30
    .line 31
    move-object/from16 v1, p16

    .line 32
    .line 33
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->programInformation:Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

    .line 34
    .line 35
    move-object/from16 v1, p17

    .line 36
    .line 37
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->utcTiming:Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;

    .line 38
    .line 39
    move-object/from16 v1, p19

    .line 40
    .line 41
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    .line 42
    .line 43
    move-object/from16 v1, p18

    .line 44
    .line 45
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 46
    .line 47
    if-nez p20, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    move-object/from16 v1, p20

    .line 55
    .line 56
    :goto_0
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 57
    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/LinkedList<",
            "Landroidx/media3/common/StreamKey;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/media3/common/StreamKey;

    .line 7
    .line 8
    iget v1, v0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    :cond_0
    iget v3, v0, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 22
    .line 23
    iget-object v5, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 24
    .line 25
    new-instance v10, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    :cond_1
    iget v0, v0, Landroidx/media3/common/StreamKey;->streamIndex:I

    .line 31
    .line 32
    .line 33
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroidx/media3/common/StreamKey;

    .line 46
    .line 47
    iget v6, v0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 48
    .line 49
    if-ne v6, v1, :cond_2

    .line 50
    .line 51
    iget v6, v0, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 52
    .line 53
    if-eq v6, v3, :cond_1

    .line 54
    .line 55
    :cond_2
    new-instance v3, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 56
    .line 57
    iget-wide v7, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    .line 58
    .line 59
    iget v9, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    .line 60
    .line 61
    iget-object v11, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    .line 62
    .line 63
    iget-object v12, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->essentialProperties:Ljava/util/List;

    .line 64
    .line 65
    iget-object v13, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 66
    move-object v6, v3

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v6 .. v13}, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;-><init>(JILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    iget v3, v0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 75
    .line 76
    if-eq v3, v1, :cond_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 80
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;)",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 13
    .line 14
    new-instance v2, Landroidx/media3/common/StreamKey;

    .line 15
    const/4 v3, -0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3, v3, v3}, Landroidx/media3/common/StreamKey;-><init>(III)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 33
    move-result v6

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    if-ge v5, v6, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 45
    .line 46
    check-cast v6, Landroidx/media3/common/StreamKey;

    .line 47
    .line 48
    iget v6, v6, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 49
    .line 50
    if-eq v6, v5, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->e(I)J

    .line 54
    move-result-wide v9

    .line 55
    .line 56
    cmp-long v6, v9, v7

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    add-long/2addr v3, v9

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    iget-object v7, v6, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-static {v7, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->b(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;

    .line 70
    move-result-object v12

    .line 71
    .line 72
    new-instance v7, Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 73
    .line 74
    iget-object v9, v6, Landroidx/media3/exoplayer/dash/manifest/Period;->id:Ljava/lang/String;

    .line 75
    .line 76
    iget-wide v10, v6, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 77
    sub-long/2addr v10, v3

    .line 78
    .line 79
    iget-object v13, v6, Landroidx/media3/exoplayer/dash/manifest/Period;->eventStreams:Ljava/util/List;

    .line 80
    move-object v8, v7

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v8 .. v13}, Landroidx/media3/exoplayer/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_2
    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->durationMs:J

    .line 92
    .line 93
    cmp-long v1, v5, v7

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    sub-long/2addr v5, v3

    .line 97
    move-wide v7, v5

    .line 98
    .line 99
    :cond_3
    new-instance v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 100
    move-object v4, v1

    .line 101
    .line 102
    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 103
    .line 104
    iget-wide v9, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minBufferTimeMs:J

    .line 105
    .line 106
    iget-boolean v11, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 107
    .line 108
    iget-wide v12, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 109
    .line 110
    iget-wide v14, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 111
    .line 112
    move-object/from16 p1, v4

    .line 113
    .line 114
    iget-wide v3, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .line 115
    .line 116
    move-wide/from16 v16, v3

    .line 117
    .line 118
    iget-wide v3, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    .line 119
    .line 120
    move-wide/from16 v18, v3

    .line 121
    .line 122
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->programInformation:Landroidx/media3/exoplayer/dash/manifest/ProgramInformation;

    .line 123
    .line 124
    move-object/from16 v20, v3

    .line 125
    .line 126
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->utcTiming:Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;

    .line 127
    .line 128
    move-object/from16 v21, v3

    .line 129
    .line 130
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    .line 131
    .line 132
    move-object/from16 v22, v3

    .line 133
    .line 134
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    .line 135
    .line 136
    move-object/from16 v23, v3

    .line 137
    .line 138
    move-object/from16 v24, v2

    .line 139
    .line 140
    move-object/from16 v4, p1

    .line 141
    .line 142
    .line 143
    invoke-direct/range {v4 .. v24}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;-><init>(JJJZJJJJLandroidx/media3/exoplayer/dash/manifest/ProgramInformation;Landroidx/media3/exoplayer/dash/manifest/UtcTimingElement;Landroidx/media3/exoplayer/dash/manifest/ServiceDescriptionElement;Landroid/net/Uri;Ljava/util/List;)V

    .line 144
    return-object v1
.end method

.method public final c(I)Landroidx/media3/exoplayer/dash/manifest/Period;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 9
    return-object p1
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->a(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(I)J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->durationMs:J

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 31
    .line 32
    iget-wide v2, p1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 33
    .line 34
    :goto_0
    sub-long v2, v0, v2

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 38
    .line 39
    add-int/lit8 v1, p1, 0x1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 46
    .line 47
    iget-wide v0, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->periods:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 56
    .line 57
    iget-wide v2, p1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return-wide v2
.end method

.method public final f(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->e(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
