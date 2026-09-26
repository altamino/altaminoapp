.class public final Landroidx/compose/runtime/snapshots/SnapshotStateMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Landroidx/compose/runtime/snapshots/StateObject;
.implements Lf8/e;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "Lf8/e;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n138#1:345\n105#1:346\n139#1,2:348\n141#1:351\n109#1:352\n142#1,2:358\n146#1:363\n113#1,4:364\n117#1:369\n105#1:370\n118#1,8:372\n109#1:380\n126#1,5:386\n133#1,3:394\n113#1,4:397\n117#1:402\n105#1:403\n118#1,8:405\n109#1:413\n126#1,5:419\n133#1,3:427\n113#1,4:430\n117#1:435\n105#1:436\n118#1,8:438\n109#1:446\n126#1,5:452\n133#1,3:460\n113#1,4:466\n117#1:471\n105#1:472\n118#1,8:474\n109#1:482\n126#1,5:488\n133#1,3:496\n105#1:499\n105#1:512\n109#1:515\n105#1:525\n109#1:528\n2096#2:347\n1999#2,2:353\n1682#2:355\n2001#2,2:356\n2003#2,3:360\n2096#2:371\n1999#2,2:381\n1682#2:383\n2001#2,2:384\n2003#2,3:391\n2096#2:404\n1999#2,2:414\n1682#2:416\n2001#2,2:417\n2003#2,3:424\n2096#2:437\n1999#2,2:447\n1682#2:449\n2001#2,2:450\n2003#2,3:457\n2096#2:473\n1999#2,2:483\n1682#2:485\n2001#2,2:486\n2003#2,3:493\n2096#2:500\n2096#2:501\n1999#2,2:502\n1682#2:504\n2001#2,5:506\n2096#2:513\n1999#2,2:516\n1682#2:518\n2001#2,5:520\n2096#2:526\n1999#2,2:529\n1682#2:531\n2001#2,5:533\n66#3:350\n66#3:368\n66#3:401\n66#3:434\n66#3:470\n66#3:505\n66#3:511\n66#3:514\n66#3:519\n66#3:527\n66#3:532\n286#4,2:463\n1#5:465\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n*L\n53#1:345\n53#1:346\n53#1:348,2\n53#1:351\n53#1:352\n53#1:358,2\n53#1:363\n54#1:364,4\n54#1:369\n54#1:370\n54#1:372,8\n54#1:380\n54#1:386,5\n54#1:394,3\n55#1:397,4\n55#1:402\n55#1:403\n55#1:405,8\n55#1:413\n55#1:419,5\n55#1:427,3\n56#1:430,4\n56#1:435\n56#1:436\n56#1:438,8\n56#1:446\n56#1:452,5\n56#1:460,3\n69#1:466,4\n69#1:471\n69#1:472\n69#1:474,8\n69#1:482\n69#1:488,5\n69#1:496,3\n101#1:499\n117#1:512\n125#1:515\n138#1:525\n141#1:528\n53#1:347\n53#1:353,2\n53#1:355\n53#1:356,2\n53#1:360,3\n54#1:371\n54#1:381,2\n54#1:383\n54#1:384,2\n54#1:391,3\n55#1:404\n55#1:414,2\n55#1:416\n55#1:417,2\n55#1:424,3\n56#1:437\n56#1:447,2\n56#1:449\n56#1:450,2\n56#1:457,3\n69#1:473\n69#1:483,2\n69#1:485\n69#1:486,2\n69#1:493,3\n101#1:500\n105#1:501\n109#1:502,2\n109#1:504\n109#1:506,5\n117#1:513\n125#1:516,2\n125#1:518\n125#1:520,5\n138#1:526\n141#1:529,2\n141#1:531\n141#1:533,5\n53#1:350\n54#1:368\n55#1:401\n56#1:434\n69#1:470\n109#1:505\n116#1:511\n124#1:514\n125#1:519\n140#1:527\n141#1:532\n61#1:463,2\n*E\n"
.end annotation


# instance fields
.field private final entries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

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
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotMapEntrySet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entries:Ljava/util/Set;

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotMapKeySet;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotMapKeySet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->keys:Ljava/util/Set;

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->values:Ljava/util/Collection;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    .line 10
    return-void
