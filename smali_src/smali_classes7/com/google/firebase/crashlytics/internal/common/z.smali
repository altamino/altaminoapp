.class public final Lcom/google/firebase/crashlytics/internal/common/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TERMINATION_TIMEOUT:J = 0x2L


# direct methods
.method private static a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/z;->b(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 8
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/Thread;

    .line 7
    .line 8
    new-instance v8, Lcom/google/firebase/crashlytics/internal/common/z$b;

    .line 9
    move-object v2, v8

    .line 10
    move-object v3, p0

    .line 11
    move-object v4, p1

    .line 12
    move-wide v5, p2

    .line 13
    move-object v7, p4

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/crashlytics/internal/common/z$b;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string p2, "Crashlytics Shutdown Hook for "

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v8, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 40
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/z;->d(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/z;->e(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ExecutorService;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/z;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 17
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/z$a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crashlytics/internal/common/z$a;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 13
    return-object v1
.end method

.method private static e(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ExecutorService;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    .line 12
    .line 13
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 14
    move-object v0, v9

    .line 15
    move-object v7, p0

    .line 16
    move-object v8, p1

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v9}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
