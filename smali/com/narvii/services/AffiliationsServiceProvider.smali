.class public Lcom/narvii/services/AffiliationsServiceProvider;
.super Ljava/lang/Object;
.source "AffiliationsServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/community/AffiliationsService;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/AffiliationsService;
    .locals 1

    .line 13
    new-instance v0, Lcom/narvii/community/AffiliationsService;

    invoke-direct {v0, p1}, Lcom/narvii/community/AffiliationsService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/AffiliationsServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/AffiliationsService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AffiliationsServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V
    .locals 0

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p2, p1}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AffiliationsServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V
    .locals 0

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p2, p1}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AffiliationsServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V
    .locals 0

    .line 18
    invoke-virtual {p2}, Lcom/narvii/community/AffiliationsService;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AffiliationsServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V
    .locals 0

    .line 33
    invoke-virtual {p2}, Lcom/narvii/community/AffiliationsService;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AffiliationsServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/AffiliationsService;)V

    return-void
.end method
