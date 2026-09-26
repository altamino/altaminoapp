.class public Lcom/narvii/services/AdsServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/wallet/AdsService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/wallet/AdsService;
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/wallet/AdsService;

    invoke-direct {v0, p1}, Lcom/narvii/wallet/AdsService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/AdsServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/wallet/AdsService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/wallet/AdsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AdsServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/wallet/AdsService;->pause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/AdsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AdsServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/wallet/AdsService;->resume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/AdsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AdsServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/wallet/AdsService;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/AdsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AdsServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/wallet/AdsService;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/wallet/AdsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AdsServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/wallet/AdsService;)V

    return-void
.end method
