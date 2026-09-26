.class public final Landroidx/compose/ui/platform/AndroidUiFrameClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/MonotonicFrameClock;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidUiFrameClock.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidUiFrameClock.android.kt\nandroidx/compose/ui/platform/AndroidUiFrameClock\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,53:1\n314#2,11:54\n*S KotlinDebug\n*F\n+ 1 AndroidUiFrameClock.android.kt\nandroidx/compose/ui/platform/AndroidUiFrameClock\n*L\n31#1:54,11\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final choreographer:Landroid/view/Choreographer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 1
    .param p1    # Landroid/view/Choreographer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "choreographer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Landroid/view/Choreographer;

    .line 11
    return-void
.end method


# virtual methods
.method public final c()Landroid/view/Choreographer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->a(Landroidx/compose/runtime/MonotonicFrameClock;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/g$b;",
            ">(",
            "Lkotlin/coroutines/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->b(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic getKey()Lkotlin/coroutines/g$c;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/b;->a(Landroidx/compose/runtime/MonotonicFrameClock;)Lkotlin/coroutines/g$c;

    move-result-object v0

    return-object v0
.end method

.method public k(Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
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
            "Ljava/lang/Long;",
            "+TR;>;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lkotlin/coroutines/e;->Key:Lkotlin/coroutines/e$b;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    new-instance v1, Lkotlinx/coroutines/p;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lkotlinx/coroutines/p;->x()V

    .line 32
    .line 33
    new-instance v2, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v1, p0, p1}, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;-><init>(Lkotlinx/coroutines/o;Landroidx/compose/ui/platform/AndroidUiFrameClock;Le8/l;)V

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->L0()Landroid/view/Choreographer;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidUiFrameClock;->c()Landroid/view/Choreographer;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroidx/compose/ui/platform/AndroidUiDispatcher;->Q0(Landroid/view/Choreographer$FrameCallback;)V

    .line 56
    .line 57
    new-instance p1, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$1;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0, v2}, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$1;-><init>(Landroidx/compose/ui/platform/AndroidUiDispatcher;Landroid/view/Choreographer$FrameCallback;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, p1}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidUiFrameClock;->c()Landroid/view/Choreographer;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 72
    .line 73
    new-instance p1, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$2;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p0, v2}, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$2;-><init>(Landroidx/compose/ui/platform/AndroidUiFrameClock;Landroid/view/Choreographer$FrameCallback;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, p1}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    if-ne p1, v0, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 93
    :cond_2
    return-object p1
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g$c<",
            "*>;)",
            "Lkotlin/coroutines/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->c(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->d(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
