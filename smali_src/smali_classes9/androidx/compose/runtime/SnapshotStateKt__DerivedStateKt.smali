.class final synthetic Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 2 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,257:1\n32#2,6:258\n32#2,6:264\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n*L\n209#1:258,6\n213#1:264,6\n*E\n"
.end annotation


# static fields
.field private static final derivedStateObservers:Landroidx/compose/runtime/SnapshotThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotThreadLocal<",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "Lw7/u<",
            "Le8/l<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Lw7/l0;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final isCalculationBlockRunning:Landroidx/compose/runtime/SnapshotThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/runtime/SnapshotThreadLocal;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers:Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/compose/runtime/SnapshotThreadLocal;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->isCalculationBlockRunning:Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 15
    return-void
.end method

.method public static final synthetic a()Landroidx/compose/runtime/SnapshotThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers:Landroidx/compose/runtime/SnapshotThreadLocal;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/runtime/SnapshotThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->isCalculationBlockRunning:Landroidx/compose/runtime/SnapshotThreadLocal;

    return-object v0
.end method

.method public static final c(Le8/a;)Landroidx/compose/runtime/State;
    .locals 1
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/a<",
            "+TT;>;)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "calculation"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Le8/a;)V

    .line 11
    return-object v0
.end method

.method public static final d(Le8/l;Le8/l;Le8/a;)V
    .locals 3
    .param p0    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/l<",
            "-",
            "Landroidx/compose/runtime/State<",
            "*>;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/runtime/State<",
            "*>;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "start"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "done"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "block"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers:Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->b()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;->add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Le8/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 56
    return-void

    .line 57
    .line 58
    :goto_1
    sget-object p1, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers:Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 62
    throw p0
.end method
