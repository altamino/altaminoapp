.class public final Landroidx/compose/animation/core/MutatorMutex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/MutatorMutex$Mutator;
    }
.end annotation


# instance fields
.field private final currentMutator:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/compose/animation/core/MutatorMutex$Mutator;",
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
    iput-object v0, p0, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

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
    iput-object v0, p0, Landroidx/compose/animation/core/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/a;

    .line 20
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/animation/core/MutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/animation/core/MutatorMutex;)Lkotlinx/coroutines/sync/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/a;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatorMutex$Mutator;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/MutatorMutex;->f(Landroidx/compose/animation/core/MutatorMutex$Mutator;)V

    .line 4
    return-void
.end method

.method public static synthetic e(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Le8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    sget-object p1, Landroidx/compose/animation/core/MutatePriority;->Default:Landroidx/compose/animation/core/MutatePriority;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/MutatorMutex;->d(Landroidx/compose/animation/core/MutatePriority;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final f(Landroidx/compose/animation/core/MutatorMutex$Mutator;)V
    .locals 2

    .line 1
    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/compose/animation/core/MutatorMutex$Mutator;->a(Landroidx/compose/animation/core/MutatorMutex$Mutator;)Z

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
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

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
    invoke-virtual {v0}, Landroidx/compose/animation/core/MutatorMutex$Mutator;->b()V

    .line 39
    :cond_3
    return-void
.end method


# virtual methods
.method public final d(Landroidx/compose/animation/core/MutatePriority;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/animation/core/MutatePriority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/MutatePriority;",
            "Le8/l<",
            "-",
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
    new-instance v0, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p0, p2, v1}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Landroidx/compose/animation/core/MutatePriority;Landroidx/compose/animation/core/MutatorMutex;Le8/l;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p3}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
