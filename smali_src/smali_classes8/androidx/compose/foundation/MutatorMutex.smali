.class public final Landroidx/compose/foundation/MutatorMutex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MutatorMutex$Mutator;
    }
.end annotation


# instance fields
.field private final currentMutator:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/compose/foundation/MutatorMutex$Mutator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/sync/c;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/a;

    .line 20
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/MutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/MutatorMutex;)Lkotlinx/coroutines/sync/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/a;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/foundation/MutatorMutex$Mutator;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/foundation/MutatorMutex;->e(Landroidx/compose/foundation/MutatorMutex$Mutator;)V

    .line 4
    return-void
.end method

.method private final e(Landroidx/compose/foundation/MutatorMutex$Mutator;)V
    .locals 2

    .line 1
    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/MutatorMutex$Mutator;->a(Landroidx/compose/foundation/MutatorMutex$Mutator;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 20
    .line 21
    const-string v0, "Current mutation had a higher priority"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    .line 27
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0, p1}, Landroidx/compose/animation/core/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/foundation/MutatorMutex$Mutator;->b()V

    .line 39
    :cond_3
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .param p2    # Landroidx/compose/foundation/MutatePriority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/foundation/MutatePriority;",
            "Le8/p<",
            "-TT;-",
            "Lkotlin/coroutines/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p2

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p1

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6, p4}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
