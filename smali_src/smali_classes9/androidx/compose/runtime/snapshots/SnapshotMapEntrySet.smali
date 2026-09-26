.class final Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;
.super Landroidx/compose/runtime/snapshots/SnapshotMapSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/SnapshotMapSet<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapEntrySet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 4 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n*L\n1#1,344:1\n1177#2,2:345\n1251#2,4:347\n1720#2,3:394\n68#3,2:351\n113#3,4:353\n117#3:358\n105#3:359\n118#3,5:361\n70#3,7:366\n123#3,3:373\n109#3:376\n126#3,5:382\n133#3,3:390\n77#3:393\n66#4:357\n2096#5:360\n1999#5,2:377\n1682#5:379\n2001#5,2:380\n2003#5,3:387\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapEntrySet\n*L\n193#1:345,2\n193#1:347,4\n200#1:394,3\n194#1:351,2\n194#1:353,4\n194#1:358\n194#1:359\n194#1:361,5\n194#1:366,7\n194#1:373,3\n194#1:376\n194#1:382,5\n194#1:390,3\n194#1:393\n194#1:357\n194#1:360\n194#1:377,2\n194#1:379\n194#1:380,2\n194#1:387,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/SnapshotStateMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "map"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;->f(Ljava/util/Map$Entry;)Ljava/lang/Void;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;->g(Ljava/util/Collection;)Ljava/lang/Void;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/v0;->m(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;->j(Ljava/util/Map$Entry;)Z

    .line 14
    move-result p1

    .line 15
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
    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 42
    :cond_2
    :goto_0
    return v1
.end method

.method public f(Ljava/util/Map$Entry;)Ljava/lang/Void;
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public g(Ljava/util/Collection;)Ljava/lang/Void;
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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V

    .line 32
    return-object v0
.end method

.method public j(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public m(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/v0;->m(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;->m(Ljava/util/Map$Entry;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
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
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
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
    const/16 v0, 0xa

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/p0;->e(I)I

    .line 17
    move-result v0

    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lj8/m;->e(II)I

    .line 23
    move-result v0

    .line 24
    .line 25
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x0

    .line 74
    move v2, v0

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    monitor-enter v3

    .line 80
    .line 81
    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 86
    .line 87
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-static {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 105
    move-result v4

    .line 106
    .line 107
    sget-object v6, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    monitor-exit v3

    .line 109
    .line 110
    .line 111
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    .line 119
    move-result-object v6

    .line 120
    .line 121
    .line 122
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v6

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v7

    .line 128
    const/4 v8, 0x1

    .line 129
    .line 130
    if-eqz v7, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v7

    .line 135
    .line 136
    check-cast v7, Ljava/util/Map$Entry;

    .line 137
    .line 138
    .line 139
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 140
    move-result-object v9

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 144
    move-result v9

    .line 145
    .line 146
    if-eqz v9, :cond_3

    .line 147
    .line 148
    .line 149
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 150
    move-result-object v9

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object v9

    .line 155
    .line 156
    .line 157
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 158
    move-result-object v10

    .line 159
    .line 160
    .line 161
    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    move-result v9

    .line 163
    .line 164
    if-nez v9, :cond_2

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    .line 171
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move v2, v8

    .line 173
    goto :goto_1

    .line 174
    .line 175
    :cond_4
    sget-object v6, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 176
    .line 177
    .line 178
    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    .line 182
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    move-result v5

    .line 184
    .line 185
    if-nez v5, :cond_6

    .line 186
    .line 187
    .line 188
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 189
    move-result-object v5

    .line 190
    monitor-enter v5

    .line 191
    .line 192
    .line 193
    :try_start_1
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 194
    move-result-object v6

    .line 195
    .line 196
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 203
    move-result-object v7

    .line 204
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    .line 206
    :try_start_2
    sget-object v9, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 210
    move-result-object v9

    .line 211
    .line 212
    .line 213
    invoke-static {v6, p1, v9}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 214
    move-result-object v6

    .line 215
    .line 216
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 220
    move-result v10

    .line 221
    .line 222
    if-ne v10, v4, :cond_5

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->i(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 229
    move-result v3

    .line 230
    add-int/2addr v3, v8

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->j(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    goto :goto_2

    .line 235
    :catchall_0
    move-exception p1

    .line 236
    goto :goto_3

    .line 237
    :cond_5
    move v8, v0

    .line 238
    :goto_2
    :try_start_3
    monitor-exit v7

    .line 239
    .line 240
    .line 241
    invoke-static {v9, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    monitor-exit v5

    .line 243
    .line 244
    if-eqz v8, :cond_1

    .line 245
    goto :goto_5

    .line 246
    :catchall_1
    move-exception p1

    .line 247
    goto :goto_4

    .line 248
    :goto_3
    :try_start_4
    monitor-exit v7

    .line 249
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 250
    :goto_4
    monitor-exit v5

    .line 251
    throw p1

    .line 252
    :cond_6
    :goto_5
    return v2

    .line 253
    :catchall_2
    move-exception p1

    .line 254
    monitor-exit v3

    .line 255
    throw p1
.end method
