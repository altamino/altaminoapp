.class public Lcom/narvii/services/DetailLoggingHelper;
.super Ljava/lang/Object;
.source "DetailLoggingHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/services/DetailLoggingHelper;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/DetailLoggingHelper;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/services/DetailLoggingHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/DetailLoggingHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/services/DetailLoggingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DetailLoggingHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V
    .locals 0

    const-wide/16 p1, 0x7d0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/services/DetailLoggingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DetailLoggingHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V
    .locals 0

    .line 24
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->start()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/services/DetailLoggingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DetailLoggingHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V

    return-void
.end method

.method public run()V
    .locals 0

    .line 45
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->stop()V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/services/DetailLoggingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DetailLoggingHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/services/DetailLoggingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DetailLoggingHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/DetailLoggingHelper;)V

    return-void
.end method
