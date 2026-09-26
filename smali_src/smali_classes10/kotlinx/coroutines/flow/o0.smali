.class final Lkotlinx/coroutines/flow/o0;
.super Lkotlinx/coroutines/flow/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/flow/internal/d<",
        "Lkotlinx/coroutines/flow/m0<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,428:1\n1#2:429\n314#3,11:430\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n*L\n298#1:430,11\n*E\n"
.end annotation


# static fields
.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lkotlinx/coroutines/flow/o0;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/d;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic c()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/flow/m0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/o0;->d(Lkotlinx/coroutines/flow/m0;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Lkotlin/coroutines/d;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/flow/m0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/o0;->f(Lkotlinx/coroutines/flow/m0;)[Lkotlin/coroutines/d;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d(Lkotlinx/coroutines/flow/m0;)Z
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/m0<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->b()Lkotlinx/coroutines/internal/i0;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public final e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/flow/o0;->c()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->b()Lkotlinx/coroutines/internal/i0;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p0, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 30
    .line 31
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    if-ne v0, p1, :cond_2

    .line 58
    return-object v0

    .line 59
    .line 60
    :cond_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 61
    return-object p1
.end method

.method public f(Lkotlinx/coroutines/flow/m0;)[Lkotlin/coroutines/d;
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/m0<",
            "*>;)[",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    sget-object p1, Lkotlinx/coroutines/flow/internal/c;->EMPTY_RESUMES:[Lkotlin/coroutines/d;

    .line 9
    return-object p1
.end method

.method public final g()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->c()Lkotlinx/coroutines/internal/i0;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->b()Lkotlinx/coroutines/internal/i0;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    if-ne v1, v2, :cond_3

    .line 23
    .line 24
    sget-object v2, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->c()Lkotlinx/coroutines/internal/i0;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    return-void

    .line 36
    .line 37
    :cond_3
    sget-object v2, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->b()Lkotlinx/coroutines/internal/i0;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    check-cast v1, Lkotlinx/coroutines/p;

    .line 50
    .line 51
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 52
    .line 53
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public final h()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/flow/o0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->b()Lkotlinx/coroutines/internal/i0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/flow/n0;->c()Lkotlinx/coroutines/internal/i0;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

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
