.class public Lcom/narvii/semicontext/SemiLiveLayerHostProvider;
.super Ljava/lang/Object;
.source "SemiLiveLayerHostProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/livelayer/LiveLayerHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerHost;
    .locals 2

    .line 18
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b04d5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerHost;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerHost;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    .line 34
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerHost;->unbind()V

    .line 35
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerHost;->onPause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    .line 28
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerHost;->onResume()V

    .line 29
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/livelayer/LiveLayerHost;->bind(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method
