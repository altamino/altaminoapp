.class public abstract Lcom/narvii/services/util/HostCommunityProvider;
.super Ljava/lang/Object;
.source "HostCommunityProvider.java"

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
.field final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/util/HostCommunityProvider;->cache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/widget/ProxyViewHost;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")TT;"
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/narvii/services/util/HostCommunityProvider;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ProxyViewHost;

    :goto_0
    if-nez v0, :cond_2

    .line 32
    new-instance v0, Lcom/narvii/services/util/CommunityVirtualContext;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const v2, 0x7f100008

    invoke-direct {v0, v1, v2, p1}, Lcom/narvii/services/util/CommunityVirtualContext;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/services/util/HostCommunityProvider;->createProxyHost(Landroid/content/Context;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/narvii/services/util/HostCommunityProvider;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/services/util/HostCommunityProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/widget/ProxyViewHost;

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

    .line 18
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostCommunityProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

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

    .line 18
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostCommunityProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

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

    .line 18
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostCommunityProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

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

    .line 18
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostCommunityProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

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

    .line 18
    check-cast p2, Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/util/HostCommunityProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/widget/ProxyViewHost;)V

    return-void
.end method
