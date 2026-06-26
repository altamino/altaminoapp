.class public final Lcom/narvii/influencer/InfluencerHelper;
.super Ljava/lang/Object;
.source "InfluencerHelper.kt"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "_ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/narvii/influencer/InfluencerHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public final checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 15
    iget-boolean v1, p1, Lcom/narvii/model/Feed;->needHidden:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/influencer/InfluencerHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    const-string v2, "accountService"

    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 21
    iget-object v0, p0, Lcom/narvii/influencer/InfluencerHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v3

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/account/AccountService;->getFanClub(Ljava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/narvii/influencer/InfluencerHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/influencer/InfluencerHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method