.end method

.method public clear()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 7
    .line 8
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eq v2, v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    monitor-enter v0

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-static {v3, p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->i(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 67
    move-result v2

    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->j(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    monitor-exit v4

    .line 74
    .line 75
    .line 76
    invoke-static {v1, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    monitor-exit v0

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception v1

    .line 82
    :try_start_3
    monitor-exit v4

    .line 83
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :goto_0
    monitor-exit v0

    .line 85
    throw v1

    .line 86
    :cond_0
    :goto_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public synthetic e(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/a;->a(Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1

    return-object p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->f()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entries:Ljava/util/Set;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->keys:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final h()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->O(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 13
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->g()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->values:Ljava/util/Collection;

    return-object v0
.end method

.method public m()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->firstStateRecord:Landroidx/compose/runtime/snapshots/StateRecord;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    .line 21
    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    .line 35
    :goto_0
    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_1
    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 31
    move-result v1

    .line 32
    .line 33
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    monitor-exit v0

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    monitor-enter v3

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-static {v5, p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 88
    move-result v7

    .line 89
    .line 90
    if-ne v7, v1, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->i(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 97
    move-result v0

    .line 98
    const/4 v1, 0x1

    .line 99
    add-int/2addr v0, v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->j(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 107
    :goto_0
    :try_start_3
    monitor-exit v6

    .line 108
    .line 109
    .line 110
    invoke-static {v2, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    monitor-exit v3

    .line 112
    .line 113
    if-eqz v1, :cond_0

    .line 114
    goto :goto_3

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_2

    .line 117
    :goto_1
    :try_start_4
    monitor-exit v6

    .line 118
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :goto_2
    monitor-exit v3

    .line 120
    throw p1

    .line 121
    :cond_2
    :goto_3
    return-object v4

    .line 122
    :catchall_2
    move-exception p1

    .line 123
    monitor-exit v0

    .line 124
    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "from"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 17
    .line 18
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 36
    move-result v1

    .line 37
    .line 38
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    monitor-exit v0

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    monitor-enter v3

    .line 65
    .line 66
    .line 67
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 77
    move-result-object v5

    .line 78
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-static {v4, p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 92
    move-result v6

    .line 93
    .line 94
    if-ne v6, v1, :cond_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->i(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 101
    move-result v0

    .line 102
    const/4 v1, 0x1

    .line 103
    add-int/2addr v0, v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->j(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    const/4 v1, 0x0

    .line 111
    :goto_0
    :try_start_3
    monitor-exit v5

    .line 112
    .line 113
    .line 114
    invoke-static {v2, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    monitor-exit v3

    .line 116
    .line 117
    if-eqz v1, :cond_0

    .line 118
    goto :goto_3

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :goto_1
    :try_start_4
    monitor-exit v5

    .line 122
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    :goto_2
    monitor-exit v3

    .line 124
    throw p1

    .line 125
    :cond_2
    :goto_3
    return-void

    .line 126
    :catchall_2
    move-exception p1

    .line 127
    monitor-exit v0

    .line 128
    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 31
    move-result v1

    .line 32
    .line 33
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    monitor-exit v0

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    monitor-enter v3

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-static {v5, p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 88
    move-result v7

    .line 89
    .line 90
    if-ne v7, v1, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->i(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 97
    move-result v0

    .line 98
    const/4 v1, 0x1

    .line 99
    add-int/2addr v0, v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->j(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 107
    :goto_0
    :try_start_3
    monitor-exit v6

    .line 108
    .line 109
    .line 110
    invoke-static {v2, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    monitor-exit v3

    .line 112
    .line 113
    if-eqz v1, :cond_0

    .line 114
    goto :goto_3

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_2

    .line 117
    :goto_1
    :try_start_4
    monitor-exit v6

    .line 118
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :goto_2
    monitor-exit v3

    .line 120
    throw p1

    .line 121
    :cond_2
    :goto_3
    return-object v4

    .line 122
    :catchall_2
    move-exception p1

    .line 123
    monitor-exit v0

    .line 124
    throw p1
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->k()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->l()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
