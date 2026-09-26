.class public Lcom/google/android/exoplayer2/trackselection/a;
.super Lcom/google/android/exoplayer2/trackselection/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/a$a;,
        Lcom/google/android/exoplayer2/trackselection/a$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.7f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_HEIGHT_TO_DISCARD:I = 0x2cf

.field public static final DEFAULT_MAX_WIDTH_TO_DISCARD:I = 0x4ff

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field private static final MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AdaptiveTrackSelection"


# instance fields
.field private final adaptationCheckpoints:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/d;

.field private lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastBufferEvaluationMs:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/source/f1;[IILcom/google/android/exoplayer2/upstream/e;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/f1;",
            "[II",
            "Lcom/google/android/exoplayer2/upstream/e;",
            "JJJIIFF",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;",
            "Lcom/google/android/exoplayer2/util/d;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/c;-><init>(Lcom/google/android/exoplayer2/source/f1;[II)V

    cmp-long v1, p9, p5

    if-gez v1, :cond_0

    const-string v1, "AdaptiveTrackSelection"

    const-string v2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p4

    move-wide v1, p5

    goto :goto_0

    :cond_0
    move-object v3, p4

    move-wide/from16 v1, p9

    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplayer2/trackselection/a;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    const-wide/16 v3, 0x3e8

    mul-long v5, p5, v3

    iput-wide v5, v0, Lcom/google/android/exoplayer2/trackselection/a;->minDurationForQualityIncreaseUs:J

    mul-long v5, p7, v3

    iput-wide v5, v0, Lcom/google/android/exoplayer2/trackselection/a;->maxDurationForQualityDecreaseUs:J

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->minDurationToRetainAfterDiscardUs:J

    move/from16 v1, p11

    iput v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->maxWidthToDiscard:I

    move/from16 v1, p12

    iput v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->maxHeightToDiscard:I

    move/from16 v1, p13

    iput v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->bandwidthFraction:F

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 5
    invoke-static/range {p15 .. p15}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->adaptationCheckpoints:Lcom/google/common/collect/a0;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->clock:Lcom/google/android/exoplayer2/util/d;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->playbackSpeed:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->reason:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/exoplayer2/trackselection/a;->lastBufferEvaluationMs:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/f1;[ILcom/google/android/exoplayer2/upstream/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    const/4 v3, 0x0

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/16 v11, 0x4ff

    const/16 v12, 0x2cf

    const v13, 0x3f333333    # 0.7f

    const/high16 v14, 0x3f400000    # 0.75f

    .line 1
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v15

    sget-object v16, Lcom/google/android/exoplayer2/util/d;->DEFAULT:Lcom/google/android/exoplayer2/util/d;

    .line 2
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/trackselection/a;-><init>(Lcom/google/android/exoplayer2/source/f1;[IILcom/google/android/exoplayer2/upstream/e;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/d;)V

    return-void
.end method

.method static synthetic f([Lcom/google/android/exoplayer2/trackselection/s$a;)Lcom/google/common/collect/a0;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/a;->h([Lcom/google/android/exoplayer2/trackselection/s$a;)Lcom/google/common/collect/a0;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static g(Ljava/util/List;[J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/a0$a<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;>;[J)V"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    array-length v4, p1

    .line 6
    .line 7
    if-ge v3, v4, :cond_0

    .line 8
    .line 9
    aget-wide v4, p1, v3

    .line 10
    add-long/2addr v0, v4

    .line 11
    .line 12
    add-int/lit8 v3, v3, 0x1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    move-result v3

    .line 18
    .line 19
    if-ge v2, v3, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/google/common/collect/a0$a;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_1
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/a$a;

    .line 31
    .line 32
    aget-wide v5, p1, v2

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v0, v1, v5, v6}, Lcom/google/android/exoplayer2/trackselection/a$a;-><init>(JJ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 39
    .line 40
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    return-void
.end method

.method private static h([Lcom/google/android/exoplayer2/trackselection/s$a;)Lcom/google/common/collect/a0;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/s$a;",
            ")",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/s$a;->tracks:[I

    .line 20
    array-length v3, v3

    .line 21
    .line 22
    if-le v3, v6, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/a$a;

    .line 29
    .line 30
    .line 31
    invoke-direct {v6, v4, v5, v4, v5}, Lcom/google/android/exoplayer2/trackselection/a$a;-><init>(JJ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v6}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/a;->i([Lcom/google/android/exoplayer2/trackselection/s$a;)[[J

    .line 49
    move-result-object v2

    .line 50
    array-length v3, v2

    .line 51
    .line 52
    new-array v3, v3, [I

    .line 53
    array-length v7, v2

    .line 54
    .line 55
    new-array v7, v7, [J

    .line 56
    move v8, v1

    .line 57
    :goto_2
    array-length v9, v2

    .line 58
    .line 59
    if-ge v8, v9, :cond_3

    .line 60
    .line 61
    aget-object v9, v2, v8

    .line 62
    array-length v10, v9

    .line 63
    .line 64
    if-nez v10, :cond_2

    .line 65
    move-wide v10, v4

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_2
    aget-wide v10, v9, v1

    .line 69
    .line 70
    :goto_3
    aput-wide v10, v7, v8

    .line 71
    .line 72
    add-int/lit8 v8, v8, 0x1

    .line 73
    goto :goto_2

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/trackselection/a;->g(Ljava/util/List;[J)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/a;->j([[J)Lcom/google/common/collect/a0;

    .line 80
    move-result-object v4

    .line 81
    move v5, v1

    .line 82
    .line 83
    .line 84
    :goto_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 85
    move-result v8

    .line 86
    .line 87
    if-ge v5, v8, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v8

    .line 92
    .line 93
    check-cast v8, Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result v8

    .line 98
    .line 99
    aget v9, v3, v8

    .line 100
    add-int/2addr v9, v6

    .line 101
    .line 102
    aput v9, v3, v8

    .line 103
    .line 104
    aget-object v10, v2, v8

    .line 105
    .line 106
    aget-wide v9, v10, v9

    .line 107
    .line 108
    aput-wide v9, v7, v8

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/trackselection/a;->g(Ljava/util/List;[J)V

    .line 112
    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    goto :goto_4

    .line 115
    :cond_4
    move v2, v1

    .line 116
    :goto_5
    array-length v3, p0

    .line 117
    .line 118
    if-ge v2, v3, :cond_6

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    aget-wide v3, v7, v2

    .line 127
    .line 128
    const-wide/16 v5, 0x2

    .line 129
    mul-long/2addr v3, v5

    .line 130
    .line 131
    aput-wide v3, v7, v2

    .line 132
    .line 133
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 134
    goto :goto_5

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/trackselection/a;->g(Ljava/util/List;[J)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 141
    move-result-object p0

    .line 142
    .line 143
    .line 144
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 145
    move-result v2

    .line 146
    .line 147
    if-ge v1, v2, :cond_8

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    check-cast v2, Lcom/google/common/collect/a0$a;

    .line 154
    .line 155
    if-nez v2, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 159
    move-result-object v2

    .line 160
    goto :goto_7

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {v2}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 170
    goto :goto_6

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-virtual {p0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 174
    move-result-object p0

    .line 175
    return-object p0
.end method

.method private static i([Lcom/google/android/exoplayer2/trackselection/s$a;)[[J
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    new-array v0, v0, [[J

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    array-length v3, p0

    .line 7
    .line 8
    if-ge v2, v3, :cond_3

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    new-array v3, v1, [J

    .line 15
    .line 16
    aput-object v3, v0, v2

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/s$a;->tracks:[I

    .line 20
    array-length v4, v4

    .line 21
    .line 22
    new-array v4, v4, [J

    .line 23
    .line 24
    aput-object v4, v0, v2

    .line 25
    move v4, v1

    .line 26
    .line 27
    :goto_1
    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/s$a;->tracks:[I

    .line 28
    array-length v6, v5

    .line 29
    .line 30
    if-ge v4, v6, :cond_2

    .line 31
    .line 32
    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/s$a;->group:Lcom/google/android/exoplayer2/source/f1;

    .line 33
    .line 34
    aget v5, v5, v4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    iget v5, v5, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 41
    int-to-long v5, v5

    .line 42
    .line 43
    aget-object v7, v0, v2

    .line 44
    .line 45
    const-wide/16 v8, -0x1

    .line 46
    .line 47
    cmp-long v8, v5, v8

    .line 48
    .line 49
    if-nez v8, :cond_1

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    :cond_1
    aput-wide v5, v7, v4

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    aget-object v3, v0, v2

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 62
    .line 63
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return-object v0
.end method

.method private static j([[J)Lcom/google/common/collect/a0;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/n0;->c()Lcom/google/common/collect/n0$e;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/n0$e;->a()Lcom/google/common/collect/n0$d;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/common/collect/n0$d;->e()Lcom/google/common/collect/j0;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    array-length v3, p0

    .line 16
    .line 17
    if-ge v2, v3, :cond_5

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    array-length v4, v3

    .line 21
    const/4 v5, 0x1

    .line 22
    .line 23
    if-gt v4, v5, :cond_0

    .line 24
    goto :goto_5

    .line 25
    :cond_0
    array-length v3, v3

    .line 26
    .line 27
    new-array v4, v3, [D

    .line 28
    move v5, v1

    .line 29
    .line 30
    :goto_1
    aget-object v6, p0, v2

    .line 31
    array-length v7, v6

    .line 32
    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    if-ge v5, v7, :cond_2

    .line 36
    .line 37
    aget-wide v10, v6, v5

    .line 38
    .line 39
    const-wide/16 v6, -0x1

    .line 40
    .line 41
    cmp-long v6, v10, v6

    .line 42
    .line 43
    if-nez v6, :cond_1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    long-to-double v6, v10

    .line 46
    .line 47
    .line 48
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 49
    move-result-wide v8

    .line 50
    .line 51
    :goto_2
    aput-wide v8, v4, v5

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    aget-wide v5, v4, v3

    .line 59
    .line 60
    aget-wide v10, v4, v1

    .line 61
    sub-double/2addr v5, v10

    .line 62
    move v7, v1

    .line 63
    .line 64
    :goto_3
    if-ge v7, v3, :cond_4

    .line 65
    .line 66
    aget-wide v10, v4, v7

    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    aget-wide v12, v4, v7

    .line 71
    add-double/2addr v10, v12

    .line 72
    .line 73
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 74
    mul-double/2addr v10, v12

    .line 75
    .line 76
    cmpl-double v12, v5, v8

    .line 77
    .line 78
    if-nez v12, :cond_3

    .line 79
    .line 80
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 81
    goto :goto_4

    .line 82
    .line 83
    :cond_3
    aget-wide v12, v4, v1

    .line 84
    sub-double/2addr v10, v12

    .line 85
    div-double/2addr v10, v5

    .line 86
    .line 87
    .line 88
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 89
    move-result-object v10

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v11

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v10, v11}, Lcom/google/common/collect/m0;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    goto :goto_3

    .line 98
    .line 99
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-interface {v0}, Lcom/google/common/collect/m0;->values()Ljava/util/Collection;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lcom/google/common/collect/a0;->t(Ljava/util/Collection;)Lcom/google/common/collect/a0;

    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method


# virtual methods
.method public disable()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/b;

    return-void
.end method

.method public enable()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->lastBufferEvaluationMs:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->lastBufferEvaluationMediaChunk:Lcom/google/android/exoplayer2/source/chunk/b;

    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/a;->selectedIndex:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/a;->playbackSpeed:F

    return-void
.end method
