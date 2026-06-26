.class public Lcom/narvii/services/AminoNavigatorProvider;
.super Ljava/lang/Object;
.source "AminoNavigatorProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/navigator/Navigator;",
        ">;"
    }
.end annotation


# instance fields
.field cid:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized create(Lcom/narvii/app/NVContext;)Lcom/narvii/navigator/Navigator;
    .locals 3

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/narvii/services/AminoNavigatorProvider;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    const-string v2, "config"

    .line 19
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 20
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->getScheme(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/services/AminoNavigatorProvider;->scheme:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/services/AminoNavigatorProvider;->cid:I

    .line 23
    :cond_0
    new-instance v0, Lcom/narvii/app/AminoNavigator;

    iget-object v1, p0, Lcom/narvii/services/AminoNavigatorProvider;->scheme:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/services/AminoNavigatorProvider;->cid:I

    invoke-direct {v0, p1, v1, v2}, Lcom/narvii/app/AminoNavigator;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/AminoNavigatorProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/navigator/Navigator;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/navigator/Navigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoNavigatorProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/navigator/Navigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoNavigatorProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/navigator/Navigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoNavigatorProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/navigator/Navigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoNavigatorProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/navigator/Navigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoNavigatorProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/navigator/Navigator;)V

    return-void
.end method
