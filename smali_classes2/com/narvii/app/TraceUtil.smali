.class public Lcom/narvii/app/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/TraceUtil$TraceClassLoader;,
        Lcom/narvii/app/TraceUtil$TraceStub;
    }
.end annotation


# static fields
.field private static ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;

.field static handler:Landroid/os/Handler;

.field static startMs:J

.field static stopDelayed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/narvii/app/TraceUtil$TraceClassLoader;
    .locals 1

    .line 22
    sget-object v0, Lcom/narvii/app/TraceUtil;->ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;

    return-object v0
.end method

.method public static start()V
    .locals 2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/narvii/app/TraceUtil;->startMs:J

    return-void
.end method

.method public static stop()J
    .locals 4

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 33
    sget-object v2, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    .line 36
    :cond_0
    new-instance v2, Lcom/narvii/app/TraceUtil$1;

    invoke-direct {v2}, Lcom/narvii/app/TraceUtil$1;-><init>()V

    sput-object v2, Lcom/narvii/app/TraceUtil;->stopDelayed:Ljava/lang/Runnable;

    .line 72
    sget-object v2, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/narvii/app/TraceUtil;->stopDelayed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    sget-wide v2, Lcom/narvii/app/TraceUtil;->startMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static traceClassLoader(Ldalvik/system/PathClassLoader;)Lcom/narvii/app/TraceUtil$TraceClassLoader;
    .locals 6

    .line 80
    new-instance v0, Lcom/narvii/app/TraceUtil$TraceStub;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/app/TraceUtil$TraceStub;-><init>(Ljava/lang/String;JJ)V

    .line 82
    :try_start_0
    invoke-virtual {p0}, Ldalvik/system/PathClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 83
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "parent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    new-instance v2, Lcom/narvii/app/TraceUtil$TraceClassLoader;

    invoke-direct {v2, v0}, Lcom/narvii/app/TraceUtil$TraceClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/narvii/app/TraceUtil;->ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;

    .line 86
    sget-object v0, Lcom/narvii/app/TraceUtil;->ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    sget-object p0, Lcom/narvii/app/TraceUtil;->ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
