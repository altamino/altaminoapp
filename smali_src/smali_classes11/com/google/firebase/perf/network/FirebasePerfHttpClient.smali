.class public Lcom/google/firebase/perf/network/FirebasePerfHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/transport/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p5}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p5

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p5, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p5, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 73
    .line 74
    new-instance v0, Lcom/google/firebase/perf/network/h;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, p3, p4, p5}, Lcom/google/firebase/perf/network/h;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    .line 81
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object p0

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 86
    move-result-wide p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p5, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 90
    .line 91
    .line 92
    invoke-static {p5}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 93
    throw p0
.end method

.method static b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/transport/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p6}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p6

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p6, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p6, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p5}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p5}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p6, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 73
    .line 74
    new-instance v0, Lcom/google/firebase/perf/network/h;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, p3, p5, p6}, Lcom/google/firebase/perf/network/h;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, p1, p2, v0, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    .line 81
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-object p0

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p5}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 86
    move-result-wide p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p6, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 90
    .line 91
    .line 92
    invoke-static {p6}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 93
    throw p0
.end method

.method static c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/transport/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 50
    .line 51
    new-instance v0, Lcom/google/firebase/perf/network/h;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/perf/network/h;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object p0

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 67
    .line 68
    .line 69
    invoke-static {p4}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 70
    throw p0
.end method

.method static d(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/transport/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p5}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p5

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p5, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p5, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p5, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 50
    .line 51
    new-instance v0, Lcom/google/firebase/perf/network/h;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p2, p4, p5}, Lcom/google/firebase/perf/network/h;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, p1, v0, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object p0

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 63
    move-result-wide p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 67
    .line 68
    .line 69
    invoke-static {p5}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 70
    throw p0
.end method

.method static e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 80
    move-result-wide p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 84
    .line 85
    .line 86
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 91
    move-result p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, p1}, Lcom/google/firebase/perf/metrics/h;->o(I)Lcom/google/firebase/perf/metrics/h;

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 104
    move-result-wide p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p4, p1}, Lcom/google/firebase/perf/metrics/h;->u(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p4}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object p0

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 124
    move-result-wide p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 128
    .line 129
    .line 130
    invoke-static {p4}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 131
    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v4, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v4}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 10
    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v5, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v5}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 13
    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v4, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v4}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->d(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    new-instance v4, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v4}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->f(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->h(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method static f(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p5}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p5

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p5, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p5, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 80
    move-result-wide p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p5, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 84
    .line 85
    .line 86
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 91
    move-result p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p5, p1}, Lcom/google/firebase/perf/metrics/h;->o(I)Lcom/google/firebase/perf/metrics/h;

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 104
    move-result-wide p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p5, p1, p2}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p5, p1}, Lcom/google/firebase/perf/metrics/h;->u(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p5}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object p0

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 124
    move-result-wide p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p5, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 128
    .line 129
    .line 130
    invoke-static {p5}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 131
    throw p0
.end method

.method static g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 50
    .line 51
    .line 52
    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 57
    move-result-wide v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/metrics/h;->o(I)Lcom/google/firebase/perf/metrics/h;

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 81
    move-result-wide v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v0, v1}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/metrics/h;->u(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {p3}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object p0

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 101
    move-result-wide p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 105
    .line 106
    .line 107
    invoke-static {p3}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 108
    throw p0
.end method

.method static h(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/transport/k;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/h;->n(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, v0, v1}, Lcom/google/firebase/perf/metrics/h;->s(J)Lcom/google/firebase/perf/metrics/h;

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 50
    .line 51
    .line 52
    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 57
    move-result-wide p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4, p1}, Lcom/google/firebase/perf/metrics/h;->o(I)Lcom/google/firebase/perf/metrics/h;

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 81
    move-result-wide p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/perf/network/j;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, p1}, Lcom/google/firebase/perf/metrics/h;->u(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {p4}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object p0

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 101
    move-result-wide p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p4, p1, p2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 105
    .line 106
    .line 107
    invoke-static {p4}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 108
    throw p0
.end method
