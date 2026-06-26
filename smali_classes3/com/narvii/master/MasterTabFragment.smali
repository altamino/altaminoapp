.class public Lcom/narvii/master/MasterTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "MasterTabFragment.java"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;
.implements Lcom/narvii/notification/NotificationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;


# static fields
.field public static final INDEX_CHAT:I = 0x2

.field public static final INDEX_DISCOVER:I = 0x0

.field public static final INDEX_MY_COMMUNITY:I = 0x1

.field public static final INDEX_PROFILE:I = 0x3


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private alertBadge:Landroid/view/View;

.field private avatarLayout:Landroid/view/View;

.field public bottomSheetLayout:Landroid/widget/FrameLayout;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private defaultIndex:Ljava/lang/Integer;

.field eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

.field public isTopBarAvailable:Z

.field languageManager:Lcom/narvii/language/LanguageManager;

.field languagePickListener:Landroid/view/View$OnClickListener;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field public masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

.field private masterTabTopOffset:Landroid/view/View;

.field masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/master/MasterAppearanceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private masterTopBar:Lcom/narvii/master/MasterTopBar;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field private noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

.field pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field receiver:Landroid/content/BroadcastReceiver;

.field private final recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 123
    new-instance v0, Lcom/narvii/master/MasterTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterTabFragment$1;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Lcom/narvii/master/MasterTabFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterTabFragment$2;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    .line 299
    new-instance v0, Lcom/narvii/master/-$$Lambda$MasterTabFragment$qFhC5LO6JaFBYX0cSVy2JiC8Idw;

    invoke-direct {v0, p0}, Lcom/narvii/master/-$$Lambda$MasterTabFragment$qFhC5LO6JaFBYX0cSVy2JiC8Idw;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languagePickListener:Landroid/view/View$OnClickListener;

    .line 544
    new-instance v0, Lcom/narvii/master/MasterTabFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterTabFragment$3;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/util/PreferencesHelper;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/master/MasterTopBar;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/master/MasterTabFragment;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment;->statisticsEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/master/MasterTabFragment;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/master/MasterTabFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateContentLanguage()V

    return-void
.end method

.method private getDefaultLandingIndex()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultTabIndex(I)I
    .locals 1

    .line 597
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p1

    .line 598
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_1
    return p1
.end method

.method private getMyCommunityIndex()I
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    move-result v0

    return v0
.end method

.method private isStandaloneApp()Z
    .locals 2

    .line 615
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$null$0(Ljava/lang/Integer;Lcom/narvii/master/MasterAppearanceChangedListener;)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/narvii/master/MasterAppearanceChangedListener;->onMasterAppearanceChanged(I)V

    return-void
.end method

.method private onTabClicked(I)V
    .locals 5

    .line 432
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    .line 433
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 434
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 436
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    .line 437
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->storyListShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0, v2}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v2, :cond_2

    .line 440
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 441
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 442
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    .line 443
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    .line 444
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    .line 445
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 448
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    .line 455
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 456
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->isBottomOverlay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/master/MasterTabFragment;->setBottomTabOverlay(Z)V

    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {p0, v1}, Lcom/narvii/master/MasterTabFragment;->setBottomTabOverlay(Z)V

    .line 461
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    if-eq v0, p1, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 462
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    if-eqz p1, :cond_4

    .line 463
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->forceUpdateRecentVisitorCount()V

    :cond_4
    return-void
.end method

