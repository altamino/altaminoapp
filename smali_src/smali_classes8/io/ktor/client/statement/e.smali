.class public final Lio/ktor/client/statement/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpResponse.kt\nio/ktor/client/statement/HttpResponseKt\n+ 2 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,96:1\n156#2:97\n156#2:101\n17#3,3:98\n17#3,3:102\n*S KotlinDebug\n*F\n+ 1 HttpResponse.kt\nio/ktor/client/statement/HttpResponseKt\n*L\n87#1:97\n95#1:101\n87#1:98,3\n95#1:102,3\n*E\n"
.end annotation


# direct methods
.method public static final a(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p0    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/statement/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/utils/io/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lio/ktor/client/statement/e$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/statement/e$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/statement/e$a;->label:I

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
    iput v1, v0, Lio/ktor/client/statement/e$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/statement/e$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Lio/ktor/client/statement/e$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lio/ktor/client/statement/e$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/statement/e$a;->label:I

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
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    const-class p1, Lio/ktor/utils/io/g;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/q0;->k(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {v4, p1, v2}, Lo7/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lo7/a;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    iput v3, v0, Lio/ktor/client/statement/e$a;->label:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v0}, Lio/ktor/client/call/b;->a(Lo7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    if-ne p1, v1, :cond_3

    .line 83
    return-object v1

    .line 84
    .line 85
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 86
    .line 87
    check-cast p1, Lio/ktor/utils/io/g;

    .line 88
    return-object p1

    .line 89
    .line 90
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 91
    .line 92
    const-string p1, "null cannot be cast to non-null type io.ktor.utils.io.ByteReadChannel"

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
.end method

.method public static final b(Lio/ktor/client/statement/c;Ljava/nio/charset/Charset;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p0    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/charset/Charset;
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
            "Lio/ktor/client/statement/c;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/client/statement/e$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/statement/e$b;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/statement/e$b;->label:I

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
    iput v1, v0, Lio/ktor/client/statement/e$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/statement/e$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Lio/ktor/client/statement/e$b;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/client/statement/e$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/statement/e$b;->label:I

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
    iget-object p0, v0, Lio/ktor/client/statement/e$b;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/nio/charset/CharsetDecoder;

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lio/ktor/http/s;->a(Lio/ktor/http/q;)Ljava/nio/charset/Charset;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object p1, p2

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    const-class p2, Lr7/j;

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Lkotlin/jvm/internal/q0;->k(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-static {v4, p2, v2}, Lo7/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Lo7/a;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    iput-object p1, v0, Lio/ktor/client/statement/e$b;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    iput v3, v0, Lio/ktor/client/statement/e$b;->label:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p2, v0}, Lio/ktor/client/call/b;->a(Lo7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    if-ne p2, v1, :cond_4

    .line 101
    return-object v1

    .line 102
    :cond_4
    move-object p0, p1

    .line 103
    .line 104
    :goto_2
    if-eqz p2, :cond_5

    .line 105
    .line 106
    check-cast p2, Lr7/j;

    .line 107
    .line 108
    const-string p1, "decoder"

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const/4 p1, 0x2

    .line 113
    const/4 v0, 0x0

    .line 114
    const/4 v1, 0x0

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p2, v1, p1, v0}, Lq7/b;->b(Ljava/nio/charset/CharsetDecoder;Lr7/m;IILjava/lang/Object;)Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    .line 121
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 122
    .line 123
    const-string p1, "null cannot be cast to non-null type io.ktor.utils.io.core.ByteReadPacket"

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p0
.end method

.method public static synthetic c(Lio/ktor/client/statement/c;Ljava/nio/charset/Charset;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    sget-object p1, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/client/statement/e;->b(Lio/ktor/client/statement/c;Ljava/nio/charset/Charset;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final d(Lio/ktor/client/statement/c;)V
    .locals 1
    .param p0    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    check-cast p0, Lkotlinx/coroutines/a0;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lkotlinx/coroutines/a0;->complete()Z

    .line 24
    return-void
.end method

.method public static final e(Lio/ktor/client/statement/c;)Li7/c;
    .locals 1
    .param p0    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
