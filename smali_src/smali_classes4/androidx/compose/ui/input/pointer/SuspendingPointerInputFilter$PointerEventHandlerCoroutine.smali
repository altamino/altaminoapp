.class final Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
.implements Landroidx/compose/ui/unit/Density;
.implements Lkotlin/coroutines/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerEventHandlerCoroutine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Landroidx/compose/ui/unit/Density;",
        "Lkotlin/coroutines/d<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuspendingPointerInputFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuspendingPointerInputFilter.kt\nandroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine\n+ 2 JvmActuals.jvm.kt\nandroidx/compose/ui/platform/JvmActuals_jvmKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,640:1\n34#2:641\n735#3,2:642\n314#4,11:644\n*S KotlinDebug\n*F\n+ 1 SuspendingPointerInputFilter.kt\nandroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine\n*L\n579#1:641\n580#1:642,2\n587#1:644,11\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

.field private awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final completion:Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/d<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pointerAwaiter:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;Lkotlin/coroutines/d;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "completion"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->completion:Lkotlin/coroutines/d;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 19
    .line 20
    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->context:Lkotlin/coroutines/g;

    .line 23
    return-void
.end method

.method public static final synthetic p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;)Lkotlinx/coroutines/o;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/o;

    .line 3
    return-object p0
.end method

.method public static final synthetic u(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 3
    return-void
.end method

.method public static final synthetic x(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lkotlinx/coroutines/o;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/o;

    .line 3
    return-void
.end method


# virtual methods
.method public E0()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->E0()F

    move-result v0

    return v0
.end method

.method public F(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
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
            ">(J",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    :try_start_1
    iput v3, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->m0(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 58
    move-result-object p4
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    if-ne p4, v1, :cond_3

    .line 61
    return-object v1

    .line 62
    :catch_0
    const/4 p4, 0x0

    .line 63
    :cond_3
    :goto_1
    return-object p4
.end method

.method public final H(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/o;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lkotlinx/coroutines/o;->e(Ljava/lang/Throwable;)Z

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/o;

    .line 11
    return-void
.end method

.method public H0(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->H0(F)F

    move-result p1

    return p1
.end method

.method public final I(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "pass"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 13
    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/o;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/o;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method

.method public L0(J)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->L0(J)I

    move-result p1

    return p1
.end method

.method public P(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->P(F)F

    move-result p1

    return p1
.end method

.method public X(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->X(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->g0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->context:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getDensity()F

    move-result v0

    return v0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i0()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->i0()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public j(I)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->j(I)F

    move-result p1

    return p1
.end method

.method public j0(F)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->j0(F)I

    move-result p1

    return p1
.end method

.method public m0(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 11
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
            ">(J",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lkotlinx/coroutines/b2;

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    cmp-long p4, p1, v5

    .line 64
    .line 65
    if-gtz p4, :cond_3

    .line 66
    .line 67
    iget-object p4, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/o;

    .line 68
    .line 69
    if-eqz p4, :cond_3

    .line 70
    .line 71
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 72
    .line 73
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, p1, p2}, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;-><init>(J)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-interface {p4, v2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 88
    .line 89
    :cond_3
    iget-object p4, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->y0()Lkotlinx/coroutines/o0;

    .line 93
    move-result-object v5

    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    .line 97
    new-instance v8, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1;

    .line 98
    .line 99
    .line 100
    invoke-direct {v8, p1, p2, p0, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1;-><init>(JLandroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lkotlin/coroutines/d;)V

    .line 101
    const/4 v9, 0x3

    .line 102
    const/4 v10, 0x0

    .line 103
    .line 104
    .line 105
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    :try_start_1
    iput-object p1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    iput v3, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 111
    .line 112
    .line 113
    invoke-interface {p3, p0, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    if-ne p4, v1, :cond_4

    .line 117
    return-object v1

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_1
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 121
    return-object p4

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 125
    throw p2
.end method

.method public p0(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->p0(J)F

    move-result p1

    return p1
.end method

.method public q(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->q(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->r0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->r0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 17
    .line 18
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->completion:Lkotlin/coroutines/d;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0

    .line 28
    throw p1
.end method

.method public s(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->s(J)F

    move-result p1

    return p1
.end method

.method public u0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
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
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

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
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->u(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->x(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lkotlinx/coroutines/o;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 33
    :cond_0
    return-object p1
.end method

.method public v0()Landroidx/compose/ui/input/pointer/PointerEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->l0(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
