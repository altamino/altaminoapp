.class public Lcom/google/android/exoplayer2/audio/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private ac3BufferMultiplicationFactor:I

.field private maxPcmBufferDurationUs:I

.field private minPcmBufferDurationUs:I

.field private offloadBufferDurationUs:I

.field private passthroughBufferDurationUs:I

.field private pcmBufferMultiplicationFactor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x3d090

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->minPcmBufferDurationUs:I

    .line 9
    .line 10
    .line 11
    const v1, 0xb71b0

    .line 12
    .line 13
    iput v1, p0, Lcom/google/android/exoplayer2/audio/d0$a;->maxPcmBufferDurationUs:I

    .line 14
    const/4 v1, 0x4

    .line 15
    .line 16
    iput v1, p0, Lcom/google/android/exoplayer2/audio/d0$a;->pcmBufferMultiplicationFactor:I

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->passthroughBufferDurationUs:I

    .line 19
    .line 20
    .line 21
    const v0, 0x2faf080

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->offloadBufferDurationUs:I

    .line 24
    const/4 v0, 0x2

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->ac3BufferMultiplicationFactor:I

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/d0$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->minPcmBufferDurationUs:I

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/d0$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->maxPcmBufferDurationUs:I

    .line 3
    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/audio/d0$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->pcmBufferMultiplicationFactor:I

    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/audio/d0$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->passthroughBufferDurationUs:I

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/audio/d0$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->offloadBufferDurationUs:I

    .line 3
    return p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/audio/d0$a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/d0$a;->ac3BufferMultiplicationFactor:I

    .line 3
    return p0
.end method


# virtual methods
.method public g()Lcom/google/android/exoplayer2/audio/d0;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/audio/d0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/audio/d0;-><init>(Lcom/google/android/exoplayer2/audio/d0$a;)V

    .line 6
    return-object v0
.end method
