.class final Landroidx/compose/runtime/snapshots/SubList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Lf8/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TT;>;",
        "Lf8/d;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SubList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,440:1\n1720#2,3:441\n1849#2,2:444\n*S KotlinDebug\n*F\n+ 1 SnapshotStateList.kt\nandroidx/compose/runtime/snapshots/SubList\n*L\n294#1:441,3\n303#1:444,2\n*E\n"
.end annotation


# instance fields
.field private modification:I

.field private final offset:I

.field private final parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;II)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/SnapshotStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TT;>;II)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "parentList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 11
    .line 12
    iput p2, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    .line 19
    sub-int/2addr p3, p2

    .line 20
    .line 21
    iput p3, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    .line 22
    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 17
    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    add-int/2addr v1, p1

    .line 6
    invoke-virtual {v0, v1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 8
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 2
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 4
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    iget-object p2, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 4
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    move-result p2

    iput p2, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/snapshots/SubList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    return v0
.end method

.method public clear()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->q(II)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    iput v0, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    .line 30
    move-result v0

    .line 31
    .line 32
    iput v0, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    .line 33
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SubList;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
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
    move-object v0, p1

    .line 9
    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SubList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public e(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 8
    add-int/2addr v1, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    .line 26
    move-result v0

    .line 27
    .line 28
    iput v0, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    .line 29
    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->c(II)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 15
    add-int/2addr v1, p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 9
    move-result v1

    .line 10
    add-int/2addr v1, v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lj8/m;->v(II)Lj8/i;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    move-object v1, v0

    .line 26
    .line 27
    check-cast v1, Lkotlin/collections/m0;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lkotlin/collections/m0;->nextInt()I

    .line 31
    move-result v1

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget p1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 46
    sub-int/2addr v1, p1

    .line 47
    return v1

    .line 48
    :cond_1
    const/4 p1, -0x1

    .line 49
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

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
    .locals 1
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
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->listIterator()Ljava/util/ListIterator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 9
    move-result v1

    .line 10
    add-int/2addr v0, v1

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget p1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 31
    sub-int/2addr v0, p1

    .line 32
    return v0

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, -0x1

    .line 37
    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
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
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 3
    new-instance v0, Lkotlin/jvm/internal/n0;

    invoke-direct {v0}, Lkotlin/jvm/internal/n0;-><init>()V

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 4
    new-instance p1, Landroidx/compose/runtime/snapshots/SubList$listIterator$1;

    invoke-direct {p1, v0, p0}, Landroidx/compose/runtime/snapshots/SubList$listIterator$1;-><init>(Lkotlin/jvm/internal/n0;Landroidx/compose/runtime/snapshots/SubList;)V

    return-object p1
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SubList;->e(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SubList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SubList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
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
    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/SubList;->remove(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    :cond_1
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
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
    .line 8
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v2, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->r(Ljava/util/Collection;II)I

    .line 21
    move-result p1

    .line 22
    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    .line 29
    move-result v0

    .line 30
    .line 31
    iput v0, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 35
    move-result v0

    .line 36
    sub-int/2addr v0, p1

    .line 37
    .line 38
    iput v0, p0, Landroidx/compose/runtime/snapshots/SubList;->size:I

    .line 39
    .line 40
    :cond_0
    if-lez p1, :cond_1

    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->c(II)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 13
    .line 14
    iget v1, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 15
    add-int/2addr p1, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->c()I

    .line 25
    move-result p2

    .line 26
    .line 27
    iput p2, p0, Landroidx/compose/runtime/snapshots/SubList;->modification:I

    .line 28
    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->c()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
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
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-gt p1, p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SubList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-gt p2, v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SubList;->f()V

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/runtime/snapshots/SubList;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SubList;->parentList:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 18
    .line 19
    iget v2, p0, Landroidx/compose/runtime/snapshots/SubList;->offset:I

    .line 20
    add-int/2addr p1, v2

    .line 21
    add-int/2addr p2, v2

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/runtime/snapshots/SubList;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;II)V

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "Failed requirement."

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
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
