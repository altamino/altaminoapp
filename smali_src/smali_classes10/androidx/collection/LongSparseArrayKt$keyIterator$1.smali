.class public final Landroidx/collection/LongSparseArrayKt$keyIterator$1;
.super Lkotlin/collections/n0;
.source "SourceFile"


# instance fields
.field final synthetic $this_keyIterator:Landroidx/collection/LongSparseArray;

.field private index:I


# virtual methods
.method public a()J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/LongSparseArrayKt$keyIterator$1;->$this_keyIterator:Landroidx/collection/LongSparseArray;

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/LongSparseArrayKt$keyIterator$1;->index:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/collection/LongSparseArrayKt$keyIterator$1;->index:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->l(I)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/LongSparseArrayKt$keyIterator$1;->index:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/LongSparseArrayKt$keyIterator$1;->$this_keyIterator:Landroidx/collection/LongSparseArray;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->p()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method
