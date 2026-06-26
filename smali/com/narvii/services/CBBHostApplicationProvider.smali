.class public Lcom/narvii/services/CBBHostApplicationProvider;
.super Lcom/narvii/services/util/HostApplicationProvider;
.source "CBBHostApplicationProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/services/util/HostApplicationProvider<",
        "Lcom/narvii/community/CBBHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/services/util/HostApplicationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected createProxyHost(Landroid/content/Context;)Lcom/narvii/community/CBBHost;
    .locals 2

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CBBHost;

    return-object p1
.end method

.method protected bridge synthetic createProxyHost(Landroid/content/Context;)Lcom/narvii/widget/ProxyViewHost;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/CBBHostApplicationProvider;->createProxyHost(Landroid/content/Context;)Lcom/narvii/community/CBBHost;

    move-result-object p1

    return-object p1
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 33
    invoke-virtual {p2}, Lcom/narvii/community/CBBHost;->onPause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 28
    invoke-virtual {p2}, Lcom/narvii/community/CBBHost;->onResume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 23
    invoke-virtual {p2}, Lcom/narvii/community/CBBHost;->onStart()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 38
    invoke-virtual {p2}, Lcom/narvii/community/CBBHost;->onStop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/community/CBBHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/CBBHostApplicationProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CBBHost;)V

    return-void
.end method
