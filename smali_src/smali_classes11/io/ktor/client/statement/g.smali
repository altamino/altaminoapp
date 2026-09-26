.class public final Lio/ktor/client/statement/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpStatement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n+ 2 HttpTimeout.kt\nio/ktor/client/plugins/HttpTimeoutKt\n+ 3 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n269#2,4:146\n269#2,2:150\n271#2,2:156\n269#2,2:158\n271#2,2:164\n269#2,4:166\n156#3:152\n156#3:160\n17#4,3:153\n17#4,3:161\n800#5,11:170\n1855#5,2:181\n*S KotlinDebug\n*F\n+ 1 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n*L\n46#1:146,4\n74#1:150,2\n74#1:156,2\n90#1:158,2\n90#1:164,2\n105#1:166,4\n77#1:152\n93#1:160\n77#1:153,3\n93#1:161,3\n135#1:170,11\n136#1:181,2\n*E\n"
.end annotation


# instance fields
.field private final builder:Li7/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final client:Lio/ktor/client/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li7/d;Lio/ktor/client/a;)V
    .locals 1
    .param p1    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "builder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "client"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lio/ktor/client/statement/g;->builder:Li7/d;

    .line 16
    .line 17
    iput-object p2, p0, Lio/ktor/client/statement/g;->client:Lio/ktor/client/a;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lio/ktor/client/statement/g;->a()V

    .line 21
    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/statement/g;->builder:Li7/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Li7/d;->b()Lio/ktor/util/b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lio/ktor/client/engine/f;->a()Lio/ktor/util/a;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/util/Map;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    instance-of v3, v2, Lio/ktor/client/plugins/m;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    check-cast v1, Lio/ktor/client/plugins/m;

    .line 68
    .line 69
    iget-object v2, p0, Lio/ktor/client/statement/g;->client:Lio/ktor/client/a;

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v1}, Lio/ktor/client/plugins/n;->c(Lio/ktor/client/a;Lio/ktor/client/plugins/m;)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string v2, "Consider installing "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, " plugin because the request requires it to be installed"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v1

    .line 109
    :cond_3
    return-void
.end method


