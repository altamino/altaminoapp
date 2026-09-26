.class public Lcom/narvii/tipping/TippingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field nvContext:Lcom/narvii/app/NVContext;

.field source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/tipping/TippingHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isTipAuthor(Lcom/narvii/model/Tippable;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTipAuthor()Lcom/narvii/model/User;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/tipping/TippingHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_1
    return v0
.end method

.method public openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Tippable;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/tipping/TippingHelper;->source:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->source:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->setTipSuccessListener(Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->show()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    const-string p2, "statistics"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 32
    .line 33
    const-string p2, "Taps on Give Props"

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string p2, "Source"

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/tipping/TippingHelper;->source:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string p2, "Taps on Give Props Total"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 51
    return-object v0
.end method

.method public openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {v0}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V

    :goto_1
    return-void
.end method

.method public openTippingList(Lcom/narvii/model/Tippable;ZLcom/narvii/model/Community;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_1

    const-class v0, Lcom/narvii/model/Feed;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_2

    const-class v0, Lcom/narvii/model/ChatThread;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Lcom/narvii/tipping/TippingAuthorListFragment;

    goto :goto_1

    :cond_4
    const-class v1, Lcom/narvii/tipping/TippingViewerListFragment;

    .line 7
    :goto_1
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "object"

    .line 8
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "objectClass"

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "community"

    .line 10
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Source"

    iget-object v0, p0, Lcom/narvii/tipping/TippingHelper;->source:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    instance-of p3, p1, Lcom/narvii/model/CommunityObjectInGlobal;

    if-eqz p3, :cond_5

    .line 13
    check-cast p1, Lcom/narvii/model/CommunityObjectInGlobal;

    invoke-interface {p1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    move-result p1

    const-string p3, "__communityId"

    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    const-string p1, "__interactionScope"

    .line 14
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/tipping/TippingHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 15
    invoke-static {p1, v1}, Lcom/narvii/tipping/TippingHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    return-void
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/tipping/TippingHelper;
    .locals 0

    iput-object p1, p0, Lcom/narvii/tipping/TippingHelper;->source:Ljava/lang/String;

    return-object p0
.end method
