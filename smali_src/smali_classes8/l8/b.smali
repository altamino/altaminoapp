.class public final Ll8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUndispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n+ 2 ProbesSupport.kt\nkotlinx/coroutines/internal/ProbesSupportKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,127:1\n55#1:128\n56#1,11:130\n55#1:141\n56#1,2:143\n58#1,9:150\n55#1:159\n56#1,2:161\n58#1,9:168\n97#1,4:178\n114#1,6:182\n120#1,5:190\n97#1,4:195\n114#1,6:199\n120#1,5:207\n11#2:129\n11#2:142\n11#2:160\n11#2:177\n95#3,5:145\n95#3,5:163\n61#4,2:188\n61#4,2:205\n61#4,2:212\n61#4,2:214\n*S KotlinDebug\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n*L\n18#1:128\n18#1:130,11\n29#1:141\n29#1:143,2\n29#1:150,9\n42#1:159\n42#1:161,2\n42#1:168,9\n77#1:178,4\n77#1:182,6\n77#1:190,5\n88#1:195,4\n88#1:199,6\n88#1:207,5\n18#1:129\n29#1:142\n42#1:160\n55#1:177\n30#1:145,5\n43#1:163,5\n77#1:188,2\n88#1:205,2\n119#1:212,2\n120#1:214,2\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 3
    .param p0    # Le8/p;
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
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 8
    move-result-object p2

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/m0;->c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    check-cast p0, Le8/p;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_2
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    if-eq p0, p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    .line 46
    .line 47
    :try_start_3
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/m0;->a(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 48
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .line 50
    :goto_0
    sget-object p1, Lw7/v;->Companion:Lw7/v$a;

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 62
    :cond_0
    :goto_1
    return-void
.end method

.method public static final b(Lkotlinx/coroutines/internal/e0;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlinx/coroutines/internal/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/e0<",
            "-TT;>;TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 5
    move-result-object p2

    .line 6
    .line 7
    check-cast p2, Le8/p;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1, p0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    .line 15
    new-instance p2, Lkotlinx/coroutines/c0;

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p1, v1, v0, v2}, Lkotlinx/coroutines/c0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/k;)V

    .line 21
    move-object p1, p2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->x0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    sget-object p1, Lkotlinx/coroutines/k2;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/i0;

    .line 39
    .line 40
    if-ne p0, p1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    instance-of p1, p0, Lkotlinx/coroutines/c0;

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lkotlinx/coroutines/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    :goto_1
    return-object p0

    .line 55
    .line 56
    :cond_2
    check-cast p0, Lkotlinx/coroutines/c0;

    .line 57
    .line 58
    iget-object p0, p0, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 59
    throw p0
.end method

.method public static final c(Lkotlinx/coroutines/internal/e0;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlinx/coroutines/internal/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/e0<",
            "-TT;>;TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/v0;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 5
    move-result-object p2

    .line 6
    .line 7
    check-cast p2, Le8/p;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1, p0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    .line 15
    new-instance p2, Lkotlinx/coroutines/c0;

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p1, v1, v0, v2}, Lkotlinx/coroutines/c0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/k;)V

    .line 21
    move-object p1, p2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_2

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->x0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    sget-object v0, Lkotlinx/coroutines/k2;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/i0;

    .line 39
    .line 40
    if-ne p2, v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_1
    instance-of v0, p2, Lkotlinx/coroutines/c0;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    check-cast p2, Lkotlinx/coroutines/c0;

    .line 52
    .line 53
    iget-object p2, p2, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 54
    .line 55
    instance-of v0, p2, Lkotlinx/coroutines/d3;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    move-object v0, p2

    .line 59
    .line 60
    check-cast v0, Lkotlinx/coroutines/d3;

    .line 61
    .line 62
    iget-object v0, v0, Lkotlinx/coroutines/d3;->coroutine:Lkotlinx/coroutines/b2;

    .line 63
    .line 64
    if-ne v0, p0, :cond_3

    .line 65
    .line 66
    instance-of p0, p1, Lkotlinx/coroutines/c0;

    .line 67
    .line 68
    if-nez p0, :cond_2

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    check-cast p1, Lkotlinx/coroutines/c0;

    .line 72
    .line 73
    iget-object p0, p1, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 74
    throw p0

    .line 75
    :cond_3
    throw p2

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-static {p2}, Lkotlinx/coroutines/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    :goto_1
    move-object p0, p1

    .line 81
    :goto_2
    return-object p0
.end method
