.class public Lcom/narvii/services/KpidHelper;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private cancelSchedule()V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    iput-wide v2, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/KpidHelper;
    .locals 4

    .line 2
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

    .line 3
    sget-object v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    :goto_2
    const-string v1, "kpid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/KpidHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/KpidHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 4

    iget-boolean p1, p0, Lcom/narvii/services/KpidHelper;->enabled:Z

    if-eqz p1, :cond_3

    .line 2
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    .line 3
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-wide/16 v0, 0x3a98

    if-eqz p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x493e0

    :goto_0
    sget v2, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    if-gtz v2, :cond_2

    .line 4
    sget-object v2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    const-string v3, "lowMemory"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p1

    .line 5
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    .line 6
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    const-wide/16 v2, 0x1388

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "ws"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/util/ws/WsService;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isKeepAlive()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "keepalive, skip kpid"

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_1
    sget-boolean v0, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    return-void

    .line 52
    .line 53
    :cond_2
    const-string v0, "kpid!"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 64
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V
    .locals 4

    iget-boolean p1, p0, Lcom/narvii/services/KpidHelper;->enabled:Z

    if-eqz p1, :cond_3

    .line 2
    invoke-direct {p0}, Lcom/narvii/services/KpidHelper;->cancelSchedule()V

    .line 3
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x1d4c0

    :goto_0
    sget v2, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    if-gtz v2, :cond_2

    .line 4
    sget-object v2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    const-string v3, "lowMemory"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p1

    .line 5
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/narvii/services/KpidHelper;->scheduledKpidTime:J

    .line 6
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/services/KpidHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/KpidHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/KpidHelper;)V

    return-void
.end method
