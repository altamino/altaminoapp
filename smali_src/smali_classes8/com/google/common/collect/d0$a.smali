.class public Lcom/google/common/collect/d0$a;
.super Lcom/google/common/collect/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private hashCode:I

.field hashTable:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/y$a;-><init>(I)V

    .line 5
    return-void
.end method

.method private k(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 8
    array-length v0, v0

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/common/collect/x;->b(I)I

    .line 18
    move-result v2

    .line 19
    :goto_0
    and-int/2addr v2, v0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v4, v3, v2

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    aput-object p1, v3, v2

    .line 28
    .line 29
    iget v0, p0, Lcom/google/common/collect/d0$a;->hashCode:I

    .line 30
    add-int/2addr v0, v1

    .line 31
    .line 32
    iput v0, p0, Lcom/google/common/collect/d0$a;->hashCode:I

    .line 33
    .line 34
    .line 35
    invoke-super {p0, p1}, Lcom/google/common/collect/y$a;->d(Ljava/lang/Object;)Lcom/google/common/collect/y$a;

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/y$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Lcom/google/common/collect/y$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/d0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/google/common/collect/y$a;->size:I

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/common/collect/d0;->r(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 16
    array-length v1, v1

    .line 17
    .line 18
    if-gt v0, v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/google/common/collect/d0$a;->k(Ljava/lang/Object;)V

    .line 22
    return-object p0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Lcom/google/common/collect/y$a;->d(Ljava/lang/Object;)Lcom/google/common/collect/y$a;

    .line 29
    return-object p0
.end method

.method public varargs i([Ljava/lang/Object;)Lcom/google/common/collect/d0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/d0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/google/common/collect/d0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/y$a;->e([Ljava/lang/Object;)Lcom/google/common/collect/y$b;

    .line 20
    :cond_1
    return-object p0
.end method

.method public j(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/d0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/google/common/collect/d0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/y$a;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/y$b;

    .line 29
    :cond_1
    return-object p0
.end method

.method public l()Lcom/google/common/collect/d0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/common/collect/y$a;->size:I

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/common/collect/d0;->r(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 18
    array-length v2, v2

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/google/common/collect/y$a;->size:I

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 25
    array-length v2, v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lcom/google/common/collect/d0;->p(II)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 34
    .line 35
    iget v2, p0, Lcom/google/common/collect/y$a;->size:I

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    :goto_0
    move-object v3, v0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :goto_1
    new-instance v0, Lcom/google/common/collect/y0;

    .line 47
    .line 48
    iget v4, p0, Lcom/google/common/collect/d0$a;->hashCode:I

    .line 49
    .line 50
    iget-object v5, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 51
    array-length v2, v5

    .line 52
    .line 53
    add-int/lit8 v6, v2, -0x1

    .line 54
    .line 55
    iget v7, p0, Lcom/google/common/collect/y$a;->size:I

    .line 56
    move-object v2, v0

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v2 .. v7}, Lcom/google/common/collect/y0;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_1
    iget v0, p0, Lcom/google/common/collect/y$a;->size:I

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/google/common/collect/d0;->q(I[Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 72
    move-result v2

    .line 73
    .line 74
    iput v2, p0, Lcom/google/common/collect/y$a;->size:I

    .line 75
    .line 76
    :goto_2
    iput-boolean v1, p0, Lcom/google/common/collect/y$a;->forceCopy:Z

    .line 77
    const/4 v1, 0x0

    .line 78
    .line 79
    iput-object v1, p0, Lcom/google/common/collect/d0$a;->hashTable:[Ljava/lang/Object;

    .line 80
    return-object v0

    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/y$a;->contents:[Ljava/lang/Object;

    .line 83
    const/4 v1, 0x0

    .line 84
    .line 85
    aget-object v0, v0, v1

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/google/common/collect/d0;->y(Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {}, Lcom/google/common/collect/d0;->x()Lcom/google/common/collect/d0;

    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method
