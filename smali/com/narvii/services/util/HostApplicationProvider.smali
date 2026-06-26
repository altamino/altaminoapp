.class public abstract Lcom/narvii/services/util/HostApplicationProvider;
.super Ljava/lang/Object;
.source "HostApplicationProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/widget/ProxyViewHost;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private cache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/widget/ProxyViewHost;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")TT;"
        }
    .end annotation

    .line 23
    iget-object p1, p0, Lcom/narvii/services/util/HostApplicationProvider;->cache:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ProxyViewHost;

    :goto_0
    if-nez p1, :cond_1

    .line 25
    new-instance p1, Lcom/narvii/services/util/AppVirtualContext;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const v1, 0x7f100008

    invoke-direct {p1, v0, v1}, Lcom/narvii/services/util/AppVirtualContext;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/services/util/HostApplicationProvider;->createProxyHost(Landroid/content/Context;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object p1

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/services/util/HostApplicationProvider;->cache:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/services/util/HostApplicationProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createProxyHost(Landroid/content/Context;)Lcom/narvii/widget/ProxyViewHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostApplicationProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostApplicationProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostApplicationProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostApplicationProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostApplicationProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    return-void
.end method
