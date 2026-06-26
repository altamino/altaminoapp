.class public Lcom/narvii/onlinestatus/OnlineHelper;
.super Ljava/lang/Object;
.source "OnlineHelper.java"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public isOnline()Z
    .locals 5

    .line 23
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "affiliations"

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/AffiliationsService;

    .line 29
    iget-object v3, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v4, "config"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 30
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
