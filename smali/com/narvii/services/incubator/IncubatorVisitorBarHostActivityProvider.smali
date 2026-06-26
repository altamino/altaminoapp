.class public Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;
.super Ljava/lang/Object;
.source "IncubatorVisitorBarHostActivityProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/community/VisitorBarHost;",
        ">;"
    }
.end annotation


# instance fields
.field private parent:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;


# direct methods
.method public constructor <init>(Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->parent:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/VisitorBarHost;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->parent:Lcom/narvii/services/incubator/IncubatorVisitorBarHostCommunityProvider;

    invoke-virtual {v0, p1}, Lcom/narvii/services/util/HostCommunityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/VisitorBarHost;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/VisitorBarHost;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Lcom/narvii/community/VisitorBarHost;->unbind()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 33
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/community/VisitorBarHost;->bind(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/community/VisitorBarHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorVisitorBarHostActivityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorBarHost;)V

    return-void
.end method
