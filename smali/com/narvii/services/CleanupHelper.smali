.class public Lcom/narvii/services/CleanupHelper;
.super Ljava/lang/Object;
.source "CleanupHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/CleanupHelper;->create(Lcom/narvii/app/NVContext;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Runnable;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CleanupHelper;->destroy(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CleanupHelper;->pause(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CleanupHelper;->resume(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/narvii/util/Utils;->cleanTmpFiles()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CleanupHelper;->start(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 17
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CleanupHelper;->stop(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x1770

    .line 30
    invoke-static {p2, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
