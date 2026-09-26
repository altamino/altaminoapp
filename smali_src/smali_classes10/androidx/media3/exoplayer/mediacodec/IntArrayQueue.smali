.class final Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10


# instance fields
.field private data:[I

.field private headIndex:I

.field private size:I

.field private tailIndex:I

.field private wrapAroundMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->headIndex:I

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->tailIndex:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->data:[I

    .line 18
    array-length v0, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->wrapAroundMask:I

    .line 23
    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->data:[I

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    shl-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    new-array v1, v1, [I

    .line 10
    array-length v2, v0

    .line 11
    .line 12
    iget v3, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->headIndex:I

    .line 13
    sub-int/2addr v2, v3

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->data:[I

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    iput v4, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->headIndex:I

    .line 25
    .line 26
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->tailIndex:I

    .line 31
    .line 32
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->data:[I

    .line 33
    array-length v0, v1

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->wrapAroundMask:I

    .line 38
    return-void

    .line 39
    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 44
    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->data:[I

    .line 5
    array-length v1, v1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->c()V

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->tailIndex:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iget v1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->wrapAroundMask:I

    .line 17
    and-int/2addr v0, v1

    .line 18
    .line 19
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->tailIndex:I

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->data:[I

    .line 22
    .line 23
    aput p1, v1, v0

    .line 24
    .line 25
    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    .line 30
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->headIndex:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->tailIndex:I

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->data:[I

    .line 7
    .line 8
    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->headIndex:I

    .line 9
    .line 10
    aget v1, v1, v2

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    iget v3, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->wrapAroundMask:I

    .line 15
    and-int/2addr v2, v3

    .line 16
    .line 17
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->headIndex:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/IntArrayQueue;->size:I

    .line 22
    return v1

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 28
    throw v0
.end method
