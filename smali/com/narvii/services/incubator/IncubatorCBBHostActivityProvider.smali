.class public Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;
.super Ljava/lang/Object;
.source "IncubatorCBBHostActivityProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/community/CBBHost;",
        ">;"
    }
.end annotation


# instance fields
.field private parent:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;


# direct methods
.method public constructor <init>(Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->parent:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/CBBHost;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->parent:Lcom/narvii/services/incubator/IncubatorCBBHostCommunityProvider;

    invoke-virtual {v0, p1}, Lcom/narvii/services/util/HostCommunityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CBBHost;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/CBBHost;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Lcom/narvii/community/CBBHost;->unbind()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 34
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/community/CBBHost;->bind(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCBBHostActivityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method
