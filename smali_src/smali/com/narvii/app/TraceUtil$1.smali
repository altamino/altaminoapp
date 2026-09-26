.class Lcom/narvii/app/TraceUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/TraceUtil;->stop()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field startTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/TraceUtil;->stopDelayed:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-wide v0, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lcom/narvii/app/TraceUtil$1;->c:I

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-ge v0, v1, :cond_2

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/app/TraceUtil$1;->c:I

    .line 30
    .line 31
    sget-object v0, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    .line 32
    .line 33
    const-wide/16 v1, 0xa

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    iget-wide v4, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    .line 44
    sub-long/2addr v0, v4

    .line 45
    .line 46
    const-wide/16 v4, 0x96

    .line 47
    .line 48
    cmp-long v0, v0, v4

    .line 49
    .line 50
    if-lez v0, :cond_3

    .line 51
    const/4 v0, 0x0

    .line 52
    .line 53
    iput v0, p0, Lcom/narvii/app/TraceUtil$1;->c:I

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/narvii/app/TraceUtil$1;->startTime:J

    .line 56
    .line 57
    sget-object v0, Lcom/narvii/app/TraceUtil;->handler:Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {}, Lcom/narvii/app/TraceUtil;->a()Lcom/narvii/app/TraceUtil$TraceClassLoader;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/narvii/app/TraceUtil;->a()Lcom/narvii/app/TraceUtil$TraceClassLoader;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/app/TraceUtil$TraceClassLoader;->done()Ljava/util/List;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    new-instance v1, Lcom/narvii/app/TraceUtil$1$1;

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, p0, v0}, Lcom/narvii/app/TraceUtil$1$1;-><init>(Lcom/narvii/app/TraceUtil$1;Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 86
    :cond_4
    :goto_0
    return-void
.end method
