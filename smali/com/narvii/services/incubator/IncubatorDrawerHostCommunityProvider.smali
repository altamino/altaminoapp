.class public Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;
.super Lcom/narvii/services/util/HostCommunityProvider;
.source "IncubatorDrawerHostCommunityProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/services/util/HostCommunityProvider<",
        "Lcom/narvii/drawer/DrawerHost;",
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
.method protected createProxyHost(Landroid/content/Context;)Lcom/narvii/drawer/DrawerHost;
    .locals 2

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b01d6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    return-object p1
.end method

.method protected bridge synthetic createProxyHost(Landroid/content/Context;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;->createProxyHost(Landroid/content/Context;)Lcom/narvii/drawer/DrawerHost;

    move-result-object p1

    return-object p1
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 30
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerHost;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerHost;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method
