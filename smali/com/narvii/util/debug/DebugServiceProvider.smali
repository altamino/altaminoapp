.class public Lcom/narvii/util/debug/DebugServiceProvider;
.super Ljava/lang/Object;
.source "DebugServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/debug/DebugService;",
        ">;"
    }
.end annotation


# instance fields
.field protected instance:Lcom/narvii/util/debug/DebugService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/DebugService;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/util/debug/DebugServiceProvider;->instance:Lcom/narvii/util/debug/DebugService;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/narvii/util/debug/DebugService;

    invoke-direct {v0, p1}, Lcom/narvii/util/debug/DebugService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/util/debug/DebugServiceProvider;->instance:Lcom/narvii/util/debug/DebugService;

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/debug/DebugServiceProvider;->instance:Lcom/narvii/util/debug/DebugService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/DebugServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/DebugService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/debug/DebugService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/DebugServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-object v0, p2, Lcom/narvii/util/debug/DebugService;->topActivity:Ljava/lang/ref/WeakReference;

    .line 47
    instance-of p1, p1, Lcom/narvii/app/NVApplication;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p2, Lcom/narvii/util/debug/DebugService;->shakeDetector:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {p1}, Lcom/squareup/seismic/ShakeDetector;->stop()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/debug/DebugService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/DebugServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V
    .locals 2

    .line 34
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 37
    iget-object v1, p2, Lcom/narvii/util/debug/DebugService;->shakeDetector:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector;->start(Landroid/hardware/SensorManager;)Z

    .line 39
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p2, Lcom/narvii/util/debug/DebugService;->topActivity:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/debug/DebugService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/DebugServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/debug/DebugService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/DebugServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/debug/DebugService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/DebugServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/DebugService;)V

    return-void
.end method
