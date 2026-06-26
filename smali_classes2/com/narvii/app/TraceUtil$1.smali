.class final Lcom/narvii/app/TraceUtil$1;
.super Ljava/lang/Object;
.source "TraceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/TraceUtil;->stop()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field c:I

.field startTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 42
    sget-object v0, Lcom/narvii/app/TraceUtil;->stopDelayed:Ljava/lang/Runnable;

    if-eq v0, p0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    .line 48
    :cond_1
    iget v0, p0, Lcom/narvii/app/TraceUtil$1;->c:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 49
    iput v0, p0, Lcom/narvii/app/TraceUtil$1;->c:I

    .line 50
    sget-object v0, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 53
    iget-wide v4, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x96

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/narvii/app/TraceUtil$1;->c:I

    .line 55
    iput-wide v2, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    .line 56
    sget-object v0, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {}, Lcom/narvii/app/TraceUtil;->access$000()Lcom/narvii/app/TraceUtil$TraceClassLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 58
    invoke-static {}, Lcom/narvii/app/TraceUtil;->access$000()Lcom/narvii/app/TraceUtil$TraceClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/TraceUtil$TraceClassLoader;->done()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 60
    new-instance v1, Lcom/narvii/app/TraceUtil$1$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/app/TraceUtil$1$1;-><init>(Lcom/narvii/app/TraceUtil$1;Ljava/util/List;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_0
    return-void
.end method
