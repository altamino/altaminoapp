.class public Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;
.super Ljava/lang/Object;
.source "IncubatorDrawerHostActivityProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/drawer/DrawerHost;",
        ">;"
    }
.end annotation


# instance fields
.field private parent:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;


# direct methods
.method public constructor <init>(Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->parent:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/drawer/DrawerHost;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->parent:Lcom/narvii/services/incubator/IncubatorDrawerHostCommunityProvider;

    invoke-virtual {v0, p1}, Lcom/narvii/services/util/HostCommunityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/drawer/DrawerHost;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerHost;->unbind()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 32
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/drawer/DrawerHost;->bind(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorDrawerHostActivityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method
