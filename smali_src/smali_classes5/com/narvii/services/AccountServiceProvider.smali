.class public Lcom/narvii/services/AccountServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/account/AccountService;",
        ">;"
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;


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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AccountService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/services/AccountServiceProvider;->accountService:Lcom/narvii/account/AccountService;

    if-nez v0, :cond_0

    const-string v0, "config"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 3
    new-instance v0, Lcom/narvii/account/AccountService;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/narvii/account/AccountService;-><init>(Lcom/narvii/app/NVContext;II)V

    iput-object v0, p0, Lcom/narvii/services/AccountServiceProvider;->accountService:Lcom/narvii/account/AccountService;

    :cond_0
    iget-object p1, p0, Lcom/narvii/services/AccountServiceProvider;->accountService:Lcom/narvii/account/AccountService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/AccountServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AccountService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AccountServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AccountServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/services/AccountServiceProvider;->accountService:Lcom/narvii/account/AccountService;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->crossAppsCheckInBackground()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AccountServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AccountServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AccountServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V

    return-void
.end method
