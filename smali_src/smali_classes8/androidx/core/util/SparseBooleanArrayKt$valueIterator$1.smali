.class public final Landroidx/core/util/SparseBooleanArrayKt$valueIterator$1;
.super Lkotlin/collections/r;
.source "SourceFile"


# instance fields
.field final synthetic $this_valueIterator:Landroid/util/SparseBooleanArray;

.field private index:I


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/util/SparseBooleanArrayKt$valueIterator$1;->$this_valueIterator:Landroid/util/SparseBooleanArray;

    .line 3
    .line 4
    iget v1, p0, Landroidx/core/util/SparseBooleanArrayKt$valueIterator$1;->index:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/core/util/SparseBooleanArrayKt$valueIterator$1;->index:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/core/util/SparseBooleanArrayKt$valueIterator$1;->index:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/core/util/SparseBooleanArrayKt$valueIterator$1;->$this_valueIterator:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

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
