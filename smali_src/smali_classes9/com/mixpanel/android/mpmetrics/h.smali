.class Lcom/mixpanel/android/mpmetrics/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final CHECK_DELAY:I = 0x1f4

.field private static sStartSessionTime:Ljava/lang/Double;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private final mConfig:Lcom/mixpanel/android/mpmetrics/d;

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private final mMpInstance:Lcom/mixpanel/android/mpmetrics/g;

.field private mPaused:Z


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/g;Lcom/mixpanel/android/mpmetrics/d;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/h;->mHandler:Landroid/os/Handler;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/h;->mIsForeground:Z

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/h;->mPaused:Z

    .line 21
    .line 22
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mMpInstance:Lcom/mixpanel/android/mpmetrics/g;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/h;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 25
    .line 26
    sget-object p1, Lcom/mixpanel/android/mpmetrics/h;->sStartSessionTime:Ljava/lang/Double;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    move-result-wide p1

    .line 33
    long-to-double p1, p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    sput-object p1, Lcom/mixpanel/android/mpmetrics/h;->sStartSessionTime:Ljava/lang/Double;

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/h;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/mixpanel/android/mpmetrics/h;->mIsForeground:Z

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/h;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mIsForeground:Z

    .line 3
    return p1
.end method

.method static synthetic c(Lcom/mixpanel/android/mpmetrics/h;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/mixpanel/android/mpmetrics/h;->mPaused:Z

    .line 3
    return p0
.end method

.method static synthetic d()Ljava/lang/Double;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/h;->sStartSessionTime:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic e(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/h;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/mixpanel/android/mpmetrics/h;)Lcom/mixpanel/android/mpmetrics/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/h;->mMpInstance:Lcom/mixpanel/android/mpmetrics/g;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mPaused:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/h;->check:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/h;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v0, Lcom/mixpanel/android/mpmetrics/h$a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/h$a;-><init>(Lcom/mixpanel/android/mpmetrics/h;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/h;->check:Ljava/lang/Runnable;

    .line 25
    .line 26
    const-wide/16 v1, 0x1f4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/h;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mPaused:Z

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mIsForeground:Z

    .line 13
    const/4 v0, 0x1

    .line 14
    xor-int/2addr p1, v0

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/h;->mIsForeground:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/h;->check:Ljava/lang/Runnable;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/h;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v0

    .line 32
    long-to-double v0, v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    sput-object p1, Lcom/mixpanel/android/mpmetrics/h;->sStartSessionTime:Ljava/lang/Double;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/h;->mMpInstance:Lcom/mixpanel/android/mpmetrics/g;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/g;->w()V

    .line 44
    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
