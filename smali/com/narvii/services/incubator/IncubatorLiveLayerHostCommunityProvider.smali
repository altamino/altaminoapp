.class public Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;
.super Lcom/narvii/services/util/HostCommunityProvider;
.source "IncubatorLiveLayerHostCommunityProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/services/util/HostCommunityProvider<",
        "Lcom/narvii/livelayer/LiveLayerHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/services/util/HostCommunityProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected createProxyHost(Landroid/content/Context;)Lcom/narvii/livelayer/LiveLayerHost;
    .locals 2

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b04d5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerHost;

    return-object p1
.end method

.method protected bridge synthetic createProxyHost(Landroid/content/Context;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->createProxyHost(Landroid/content/Context;)Lcom/narvii/livelayer/LiveLayerHost;

    move-result-object p1

    return-object p1
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    .line 38
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerHost;->onPause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    .line 33
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerHost;->onResume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    .line 43
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerHost;->onStop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/livelayer/LiveLayerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLiveLayerHostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerHost;)V

    return-void
.end method
