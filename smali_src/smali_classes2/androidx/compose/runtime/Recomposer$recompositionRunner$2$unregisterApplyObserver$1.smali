.class final Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$recompositionRunner$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,1200:1\n66#2:1201\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1\n*L\n726#1:1201\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "changed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "<anonymous parameter 1>"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 19
    monitor-enter p2

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->L(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/flow/x;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Lkotlinx/coroutines/flow/x;->getValue()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 30
    .line 31
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-ltz v1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->H(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->s(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/o;

    .line 50
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    monitor-exit p2

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    sget-object p2, Lw7/v;->Companion:Lw7/v$a;

    .line 60
    .line 61
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 69
    :cond_1
    return-void

    .line 70
    :goto_1
    monitor-exit p2

    .line 71
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/util/Set;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2$unregisterApplyObserver$1;->a(Ljava/util/Set;Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 8
    .line 9
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 10
    return-object p1
.end method
