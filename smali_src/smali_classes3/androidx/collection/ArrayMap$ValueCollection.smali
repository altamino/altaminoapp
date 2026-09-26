.class final Landroidx/collection/ArrayMap$ValueCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->k(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/collection/ArrayMap$ValueCollection;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/collection/ArrayMap$ValueIterator;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap$ValueIterator;-><init>(Landroidx/collection/ArrayMap;)V

    .line 8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->k(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->n(I)Ljava/lang/Object;

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    iget v0, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->n(I)Ljava/lang/Object;

    .line 27
    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    move v2, v4

    .line 32
    :cond_0
    add-int/2addr v1, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    iget v0, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->n(I)Ljava/lang/Object;

    .line 27
    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    move v2, v4

    .line 32
    :cond_0
    add-int/2addr v1, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v2
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    iget v0, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 5
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 1
    iget v0, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->p(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ArrayMap$ValueCollection;->this$0:Landroidx/collection/ArrayMap;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/collection/ArrayMap;->u([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
