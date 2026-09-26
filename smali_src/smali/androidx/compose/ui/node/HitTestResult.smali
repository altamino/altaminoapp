.class public final Landroidx/compose/ui/node/HitTestResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;,
        Landroidx/compose/ui/node/HitTestResult$SubList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TT;>;",
        "Lf8/a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitTestResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitTestResult.kt\nandroidx/compose/ui/node/HitTestResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,341:1\n1849#2,2:342\n*S KotlinDebug\n*F\n+ 1 HitTestResult.kt\nandroidx/compose/ui/node/HitTestResult\n*L\n195#1:342,2\n*E\n"
.end annotation


# instance fields
.field private distanceFromEdgeAndInLayer:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hitDepth:I

.field private size:I

.field private values:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 10
    .line 11
    new-array v0, v0, [J

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 14
    const/4 v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 17
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/ui/node/HitTestResult;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 3
    return p0
.end method

.method public static final synthetic f(Landroidx/compose/ui/node/HitTestResult;)[Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/ui/node/HitTestResult;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 3
    return-void
.end method

.method private final j()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    array-length v0, v1

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x10

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "copyOf(this, newSize)"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 33
    :cond_0
    return-void
.end method

.method private final m()J
    .locals 7

    .line 1
    .line 2
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->b(FZ)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-gt v2, v3, :cond_2

    .line 18
    .line 19
    :goto_0
    iget-object v4, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 20
    .line 21
    aget-wide v5, v4, v2

    .line 22
    .line 23
    .line 24
    invoke-static {v5, v6}, Landroidx/compose/ui/node/DistanceAndInLayer;->b(J)J

    .line 25
    move-result-wide v4

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->a(JJ)I

    .line 29
    move-result v6

    .line 30
    .line 31
    if-gez v6, :cond_0

    .line 32
    move-wide v0, v4

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->d(J)F

    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    .line 39
    cmpg-float v4, v4, v5

    .line 40
    .line 41
    if-gez v4, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->f(J)Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    return-wide v0

    .line 49
    .line 50
    :cond_1
    if-eq v2, v3, :cond_2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-wide v0
.end method

.method private final u()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    aput-object v3, v2, v0

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->size:I

    .line 27
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation is not supported for read-only collection"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation is not supported for read-only collection"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 9
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->u()V

    .line 7
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/HitTestResult;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "elements"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
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
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/HitTestResult;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v2, v2, v1

    .line 12
    .line 13
    .line 14
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    return v1

    .line 19
    .line 20
    :cond_0
    if-eq v1, v0, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, -0x1

    .line 25
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v7, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x7

    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v0, v7

    .line 9
    move-object v1, p0

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;-><init>(Landroidx/compose/ui/node/HitTestResult;IIIILkotlin/jvm/internal/k;)V

    .line 13
    return-object v7
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return v0

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;-><init>(Landroidx/compose/ui/node/HitTestResult;IIIILkotlin/jvm/internal/k;)V

    return-object v7
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v7, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/HitTestResult$HitTestResultIterator;-><init>(Landroidx/compose/ui/node/HitTestResult;IIIILkotlin/jvm/internal/k;)V

    return-object v7
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->size:I

    return v0
.end method

.method public final q()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->m()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->d(J)F

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    cmpg-float v2, v2, v3

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndInLayer;->f(J)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final r(Ljava/lang/Object;ZLe8/a;)V
    .locals 1
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "childHitTest"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/compose/ui/node/HitTestResult;->s(Ljava/lang/Object;FZLe8/a;)V

    .line 11
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Ljava/lang/Object;FZLe8/a;)V
    .locals 3
    .param p4    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FZ",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "childHitTest"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->j()V

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 17
    .line 18
    iget v2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 19
    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p3}, Landroidx/compose/ui/node/HitTestResultKt;->b(FZ)J

    .line 26
    move-result-wide p2

    .line 27
    .line 28
    aput-wide p2, p1, v2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->u()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p4}, Le8/a;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    iput v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 37
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation is not supported for read-only collection"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->p()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/node/HitTestResult$SubList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/ui/node/HitTestResult$SubList;-><init>(Landroidx/compose/ui/node/HitTestResult;II)V

    .line 6
    return-object v0
.end method

.method public final t(FZ)Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    return v2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/node/HitTestResultKt;->b(FZ)J

    .line 14
    move-result-wide p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->m()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/node/DistanceAndInLayer;->a(JJ)I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-lez p1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    :goto_0
    return v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/j;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/Object;FZLe8/a;)V
    .locals 4
    .param p4    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FZ",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "childHitTest"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/HitTestResult;->s(Ljava/lang/Object;FZLe8/a;)V

    .line 17
    .line 18
    iget p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->u()V

    .line 30
    :cond_0
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->m()J

    .line 34
    move-result-wide v0

    .line 35
    .line 36
    iget v2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 40
    move-result v3

    .line 41
    .line 42
    iput v3, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/HitTestResult;->s(Ljava/lang/Object;FZLe8/a;)V

    .line 46
    .line 47
    iget p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 48
    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 53
    move-result p2

    .line 54
    .line 55
    if-ge p1, p2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->m()J

    .line 59
    move-result-wide p1

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/node/DistanceAndInLayer;->a(JJ)I

    .line 63
    move-result p1

    .line 64
    .line 65
    if-lez p1, :cond_2

    .line 66
    .line 67
    iget p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    add-int/lit8 p2, v2, 0x1

    .line 72
    .line 73
    iget-object p3, p0, Landroidx/compose/ui/node/HitTestResult;->values:[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    .line 77
    move-result p4

    .line 78
    .line 79
    .line 80
    invoke-static {p3, p3, p2, p1, p4}, Lkotlin/collections/l;->i([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p3, p0, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndInLayer:[J

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    .line 86
    move-result p4

    .line 87
    .line 88
    .line 89
    invoke-static {p3, p3, p2, p1, p4}, Lkotlin/collections/l;->h([J[JIII)[J

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/compose/ui/node/HitTestResult;->size()I

    .line 93
    move-result p1

    .line 94
    add-int/2addr p1, v2

    .line 95
    .line 96
    iget p2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 97
    sub-int/2addr p1, p2

    .line 98
    .line 99
    add-int/lit8 p1, p1, -0x1

    .line 100
    .line 101
    iput p1, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/node/HitTestResult;->u()V

    .line 105
    .line 106
    iput v2, p0, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 107
    return-void
.end method
