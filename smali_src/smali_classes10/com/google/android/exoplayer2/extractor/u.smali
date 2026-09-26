.class public final Lcom/google/android/exoplayer2/extractor/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/b0;


# instance fields
.field private final firstFrameOffset:J

.field private final flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/v;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/u;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/u;->firstFrameOffset:J

    .line 8
    return-void
.end method

.method private b(JJ)Lcom/google/android/exoplayer2/extractor/c0;
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    mul-long/2addr p1, v0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/u;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 7
    .line 8
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 9
    int-to-long v0, v0

    .line 10
    div-long/2addr p1, v0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/u;->firstFrameOffset:J

    .line 13
    add-long/2addr v0, p3

    .line 14
    .line 15
    new-instance p3, Lcom/google/android/exoplayer2/extractor/c0;

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 19
    return-object p3
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/u;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/v;->g()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/u;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/v;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/u;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/v;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/v$a;->pointSampleNumbers:[J

    .line 14
    .line 15
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/v$a;->pointOffsets:[J

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/v;->j(J)J

    .line 19
    move-result-wide v3

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/exoplayer2/util/o0;->i([JJZZ)I

    .line 25
    move-result v0

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    const/4 v6, -0x1

    .line 29
    .line 30
    if-ne v0, v6, :cond_0

    .line 31
    move-wide v7, v3

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    aget-wide v7, v2, v0

    .line 35
    .line 36
    :goto_0
    if-ne v0, v6, :cond_1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    aget-wide v3, v1, v0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-direct {p0, v7, v8, v3, v4}, Lcom/google/android/exoplayer2/extractor/u;->b(JJ)Lcom/google/android/exoplayer2/extractor/c0;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/c0;->timeUs:J

    .line 46
    .line 47
    cmp-long p1, v6, p1

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    array-length p1, v2

    .line 51
    sub-int/2addr p1, v5

    .line 52
    .line 53
    if-ne v0, p1, :cond_2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    add-int/2addr v0, v5

    .line 56
    .line 57
    aget-wide p1, v2, v0

    .line 58
    .line 59
    aget-wide v0, v1, v0

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/u;->b(JJ)Lcom/google/android/exoplayer2/extractor/c0;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    new-instance p2, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, v3, p1}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 69
    return-object p2

    .line 70
    .line 71
    :cond_3
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 75
    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
