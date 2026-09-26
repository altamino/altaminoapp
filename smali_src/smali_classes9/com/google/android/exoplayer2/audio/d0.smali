.class public Lcom/google/android/exoplayer2/audio/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/c0$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/d0$a;
    }
.end annotation


# static fields
.field private static final AC3_BUFFER_MULTIPLICATION_FACTOR:I = 0x2

.field private static final MAX_PCM_BUFFER_DURATION_US:I = 0xb71b0

.field private static final MIN_PCM_BUFFER_DURATION_US:I = 0x3d090

.field private static final OFFLOAD_BUFFER_DURATION_US:I = 0x2faf080

.field private static final PASSTHROUGH_BUFFER_DURATION_US:I = 0x3d090

.field private static final PCM_BUFFER_MULTIPLICATION_FACTOR:I = 0x4


# instance fields
.field public final ac3BufferMultiplicationFactor:I

.field protected final maxPcmBufferDurationUs:I

.field protected final minPcmBufferDurationUs:I

.field protected final offloadBufferDurationUs:I

.field protected final passthroughBufferDurationUs:I

.field protected final pcmBufferMultiplicationFactor:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/audio/d0$a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0$a;->a(Lcom/google/android/exoplayer2/audio/d0$a;)I

    .line 7
    move-result v0

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0;->minPcmBufferDurationUs:I

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0$a;->b(Lcom/google/android/exoplayer2/audio/d0$a;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0;->maxPcmBufferDurationUs:I

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0$a;->c(Lcom/google/android/exoplayer2/audio/d0$a;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0;->pcmBufferMultiplicationFactor:I

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0$a;->d(Lcom/google/android/exoplayer2/audio/d0$a;)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0;->passthroughBufferDurationUs:I

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0$a;->e(Lcom/google/android/exoplayer2/audio/d0$a;)I

    .line 31
    move-result v0

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0;->offloadBufferDurationUs:I

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0$a;->f(Lcom/google/android/exoplayer2/audio/d0$a;)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iput p1, p0, Lcom/google/android/exoplayer2/audio/d0;->ac3BufferMultiplicationFactor:I

    .line 40
    return-void
.end method

.method protected static b(III)I
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long p0, p1

    .line 3
    mul-long/2addr v0, p0

    .line 4
    int-to-long p0, p2

    .line 5
    mul-long/2addr v0, p0

    .line 6
    .line 7
    .line 8
    const-wide/32 p0, 0xf4240

    .line 9
    div-long/2addr v0, p0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/common/primitives/e;->d(J)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method protected static d(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 9
    throw p0

    .line 10
    .line 11
    .line 12
    :pswitch_1
    const p0, 0x52080

    .line 13
    return p0

    .line 14
    .line 15
    .line 16
    :pswitch_2
    const p0, 0x3e800

    .line 17
    return p0

    .line 18
    .line 19
    :pswitch_3
    const/16 p0, 0x1f40

    .line 20
    return p0

    .line 21
    .line 22
    .line 23
    :pswitch_4
    const p0, 0x2ebae4

    .line 24
    return p0

    .line 25
    .line 26
    :pswitch_5
    const/16 p0, 0x1b58

    .line 27
    return p0

    .line 28
    .line 29
    :pswitch_6
    const/16 p0, 0x3e80

    .line 30
    return p0

    .line 31
    .line 32
    .line 33
    :pswitch_7
    const p0, 0x186a0

    .line 34
    return p0

    .line 35
    .line 36
    .line 37
    :pswitch_8
    const p0, 0x9c40

    .line 38
    return p0

    .line 39
    .line 40
    .line 41
    :pswitch_9
    const p0, 0x225510

    .line 42
    return p0

    .line 43
    .line 44
    .line 45
    :pswitch_a
    const p0, 0x2ee00

    .line 46
    return p0

    .line 47
    .line 48
    .line 49
    :pswitch_b
    const p0, 0xbb800

    .line 50
    return p0

    .line 51
    .line 52
    .line 53
    :pswitch_c
    const p0, 0x13880

    .line 54
    return p0

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public a(IIIIID)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/d0;->c(IIIII)I

    .line 4
    move-result p2

    .line 5
    int-to-double p2, p2

    .line 6
    mul-double/2addr p2, p6

    .line 7
    double-to-int p2, p2

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result p1

    .line 12
    add-int/2addr p1, p4

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    div-int/2addr p1, p4

    .line 16
    mul-int/2addr p1, p4

    .line 17
    return p1
.end method

.method protected c(IIIII)I
    .locals 0

    .line 1
    .line 2
    if-eqz p3, :cond_2

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p3, p1, :cond_1

    .line 6
    const/4 p1, 0x2

    .line 7
    .line 8
    if-ne p3, p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/d0;->f(I)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 19
    throw p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/d0;->e(I)I

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {p0, p1, p5, p4}, Lcom/google/android/exoplayer2/audio/d0;->g(III)I

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method protected e(I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0;->d(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/audio/d0;->offloadBufferDurationUs:I

    .line 7
    int-to-long v0, v0

    .line 8
    int-to-long v2, p1

    .line 9
    mul-long/2addr v0, v2

    .line 10
    .line 11
    .line 12
    const-wide/32 v2, 0xf4240

    .line 13
    div-long/2addr v0, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/google/common/primitives/e;->d(J)I

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method protected f(I)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/d0;->passthroughBufferDurationUs:I

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/audio/d0;->ac3BufferMultiplicationFactor:I

    .line 8
    mul-int/2addr v0, v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/d0;->d(I)I

    .line 12
    move-result p1

    .line 13
    int-to-long v0, v0

    .line 14
    int-to-long v2, p1

    .line 15
    mul-long/2addr v0, v2

    .line 16
    .line 17
    .line 18
    const-wide/32 v2, 0xf4240

    .line 19
    div-long/2addr v0, v2

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/google/common/primitives/e;->d(J)I

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method protected g(III)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/d0;->pcmBufferMultiplicationFactor:I

    .line 3
    mul-int/2addr p1, v0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/audio/d0;->minPcmBufferDurationUs:I

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/audio/d0;->b(III)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/exoplayer2/audio/d0;->maxPcmBufferDurationUs:I

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p2, p3}, Lcom/google/android/exoplayer2/audio/d0;->b(III)I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, p2}, Lcom/google/android/exoplayer2/util/o0;->p(III)I

    .line 19
    move-result p1

    .line 20
    return p1
.end method
