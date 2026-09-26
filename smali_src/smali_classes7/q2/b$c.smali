.class final Lq2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private final format:Lcom/google/android/exoplayer2/a2;

.field private outputFrameCount:J

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeBytes:I

.field private final trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

.field private final wavFormat:Lq2/c;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/e0;Lq2/c;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lq2/b$c;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 6
    .line 7
    iput-object p2, p0, Lq2/b$c;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 8
    .line 9
    iput-object p3, p0, Lq2/b$c;->wavFormat:Lq2/c;

    .line 10
    .line 11
    iget p1, p3, Lq2/c;->numChannels:I

    .line 12
    .line 13
    iget p2, p3, Lq2/c;->bitsPerSample:I

    .line 14
    mul-int/2addr p1, p2

    .line 15
    .line 16
    div-int/lit8 p1, p1, 0x8

    .line 17
    .line 18
    iget p2, p3, Lq2/c;->blockSize:I

    .line 19
    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    iget p2, p3, Lq2/c;->frameRateHz:I

    .line 23
    .line 24
    mul-int v0, p2, p1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x8

    .line 27
    mul-int/2addr p2, p1

    .line 28
    .line 29
    div-int/lit8 p2, p2, 0xa

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result p1

    .line 34
    .line 35
    iput p1, p0, Lq2/b$c;->targetSampleSizeBytes:I

    .line 36
    .line 37
    new-instance p2, Lcom/google/android/exoplayer2/a2$b;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/a2$b;->G(I)Lcom/google/android/exoplayer2/a2$b;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/a2$b;->Z(I)Lcom/google/android/exoplayer2/a2$b;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iget p2, p3, Lq2/c;->numChannels:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    iget p2, p3, Lq2/c;->frameRateHz:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/a2$b;->Y(I)Lcom/google/android/exoplayer2/a2$b;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iput-object p1, p0, Lq2/b$c;->format:Lcom/google/android/exoplayer2/a2;

    .line 79
    return-void

    .line 80
    .line 81
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string p4, "Expected block size: "

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string p1, "; got: "

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    iget p1, p3, Lq2/c;->blockSize:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    const/4 p2, 0x0

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 111
    move-result-object p1

    .line 112
    throw p1
.end method


# virtual methods
.method public a(IJ)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lq2/b$c;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    .line 4
    new-instance v8, Lq2/e;

    .line 5
    .line 6
    iget-object v2, p0, Lq2/b$c;->wavFormat:Lq2/c;

    .line 7
    const/4 v3, 0x1

    .line 8
    int-to-long v4, p1

    .line 9
    move-object v1, v8

    .line 10
    move-wide v6, p2

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v1 .. v7}, Lq2/e;-><init>(Lq2/c;IJJ)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 17
    .line 18
    iget-object p1, p0, Lq2/b$c;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 19
    .line 20
    iget-object p2, p0, Lq2/b$c;->format:Lcom/google/android/exoplayer2/a2;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 24
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lq2/b$c;->startTimeUs:J

    const/4 p1, 0x0

    iput p1, p0, Lq2/b$c;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lq2/b$c;->outputFrameCount:J

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/m;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v1, p2

    .line 5
    .line 6
    :goto_0
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    const/4 v6, 0x1

    .line 10
    .line 11
    if-lez v5, :cond_1

    .line 12
    .line 13
    iget v7, v0, Lq2/b$c;->pendingOutputBytes:I

    .line 14
    .line 15
    iget v8, v0, Lq2/b$c;->targetSampleSizeBytes:I

    .line 16
    .line 17
    if-ge v7, v8, :cond_1

    .line 18
    sub-int/2addr v8, v7

    .line 19
    int-to-long v7, v8

    .line 20
    .line 21
    .line 22
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 23
    move-result-wide v7

    .line 24
    long-to-int v5, v7

    .line 25
    .line 26
    iget-object v7, v0, Lq2/b$c;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 27
    .line 28
    move-object/from16 v8, p1

    .line 29
    .line 30
    .line 31
    invoke-interface {v7, v8, v5, v6}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/h;IZ)I

    .line 32
    move-result v5

    .line 33
    const/4 v6, -0x1

    .line 34
    .line 35
    if-ne v5, v6, :cond_0

    .line 36
    move-wide v1, v3

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget v3, v0, Lq2/b$c;->pendingOutputBytes:I

    .line 40
    add-int/2addr v3, v5

    .line 41
    .line 42
    iput v3, v0, Lq2/b$c;->pendingOutputBytes:I

    .line 43
    int-to-long v3, v5

    .line 44
    sub-long/2addr v1, v3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-object v1, v0, Lq2/b$c;->wavFormat:Lq2/c;

    .line 48
    .line 49
    iget v2, v1, Lq2/c;->blockSize:I

    .line 50
    .line 51
    iget v3, v0, Lq2/b$c;->pendingOutputBytes:I

    .line 52
    div-int/2addr v3, v2

    .line 53
    .line 54
    if-lez v3, :cond_2

    .line 55
    .line 56
    iget-wide v7, v0, Lq2/b$c;->startTimeUs:J

    .line 57
    .line 58
    iget-wide v9, v0, Lq2/b$c;->outputFrameCount:J

    .line 59
    .line 60
    .line 61
    const-wide/32 v11, 0xf4240

    .line 62
    .line 63
    iget v1, v1, Lq2/c;->frameRateHz:I

    .line 64
    int-to-long v13, v1

    .line 65
    .line 66
    .line 67
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    .line 68
    move-result-wide v9

    .line 69
    .line 70
    add-long v12, v7, v9

    .line 71
    .line 72
    mul-int v15, v3, v2

    .line 73
    .line 74
    iget v1, v0, Lq2/b$c;->pendingOutputBytes:I

    .line 75
    sub-int/2addr v1, v15

    .line 76
    .line 77
    iget-object v11, v0, Lq2/b$c;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 78
    const/4 v14, 0x1

    .line 79
    .line 80
    const/16 v17, 0x0

    .line 81
    .line 82
    move/from16 v16, v1

    .line 83
    .line 84
    .line 85
    invoke-interface/range {v11 .. v17}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 86
    .line 87
    iget-wide v7, v0, Lq2/b$c;->outputFrameCount:J

    .line 88
    int-to-long v2, v3

    .line 89
    add-long/2addr v7, v2

    .line 90
    .line 91
    iput-wide v7, v0, Lq2/b$c;->outputFrameCount:J

    .line 92
    .line 93
    iput v1, v0, Lq2/b$c;->pendingOutputBytes:I

    .line 94
    .line 95
    :cond_2
    if-gtz v5, :cond_3

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const/4 v6, 0x0

    .line 98
    :goto_1
    return v6
.end method
