.class public final Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "SourceFile"


# instance fields
.field private final mergeParentObservers:Z

.field private final ownsPreviousSnapshot:Z

.field private final previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final specifiedReadObserver:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final specifiedWriteObserver:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Le8/l;Le8/l;ZZ)V
    .locals 4
    .param p1    # Landroidx/compose/runtime/snapshots/MutableSnapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->a()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->h()Le8/l;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->h()Le8/l;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p2, v1, p4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->k(Le8/l;Le8/l;Z)Le8/l;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->j()Le8/l;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->j()Le8/l;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-static {p3, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->l(Le8/l;Le8/l;)Le8/l;

    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Le8/l;Le8/l;)V

    .line 63
    .line 64
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 65
    .line 66
    iput-object p2, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->specifiedReadObserver:Le8/l;

    .line 67
    .line 68
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->specifiedWriteObserver:Le8/l;

    .line 69
    .line 70
    iput-boolean p4, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    .line 71
    .line 72
    iput-boolean p5, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->ownsPreviousSnapshot:Z

    .line 73
    return-void
.end method

.method private final S()Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "currentGlobalSnapshot.get()"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 20
    :cond_0
    return-object v0
.end method


# virtual methods
.method public C()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->C()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public E()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public O(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->b()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance p1, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 9
    throw p1
.end method

.method public P(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 10
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
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->h()Le8/l;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Le8/l;Le8/l;ZILjava/lang/Object;)Le8/l;

    .line 11
    move-result-object v6

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->j()Le8/l;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->l(Le8/l;Le8/l;)Le8/l;

    .line 19
    move-result-object v7

    .line 20
    .line 21
    iget-boolean p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3, v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->P(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    new-instance p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x1

    .line 36
    move-object v4, p1

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v4 .. v9}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Le8/l;Le8/l;ZZ)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v6, v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->P(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 48
    move-result-object p1

    .line 49
    :goto_0
    return-object p1
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

.method public U(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->s(Z)V

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->ownsPreviousSnapshot:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->d()V

    .line 16
    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->i()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public bridge synthetic l(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->T(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    .line 4
    return-void
.end method

.method public bridge synthetic m(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->U(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    .line 4
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->n()V

    .line 8
    return-void
.end method

.method public o(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->o(Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 13
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->b()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance p1, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 9
    throw p1
.end method

.method public u(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
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

.method public v(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 4
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
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->h()Le8/l;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Le8/l;Le8/l;ZILjava/lang/Object;)Le8/l;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->v(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->c(Landroidx/compose/runtime/snapshots/Snapshot;Le8/l;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->S()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->v(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 37
    move-result-object p1

    .line 38
    :goto_0
    return-object p1
.end method