.method private sendContentLanguageRequest()V
    .locals 5

    .line 642
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->languageStoredInThisDevice()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "client-config/content-language-settings"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 644
    invoke-virtual {v2}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 645
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 646
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 647
    new-instance v3, Lcom/narvii/master/MasterTabFragment$4;

    const-class v4, Lcom/narvii/master/ContentLanguageSettingResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/master/MasterTabFragment$4;-><init>(Lcom/narvii/master/MasterTabFragment;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendGlobalConfigRequest()V
    .locals 4

    .line 674
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/configuration"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 675
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 676
    new-instance v2, Lcom/narvii/master/MasterTabFragment$5;

    const-class v3, Lcom/narvii/community/request/ConfigurationApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/MasterTabFragment$5;-><init>(Lcom/narvii/master/MasterTabFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendGlobalProfileRequest()V
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileHelper;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/narvii/master/home/profile/GlobalProfileHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;Z)V

    return-void
.end method

.method private statisticsEvent(I)V
    .locals 0

    return-void
.end method

.method private updateContentLanguage()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithEnAsDefault()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    invoke-virtual {v1, v0}, Lcom/narvii/master/MasterTopBar;->setContentLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateGlobalNoticeBadge()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->alertBadge:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {v1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addMasterThemeChangedListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 6

    .line 491
    invoke-super {p0}, Lcom/narvii/app/NVScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v5

    if-le v5, v4, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    if-eqz v1, :cond_3

    .line 496
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v5

    if-le v5, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public defaultTabIndex()I
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/master/MasterTabFragment;->getDefaultTabIndex(I)I

    move-result v0

    return v0

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->isStandaloneApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 590
    invoke-direct {p0, v1}, Lcom/narvii/master/MasterTabFragment;->getDefaultTabIndex(I)I

    move-result v0

    return v0

    .line 592
    :cond_1
    invoke-direct {p0, v1}, Lcom/narvii/master/MasterTabFragment;->getDefaultTabIndex(I)I

    move-result v0

    return v0
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->isStandaloneApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 527
    const-class p1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    return-object v1

    .line 539
    :cond_2
    const-class p1, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    return-object p1

    .line 535
    :cond_3
    const-class p1, Lcom/narvii/chat/global/chat/AggregationChatFragment;

    return-object p1

    .line 537
    :cond_4
    const-class p1, Lcom/narvii/master/home/MyAminosFragment;

    return-object p1

    .line 533
    :cond_5
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    return-object p1
.end method

.method public getMasterTabTopOffset()Landroid/view/View;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    return-object v0
.end method

.method public getMasterTopBar()Lcom/narvii/master/MasterTopBar;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Home"

    return-object v0
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 3

    .line 504
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->isStandaloneApp()Z

    move-result v0

    const v1, 0x7f0f03a5

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 506
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    :cond_1
    if-nez p1, :cond_2

    .line 511
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 513
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f02bf

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const p1, 0x7f0f024a

    .line 515
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    const p1, 0x7f0f0b28

    .line 517
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1

    .line 812
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 813
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public gotoDefaultTab()V
    .locals 1

    .line 743
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->getDefaultLandingIndex()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 744
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    return-void
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$new$4$MasterTabFragment(Landroid/view/View;)V
    .locals 1

    .line 300
    new-instance p1, Lcom/narvii/incubator/ContentLanguagePickHelper;

    invoke-direct {p1}, Lcom/narvii/incubator/ContentLanguagePickHelper;-><init>()V

    .line 301
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, v0}, Lcom/narvii/incubator/ContentLanguagePickHelper;->showLanguagePickerDialog(Lcom/narvii/app/NVActivity;)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$MasterTabFragment(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/master/-$$Lambda$MasterTabFragment$rjJmwevy6rXdtX03GE-lnODyJUs;

    invoke-direct {v1, p3}, Lcom/narvii/master/-$$Lambda$MasterTabFragment$rjJmwevy6rXdtX03GE-lnODyJUs;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 251
    invoke-static {p1}, Lcom/narvii/util/PaletteUtils;->isLightTone(Landroid/widget/ImageView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 252
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 254
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$onViewCreated$2$MasterTabFragment(Landroid/view/View;)V
    .locals 1

    .line 270
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ComposeIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public synthetic lambda$onViewCreated$3$MasterTabFragment(I)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Lcom/narvii/master/MasterTabFragment;->selectTab(I)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 312
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 313
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->setActive(Z)V

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 754
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 756
    instance-of v2, v1, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v2, :cond_0

    if-eq v1, p0, :cond_0

    check-cast v1, Lcom/narvii/app/FragmentOnBackListener;

    .line 758
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-interface {v1, v2}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v0, :cond_2

    .line 763
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    invoke-interface {v0, p1}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 368
    :sswitch_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "UserIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 369
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->openGlobalProfile()V

    goto/16 :goto_2

    .line 361
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "StoreIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 363
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 364
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 373
    :sswitch_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "GlobalSearch"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 375
    new-instance p1, Lcom/narvii/community/search/MasterThemeHelper;

    invoke-direct {p1, p0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 376
    const-class p1, Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 379
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "Global Chats"

    goto :goto_0

    :cond_0
    const-string v1, "My Community List"

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result v3

    const-string v4, "tab"

    if-eq v3, v0, :cond_2

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "chat"

    .line 385
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v0, "community"

    .line 388
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v0, "Source"

    .line 391
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 393
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f010029

    const v1, 0x7f01002a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    .line 348
    :sswitch_3
    const-class p1, Lcom/narvii/prefs/SettingsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 353
    :sswitch_4
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "AlertIcon"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 355
    const-class p1, Lcom/narvii/notice/AggregationNoticeFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "forceRefreshReminder"

    .line 356
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09008d -> :sswitch_4
        0x7f0908bf -> :sswitch_3
        0x7f0909dd -> :sswitch_2
        0x7f090ac0 -> :sswitch_1
        0x7f090c10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "content_language"

    .line 157
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 158
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    const-string v0, "chat"

    .line 159
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ChatService;

    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 160
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v1, p0}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    const-string v1, "account"

    .line 161
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v1, "membership"

    .line 162
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/MembershipService;

    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 163
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    const-string v1, "language"

    .line 164
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/language/LanguageManager;

    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->languageManager:Lcom/narvii/language/LanguageManager;

    const-string v1, "eventLogProfile"

    .line 165
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/EventLogProfileService;

    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    const-string v1, "_notice"

    .line 167
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/incubator/IncubatorNoticeService;

    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 168
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1, v2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    .line 171
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-virtual {v1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    .line 172
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-virtual {v1, p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->addReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    .line 175
    :cond_0
    new-instance v1, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/master/MasterTabFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    const-string v1, "tab"

    .line 177
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "my"

    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->getMyCommunityIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 181
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const-string v0, "discover"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->getDefaultLandingIndex()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 187
    :goto_0
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_4

    .line 188
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 189
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 190
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 191
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.COUPONS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->sendGlobalProfileRequest()V

    if-eqz p1, :cond_5

    const-string v0, "isTopBarAvailable"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0361

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 323
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->noticeService:Lcom/narvii/services/incubator/IncubatorNoticeService;

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0, p0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->removeReminderChangeListener(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    if-eqz v0, :cond_2

    .line 333
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1, v0}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    .line 337
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 338
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/core/ChatService;->removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public onHasReminderChanged(Z)V
    .locals 0

    .line 819
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateGlobalNoticeBadge()V

    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0

    .line 470
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateContentLanguage()V

    .line 474
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result p1

    .line 475
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 703
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    .line 707
    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    if-eqz v0, :cond_1

    .line 710
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {v0, p1}, Lcom/narvii/master/widget/MasterBottomBar;->setUser(Lcom/narvii/model/User;)V

    :cond_1
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 306
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 307
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateGlobalNoticeBadge()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    iget-boolean v0, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    const-string v1, "isTopBarAvailable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 1

    .line 795
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    if-eqz p1, :cond_1

    .line 796
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ChatService;->getAllUnreadThreadCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/master/widget/MasterBottomBar;->setUnreadChatMessage(Z)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 213
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 214
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 215
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0909dd

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f09008d

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f09008f

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->alertBadge:Landroid/view/View;

    const v0, 0x7f090ac0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f090c10

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v2, 0x7f0908bf

    .line 234
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 236
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v2, 0x7f0906c3

    .line 239
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    const v2, 0x7f0906c4

    .line 240
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/master/MasterTopBar;

    iput-object v2, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/MasterTabFragment;->avatarLayout:Landroid/view/View;

    .line 243
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->sendContentLanguageRequest()V

    .line 244
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->updateContentLanguage()V

    .line 245
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment;->languagePickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/narvii/master/MasterTopBar;->setContentLanguageClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 248
    invoke-static {v0}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    move-result-object v0

    .line 249
    new-instance v2, Lcom/narvii/master/-$$Lambda$MasterTabFragment$325n1G50u3y0Q4JlLlcSXUezfzI;

    invoke-direct {v2, p0}, Lcom/narvii/master/-$$Lambda$MasterTabFragment$325n1G50u3y0Q4JlLlcSXUezfzI;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    invoke-virtual {v0, v2}, Lcom/narvii/master/theme/MasterThemeFragment;->setOnBackgroundChangedCallback(Lkotlin/jvm/functions/Function3;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 260
    iget-object p2, p0, Lcom/narvii/master/MasterTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_6

    .line 261
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_6
    const p2, 0x7f090158

    .line 264
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/narvii/master/MasterTabFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    .line 265
    iget-object p2, p0, Lcom/narvii/master/MasterTabFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    invoke-static {p2}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    const p2, 0x7f0906c2

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/widget/MasterBottomBar;

    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 269
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    new-instance p2, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1Bpy75JkenVl4kV5RGs8_9kzFbE;

    invoke-direct {p2, p0}, Lcom/narvii/master/-$$Lambda$MasterTabFragment$1Bpy75JkenVl4kV5RGs8_9kzFbE;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;->setComposePreClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;->updateTabBottomLayout(I)V

    .line 273
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    iget-object p2, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;->setUser(Lcom/narvii/model/User;)V

    .line 274
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result p2

    if-le p2, v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    new-instance p2, Lcom/narvii/master/-$$Lambda$MasterTabFragment$mXia2OExHgOBHmss-8ToqhI4ByA;

    invoke-direct {p2, p0}, Lcom/narvii/master/-$$Lambda$MasterTabFragment$mXia2OExHgOBHmss-8ToqhI4ByA;-><init>(Lcom/narvii/master/MasterTabFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/master/widget/MasterBottomBar;->setTabSelectListener(Lcom/narvii/master/widget/MasterBottomBar$TabSelectListener;)V

    .line 280
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v1}, Lcom/narvii/chat/core/ChatService;->refresh(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/narvii/master/MasterTabFragment;->updateTopbar()V

    .line 282
    invoke-direct {p0}, Lcom/narvii/master/MasterTabFragment;->sendGlobalConfigRequest()V

    .line 283
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    iget-object p2, p0, Lcom/narvii/master/MasterTabFragment;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->addRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    return-void
.end method

.method protected openGlobalProfile()V
    .locals 4

    .line 409
    const-class v0, Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show_setting"

    const/4 v2, 0x1

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/narvii/master/MasterTabFragment;->avatarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 416
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment;->avatarLayout:Landroid/view/View;

    const-string v3, "avatar"

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public removeMasterThemeChangeListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterThemeChangedListener:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public selectTab(I)V
    .locals 2

    .line 424
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p1

    .line 425
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterTabFragment;->onTabClicked(I)V

    .line 426
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 427
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setBottomTabOverlay(Z)V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f0601ed

    goto :goto_0

    :cond_0
    const p1, 0x7f06012a

    :goto_0
    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 486
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public updateTopbar()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTopBarAvailable;

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterTopBarAvailable;

    invoke-interface {v0}, Lcom/narvii/master/MasterTopBarAvailable;->isTopBarAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 772
    iget-boolean v0, p0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    const/16 v1, 0x12c

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;I)V

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->fadeOut(Landroid/view/View;I)V

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment;->masterTabTopOffset:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method
