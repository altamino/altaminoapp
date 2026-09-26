.class public final Landroidx/collection/CircularIntArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Landroidx/collection/CircularIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be <= 2^30"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be >= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    iget v2, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 6
    .line 7
    sub-int v3, v1, v2

    .line 8
    .line 9
    shl-int/lit8 v4, v1, 0x1

    .line 10
    .line 11
    if-ltz v4, :cond_0

    .line 12
    .line 13
    new-array v5, v4, [I

    .line 14
    const/4 v6, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 20
    .line 21
    iget v2, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v6, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    iput-object v5, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 27
    .line 28
    iput v6, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 29
    .line 30
    iput v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 31
    .line 32
    add-int/lit8 v4, v4, -0x1

    .line 33
    .line 34
    iput v4, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 35
    return-void

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v1, "Max array capacity exceeded"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 5
    .line 6
    aput p1, v0, v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iget p1, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 11
    and-int/2addr p1, v1

    .line 12
    .line 13
    iput p1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 14
    .line 15
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/collection/CircularIntArray;->c()V

    .line 21
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iput v0, p0, Landroidx/collection/CircularIntArray;->mTail:I

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/CircularIntArray;->mTail:I

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/collection/CircularIntArray;->mElements:[I

    .line 9
    .line 10
    aget v1, v1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iget v2, p0, Landroidx/collection/CircularIntArray;->mCapacityBitmask:I

    .line 15
    and-int/2addr v0, v2

    .line 16
    .line 17
    iput v0, p0, Landroidx/collection/CircularIntArray;->mHead:I

    .line 18
    return v1

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 24
    throw v0
.end method
