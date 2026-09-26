.class public abstract Lcom/google/common/collect/f0;
.super Lcom/google/common/collect/g0;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lcom/google/common/collect/h1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f0$b;,
        Lcom/google/common/collect/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g0<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Lcom/google/common/collect/h1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient descendingSet:Lcom/google/common/collect/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/g0;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/common/collect/f0;->comparator:Ljava/util/Comparator;

    .line 6
    return-void
.end method

.method static varargs E(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/f0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;I[TE;)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/google/common/collect/f0;->K(Ljava/util/Comparator;)Lcom/google/common/collect/z0;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p2, p1}, Lcom/google/common/collect/s0;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 15
    const/4 v0, 0x1

    .line 16
    move v1, v0

    .line 17
    .line 18
    :goto_0
    if-ge v0, p1, :cond_2

    .line 19
    .line 20
    aget-object v2, p2, v0

    .line 21
    .line 22
    add-int/lit8 v3, v1, -0x1

    .line 23
    .line 24
    aget-object v3, p2, v3

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    add-int/lit8 v3, v1, 0x1

    .line 33
    .line 34
    aput-object v2, p2, v1

    .line 35
    move v1, v3

    .line 36
    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 43
    array-length p1, p2

    .line 44
    .line 45
    div-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    if-ge v1, p1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    :cond_3
    new-instance p1, Lcom/google/common/collect/z0;

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v1}, Lcom/google/common/collect/a0;->q([Ljava/lang/Object;I)Lcom/google/common/collect/a0;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2, p0}, Lcom/google/common/collect/z0;-><init>(Lcom/google/common/collect/a0;Ljava/util/Comparator;)V

    .line 61
    return-object p1
.end method

.method public static F(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/f0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->b(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lcom/google/common/collect/f0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    move-object v0, p1

    .line 15
    .line 16
    check-cast v0, Lcom/google/common/collect/f0;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/common/collect/y;->j()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    return-object v0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/h0;->l(Ljava/lang/Iterable;)[Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    array-length v0, p1

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, p1}, Lcom/google/common/collect/f0;->E(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/f0;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static G(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/common/collect/f0;->F(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/f0;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static K(Ljava/util/Comparator;)Lcom/google/common/collect/z0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/z0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/t0;->c()Lcom/google/common/collect/t0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/google/common/collect/z0;->NATURAL_EMPTY_SET:Lcom/google/common/collect/z0;

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/google/common/collect/z0;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/z0;-><init>(Lcom/google/common/collect/a0;Ljava/util/Comparator;)V

    .line 23
    return-object v0
.end method

.method static V(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 3
    .line 4
    const-string v0, "Use SerializedForm"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method


# virtual methods
.method abstract H()Lcom/google/common/collect/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract I()Lcom/google/common/collect/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public J()Lcom/google/common/collect/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f0;->descendingSet:Lcom/google/common/collect/f0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/f0;->H()Lcom/google/common/collect/f0;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/common/collect/f0;->descendingSet:Lcom/google/common/collect/f0;

    .line 11
    .line 12
    iput-object p0, v0, Lcom/google/common/collect/f0;->descendingSet:Lcom/google/common/collect/f0;

    .line 13
    :cond_0
    return-object v0
.end method

.method public L(Ljava/lang/Object;)Lcom/google/common/collect/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/f0;->M(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public M(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f0;->N(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method abstract N(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation
.end method

.method public O(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/f0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/f0;->P(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public P(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/common/collect/f0;->comparator:Ljava/util/Comparator;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/f0;->Q(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method abstract Q(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation
.end method

.method public R(Ljava/lang/Object;)Lcom/google/common/collect/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/f0;->S(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public S(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f0;->T(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method abstract T(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/f0<",
            "TE;>;"
        }
    .end annotation
.end method

.method U(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f0;->comparator:Ljava/util/Comparator;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/common/collect/f0;->V(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/f0;->S(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/google/common/collect/h0;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f0;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/f0;->I()Lcom/google/common/collect/l1;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/f0;->J()Lcom/google/common/collect/f0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/f0;->m()Lcom/google/common/collect/l1;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/f0;->M(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/common/collect/f0;->I()Lcom/google/common/collect/l1;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/common/collect/i0;->n(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f0;->M(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0;->L(Ljava/lang/Object;)Lcom/google/common/collect/f0;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/f0;->S(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/google/common/collect/h0;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/f0;->m()Lcom/google/common/collect/l1;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/f0;->I()Lcom/google/common/collect/l1;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/f0;->M(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/common/collect/f0;->I()Lcom/google/common/collect/l1;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/common/collect/i0;->n(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public abstract m()Lcom/google/common/collect/l1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l1<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/f0;->P(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/f0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f0;->O(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/f0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f0;->S(Ljava/lang/Object;Z)Lcom/google/common/collect/f0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f0;->R(Ljava/lang/Object;)Lcom/google/common/collect/f0;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/f0$b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/common/collect/f0;->comparator:Ljava/util/Comparator;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/y;->toArray()[Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/f0$b;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    .line 12
    return-object v0
.end method
