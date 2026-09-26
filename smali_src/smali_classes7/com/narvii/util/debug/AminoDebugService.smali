.class public Lcom/narvii/util/debug/AminoDebugService;
.super Lcom/narvii/util/debug/DebugService;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/DebugService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/debug/DebugService;->createDebugMenu(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "_signallingMonitor"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->isShow()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string p1, "Hide Signalling Status"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string p1, "Show Signalling Status"

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method protected onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/debug/DebugService;->onDebugMenuClick(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/debug/DebugService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "_signallingMonitor"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 14
    .line 15
    const-string v1, "Show Signalling Status"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    const/4 p2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showShow(Landroid/app/Activity;Z)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const-string v1, "Hide Signalling Status"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p2

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    const/4 p2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showShow(Landroid/app/Activity;Z)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
