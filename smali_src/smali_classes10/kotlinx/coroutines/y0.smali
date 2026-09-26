.class public final Lkotlinx/coroutines/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n314#2,11:174\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n106#1:163,11\n127#1:174,11\n*E\n"
.end annotation


# direct methods
.method public static final a(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    cmp-long v0, p0, v0

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
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

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
    .line 26
    .line 27
    const-wide v1, 0x7fffffffffffffffL

    .line 28
    .line 29
    cmp-long v1, p0, v1

    .line 30
    .line 31
    if-gez v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlinx/coroutines/y0;->b(Lkotlin/coroutines/g;)Lkotlinx/coroutines/x0;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, p0, p1, v0}, Lkotlinx/coroutines/x0;->scheduleResumeAfterDelay(JLkotlinx/coroutines/o;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-ne p0, p1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-ne p0, p1, :cond_3

    .line 62
    return-object p0

    .line 63
    .line 64
    :cond_3
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 65
    return-object p0
.end method

.method public static final b(Lkotlin/coroutines/g;)Lkotlinx/coroutines/x0;
    .locals 1
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/coroutines/e;->Key:Lkotlin/coroutines/e$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    instance-of v0, p0, Lkotlinx/coroutines/x0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p0, Lkotlinx/coroutines/x0;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    .line 16
    :goto_0
    if-nez p0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/u0;->a()Lkotlinx/coroutines/x0;

    .line 20
    move-result-object p0

    .line 21
    :cond_1
    return-object p0
.end method

.method public static final c(J)J
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lk8/b;->Companion:Lk8/b$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lk8/b$a;->c()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, v0, v1}, Lk8/b;->i(JJ)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lk8/b;->r(J)J

    .line 16
    move-result-wide p0

    .line 17
    .line 18
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, v0, v1}, Lj8/m;->f(JJ)J

    .line 22
    move-result-wide p0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-wide/16 p0, 0x0

    .line 26
    :goto_0
    return-wide p0
.end method
