.class public final Lcom/google/android/exoplayer2/audio/k0;
.super Lcom/google/android/exoplayer2/audio/z;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MINIMUM_SILENCE_DURATION_US:J = 0x249f0L

.field public static final DEFAULT_PADDING_SILENCE_US:J = 0x4e20L

.field public static final DEFAULT_SILENCE_THRESHOLD_LEVEL:S = 0x400s

.field private static final STATE_MAYBE_SILENT:I = 0x1

.field private static final STATE_NOISY:I = 0x0

.field private static final STATE_SILENT:I = 0x2


# instance fields
.field private bytesPerFrame:I

.field private enabled:Z

.field private hasOutputNoise:Z

.field private maybeSilenceBuffer:[B

.field private maybeSilenceBufferSize:I

.field private final minimumSilenceDurationUs:J

.field private paddingBuffer:[B

.field private final paddingSilenceUs:J

.field private paddingSize:I

.field private final silenceThresholdLevel:S

.field private skippedFrames:J

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/32 v1, 0x249f0

    const-wide/16 v3, 0x4e20

    const/16 v5, 0x400

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/k0;-><init>(JJS)V

    return-void
.end method

.method public constructor <init>(JJS)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/z;-><init>()V

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/k0;->minimumSilenceDurationUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSilenceUs:J

    iput-short p5, p0, Lcom/google/android/exoplayer2/audio/k0;->silenceThresholdLevel:S

    .line 4
    sget-object p1, Lcom/google/android/exoplayer2/util/o0;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    return-void
.end method

.method private h(J)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 3
    .line 4
    iget v0, v0, Lcom/google/android/exoplayer2/audio/g$a;->sampleRate:I

    .line 5
    int-to-long v0, v0

    .line 6
    mul-long/2addr p1, v0

    .line 7
    .line 8
    .line 9
    const-wide/32 v0, 0xf4240

    .line 10
    div-long/2addr p1, v0

    .line 11
    long-to-int p1, p1

    .line 12
    return p1
.end method

.method private i(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 20
    move-result v1

    .line 21
    .line 22
    iget-short v2, p0, Lcom/google/android/exoplayer2/audio/k0;->silenceThresholdLevel:S

    .line 23
    .line 24
    if-le v1, v2, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 27
    div-int/2addr v0, p1

    .line 28
    mul-int/2addr v0, p1

    .line 29
    add-int/2addr v0, p1

    .line 30
    return v0

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private j(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget-short v2, p0, Lcom/google/android/exoplayer2/audio/k0;->silenceThresholdLevel:S

    .line 21
    .line 22
    if-le v1, v2, :cond_0

    .line 23
    .line 24
    iget p1, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 25
    div-int/2addr v0, p1

    .line 26
    mul-int/2addr p1, v0

    .line 27
    return p1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method private l(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/z;->g(I)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/k0;->hasOutputNoise:Z

    .line 21
    :cond_0
    return-void
.end method

.method private m([BI)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/z;->g(I)Ljava/nio/ByteBuffer;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 13
    .line 14
    if-lez p2, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/k0;->hasOutputNoise:Z

    .line 18
    :cond_0
    return-void
.end method

.method private n(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/k0;->j(Ljava/nio/ByteBuffer;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 12
    move-result v2

    .line 13
    .line 14
    sub-int v2, v1, v2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 17
    array-length v4, v3

    .line 18
    .line 19
    iget v5, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 20
    sub-int/2addr v4, v5

    .line 21
    const/4 v6, 0x0

    .line 22
    .line 23
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    if-ge v2, v4, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v3, v5}, Lcom/google/android/exoplayer2/audio/k0;->m([BI)V

    .line 29
    .line 30
    iput v6, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 31
    .line 32
    iput v6, p0, Lcom/google/android/exoplayer2/audio/k0;->state:I

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 41
    move-result v2

    .line 42
    add-int/2addr v2, v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 48
    .line 49
    iget v3, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    iget v2, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 55
    add-int/2addr v2, v1

    .line 56
    .line 57
    iput v2, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 60
    array-length v3, v1

    .line 61
    .line 62
    if-ne v2, v3, :cond_2

    .line 63
    .line 64
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/audio/k0;->hasOutputNoise:Z

    .line 65
    const/4 v4, 0x2

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    iget v2, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/k0;->m([BI)V

    .line 73
    .line 74
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 75
    .line 76
    iget v3, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 77
    .line 78
    iget v5, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 79
    mul-int/2addr v5, v4

    .line 80
    sub-int/2addr v3, v5

    .line 81
    .line 82
    iget v5, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 83
    div-int/2addr v3, v5

    .line 84
    int-to-long v7, v3

    .line 85
    add-long/2addr v1, v7

    .line 86
    .line 87
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    iget-wide v7, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 91
    .line 92
    iget v1, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 93
    sub-int/2addr v2, v1

    .line 94
    .line 95
    iget v1, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 96
    div-int/2addr v2, v1

    .line 97
    int-to-long v1, v2

    .line 98
    add-long/2addr v7, v1

    .line 99
    .line 100
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 101
    .line 102
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 103
    .line 104
    iget v2, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/k0;->r(Ljava/nio/ByteBuffer;[BI)V

    .line 108
    .line 109
    iput v6, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 110
    .line 111
    iput v4, p0, Lcom/google/android/exoplayer2/audio/k0;->state:I

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 115
    :goto_1
    return-void
.end method

.method private o(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 11
    array-length v2, v2

    .line 12
    add-int/2addr v1, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/k0;->i(Ljava/nio/ByteBuffer;)I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 27
    move-result v2

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/exoplayer2/audio/k0;->state:I

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/k0;->l(Ljava/nio/ByteBuffer;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 43
    return-void
.end method

.method private p(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/k0;->j(Ljava/nio/ByteBuffer;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 17
    move-result v4

    .line 18
    .line 19
    iget v5, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 20
    div-int/2addr v4, v5

    .line 21
    int-to-long v4, v4

    .line 22
    add-long/2addr v2, v4

    .line 23
    .line 24
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    .line 27
    .line 28
    iget v3, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/exoplayer2/audio/k0;->r(Ljava/nio/ByteBuffer;[BI)V

    .line 32
    .line 33
    if-ge v1, v0, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    .line 36
    .line 37
    iget v2, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/k0;->m([BI)V

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    iput v1, p0, Lcom/google/android/exoplayer2/audio/k0;->state:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 47
    :cond_0
    return-void
.end method

.method private r(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 13
    sub-int/2addr v1, v0

    .line 14
    sub-int/2addr p3, v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 24
    move-result p2

    .line 25
    sub-int/2addr p2, v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 34
    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/audio/g$a;)Lcom/google/android/exoplayer2/audio/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/g$b;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/audio/g$a;->encoding:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k0;->enabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 13
    :goto_0
    return-object p1

    .line 14
    .line 15
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/g$b;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/g$b;-><init>(Lcom/google/android/exoplayer2/audio/g$a;)V

    .line 19
    throw v0
.end method

.method protected d()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k0;->enabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 7
    .line 8
    iget v0, v0, Lcom/google/android/exoplayer2/audio/g$a;->bytesPerFrame:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/k0;->minimumSilenceDurationUs:J

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/k0;->h(J)I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget v1, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 19
    mul-int/2addr v0, v1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 22
    array-length v1, v1

    .line 23
    .line 24
    if-eq v1, v0, :cond_0

    .line 25
    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 29
    .line 30
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSilenceUs:J

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/k0;->h(J)I

    .line 34
    move-result v0

    .line 35
    .line 36
    iget v1, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 37
    mul-int/2addr v0, v1

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    .line 42
    array-length v1, v1

    .line 43
    .line 44
    if-eq v1, v0, :cond_1

    .line 45
    .line 46
    new-array v0, v0, [B

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/audio/k0;->state:I

    .line 52
    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 56
    .line 57
    iput v0, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k0;->hasOutputNoise:Z

    .line 60
    return-void
.end method

.method protected e()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBufferSize:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/k0;->m([BI)V

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k0;->hasOutputNoise:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 18
    .line 19
    iget v3, p0, Lcom/google/android/exoplayer2/audio/k0;->bytesPerFrame:I

    .line 20
    div-int/2addr v2, v3

    .line 21
    int-to-long v2, v2

    .line 22
    add-long/2addr v0, v2

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    .line 25
    :cond_1
    return-void
.end method

.method protected f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k0;->enabled:Z

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingSize:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->EMPTY_BYTE_ARRAY:[B

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k0;->maybeSilenceBuffer:[B

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/k0;->paddingBuffer:[B

    .line 12
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/k0;->enabled:Z

    return v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/k0;->skippedFrames:J

    return-wide v0
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/k0;->enabled:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/z;->b()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/exoplayer2/audio/k0;->state:I

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/k0;->p(Ljava/nio/ByteBuffer;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    throw p1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/k0;->n(Ljava/nio/ByteBuffer;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/k0;->o(Ljava/nio/ByteBuffer;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    return-void
.end method
