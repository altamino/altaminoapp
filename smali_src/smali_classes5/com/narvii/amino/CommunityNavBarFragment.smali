.class public Lcom/narvii/amino/CommunityNavBarFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# static fields
.field private static final REQUEST_JOIN:I = 0x3e8


# instance fields
.field private final accountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private accountService:Lcom/narvii/account/AccountService;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private alertBadge:Landroid/view/View;

.field balanceView:Lcom/narvii/widget/WalletBalanceView;

.field community:Lcom/narvii/model/Community;

.field private final communityChangedReceiver:Landroid/content/BroadcastReceiver;

.field communityLaunchHelperWithIcon:Lcom/narvii/community/CommunityLaunchHelperWithIcon;

.field private communityService:Lcom/narvii/community/CommunityService;

.field configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field configService:Lcom/narvii/config/ConfigService;

.field private fakeTitleView:Landroid/widget/TextView;

.field fromGlobal:Z

.field private hideCommunityBar:Z

.field private launchCommunityWhenJoined:Z

.field private menuClickListener:Landroid/view/View$OnClickListener;

.field private openCommunityDetailClickListener:Landroid/view/View$OnClickListener;

.field private openDrawerClickListener:Landroid/view/View$OnClickListener;

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->launchCommunityWhenJoined:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$1;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawerClickListener:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/amino/a;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/amino/a;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openCommunityDetailClickListener:Landroid/view/View$OnClickListener;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$5;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$5;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$6;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$6;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$7;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$7;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$8;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$8;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$12;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$12;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 59
    return-void
.end method

