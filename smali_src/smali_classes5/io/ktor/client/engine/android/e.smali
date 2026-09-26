.class public final Lio/ktor/client/engine/android/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidURLConnectionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidURLConnectionUtils.kt\nio/ktor/client/engine/android/AndroidURLConnectionUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/net/HttpURLConnection;Lkotlin/coroutines/g;Li7/e;)Lio/ktor/utils/io/g;
    .locals 4
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/e;
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
    const-string v0, "callContext"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "request"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    const/16 v1, 0x2000

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    instance-of v3, v2, Ljava/io/BufferedInputStream;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v2, Ljava/io/BufferedInputStream;

    .line 31
    move-object v0, v2

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    move-object v0, v3

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    check-cast p0, Ljava/io/BufferedInputStream;

    .line 52
    move-object v0, p0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 59
    .line 60
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lio/ktor/util/cio/a;->a()Lt7/g;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/h;->a(Ljava/io/InputStream;Lkotlin/coroutines/g;Lt7/g;)Lio/ktor/utils/io/g;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p0, p2}, Lio/ktor/client/network/sockets/c;->a(Lkotlinx/coroutines/o0;Lio/ktor/utils/io/g;Li7/e;)Lio/ktor/utils/io/g;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    if-eqz p0, :cond_3

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_3
    sget-object p0, Lio/ktor/utils/io/g;->Companion:Lio/ktor/utils/io/g$a;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lio/ktor/utils/io/g$a;->a()Lio/ktor/utils/io/g;

    .line 87
    move-result-object p0

    .line 88
    :goto_1
    return-object p0
.end method

.method private static final b(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p0, Ljava/net/ConnectException;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    const-string v3, "timed out"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    :cond_1
    return v1
.end method

.method private static final c(Ljava/net/HttpURLConnection;Lio/ktor/client/plugins/y$a;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lio/ktor/client/plugins/y$a;->d()Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x7fffffffffffffffL

    .line 16
    .line 17
    cmp-long p1, v0, v2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/net/URLConnection;->getConnectTimeout()I

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/net/URLConnection;->getConnectTimeout()I

    .line 29
    move-result p1

    .line 30
    int-to-long v2, p1

    .line 31
    .line 32
    cmp-long p1, v2, v0

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v0, v1}, Lio/ktor/client/plugins/z;->d(J)I

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 42
    :cond_1
    return-void
.end method

.method public static final d(Ljava/net/HttpURLConnection;Li7/e;)V
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Li7/e;
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
    const-string v0, "requestData"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Lio/ktor/client/plugins/y;->Plugin:Lio/ktor/client/plugins/y$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Li7/e;->c(Lio/ktor/client/engine/e;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lio/ktor/client/plugins/y$a;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lio/ktor/client/plugins/y$a;->c()Ljava/lang/Long;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lio/ktor/client/plugins/z;->d(J)I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Lio/ktor/client/plugins/y$a;->e()Ljava/lang/Long;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 47
    move-result-wide v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lio/ktor/client/plugins/z;->d(J)I

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {p0, p1}, Lio/ktor/client/engine/android/e;->c(Ljava/net/HttpURLConnection;Lio/ktor/client/plugins/y$a;)V

    .line 58
    :cond_2
    return-void
.end method

.method public static final e(Ljava/net/HttpURLConnection;Li7/e;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Li7/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/HttpURLConnection;",
            "Li7/e;",
            "Le8/l<",
            "-",
            "Ljava/net/HttpURLConnection;",
            "+TT;>;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lio/ktor/client/engine/android/e$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/engine/android/e$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/engine/android/e$a;->label:I

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
    iput v1, v0, Lio/ktor/client/engine/android/e$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/engine/android/e$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Lio/ktor/client/engine/android/e$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lio/ktor/client/engine/android/e$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/engine/android/e$a;->label:I

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
    iget-object p0, v0, Lio/ktor/client/engine/android/e$a;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Throwable;

    .line 42
    .line 43
    iget-object p1, v0, Lio/ktor/client/engine/android/e$a;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Li7/e;

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-interface {p2, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    return-object p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    .line 68
    iput-object p1, v0, Lio/ktor/client/engine/android/e$a;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object p0, v0, Lio/ktor/client/engine/android/e$a;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    iput v3, v0, Lio/ktor/client/engine/android/e$a;->label:I

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlinx/coroutines/l3;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    if-ne p2, v1, :cond_3

    .line 79
    return-object v1

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_1
    invoke-static {p0}, Lio/ktor/client/engine/android/e;->b(Ljava/lang/Throwable;)Z

    .line 83
    move-result p2

    .line 84
    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p0}, Lio/ktor/client/plugins/z;->a(Li7/e;Ljava/lang/Throwable;)Lio/ktor/client/network/sockets/a;

    .line 89
    move-result-object p0

    .line 90
    :cond_4
    throw p0
.end method
