.class public Lcom/narvii/services/KpidHelper;
.super Ljava/lang/Object;
.source "KpidHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/services/KpidHelper;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field enabled:Z

.field scheduledKpidTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelSchedule()V
    .locals 5

    .line 27
    iget-wide v0, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 28
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iput-wide v2, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/KpidHelper;
    .locals 4

    .line 21
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/narvii/services/KpidHelper;->enabled:Z

    .line 22
    sget-object p1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    iget-boolean v0, p0, Lcom/narvii/services/KpidHelper;->enabled:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_2

    :cond_2
    const-string v0, "0"

    :goto_2
    const-string v1, "kpid"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/services/KpidHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/KpidHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 4

    .line 45
    iget-boolean p1, p0, Lcom/narvii/services/KpidHelper;->enabled:Z

    if-eqz p1, :cond_3

    .line 46
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    .line 47
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-wide/16 v0, 0x3a98

    if-eqz p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x493e0

    .line 48
    :goto_0
    sget v2, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    if-gtz v2, :cond_1

    sget-object v2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    const-string v3, "lowMemory"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-wide p1, v0

    .line 51
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    .line 52
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 77
    iget-wide v2, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ws"

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "keepalive, skip kpid"

    .line 82
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    sget-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "kpid!"

    .line 88
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 4

    .line 58
    iget-boolean p1, p0, Lcom/narvii/services/KpidHelper;->enabled:Z

    if-eqz p1, :cond_3

    .line 59
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    .line 60
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x1d4c0

    .line 61
    :goto_0
    sget v2, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    if-gtz v2, :cond_1

    sget-object v2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    const-string v3, "lowMemory"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-wide p1, v0

    .line 64
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    .line 65
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method
