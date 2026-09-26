.class public Lcom/narvii/onlinestatus/OnlineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public isOnline()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return v2

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v3, "affiliations"

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/community/AffiliationsService;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/narvii/onlinestatus/OnlineHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    const-string v4, "config"

    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    return v2

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    const/4 v1, 0x2

    .line 59
    .line 60
    if-eq v0, v1, :cond_2

    .line 61
    const/4 v2, 0x1

    .line 62
    :cond_2
    return v2
.end method
