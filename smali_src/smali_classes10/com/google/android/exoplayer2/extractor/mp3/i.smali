.class final Lcom/google/android/exoplayer2/extractor/mp3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/g;


# static fields
.field private static final TAG:Ljava/lang/String; = "XingSeeker"


# instance fields
.field private final dataEndPosition:J

.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJ)V
    .locals 9

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp3/i;-><init>(JIJJ[J)V

    return-void
.end method

.method private constructor <init>(JIJJ[J)V
    .locals 0
    .param p8    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataStartPosition:J

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->xingFrameSize:I

    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->durationUs:J

    iput-object p8, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->tableOfContents:[J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataSize:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p6

    :goto_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataEndPosition:J

    return-void
.end method

.method public static b(JJLcom/google/android/exoplayer2/audio/h0$a;Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/mp3/i;
    .locals 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    iget v3, v2, Lcom/google/android/exoplayer2/audio/h0$a;->samplesPerFrame:I

    .line 7
    .line 8
    iget v4, v2, Lcom/google/android/exoplayer2/audio/h0$a;->sampleRate:I

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 12
    move-result v5

    .line 13
    .line 14
    and-int/lit8 v6, v5, 0x1

    .line 15
    const/4 v7, 0x1

    .line 16
    .line 17
    if-ne v6, v7, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/c0;->H()I

    .line 21
    move-result v6

    .line 22
    .line 23
    if-nez v6, :cond_0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    int-to-long v7, v6

    .line 26
    int-to-long v9, v3

    .line 27
    .line 28
    .line 29
    const-wide/32 v11, 0xf4240

    .line 30
    mul-long/2addr v9, v11

    .line 31
    int-to-long v11, v4

    .line 32
    .line 33
    .line 34
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    .line 35
    move-result-wide v17

    .line 36
    const/4 v3, 0x6

    .line 37
    .line 38
    and-int/lit8 v4, v5, 0x6

    .line 39
    .line 40
    if-eq v4, v3, :cond_1

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/i;

    .line 43
    .line 44
    iget v1, v2, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 45
    move-object v13, v0

    .line 46
    .line 47
    move-wide/from16 v14, p2

    .line 48
    .line 49
    move/from16 v16, v1

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v13 .. v18}, Lcom/google/android/exoplayer2/extractor/mp3/i;-><init>(JIJ)V

    .line 53
    return-object v0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 57
    move-result-wide v19

    .line 58
    .line 59
    const/16 v3, 0x64

    .line 60
    .line 61
    new-array v4, v3, [J

    .line 62
    const/4 v5, 0x0

    .line 63
    .line 64
    :goto_0
    if-ge v5, v3, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 68
    move-result v6

    .line 69
    int-to-long v6, v6

    .line 70
    .line 71
    aput-wide v6, v4, v5

    .line 72
    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    const-wide/16 v5, -0x1

    .line 77
    .line 78
    cmp-long v3, v0, v5

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    add-long v5, p2, v19

    .line 83
    .line 84
    cmp-long v3, v0, v5

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    const-string v7, "XING data size mismatch: "

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v0, ", "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    const-string v1, "XingSeeker"

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/i;

    .line 119
    .line 120
    iget v1, v2, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 121
    move-object v13, v0

    .line 122
    .line 123
    move-wide/from16 v14, p2

    .line 124
    .line 125
    move/from16 v16, v1

    .line 126
    .line 127
    move-object/from16 v21, v4

    .line 128
    .line 129
    .line 130
    invoke-direct/range {v13 .. v21}, Lcom/google/android/exoplayer2/extractor/mp3/i;-><init>(JIJJ[J)V

    .line 131
    return-object v0

    .line 132
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 133
    return-object v0
.end method

.method private c(I)J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->durationUs:J

    .line 3
    int-to-long v2, p1

    .line 4
    mul-long/2addr v0, v2

    .line 5
    .line 6
    const-wide/16 v2, 0x64

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp3/i;->isSeekable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 9
    .line 10
    new-instance p2, Lcom/google/android/exoplayer2/extractor/c0;

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataStartPosition:J

    .line 13
    .line 14
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->xingFrameSize:I

    .line 15
    int-to-long v2, v2

    .line 16
    add-long/2addr v0, v2

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_0
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->durationUs:J

    .line 30
    move-wide v4, p1

    .line 31
    .line 32
    .line 33
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/o0;->q(JJJ)J

    .line 34
    move-result-wide p1

    .line 35
    long-to-double v0, p1

    .line 36
    .line 37
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 38
    mul-double/2addr v0, v2

    .line 39
    .line 40
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->durationUs:J

    .line 41
    long-to-double v4, v4

    .line 42
    div-double/2addr v0, v4

    .line 43
    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    cmpg-double v6, v0, v4

    .line 47
    .line 48
    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    .line 49
    .line 50
    if-gtz v6, :cond_1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    cmpl-double v2, v0, v2

    .line 54
    .line 55
    if-ltz v2, :cond_2

    .line 56
    move-wide v4, v7

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    double-to-int v2, v0

    .line 59
    .line 60
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->tableOfContents:[J

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, [J

    .line 67
    .line 68
    aget-wide v4, v3, v2

    .line 69
    long-to-double v4, v4

    .line 70
    .line 71
    const/16 v6, 0x63

    .line 72
    .line 73
    if-ne v2, v6, :cond_3

    .line 74
    move-wide v9, v7

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_3
    add-int/lit8 v6, v2, 0x1

    .line 78
    .line 79
    aget-wide v9, v3, v6

    .line 80
    long-to-double v9, v9

    .line 81
    :goto_0
    int-to-double v2, v2

    .line 82
    sub-double/2addr v0, v2

    .line 83
    sub-double/2addr v9, v4

    .line 84
    mul-double/2addr v0, v9

    .line 85
    add-double/2addr v4, v0

    .line 86
    :goto_1
    div-double/2addr v4, v7

    .line 87
    .line 88
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataSize:J

    .line 89
    long-to-double v0, v0

    .line 90
    mul-double/2addr v4, v0

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 94
    move-result-wide v6

    .line 95
    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->xingFrameSize:I

    .line 97
    int-to-long v8, v0

    .line 98
    .line 99
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataSize:J

    .line 100
    .line 101
    const-wide/16 v2, 0x1

    .line 102
    .line 103
    sub-long v10, v0, v2

    .line 104
    .line 105
    .line 106
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/o0;->q(JJJ)J

    .line 107
    move-result-wide v0

    .line 108
    .line 109
    new-instance v2, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 110
    .line 111
    new-instance v3, Lcom/google/android/exoplayer2/extractor/c0;

    .line 112
    .line 113
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataStartPosition:J

    .line 114
    add-long/2addr v4, v0

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, p1, p2, v4, v5}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 121
    return-object v2
.end method

.method public getTimeUs(J)J
    .locals 11

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataStartPosition:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp3/i;->isSeekable()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->xingFrameSize:I

    .line 12
    int-to-long v0, v0

    .line 13
    .line 14
    cmp-long v0, p1, v0

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->tableOfContents:[J

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, [J

    .line 26
    long-to-double p1, p1

    .line 27
    .line 28
    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    .line 29
    mul-double/2addr p1, v1

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->dataSize:J

    .line 32
    long-to-double v1, v1

    .line 33
    div-double/2addr p1, v1

    .line 34
    double-to-long v1, p1

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer2/util/o0;->i([JJZZ)I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/i;->c(I)J

    .line 43
    move-result-wide v2

    .line 44
    .line 45
    aget-wide v4, v0, v1

    .line 46
    .line 47
    add-int/lit8 v6, v1, 0x1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/extractor/mp3/i;->c(I)J

    .line 51
    move-result-wide v7

    .line 52
    .line 53
    const/16 v9, 0x63

    .line 54
    .line 55
    if-ne v1, v9, :cond_1

    .line 56
    .line 57
    const-wide/16 v0, 0x100

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    aget-wide v9, v0, v6

    .line 61
    move-wide v0, v9

    .line 62
    .line 63
    :goto_0
    cmp-long v6, v4, v0

    .line 64
    .line 65
    if-nez v6, :cond_2

    .line 66
    .line 67
    const-wide/16 p1, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    long-to-double v9, v4

    .line 70
    sub-double/2addr p1, v9

    .line 71
    sub-long/2addr v0, v4

    .line 72
    long-to-double v0, v0

    .line 73
    div-double/2addr p1, v0

    .line 74
    :goto_1
    sub-long/2addr v7, v2

    .line 75
    long-to-double v0, v7

    .line 76
    mul-double/2addr p1, v0

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 80
    move-result-wide p1

    .line 81
    add-long/2addr v2, p1

    .line 82
    return-wide v2

    .line 83
    .line 84
    :cond_3
    :goto_2
    const-wide/16 p1, 0x0

    .line 85
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/i;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
