.class public final Lkotlinx/coroutines/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_THREAD_NAME_SEPARATOR:Ljava/lang/String; = " @"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Z)Lkotlin/coroutines/g;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/j0;->c(Lkotlin/coroutines/g;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lkotlinx/coroutines/j0;->c(Lkotlin/coroutines/g;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/p0;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 23
    .line 24
    iput-object p1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 27
    .line 28
    new-instance v2, Lkotlinx/coroutines/j0$b;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v0, p2}, Lkotlinx/coroutines/j0$b;-><init>(Lkotlin/jvm/internal/p0;Z)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1, v2}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    check-cast p0, Lkotlin/coroutines/g;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object p2, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lkotlin/coroutines/g;

    .line 44
    .line 45
    sget-object v1, Lkotlinx/coroutines/j0$a;->INSTANCE:Lkotlinx/coroutines/j0$a;

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, p1, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lkotlin/coroutines/g;

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static final b(Lkotlin/coroutines/g;)Ljava/lang/String;
    .locals 0
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final c(Lkotlin/coroutines/g;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    .line 4
    sget-object v1, Lkotlinx/coroutines/j0$c;->INSTANCE:Lkotlinx/coroutines/j0$c;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static final d(Lkotlin/coroutines/g;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 1
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/j0;->c(Lkotlin/coroutines/g;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Z)Lkotlin/coroutines/g;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 1
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Z)Lkotlin/coroutines/g;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eq p0, p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lkotlin/coroutines/e;->Key:Lkotlin/coroutines/e$b;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 31
    move-result-object p0

    .line 32
    :cond_0
    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/jvm/internal/e;)Lkotlinx/coroutines/h3;
    .locals 2
    .param p0    # Lkotlin/coroutines/jvm/internal/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/e;",
            ")",
            "Lkotlinx/coroutines/h3<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/a1;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_1
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/e;->getCallerFrame()Lkotlin/coroutines/jvm/internal/e;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    if-nez p0, :cond_2

    .line 13
    return-object v1

    .line 14
    .line 15
    :cond_2
    instance-of v0, p0, Lkotlinx/coroutines/h3;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p0, Lkotlinx/coroutines/h3;

    .line 20
    return-object p0
.end method

.method public static final g(Lkotlin/coroutines/d;Lkotlin/coroutines/g;Ljava/lang/Object;)Lkotlinx/coroutines/h3;
    .locals 2
    .param p0    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "*>;",
            "Lkotlin/coroutines/g;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/coroutines/h3<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lkotlinx/coroutines/i3;->INSTANCE:Lkotlinx/coroutines/i3;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lkotlinx/coroutines/j0;->f(Lkotlin/coroutines/jvm/internal/e;)Lkotlinx/coroutines/h3;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/h3;->b1(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    .line 26
    :cond_1
    return-object p0

    .line 27
    :cond_2
    return-object v1
.end method
