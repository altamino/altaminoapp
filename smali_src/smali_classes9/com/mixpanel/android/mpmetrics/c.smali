.class public Lcom/mixpanel/android/mpmetrics/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final SLEEP_TIMEOUT_MS:I = 0x190

.field private static sInstance:Lcom/mixpanel/android/mpmetrics/c;


# instance fields
.field private final mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 13
    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/c;->sInstance:Lcom/mixpanel/android/mpmetrics/c;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, Lcom/mixpanel/android/mpmetrics/c;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lcom/mixpanel/android/mpmetrics/c;->sInstance:Lcom/mixpanel/android/mpmetrics/c;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/mixpanel/android/mpmetrics/c;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/mixpanel/android/mpmetrics/c;-><init>()V

    .line 17
    .line 18
    sput-object v1, Lcom/mixpanel/android/mpmetrics/c;->sInstance:Lcom/mixpanel/android/mpmetrics/c;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x190

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/mixpanel/android/mpmetrics/c$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/mixpanel/android/mpmetrics/c$a;-><init>(Lcom/mixpanel/android/mpmetrics/c;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/g;->g(Lcom/mixpanel/android/mpmetrics/g$c;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/c;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/c;->b()V

    .line 20
    :goto_0
    return-void
.end method
