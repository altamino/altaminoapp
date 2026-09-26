.class Lcom/mixpanel/android/mpmetrics/a$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/a$h$a;
    }
.end annotation


# instance fields
.field private mAveFlushFrequency:J

.field private mFlushCount:J

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mLastFlushTime:J

.field private mSystemInformation:Lcom/mixpanel/android/mpmetrics/l;

.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/a;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/a;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mHandlerLock:Ljava/lang/Object;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mFlushCount:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mAveFlushFrequency:J

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mLastFlushTime:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/a$h;->f()Landroid/os/Handler;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/l;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/a$h;Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/l;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/l;

    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/mixpanel/android/mpmetrics/a$h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/a$h;->h()V

    .line 4
    return-void
.end method

.method static synthetic d(Lcom/mixpanel/android/mpmetrics/a$h;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mHandlerLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/mixpanel/android/mpmetrics/a$h;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p1
.end method

.method private h()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mFlushCount:J

    .line 7
    .line 8
    const-wide/16 v4, 0x1

    .line 9
    add-long/2addr v4, v2

    .line 10
    .line 11
    iget-wide v6, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mLastFlushTime:J

    .line 12
    .line 13
    const-wide/16 v8, 0x0

    .line 14
    .line 15
    cmp-long v8, v6, v8

    .line 16
    .line 17
    if-lez v8, :cond_0

    .line 18
    .line 19
    sub-long v6, v0, v6

    .line 20
    .line 21
    iget-wide v8, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mAveFlushFrequency:J

    .line 22
    mul-long/2addr v8, v2

    .line 23
    add-long/2addr v6, v8

    .line 24
    div-long/2addr v6, v4

    .line 25
    .line 26
    iput-wide v6, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mAveFlushFrequency:J

    .line 27
    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    div-long/2addr v6, v2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v8, "Average send frequency approximately "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v6, " seconds."

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 57
    .line 58
    :cond_0
    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mLastFlushTime:J

    .line 59
    .line 60
    iput-wide v4, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mFlushCount:J

    .line 61
    return-void
.end method


# virtual methods
.method protected f()Landroid/os/Handler;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    const-string v1, "com.mixpanel.android.AnalyticsWorker"

    .line 5
    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    .line 14
    new-instance v1, Lcom/mixpanel/android/mpmetrics/a$h$a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Lcom/mixpanel/android/mpmetrics/a$h$a;-><init>(Lcom/mixpanel/android/mpmetrics/a$h;Landroid/os/Looper;)V

    .line 22
    return-object v1
.end method

.method public g(Landroid/os/Message;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mHandlerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v3, "Dead mixpanel worker dropping a message: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method
