.class abstract Lcom/google/common/collect/y$a;
.super Lcom/google/common/collect/y$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field forceCopy:Z

.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/y$b;-><init>()V

    .line 4
    .line 5
    const-string v0, "initialCapacity"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/common/collect/k;->b(ILjava/lang/String;)I

    .line 9
    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput p1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 16
    return-void
.end method

.method private g(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ge v1, p1, :cond_0

    .line 7
    array-length v1, v0

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/google/common/collect/y$b;->c(II)I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/google/common/collect/y$a;->forceCopy:Z

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-boolean p1, p0, Lcom/google/common/collect/y$a;->forceCopy:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, [Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/google/common/collect/y$a;->forceCopy:Z

    .line 35
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/y$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y$a;->d(Ljava/lang/Object;)Lcom/google/common/collect/y$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/y$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/y$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 13
    move-result v2

    .line 14
    add-int/2addr v1, v2

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/common/collect/y$a;->g(I)V

    .line 18
    .line 19
    instance-of v1, v0, Lcom/google/common/collect/y;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lcom/google/common/collect/y;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/y;->d([Ljava/lang/Object;I)I

    .line 31
    move-result p1

    .line 32
    .line 33
    iput p1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 34
    return-object p0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/y$b;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/y$b;

    .line 38
    return-object p0
.end method

.method public d(Ljava/lang/Object;)Lcom/google/common/collect/y$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/y$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, p0, Lcom/google/common/collect/y$a;->size:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/common/collect/y$a;->g(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 15
    .line 16
    add-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    iput v2, p0, Lcom/google/common/collect/y$a;->size:I

    .line 19
    .line 20
    aput-object p1, v0, v1

    .line 21
    return-object p0
.end method

.method public varargs e([Ljava/lang/Object;)Lcom/google/common/collect/y$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/y$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/y$a;->f([Ljava/lang/Object;I)V

    .line 5
    return-object p0
.end method

.method final f([Ljava/lang/Object;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/common/collect/s0;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, p0, Lcom/google/common/collect/y$a;->size:I

    .line 6
    add-int/2addr v0, p2

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/common/collect/y$a;->g(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 12
    .line 13
    iget v1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    iget p1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 20
    add-int/2addr p1, p2

    .line 21
    .line 22
    iput p1, p0, Lcom/google/common/collect/y$a;->size:I

    .line 23
    return-void
.end method
