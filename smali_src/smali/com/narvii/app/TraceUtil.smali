.class public Lcom/narvii/app/TraceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/TraceUtil$TraceStub;,
        Lcom/narvii/app/TraceUtil$TraceClassLoader;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic a()Lcom/narvii/app/TraceUtil$TraceClassLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/app/TraceUtil;->ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;

    return-object v0
.end method

.method public static start()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sput-wide v0, Lcom/narvii/app/TraceUtil;->startMs:J

    .line 7
    return-void
.end method

.method public static stop()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    sput-object v2, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    :cond_0
    new-instance v2, Lcom/narvii/app/TraceUtil$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Lcom/narvii/app/TraceUtil$1;-><init>()V

    .line 25
    .line 26
    sput-object v2, Lcom/narvii/app/TraceUtil;->stopDelayed:Ljava/lang/Runnable;

    .line 27
    .line 28
    sget-object v3, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    sget-wide v2, Lcom/narvii/app/TraceUtil;->startMs:J

    .line 34
    sub-long/2addr v0, v2

    .line 35
    return-wide v0
.end method

.method static traceClassLoader(Ldalvik/system/PathClassLoader;)Lcom/narvii/app/TraceUtil$TraceClassLoader;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/app/TraceUtil$TraceStub;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/narvii/app/TraceUtil$TraceStub;-><init>(Ljava/lang/String;JJ)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Ljava/lang/ClassLoader;

    .line 17
    .line 18
    const-string v2, "parent"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/app/TraceUtil$TraceClassLoader;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/narvii/app/TraceUtil$TraceClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 32
    .line 33
    sput-object v2, Lcom/narvii/app/TraceUtil;->ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    sget-object p0, Lcom/narvii/app/TraceUtil;->ccl:Lcom/narvii/app/TraceUtil$TraceClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    throw v0
.end method
