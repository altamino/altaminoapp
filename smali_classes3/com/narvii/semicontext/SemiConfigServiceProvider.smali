.class public Lcom/narvii/semicontext/SemiConfigServiceProvider;
.super Ljava/lang/Object;
.source "SemiConfigServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/semicontext/SemiConfigService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/semicontext/SemiConfigService;
    .locals 2

    .line 13
    new-instance v0, Lcom/narvii/semicontext/SemiConfigService;

    move-object v1, p1

    check-cast v1, Lcom/narvii/semicontext/SemiActivity;

    invoke-virtual {v1}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/narvii/semicontext/SemiConfigService;-><init>(Lcom/narvii/app/NVContext;I)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/semicontext/SemiConfigServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/semicontext/SemiConfigService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/semicontext/SemiConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiConfigServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/semicontext/SemiConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiConfigServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/semicontext/SemiConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiConfigServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/semicontext/SemiConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiConfigServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/semicontext/SemiConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiConfigServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/semicontext/SemiConfigService;)V

    return-void
.end method
