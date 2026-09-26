.class abstract Landroidx/collection/IndexBasedArrayIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCanRemove:Z

.field private mIndex:I

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    .line 6
    return-void
.end method


# virtual methods
.method protected abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected abstract b(I)V
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    iget v1, p0, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->a(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v1, p0, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    .line 15
    const/4 v2, 0x1

    .line 16
    add-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, p0, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    .line 19
    .line 20
    iput-boolean v2, p0, Landroidx/collection/IndexBasedArrayIterator;->mCanRemove:Z

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 27
    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mCanRemove:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mIndex:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->b(I)V

    .line 14
    .line 15
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mSize:I

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->mCanRemove:Z

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method
