.class public Lcom/narvii/community/CommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/community/CommunityHelper;->lambda$checkCommunityJoined$1(Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/CommunityHelper;->lambda$checkCommunityJoined$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$checkCommunityJoined$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->onCancelButtonPreClick(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$checkCommunityJoined$1(Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->onJoinButtonPreClick(Ljava/lang/String;)V

    .line 4
    .line 5
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string p3, "id"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    const-string p2, "joinOnly"

    .line 17
    const/4 p3, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/community/CommunityHelper;->safedk_CommunityHelper_startActivity_f7bde90a84ede91f4dadfed13975ceca(Lcom/narvii/community/CommunityHelper;Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public static safedk_CommunityHelper_startActivity_f7bde90a84ede91f4dadfed13975ceca(Lcom/narvii/community/CommunityHelper;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/community/CommunityHelper;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/community/CommunityHelper;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->startActivity(Landroid/content/Intent;)V

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
.method public checkCommunityJoined(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkCommunityJoined(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->isJoinedCommunityWithContext(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120808

    .line 4
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 5
    new-instance v1, Lcom/narvii/community/c;

    invoke-direct {v1, p0, p2}, Lcom/narvii/community/c;-><init>(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;)V

    const v2, 0x7f1201e2

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 6
    new-instance v1, Lcom/narvii/community/d;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/community/d;-><init>(Lcom/narvii/community/CommunityHelper;Ljava/lang/String;I)V

    const p1, 0x7f120b53

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public checkCurrentCommunityJoined()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "checkCurrentCommunityJoined: nvcontex is null"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 11
    return v1

    .line 12
    .line 13
    :cond_0
    const-string v2, "config"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "checkCurrentCommunityJoined: configService is null"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 27
    return v1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    .line 35
    move-result v0

    .line 36
    return v0
.end method

.method public getCommunityId()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "config"

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, -0x1

    .line 25
    return v0
.end method

.method public isJoinedCommunity(I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "isJoinedCommunity: nvcontex is null"

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 11
    return v1

    .line 12
    .line 13
    :cond_0
    const-string v2, "account"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    return v1

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    const-string v1, "affiliations"

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public isJoinedCommunityWithContext(I)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "config"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityHelper;->isJoinedCommunity(I)Z

    .line 29
    move-result p1

    .line 30
    return p1
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/community/CommunityHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 6
    return-void
.end method
