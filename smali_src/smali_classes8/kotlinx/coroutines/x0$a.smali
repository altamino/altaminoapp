.class public final Lkotlinx/coroutines/x0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n30#1:163,11\n*E\n"
.end annotation


# direct methods
.method public static a(Lkotlinx/coroutines/x0;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlinx/coroutines/x0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/x0;",
            "J",
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
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lkotlinx/coroutines/p;

    .line 12
    .line 13
    .line 14
    invoke-static {p3}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p1, p2, v0}, Lkotlinx/coroutines/x0;->scheduleResumeAfterDelay(JLkotlinx/coroutines/o;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-ne p0, p1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-ne p0, p1, :cond_2

    .line 45
    return-object p0

    .line 46
    .line 47
    :cond_2
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 48
    return-object p0
.end method

.method public static b(Lkotlinx/coroutines/x0;JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;
    .locals 0
    .param p0    # Lkotlinx/coroutines/x0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/u0;->a()Lkotlinx/coroutines/x0;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/x0;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
