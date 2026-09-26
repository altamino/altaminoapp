.class public final Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private firstFreeHandle:I

.field private handles:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private index:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I

.field private values:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 14
    .line 15
    new-array v1, v0, [I

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    aput v3, v1, v2

    .line 23
    move v2, v3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 27
    return-void
.end method

.method private final b()I
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 6
    .line 7
    if-lt v1, v0, :cond_1

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    new-array v8, v0, [I

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    aput v2, v8, v1

    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    .line 27
    const/16 v6, 0xe

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v2, v8

    .line 30
    .line 31
    .line 32
    invoke-static/range {v1 .. v7}, Lkotlin/collections/l;->l([I[IIIIILjava/lang/Object;)[I

    .line 33
    .line 34
    iput-object v8, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 35
    .line 36
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 39
    .line 40
    aget v1, v1, v0

    .line 41
    .line 42
    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 43
    return v0
.end method

.method private final c(I)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-gt p1, v1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    new-array p1, v1, [I

    .line 11
    .line 12
    new-array v9, v1, [I

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    const/16 v5, 0xe

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, p1

    .line 20
    .line 21
    .line 22
    invoke-static/range {v0 .. v6}, Lkotlin/collections/l;->l([I[IIIIILjava/lang/Object;)[I

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    .line 28
    const/16 v7, 0xe

    .line 29
    const/4 v8, 0x0

    .line 30
    move-object v3, v9

    .line 31
    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Lkotlin/collections/l;->l([I[IIIIILjava/lang/Object;)[I

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 36
    .line 37
    iput-object v9, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 38
    return-void
.end method

.method private final d(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 5
    .line 6
    aput v1, v0, p1

    .line 7
    .line 8
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 9
    return-void
.end method

.method private final g(I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 5
    .line 6
    shr-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    :goto_0
    if-ge p1, v1, :cond_2

    .line 9
    .line 10
    add-int/lit8 v2, p1, 0x1

    .line 11
    .line 12
    shl-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    add-int/lit8 v3, v2, -0x1

    .line 15
    .line 16
    iget v4, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 17
    .line 18
    if-ge v2, v4, :cond_1

    .line 19
    .line 20
    aget v4, v0, v2

    .line 21
    .line 22
    aget v5, v0, v3

    .line 23
    .line 24
    if-ge v4, v5, :cond_1

    .line 25
    .line 26
    aget v3, v0, p1

    .line 27
    .line 28
    if-ge v4, v3, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->i(II)V

    .line 32
    move p1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    .line 36
    :cond_1
    aget v2, v0, v3

    .line 37
    .line 38
    aget v4, v0, p1

    .line 39
    .line 40
    if-ge v2, v4, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->i(II)V

    .line 44
    move p1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method private final h(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 3
    .line 4
    aget v1, v0, p1

    .line 5
    .line 6
    :goto_0
    if-lez p1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v2, p1, 0x1

    .line 9
    .line 10
    shr-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    aget v3, v0, v2

    .line 15
    .line 16
    if-le v3, v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->i(II)V

    .line 20
    move p1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private final i(II)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 7
    .line 8
    aget v3, v0, p1

    .line 9
    .line 10
    aget v4, v0, p2

    .line 11
    .line 12
    aput v4, v0, p1

    .line 13
    .line 14
    aput v3, v0, p2

    .line 15
    .line 16
    aget v0, v1, p1

    .line 17
    .line 18
    aget v3, v1, p2

    .line 19
    .line 20
    aput v3, v1, p1

    .line 21
    .line 22
    aput v0, v1, p2

    .line 23
    .line 24
    aget v0, v1, p1

    .line 25
    .line 26
    aput p1, v2, v0

    .line 27
    .line 28
    aget p1, v1, p2

    .line 29
    .line 30
    aput p2, v2, p1

    .line 31
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->c(I)V

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 10
    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->b()I

    .line 17
    move-result v1

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 20
    .line 21
    aput p1, v2, v0

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 24
    .line 25
    aput v1, p1, v0

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 28
    .line 29
    aput v0, p1, v1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->h(I)V

    .line 33
    return v1
.end method

.method public final e(I)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    aget p1, p1, v0

    .line 10
    :cond_0
    return p1
.end method

.method public final f(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 3
    .line 4
    aget v0, v0, p1

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->i(II)V

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->h(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->g(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->d(I)V

    .line 27
    return-void
.end method
