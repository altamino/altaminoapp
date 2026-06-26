.class public Lcom/narvii/services/DrawerHostApplicationProvider;
.super Ljava/lang/Object;
.source "DrawerHostApplicationProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/drawer/DrawerHost;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/drawer/DrawerHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/drawer/DrawerHost;
    .locals 3

    .line 19
    iget-object p1, p0, Lcom/narvii/services/DrawerHostApplicationProvider;->cache:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    :goto_0
    if-nez p1, :cond_1

    .line 21
    new-instance p1, Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const v2, 0x7f100008

    invoke-direct {p1, v1, v2}, Lcom/narvii/services/DrawerHostApplicationProvider$VirtualContext;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0b01d6

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/services/DrawerHostApplicationProvider;->cache:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/DrawerHostApplicationProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/drawer/DrawerHost;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerHostApplicationProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerHostApplicationProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerHostApplicationProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 30
    invoke-virtual {p2, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfo(J)Z

    .line 31
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerHost;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerHostApplicationProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 44
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerHost;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerHostApplicationProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method
