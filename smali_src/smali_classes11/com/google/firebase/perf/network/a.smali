.class public final Lcom/google/firebase/perf/network/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private bytesRead:J

.field private final inputStream:Ljava/io/InputStream;

.field private final networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

.field private timeToResponseInitiated:J

.field private timeToResponseLastRead:J

.field private final timer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/firebase/perf/metrics/h;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/h;->h()J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    iput-wide p1, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    .line 22
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 25
    throw v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    .line 9
    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    .line 24
    .line 25
    cmp-long v2, v0, v4

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    .line 38
    .line 39
    cmp-long v2, v0, v4

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->y(J)Lcom/google/firebase/perf/metrics/h;

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 49
    .line 50
    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 60
    .line 61
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 67
    move-result-wide v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 76
    throw v0
.end method

.method public mark(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 6
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 2
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->g()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    iget-object v3, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 3
    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    iget-object v3, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 5
    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :goto_2
    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 7
    invoke-static {v1}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 8
    throw v0
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 17
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 18
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->g()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 19
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 21
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :goto_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 23
    invoke-static {v0}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 24
    throw p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 10
    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->g()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 11
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 12
    invoke-virtual {p2}, Lcom/google/firebase/perf/metrics/h;->c()Lcom/google/firebase/perf/v1/h;

    goto :goto_1

    :cond_1
    iget-wide p2, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 13
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :goto_2
    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    iget-object p3, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 14
    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->g()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 15
    invoke-static {p2}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 16
    throw p1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 24
    throw v0
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->inputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 6
    move-result-wide p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    .line 15
    .line 16
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseInitiated:J

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    .line 27
    :cond_0
    :goto_0
    cmp-long v2, p1, v4

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-wide v2, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    .line 32
    .line 33
    cmp-long v2, v2, v4

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->timeToResponseLastRead:J

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    .line 46
    add-long/2addr v0, p1

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/google/firebase/perf/network/a;->bytesRead:J

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->v(J)Lcom/google/firebase/perf/metrics/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    return-wide p1

    .line 55
    .line 56
    :goto_2
    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/firebase/perf/network/a;->timer:Lcom/google/firebase/perf/util/Timer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->g()J

    .line 62
    move-result-wide v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/metrics/h;->x(J)Lcom/google/firebase/perf/metrics/h;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/google/firebase/perf/network/a;->networkMetricBuilder:Lcom/google/firebase/perf/metrics/h;

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/google/firebase/perf/network/j;->d(Lcom/google/firebase/perf/metrics/h;)V

    .line 71
    throw p1
.end method
