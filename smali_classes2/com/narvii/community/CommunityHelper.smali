.class public Lcom/narvii/community/CommunityHelper;
.super Ljava/lang/Object;
.source "CommunityHelper.java"


# instance fields
.field private nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public checkCommunityJoined(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkCommunityJoined(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->isJoinedCommunityWithContext(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 82
    :cond_1
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f075b

    .line 83
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0193

    .line 84
    new-instance v2, Lcom/narvii/community/-$$Lambda$CommunityHelper$r-8bD6Xqs5gpKGaZtp_4ZMDp0sE;

    invoke-direct {v2, p0, p2}, Lcom/narvii/community/-$$Lambda$CommunityHelper$r-8bD6Xqs5gpKGaZtp_4ZMDp0sE;-><init>(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f0aa0

    .line 85
    new-instance v2, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;

    invoke-direct {v2, p0, p2, p1}, Lcom/narvii/community/-$$Lambda$CommunityHelper$j4hYC7KUC6XK7AbOGsT64Ml0q6A;-><init>(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 93
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public checkCurrentCommunityJoined()Z
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "checkCurrentCommunityJoined: nvcontex is null"

    .line 60
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "config"

    .line 63
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    if-nez v0, :cond_1

    const-string v0, "checkCurrentCommunityJoined: configService is null"

    .line 65
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v1

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v0

    return v0
.end method

.method public getCommunityId()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    const-string v1, "config"

    .line 100
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 101
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isJoinedCommunity(I)Z
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "isJoinedCommunity: nvcontex is null"

    .line 30
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "account"

    .line 33
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 34
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "affiliations"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 38
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    return p1
.end method

.method public isJoinedCommunityWithContext(I)Z
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    const-string v1, "config"

    .line 50
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 51
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->isJoinedCommunity(I)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$checkCommunityJoined$0$CommunityHelper(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->onCancelButtonPreClick(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$checkCommunityJoined$1$CommunityHelper(Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->onJoinButtonPreClick(Ljava/lang/String;)V

    .line 88
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "id"

    .line 89
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "joinOnly"

    const/4 p3, 0x1

    .line 90
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonPreClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onJoinButtonPreClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
