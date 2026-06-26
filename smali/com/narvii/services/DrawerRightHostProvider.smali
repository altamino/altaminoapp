.class public Lcom/narvii/services/DrawerRightHostProvider;
.super Ljava/lang/Object;
.source "DrawerRightHostProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/drawer/DrawerRightHost;",
        ">;"
    }
.end annotation


# instance fields
.field host:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/drawer/DrawerRightHost;
    .locals 2

    .line 19
    iget-object p1, p0, Lcom/narvii/services/DrawerRightHostProvider;->host:Lcom/narvii/drawer/DrawerRightHost;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const v1, 0x7f100008

    invoke-direct {p1, v0, v1}, Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b01e1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerRightHost;

    iput-object p1, p0, Lcom/narvii/services/DrawerRightHostProvider;->host:Lcom/narvii/drawer/DrawerRightHost;

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/DrawerRightHostProvider;->host:Lcom/narvii/drawer/DrawerRightHost;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/services/DrawerRightHostProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/drawer/DrawerRightHost;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerRightHostProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 40
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerRightHost;->unbind()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerRightHostProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 1

    .line 33
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/narvii/drawer/DrawerRightHost;->bind(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerRightHostProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 28
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerRightHost;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerRightHostProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 47
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerRightHost;->reset()V

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerRightHost;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerRightHostProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerRightHost;)V

    return-void
.end method
