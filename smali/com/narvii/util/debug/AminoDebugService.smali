.class public Lcom/narvii/util/debug/AminoDebugService;
.super Lcom/narvii/util/debug/DebugService;
.source "AminoDebugService.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/DebugService;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createDebugMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1, p2}, Lcom/narvii/util/debug/DebugService;->createDebugMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 23
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "_signallingMonitor"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Hide Signalling Status"

    goto :goto_0

    :cond_0
    const-string p1, "Show Signalling Status"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2

    .line 29
    invoke-super {p0, p1, p2}, Lcom/narvii/util/debug/DebugService;->onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "_signallingMonitor"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/debug/SignallingMonitorHelper;

    const-string v1, "Show Signalling Status"

    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showShow(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_0
    const-string v1, "Hide Signalling Status"

    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showShow(Landroid/app/Activity;Z)V

    :cond_1
    :goto_0
    return-void
.end method