.method private enterCommunity()V
    .locals 11

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper;

    .line 21
    .line 22
    const-string v0, "Source"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, v0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 30
    .line 31
    const-string v0, "__communityId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 35
    move-result v3

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method private enterCommunityWithAniamtion(Lcom/narvii/widget/NVImageView;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v0, "config"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityLaunchHelperWithIcon:Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    .line 32
    .line 33
    const-string v2, "Source"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V

    .line 45
    .line 46
    iput-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityLaunchHelperWithIcon:Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityLaunchHelperWithIcon:Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    .line 53
    return-void
.end method

.method private fromHeadline()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "fromHeadline"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private getCommunityIconView()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a036b

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method private getHomeFragment()Lcom/narvii/amino/HomeFragment;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v2, "home"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    instance-of v2, v0, Lcom/narvii/amino/HomeFragment;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/amino/HomeFragment;

    .line 29
    return-object v0

    .line 30
    :cond_1
    return-object v1
.end method

.method private isCommunityJoined()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailInCommunity()V

    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/community/CommunityService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    return-object p0
.end method

.method private onCommunityUpdated()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 4
    return-void
.end method

.method private onTapCommunityIcon()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawer()V

    .line 13
    :goto_0
    return-void
.end method

.method private openDrawer()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getHomeFragment()Lcom/narvii/amino/HomeFragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "CommunityIcon"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    instance-of v1, v0, Lcom/narvii/app/DrawerActivity;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    .line 46
    :cond_2
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->enterCommunityWithAniamtion(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/amino/CommunityNavBarFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->fromHeadline()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/amino/HomeFragment;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getHomeFragment()Lcom/narvii/amino/HomeFragment;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->onCommunityUpdated()V

    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setUpTitle(Landroid/app/Activity;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawerClickListener:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0077

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/util/actionbar/ActionBarLayout;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/amino/CommunityNavBarFragment$9;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment$9;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/narvii/util/actionbar/ActionBarLayout;->setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    const v0, 0x7f0a0084

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    :cond_2
    const-string p1, "config"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 79
    move-result p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    const-string p1, "__community"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    const-class v0, Lcom/narvii/model/Community;

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/model/Community;

    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const/4 p1, 0x0

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 122
    .line 123
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    const/4 v1, 0x0

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void
.end method

.method private showCommunityDetailInCommunity()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/master/CommunityHelper;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    new-array v4, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themeColor()I

    .line 41
    move-result v5

    .line 42
    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    aput-object v5, v4, v1

    .line 48
    .line 49
    const-string v1, "#%06X"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    const-string/jumbo v4, "pageBackground"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "prefetch"

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    const-string v0, "isCurrentUserJoined"

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->isCommunityJoined()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->isCommunityJoined()Z

    .line 82
    move-result v0

    .line 83
    xor-int/2addr v0, v3

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "showJoin"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    .line 91
    const-string v0, "customFinishAnimIn"

    .line 92
    .line 93
    .line 94
    const v1, 0x7f010037

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    .line 99
    const-string v0, "customFinishAnimOut"

    .line 100
    .line 101
    .line 102
    const v3, 0x7f010038

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v2}, Lcom/narvii/amino/CommunityNavBarFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 116
    :cond_1
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->onTapCommunityIcon()V

    return-void
.end method

.method private tryJoinPrivateCommunity()V
    .locals 5

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "__communityId"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    const-string v2, "id"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    const-string v1, "__community"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "prefetch"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    const-string v1, "joinOnly"

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    .line 37
    const-string v1, "customFinishAnimIn"

    .line 38
    .line 39
    .line 40
    const v2, 0x7f010037

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    const-string v1, "customFinishAnimOut"

    .line 46
    .line 47
    .line 48
    const v3, 0x7f010038

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    .line 53
    const-string v1, "Source"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->fromHeadline()Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    const-string v1, "loggingObjectId"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    const-string v4, "eventOrigin"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    :cond_0
    const/16 v1, 0x3e8

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/CommunityNavBarFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 99
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawer()V

    return-void
.end method

.method private updateActionBar(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 9
    .line 10
    const-string v2, "__communityId"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0d06c3

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    const v1, 0x7f0d002c

    .line 36
    :goto_0
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0a007d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    new-instance v3, Lcom/narvii/amino/CommunityNavBarFragment$3;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, p0}, Lcom/narvii/amino/CommunityNavBarFragment$3;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    const v2, 0x7f0a007c

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    new-instance v3, Lcom/narvii/amino/CommunityNavBarFragment$4;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, p0}, Lcom/narvii/amino/CommunityNavBarFragment$4;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    const/4 v0, 0x0

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 84
    move-result v2

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 88
    move-result v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    move-result v2

    .line 102
    .line 103
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 113
    move-result v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    :cond_3
    return-void
.end method

.method private updateActionBarIcon()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    goto :goto_2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    return-void

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string v2, "__community"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-class v2, Lcom/narvii/model/Community;

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    check-cast v1, Lcom/narvii/model/Community;

    .line 61
    .line 62
    :cond_2
    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 63
    .line 64
    const-string v3, "__communityId"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 68
    move-result v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 72
    move-result v2

    .line 73
    .line 74
    .line 75
    const v3, 0x7f0a036b

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 82
    .line 83
    if-nez v1, :cond_3

    .line 84
    const/4 v1, 0x0

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_3
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment$10;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/narvii/amino/CommunityNavBarFragment$10;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_4
    iget-boolean v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 104
    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawerClickListener:Landroid/view/View$OnClickListener;

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_5
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment$11;

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment$11;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_6
    :goto_2
    return-void
.end method

.method private updateAlertsCount()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getNotificationCount()I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    .line 25
    move-result v0

    .line 26
    add-int/2addr v2, v0

    .line 27
    .line 28
    if-gtz v2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    .line 34
    :goto_1
    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->alertBadge:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    const/4 v1, 0x4

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_3
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->setUpTitle(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBarIcon()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateAlertsCount()V

    return-void
.end method


# virtual methods
.method public community()Lcom/narvii/model/Community;
    .locals 1

    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public communityId()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "__communityId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hideCommunityView()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getCommunityIconView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0d002e

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a0079

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    const-string v3, "hideBackButton"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v3, 0x0

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBarIcon()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    new-instance v2, Lcom/narvii/amino/CommunityNavBarFragment$2;

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/narvii/amino/CommunityNavBarFragment$2;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    const v1, 0x7f0a0553

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    check-cast v1, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 80
    .line 81
    .line 82
    const v1, 0x7f0a1019

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    check-cast v1, Lcom/narvii/widget/WalletBalanceView;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->setUpTitle(Landroid/app/Activity;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->balanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 99
    .line 100
    iget-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBar(Landroid/view/View;)V

    .line 106
    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1
    .line 2
    const/16 v0, 0x3e8

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->launchCommunityWhenJoined:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper;

    .line 14
    .line 15
    const-string p1, "Source"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->communityId()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->community()Lcom/narvii/model/Community;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v0 .. v8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    .line 50
    const-string/jumbo p1, "recentCommunities"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    .line 62
    :cond_0
    return-void

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBar(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBarIcon()V

    .line 8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 11
    .line 12
    const-string p1, "account"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    const-string p1, "community"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 31
    .line 32
    const-string p1, "affiliations"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 41
    .line 42
    const-string p1, "config"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 51
    .line 52
    const-string p1, "__community"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-class v0, Lcom/narvii/model/Community;

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Lcom/narvii/model/Community;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    .line 67
    .line 68
    const-string p1, "fromHeadline"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 72
    move-result p1

    .line 73
    const/4 v0, 0x1

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    const-string p1, "__fromGlobalChat"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-eqz p1, :cond_0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 p1, 0x0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    move p1, v0

    .line 88
    .line 89
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 90
    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    .line 96
    .line 97
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    .line 107
    new-instance v1, Landroid/content/IntentFilter;

    .line 108
    .line 109
    const-string v2, "com.narvii.action.COMMUNITY_CHANGED"

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 118
    .line 119
    new-instance v1, Landroid/content/IntentFilter;

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 133
    goto :goto_2

    .line 134
    .line 135
    :cond_2
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 139
    .line 140
    :goto_2
    iget-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 141
    xor-int/2addr p1, v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 145
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0e0003

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a0dba

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a0dbb

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 42
    .line 43
    const-string v1, "assets://globalStoreIcon.webp"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    const v0, 0x7f0a00fd

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    const v1, 0x7f0a01a7

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->alertBadge:Landroid/view/View;

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 36
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateAlertsCount()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0dba

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    move v3, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a00fd

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 42
    move-result-object v1

    .line 43
    xor-int/2addr v0, v2

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 47
    .line 48
    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToCommunity()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 22
    :cond_0
    return-void
.end method

.method public showCommunityDetailPage(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->launchCommunityWhenJoined:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->tryJoinPrivateCommunity()V

    .line 6
    return-void
.end method

.method public showCommunityView()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getCommunityIconView()Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-ne v3, v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_1
    return-void
.end method
