.class public Lcom/android/volley/toolbox/RequestFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mException:Lcom/android/volley/VolleyError;

.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultReceived:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 7
    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 4
    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    .line 22
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v2

    .line 34
    .line 35
    cmp-long v0, v2, v0

    .line 36
    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 45
    move-result-wide v2

    .line 46
    add-long/2addr v2, v0

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    cmp-long p1, v0, v2

    .line 55
    .line 56
    if-gez p1, :cond_2

    .line 57
    .line 58
    sub-long v0, v2, v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 65
    move-result-wide v0

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 69
    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    return-object p1

    .line 79
    .line 80
    :cond_3
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 84
    throw p1

    .line 85
    .line 86
    :cond_4
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    throw p1

    .line 93
    .line 94
    :cond_5
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 100
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :goto_2
    monitor-exit p0

    .line 102
    throw p1
.end method

.method public static newFuture()Lcom/android/volley/toolbox/RequestFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/volley/toolbox/RequestFuture<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/android/volley/toolbox/RequestFuture;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/volley/toolbox/RequestFuture;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    monitor-exit p0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/volley/Request;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return v0

    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isCancelled()Z

    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :goto_2
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public setRequest(Lcom/android/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    return-void
.end method
