.class Lu4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final CORE_THREAD_TIMEOUT_SECS:J = 0x3cL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu4/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lu4/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ThreadFactory;Lu4/c;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lu4/b$b;->b(ILjava/util/concurrent/ThreadFactory;Lu4/c;)Ljava/util/concurrent/ExecutorService;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public b(ILjava/util/concurrent/ThreadFactory;Lu4/c;)Ljava/util/concurrent/ExecutorService;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance p3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    .line 4
    const-wide/16 v3, 0x3c

    .line 5
    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 12
    move-object v0, p3

    .line 13
    move v1, p1

    .line 14
    move v2, p1

    .line 15
    move-object v7, p2

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 19
    const/4 p1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
