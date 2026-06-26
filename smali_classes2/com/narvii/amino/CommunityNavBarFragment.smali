.class public Lcom/narvii/amino/CommunityNavBarFragment;
.super Lcom/narvii/app/NVFragment;
.source "CommunityNavBarFragment.java"

# interfaces
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# static fields
.field private static final REQUEST_JOIN:I = 0x3e8


# instance fields
.field private final accountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private accountService:Lcom/narvii/account/AccountService;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private alertBadge:Landroid/view/View;

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

    .line 72
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->launchCommunityWhenJoined:Z

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    .line 86
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$1;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawerClickListener:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lcom/narvii/amino/-$$Lambda$CommunityNavBarFragment$t7uRNS0KK8_WbK6PGgs8sKq5kcw;

    invoke-direct {v0, p0}, Lcom/narvii/amino/-$$Lambda$CommunityNavBarFragment$t7uRNS0KK8_WbK6PGgs8sKq5kcw;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openCommunityDetailClickListener:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$5;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 346
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$6;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$7;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$8;

    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$8;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 519
    new-instance v0, Lcom/narvii/amino/CommunityNavBarFragment$12;

    invoke-direct {v0, p0}, Lcom/narvii/amino/CommunityNavBarFragment$12;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawer()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/amino/CommunityNavBarFragment;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->fromHeadline()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/community/CommunityService;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateAlertsCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->onCommunityUpdated()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBarIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/app/Activity;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->setUpTitle(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->enterCommunityWithAniamtion(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->onTapCommunityIcon()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/amino/HomeFragment;
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getHomeFragment()Lcom/narvii/amino/HomeFragment;

    move-result-object p0

    return-object p0
.end method

.method private enterCommunity()V
    .locals 11

    const-string v0, "config"

    .line 450
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 451
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v4

    .line 452
    new-instance v2, Lcom/narvii/community/CommunityLaunchHelper;

    const-string v0, "Source"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const-string v0, "__communityId"

    .line 453
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    return-void
.end method

.method private enterCommunityWithAniamtion(Lcom/narvii/widget/NVImageView;)V
    .locals 4

    .line 438
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "config"

    .line 441
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 442
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityLaunchHelperWithIcon:Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    if-nez v1, :cond_1

    .line 444
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    const-string v2, "Source"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityLaunchHelperWithIcon:Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityLaunchHelperWithIcon:Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    return-void
.end method

.method private fromHeadline()Z
    .locals 1

    const-string v0, "fromHeadline"

    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCommunityIconView()Landroid/view/View;
    .locals 2

    .line 610
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0902a3

    .line 614
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHomeFragment()Lcom/narvii/amino/HomeFragment;
    .locals 3

    .line 557
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 560
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "home"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 561
    instance-of v2, v0, Lcom/narvii/amino/HomeFragment;

    if-eqz v2, :cond_1

    .line 562
    check-cast v0, Lcom/narvii/amino/HomeFragment;

    return-object v0

    :cond_1
    return-object v1
.end method

.method private isCommunityJoined()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    return v0
.end method

.method private onCommunityUpdated()V
    .locals 0

    .line 358
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method private onTapCommunityIcon()V
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 429
    invoke-virtual {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawer()V

    :goto_0
    return-void
.end method

.method private openDrawer()V
    .locals 2

    .line 311
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getHomeFragment()Lcom/narvii/amino/HomeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "CommunityIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 322
    instance-of v1, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v1, :cond_2

    .line 323
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 324
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    :cond_2
    return-void
.end method

.method private setUpTitle(Landroid/app/Activity;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 391
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090046

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/actionbar/ActionBarLayout;

    if-eqz v0, :cond_1

    .line 394
    new-instance v2, Lcom/narvii/amino/CommunityNavBarFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment$9;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/narvii/util/actionbar/ActionBarLayout;->setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    :cond_1
    const v0, 0x7f090053

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 414
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const-string p1, "config"

    .line 416
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 417
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    .line 418
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const-string p1, "__community"

    .line 419
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 423
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showCommunityDetailInCommunity()V
    .locals 6

    .line 246
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, v1}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailPage(Z)V

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 251
    new-instance v2, Lcom/narvii/master/CommunityHelper;

    invoke-direct {v2, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 252
    invoke-virtual {v2, v0}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themeColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "#%06X"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "pageBackground"

    .line 255
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->isCommunityJoined()Z

    move-result v0

    const-string v1, "isCurrentUserJoined"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->isCommunityJoined()Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v1, "showJoin"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x7f010029

    const-string v1, "customFinishAnimIn"

    .line 259
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v1, 0x7f01002a

    const-string v3, "customFinishAnimOut"

    .line 260
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 262
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method private tryJoinPrivateCommunity()V
    .locals 5

    .line 230
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__communityId"

    .line 231
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__community"

    .line 232
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "joinOnly"

    const/4 v2, 0x1

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f010029

    const-string v2, "customFinishAnimIn"

    .line 234
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x7f01002a

    const-string v3, "customFinishAnimOut"

    .line 235
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Source"

    .line 236
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->fromHeadline()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "loggingObjectId"

    .line 238
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    sget-object v3, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eventOrigin"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v3, 0x3e8

    .line 241
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private updateActionBar(Landroid/view/View;)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 171
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string v2, "__communityId"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    .line 172
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-nez v1, :cond_0

    const v1, 0x7f0b060f

    goto :goto_0

    :cond_0
    const v1, 0x7f0b002d

    :goto_0
    const/4 v3, 0x0

    .line 173
    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09004c

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 176
    new-instance v3, Lcom/narvii/amino/CommunityNavBarFragment$3;

    invoke-direct {v3, p0}, Lcom/narvii/amino/CommunityNavBarFragment$3;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v2, 0x7f09004b

    .line 188
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 190
    new-instance v3, Lcom/narvii/amino/CommunityNavBarFragment$4;

    invoke-direct {v3, p0}, Lcom/narvii/amino/CommunityNavBarFragment$4;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_2
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(Landroid/view/View;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 208
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_3

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    return-void
.end method

.method private updateActionBarIcon()V
    .locals 4

    .line 457
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 458
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 461
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    .line 467
    iget-boolean v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-eqz v2, :cond_2

    const-string v2, "__community"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 468
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/Community;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string v3, "__communityId"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    const v3, 0x7f0902a3

    .line 472
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 474
    :cond_3
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    if-nez v2, :cond_4

    .line 477
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment$10;

    invoke-direct {v1, p0}, Lcom/narvii/amino/CommunityNavBarFragment$10;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 484
    :cond_4
    iget-boolean v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->openDrawerClickListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/narvii/amino/CommunityNavBarFragment$11;

    invoke-direct {v1, p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment$11;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;Lcom/narvii/widget/NVImageView;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateAlertsCount()V
    .locals 3

    const-string v0, "account"

    .line 579
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getNotificationCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    move-result v0

    add-int/2addr v2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 582
    :goto_1
    iget-object v2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->alertBadge:Landroid/view/View;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 583
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public community()Lcom/narvii/model/Community;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public communityId()I
    .locals 1

    const-string v0, "__communityId"

    .line 222
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hideCommunityView()V
    .locals 3

    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    .line 589
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getCommunityIconView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 591
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$CommunityNavBarFragment(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityDetailInCommunity()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 138
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarLeftView(Landroid/view/View;)V

    const v1, 0x7f090048

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "hideBackButton"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBarIcon()V

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 150
    new-instance v2, Lcom/narvii/amino/CommunityNavBarFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/amino/CommunityNavBarFragment$2;-><init>(Lcom/narvii/amino/CommunityNavBarFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v1, 0x7f090419

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    .line 161
    invoke-direct {p0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->setUpTitle(Landroid/app/Activity;)V

    .line 163
    iget-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-eqz p1, :cond_3

    .line 164
    invoke-direct {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBar(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 269
    iget-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->launchCommunityWhenJoined:Z

    if-eqz p1, :cond_0

    .line 270
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper;

    const-string p1, "Source"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 271
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->communityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->community()Lcom/narvii/model/Community;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 273
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    const-string p1, "recentCommunities"

    .line 274
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 275
    iget-object p2, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    invoke-virtual {p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAffiliationChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 622
    invoke-direct {p0, v0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBar(Landroid/view/View;)V

    .line 623
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateActionBarIcon()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const-string p1, "account"

    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "community"

    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityService:Lcom/narvii/community/CommunityService;

    const-string p1, "affiliations"

    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string p1, "config"

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string p1, "__community"

    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->community:Lcom/narvii/model/Community;

    const-string p1, "fromHeadline"

    .line 114
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const-string p1, "__fromGlobalChat"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    .line 115
    iget-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-nez p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 117
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 119
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountService:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p1, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    goto :goto_2

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 123
    :goto_2
    iget-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 499
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-nez v0, :cond_1

    const v0, 0x7f0c0001

    .line 500
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090abf

    .line 502
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090ac0

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    .line 506
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const-string v1, "assets://globalStoreIcon.webp"

    .line 507
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_0
    const v0, 0x7f090096

    .line 510
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090115

    .line 513
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->alertBadge:Landroid/view/View;

    .line 516
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 298
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->communityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->accountService:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 306
    :goto_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 293
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 569
    iget-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fromGlobal:Z

    if-nez v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->updateAlertsCount()V

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result v0

    const v1, 0x7f090abf

    .line 573
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/narvii/amino/CommunityNavBarFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f090096

    .line 574
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 575
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 286
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method public showCommunityDetailPage(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->launchCommunityWhenJoined:Z

    .line 218
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->tryJoinPrivateCommunity()V

    return-void
.end method

.method public showCommunityView()V
    .locals 4

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p0, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityBar:Z

    .line 600
    invoke-direct {p0}, Lcom/narvii/amino/CommunityNavBarFragment;->getCommunityIconView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 602
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 605
    iget-object v1, p0, Lcom/narvii/amino/CommunityNavBarFragment;->fakeTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