# virtual methods
.method public final b(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lio/ktor/client/statement/c;
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
    instance-of v0, p2, Lio/ktor/client/statement/g$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/statement/g$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/statement/g$a;->label:I

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
    iput v1, v0, Lio/ktor/client/statement/g$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/statement/g$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/client/statement/g$a;-><init>(Lio/ktor/client/statement/g;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/client/statement/g$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/statement/g$a;->label:I

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
    iget-object p1, v0, Lio/ktor/client/statement/g$a;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lkotlinx/coroutines/a0;

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    sget-object v2, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, v2}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 70
    .line 71
    check-cast p2, Lkotlinx/coroutines/a0;

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Lkotlinx/coroutines/a0;->complete()Z

    .line 75
    .line 76
    .line 77
    :try_start_0
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->a()Lio/ktor/utils/io/g;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lio/ktor/utils/io/i;->a(Lio/ktor/utils/io/g;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    :catchall_0
    iput-object p2, v0, Lio/ktor/client/statement/g$a;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput v3, v0, Lio/ktor/client/statement/g$a;->label:I

    .line 86
    .line 87
    .line 88
    invoke-interface {p2, v0}, Lkotlinx/coroutines/b2;->t0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-ne p1, v1, :cond_3

    .line 92
    return-object v1

    .line 93
    .line 94
    :cond_3
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 95
    return-object p1
.end method

.method public final c(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-",
            "Lio/ktor/client/statement/c;",
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
    instance-of v0, p2, Lio/ktor/client/statement/g$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/statement/g$b;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/statement/g$b;->label:I

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
    iput v1, v0, Lio/ktor/client/statement/g$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/statement/g$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/client/statement/g$b;-><init>(Lio/ktor/client/statement/g;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/client/statement/g$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/statement/g$b;->label:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x4

    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    if-eq v2, v7, :cond_4

    .line 42
    .line 43
    if-eq v2, v6, :cond_3

    .line 44
    .line 45
    if-eq v2, v5, :cond_2

    .line 46
    .line 47
    if-eq v2, v4, :cond_1

    .line 48
    .line 49
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    :cond_1
    iget-object p1, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    :catch_0
    move-exception p1

    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_2
    iget-object p1, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_3
    iget-object p1, v0, Lio/ktor/client/statement/g$b;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Lio/ktor/client/statement/c;

    .line 78
    .line 79
    iget-object v2, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Lio/ktor/client/statement/g;

    .line 82
    .line 83
    .line 84
    :try_start_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p2

    .line 87
    move-object v8, p2

    .line 88
    move-object p2, p1

    .line 89
    move-object p1, v8

    .line 90
    goto :goto_4

    .line 91
    .line 92
    :cond_4
    iget-object p1, v0, Lio/ktor/client/statement/g$b;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Le8/p;

    .line 95
    .line 96
    iget-object v2, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Lio/ktor/client/statement/g;

    .line 99
    .line 100
    .line 101
    :try_start_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 102
    goto :goto_1

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    :try_start_4
    iput-object p0, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object p1, v0, Lio/ktor/client/statement/g$b;->L$1:Ljava/lang/Object;

    .line 110
    .line 111
    iput v7, v0, Lio/ktor/client/statement/g$b;->label:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lio/ktor/client/statement/g;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    if-ne p2, v1, :cond_6

    .line 118
    return-object v1

    .line 119
    :cond_6
    move-object v2, p0

    .line 120
    .line 121
    :goto_1
    check-cast p2, Lio/ktor/client/statement/c;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 122
    .line 123
    :try_start_5
    iput-object v2, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object p2, v0, Lio/ktor/client/statement/g$b;->L$1:Ljava/lang/Object;

    .line 126
    .line 127
    iput v6, v0, Lio/ktor/client/statement/g$b;->label:I

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    .line 133
    if-ne p1, v1, :cond_7

    .line 134
    return-object v1

    .line 135
    :cond_7
    move-object v8, p2

    .line 136
    move-object p2, p1

    .line 137
    move-object p1, v8

    .line 138
    .line 139
    :goto_2
    :try_start_6
    iput-object p2, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v3, v0, Lio/ktor/client/statement/g$b;->L$1:Ljava/lang/Object;

    .line 142
    .line 143
    iput v5, v0, Lio/ktor/client/statement/g$b;->label:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p1, v0}, Lio/ktor/client/statement/g;->b(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    if-ne p1, v1, :cond_8

    .line 150
    return-object v1

    .line 151
    :cond_8
    move-object p1, p2

    .line 152
    :goto_3
    return-object p1

    .line 153
    :catchall_1
    move-exception p1

    .line 154
    .line 155
    :goto_4
    iput-object p1, v0, Lio/ktor/client/statement/g$b;->L$0:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v3, v0, Lio/ktor/client/statement/g$b;->L$1:Ljava/lang/Object;

    .line 158
    .line 159
    iput v4, v0, Lio/ktor/client/statement/g$b;->label:I

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p2, v0}, Lio/ktor/client/statement/g;->b(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    if-ne p2, v1, :cond_9

    .line 166
    return-object v1

    .line 167
    :cond_9
    :goto_5
    throw p1
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    .line 168
    .line 169
    .line 170
    :goto_6
    invoke-static {p1}, Lio/ktor/client/utils/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 171
    move-result-object p1

    .line 172
    throw p1
.end method

.method public final d(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/statement/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/statement/g$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/statement/g$c;-><init>(Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lio/ktor/client/statement/g;->c(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/statement/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lio/ktor/client/statement/g$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/statement/g$d;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/statement/g$d;->label:I

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
    iput v1, v0, Lio/ktor/client/statement/g$d;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/statement/g$d;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lio/ktor/client/statement/g$d;-><init>(Lio/ktor/client/statement/g;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lio/ktor/client/statement/g$d;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/statement/g$d;->label:I

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
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    :try_start_1
    new-instance p1, Li7/d;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1}, Li7/d;-><init>()V

    .line 60
    .line 61
    iget-object v2, p0, Lio/ktor/client/statement/g;->builder:Li7/d;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Li7/d;->o(Li7/d;)Li7/d;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iget-object v2, p0, Lio/ktor/client/statement/g;->client:Lio/ktor/client/a;

    .line 68
    .line 69
    iput v3, v0, Lio/ktor/client/statement/g$d;->label:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1, v0}, Lio/ktor/client/a;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-ne p1, v1, :cond_3

    .line 76
    return-object v1

    .line 77
    .line 78
    :cond_3
    :goto_1
    check-cast p1, Lio/ktor/client/call/b;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 82
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    return-object p1

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-static {p1}, Lio/ktor/client/utils/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    move-result-object p1

    .line 88
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "HttpStatement["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lio/ktor/client/statement/g;->builder:Li7/d;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Li7/d;->h()Lio/ktor/http/f0;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const/16 v1, 0x5d

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
