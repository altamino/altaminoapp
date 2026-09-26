.class public final Lio/ktor/client/engine/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/engine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngine$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Lio/ktor/client/engine/b;Li7/e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lio/ktor/client/engine/b$a;->d(Lio/ktor/client/engine/b;Li7/e;)V

    .line 4
    return-void
.end method

.method public static final synthetic b(Lio/ktor/client/engine/b;Li7/e;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/b$a;->e(Lio/ktor/client/engine/b;Li7/e;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lio/ktor/client/engine/b;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/client/engine/b$a;->f(Lio/ktor/client/engine/b;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static d(Lio/ktor/client/engine/b;Li7/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Li7/e;->g()Ljava/util/Set;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lio/ktor/client/engine/e;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lio/ktor/client/engine/b;->G()Ljava/util/Set;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string p1, "Engine doesn\'t support "

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    :cond_1
    return-void
.end method

.method private static e(Lio/ktor/client/engine/b;Li7/e;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/b;",
            "Li7/e;",
            "Lkotlin/coroutines/d<",
            "-",
            "Li7/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/client/engine/b$a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/engine/b$a$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/engine/b$a$a;->label:I

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
    iput v1, v0, Lio/ktor/client/engine/b$a$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/engine/b$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Lio/ktor/client/engine/b$a$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/client/engine/b$a$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/engine/b$a$a;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 53
    .line 54
    :cond_2
    iget-object p0, v0, Lio/ktor/client/engine/b$a$a;->L$1:Ljava/lang/Object;

    .line 55
    move-object p1, p0

    .line 56
    .line 57
    check-cast p1, Li7/e;

    .line 58
    .line 59
    iget-object p0, v0, Lio/ktor/client/engine/b$a$a;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lio/ktor/client/engine/b;

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 65
    :cond_3
    move-object v4, p0

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Li7/e;->d()Lkotlinx/coroutines/b2;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    iput-object p0, v0, Lio/ktor/client/engine/b$a$a;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p1, v0, Lio/ktor/client/engine/b$a$a;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput v4, v0, Lio/ktor/client/engine/b$a$a;->label:I

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p2, v0}, Lio/ktor/client/engine/i;->b(Lio/ktor/client/engine/b;Lkotlinx/coroutines/b2;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    if-ne p2, v1, :cond_3

    .line 86
    return-object v1

    .line 87
    .line 88
    :goto_1
    check-cast p2, Lkotlin/coroutines/g;

    .line 89
    .line 90
    new-instance p0, Lio/ktor/client/engine/j;

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p2}, Lio/ktor/client/engine/j;-><init>(Lkotlin/coroutines/g;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 97
    move-result-object v5

    .line 98
    const/4 v6, 0x0

    .line 99
    .line 100
    new-instance v7, Lio/ktor/client/engine/b$a$b;

    .line 101
    const/4 p0, 0x0

    .line 102
    .line 103
    .line 104
    invoke-direct {v7, v4, p1, p0}, Lio/ktor/client/engine/b$a$b;-><init>(Lio/ktor/client/engine/b;Li7/e;Lkotlin/coroutines/d;)V

    .line 105
    const/4 v8, 0x2

    .line 106
    const/4 v9, 0x0

    .line 107
    .line 108
    .line 109
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/v0;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    iput-object p0, v0, Lio/ktor/client/engine/b$a$a;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object p0, v0, Lio/ktor/client/engine/b$a$a;->L$1:Ljava/lang/Object;

    .line 115
    .line 116
    iput v3, v0, Lio/ktor/client/engine/b$a$a;->label:I

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v0}, Lkotlinx/coroutines/v0;->i(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 120
    move-result-object p2

    .line 121
    .line 122
    if-ne p2, v1, :cond_5

    .line 123
    return-object v1

    .line 124
    :cond_5
    :goto_2
    return-object p2
.end method

.method private static f(Lio/ktor/client/engine/b;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lkotlinx/coroutines/b2;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    .line 22
    :goto_0
    xor-int/lit8 p0, p0, 0x1

    .line 23
    return p0
.end method

.method public static g(Lio/ktor/client/engine/b;)Ljava/util/Set;
    .locals 0
    .param p0    # Lio/ktor/client/engine/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/b;",
            ")",
            "Ljava/util/Set<",
            "Lio/ktor/client/engine/e<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static h(Lio/ktor/client/engine/b;Lio/ktor/client/a;)V
    .locals 4
    .param p0    # Lio/ktor/client/engine/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "client"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/ktor/client/a;->p()Li7/i;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Li7/i;->Phases:Li7/i$a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Li7/i$a;->a()Lio/ktor/util/pipeline/h;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Lio/ktor/client/engine/b$a$c;

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p1, p0, v3}, Lio/ktor/client/engine/b$a$c;-><init>(Lio/ktor/client/a;Lio/ktor/client/engine/b;Lkotlin/coroutines/d;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 25
    return-void
.end method
