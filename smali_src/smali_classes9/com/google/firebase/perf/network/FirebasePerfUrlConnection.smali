.class public Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;
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

.method static a(Lcom/google/firebase/perf/util/m;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/util/m;->a()Ljava/net/URLConnection;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    new-instance v3, Lcom/google/firebase/perf/network/d;

    .line 22
    .line 23
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/d;->getContent()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Lcom/google/firebase/perf/network/c;

    .line 40
    .line 41
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/c;->getContent()Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/perf/util/m;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 75
    throw v2
.end method

.method static b(Lcom/google/firebase/perf/util/m;[Ljava/lang/Class;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/util/m;->a()Ljava/net/URLConnection;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    new-instance v3, Lcom/google/firebase/perf/network/d;

    .line 22
    .line 23
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v2, p3, p2}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Lcom/google/firebase/perf/network/d;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Lcom/google/firebase/perf/network/c;

    .line 40
    .line 41
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v2, p3, p2}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p1}, Lcom/google/firebase/perf/network/c;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/perf/util/m;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 75
    throw p1
.end method

.method static c(Lcom/google/firebase/perf/util/m;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/util/Timer;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->l()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->i()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/util/m;->a()Ljava/net/URLConnection;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    new-instance v3, Lcom/google/firebase/perf/network/d;

    .line 22
    .line 23
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/d;->getInputStream()Ljava/io/InputStream;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Lcom/google/firebase/perf/network/c;

    .line 40
    .line 41
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/c;->getInputStream()Ljava/io/InputStream;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object p0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/metrics/h;->t(J)Lcom/google/firebase/perf/metrics/h;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/perf/util/m;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lcom/google/firebase/perf/metrics/h;->z(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 75
    throw v2
.end method

.method public static getContent(Ljava/net/URL;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/perf/util/m;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/util/m;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->a(Lcom/google/firebase/perf/util/m;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getContent(Ljava/net/URL;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/firebase/perf/util/m;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/util/m;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-static {v0, p1, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->b(Lcom/google/firebase/perf/util/m;[Ljava/lang/Class;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static instrument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/firebase/perf/network/d;

    .line 7
    .line 8
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 9
    .line 10
    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/perf/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/google/firebase/perf/network/c;

    .line 32
    .line 33
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 34
    .line 35
    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/firebase/perf/metrics/h;->e(Lcom/google/firebase/perf/transport/k;)Lcom/google/firebase/perf/metrics/h;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/perf/network/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/h;)V

    .line 50
    return-object v0

    .line 51
    :cond_1
    return-object p0
.end method

.method public static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/perf/util/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/perf/util/m;-><init>(Ljava/net/URL;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->c(Lcom/google/firebase/perf/util/m;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/util/Timer;)Ljava/io/InputStream;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
