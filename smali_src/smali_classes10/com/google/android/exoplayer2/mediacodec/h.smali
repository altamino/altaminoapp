.class final Lcom/google/android/exoplayer2/mediacodec/h;
.super Lcom/google/android/exoplayer2/decoder/g;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_SAMPLE_COUNT:I = 0x20

.field static final MAX_SIZE_BYTES:I = 0x2ee000
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private lastSampleTimeUs:J

.field private maxSampleCount:I

.field private sampleCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/g;-><init>(I)V

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/h;->maxSampleCount:I

    .line 9
    return-void
.end method

.method private t(Lcom/google/android/exoplayer2/decoder/g;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/h;->x()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/h;->sampleCount:I

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/h;->maxSampleCount:I

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-lt v0, v2, :cond_1

    .line 16
    return v3

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eq v0, v2, :cond_2

    .line 27
    return v3

    .line 28
    .line 29
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 43
    move-result p1

    .line 44
    add-int/2addr v0, p1

    .line 45
    .line 46
    .line 47
    const p1, 0x2ee000

    .line 48
    .line 49
    if-le v0, p1, :cond_3

    .line 50
    return v3

    .line 51
    :cond_3
    return v1
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/h;->sampleCount:I

    .line 7
    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/decoder/g;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/g;->p()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->e()Z

    .line 13
    move-result v0

    .line 14
    xor-int/2addr v0, v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 21
    move-result v0

    .line 22
    xor-int/2addr v0, v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/h;->t(Lcom/google/android/exoplayer2/decoder/g;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/h;->sampleCount:I

    .line 36
    .line 37
    add-int/lit8 v2, v0, 0x1

    .line 38
    .line 39
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/h;->sampleCount:I

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->j()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/decoder/a;->k(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const/high16 v0, -0x80000000

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/a;->k(I)V

    .line 66
    .line 67
    :cond_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 73
    move-result v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/decoder/g;->n(I)V

    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    :cond_3
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 84
    .line 85
    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/h;->lastSampleTimeUs:J

    .line 86
    return v1
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    return-wide v0
.end method

.method public v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/h;->lastSampleTimeUs:J

    return-wide v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/h;->sampleCount:I

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/h;->sampleCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    if-lez p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/h;->maxSampleCount:I

    .line 11
    return-void
.end method
