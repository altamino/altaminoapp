.class public Lcom/narvii/editor/provider/MeisheServiceProvider;
.super Ljava/lang/Object;
.source "MeisheServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/editor/provider/MeisheService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/editor/provider/MeisheService;
    .locals 1

    .line 10
    new-instance v0, Lcom/narvii/editor/provider/MeisheService;

    invoke-direct {v0, p1}, Lcom/narvii/editor/provider/MeisheService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    invoke-virtual {v0}, Lcom/narvii/editor/provider/MeisheService;->init()V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/editor/provider/MeisheServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/editor/provider/MeisheService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/editor/provider/MeisheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/MeisheServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/editor/provider/MeisheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/MeisheServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/editor/provider/MeisheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/MeisheServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/editor/provider/MeisheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/MeisheServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/editor/provider/MeisheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/provider/MeisheServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/editor/provider/MeisheService;)V

    return-void
.end method
