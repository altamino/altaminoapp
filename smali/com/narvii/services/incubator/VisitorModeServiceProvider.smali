.class public Lcom/narvii/services/incubator/VisitorModeServiceProvider;
.super Ljava/lang/Object;
.source "VisitorModeServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/community/VisitorModeService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/VisitorModeService;
    .locals 1

    .line 10
    new-instance v0, Lcom/narvii/community/VisitorModeService;

    invoke-direct {v0, p1}, Lcom/narvii/community/VisitorModeService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/VisitorModeService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/VisitorModeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/VisitorModeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/VisitorModeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/VisitorModeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/VisitorModeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/VisitorModeServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/VisitorModeService;)V

    return-void
.end method
