.class public final Landroidx/compose/runtime/snapshots/GlobalSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/GlobalSnapshot\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,2107:1\n1682#2:2108\n1682#2:2110\n66#3:2109\n66#3:2111\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/GlobalSnapshot\n*L\n1288#1:2108\n1342#1:2110\n1288#1:2109\n1342#1:2111\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 4
    .param p2    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "invalid"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->g()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    xor-int/lit8 v1, v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->g()Ljava/util/List;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    move-object v1, v2

    .line 40
    .line 41
    :goto_0
    if-eqz v1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/collections/t;->J0(Ljava/util/List;)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    check-cast v3, Le8/l;

    .line 48
    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    new-instance v3, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1$1$1;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$1$1$1;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v3, v2

    .line 57
    :cond_2
    :goto_1
    monitor-exit v0

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1, p2, v2, v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Le8/l;Le8/l;)V

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v0

    .line 63
    throw p1
.end method


# virtual methods
.method public C()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method

.method public P(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedMutableSnapshot$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedMutableSnapshot$1;-><init>(Le8/l;Le8/l;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->t(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 12
    return-object p1
.end method

.method public S(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "snapshot"

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

.method public T(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "snapshot"

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

.method public d()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->p()V

    .line 9
    .line 10
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method public bridge synthetic l(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;->S(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    .line 4
    return-void
.end method

.method public bridge synthetic m(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;->T(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    .line 4
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->b()V

    .line 4
    return-void
.end method

.method public v(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/Snapshot;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1;-><init>(Le8/l;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->t(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
