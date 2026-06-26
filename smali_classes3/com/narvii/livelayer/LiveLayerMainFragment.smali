.class public Lcom/narvii/livelayer/LiveLayerMainFragment;
.super Lcom/narvii/list/NVListFragment;
.source "LiveLayerMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;
    }
.end annotation


# instance fields
.field public allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private emptyViewAdapter:Lcom/narvii/adapter/NVPagerStatusAdapter;

.field offline:Z

.field public onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

.field public pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

.field private peopleListAdapter:Lcom/narvii/members/PeopleListAdapter;

.field wsListener:Lcom/narvii/util/ws/WsService$WsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->offline:Z

    .line 65
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$1;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->wsListener:Lcom/narvii/util/ws/WsService$WsListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->blockClickEvent()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/LiveLayerMainFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/members/PeopleListAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->peopleListAdapter:Lcom/narvii/members/PeopleListAdapter;

    return-object p0
.end method

.method private blockClickEvent()Z
    .locals 5

    .line 501
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowLoginPage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "affiliations"

    .line 504
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    const-string v2, "config"

    .line 505
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 506
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    .line 507
    invoke-virtual {v0, v2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-static {p0}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;)Landroid/app/Dialog;

    goto :goto_0

    .line 511
    :cond_1
    new-instance v0, Lcom/narvii/model/Community;

    invoke-direct {v0}, Lcom/narvii/model/Community;-><init>()V

    .line 512
    iput v2, v0, Lcom/narvii/model/Community;->id:I

    .line 513
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/narvii/livelayer/LiveLayerMainFragment$9;

    invoke-direct {v4, p0, v2}, Lcom/narvii/livelayer/LiveLayerMainFragment$9;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;I)V

    invoke-static {v3, v0, v4}, Lcom/narvii/community/JoinCommunityDialog;->join(Landroid/content/Context;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)Lcom/narvii/community/JoinCommunityDialog;

    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private resetBlurColor()V
    .locals 2

    .line 590
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090b68

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    if-eqz v0, :cond_0

    const/high16 v1, -0x4d000000

    .line 593
    invoke-virtual {v0, v1}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->setOverlayColor(I)V

    const/4 v1, 0x0

    .line 594
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private tryBindSwipeView()V
    .locals 2

    .line 581
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0904ba

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SwipeableLayout;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->bindListView(Landroid/widget/AbsListView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    const-string p1, "liveLayer"

    .line 226
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 227
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerService;->getCachedLiveLayerMainData()Lcom/narvii/livelayer/LiveLayerMainData;

    move-result-object p1

    .line 229
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$3;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    const-string v1, "pageTopic"

    .line 255
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Live Layer (Home)"

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Lcom/narvii/livelayer/LiveLayerMainFragment$4;

    invoke-direct {v1, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$4;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 295
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iput-object v2, v1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    :cond_0
    new-instance v1, Lcom/narvii/livelayer/LiveLayerMainFragment$5;

    invoke-direct {v1, p0, p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$5;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerMainData;)V

    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 352
    iget-object v3, p1, Lcom/narvii/livelayer/LiveLayerMainData;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    if-eqz v3, :cond_1

    .line 353
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {v4, v3}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->setCachedUserListResponse(Lcom/narvii/model/api/UserListResponse;)V

    .line 354
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iput-object v2, v3, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    const/4 v2, 0x1

    .line 357
    invoke-virtual {v0, v3, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 358
    new-instance v2, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070213

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    new-instance v2, Lcom/narvii/livelayer/LiveLayerMainFragment$6;

    invoke-direct {v2, p0, p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$6;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerMainData;)V

    iput-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    if-eqz p1, :cond_2

    .line 409
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerMainData;->onlineCategoryList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 410
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v2, p1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->setCachedListData(Ljava/util/List;)V

    .line 412
    :cond_2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    new-instance p1, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p1, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 416
    new-instance p1, Lcom/narvii/livelayer/LiveLayerMainFragment$7;

    invoke-direct {p1, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$7;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->emptyViewAdapter:Lcom/narvii/adapter/NVPagerStatusAdapter;

    .line 455
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->emptyViewAdapter:Lcom/narvii/adapter/NVPagerStatusAdapter;

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    invoke-virtual {p1, v2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 456
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->emptyViewAdapter:Lcom/narvii/adapter/NVPagerStatusAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const-string p1, "fromCommunityDetail"

    .line 459
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 460
    new-instance p1, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V

    .line 461
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    new-instance v2, Lcom/narvii/livelayer/LiveLayerMainFragment$8;

    invoke-direct {v2, p0, p0, v1, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$8;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/livelayer/LiveLayerMainFragment$AllMembersTitleAdapter;)V

    iput-object v2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->peopleListAdapter:Lcom/narvii/members/PeopleListAdapter;

    .line 490
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->peopleListAdapter:Lcom/narvii/members/PeopleListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 113
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "LiveLayer"

    return-object v0
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 168
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    const-string p1, "liveLayer"

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 175
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->wsListener:Lcom/narvii/util/ws/WsService$WsListener;

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    const/4 p1, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setShowScrollBarOnlyWhenScroll(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b04d6

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    invoke-static {}, Lcom/narvii/livelayer/BackgroundHelper;->getDynamicBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->resetBlurColor()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "liveLayer"

    .line 182
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 183
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->wsListener:Lcom/narvii/util/ws/WsService$WsListener;

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    .line 184
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 551
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->tryBindSwipeView()V

    .line 555
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->resetBlurColor()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 189
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 191
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 192
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0x669f9fa0    # -1.1599991E-23f

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 198
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainData;

    invoke-direct {v0}, Lcom/narvii/livelayer/LiveLayerMainData;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getUserListResponse()Lcom/narvii/model/api/UserListResponse;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMainData;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->getLiveLayerList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMainData;->onlineCategoryList:Ljava/util/List;

    :cond_1
    const-string v1, "liveLayer"

    .line 206
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerService;->cacheLiveLayerMainData(Lcom/narvii/livelayer/LiveLayerMainData;)V

    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 561
    new-instance v0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$10;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V

    .line 573
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const/16 v2, 0x200

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v1, v2, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->allOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 577
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 542
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 543
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->offline:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->offline:Z

    .line 545
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment;->onlineCategoryAdapter:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 118
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0906b4

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09067f

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0aff

    .line 124
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 127
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v1

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->tryBindSwipeView()V

    const p2, 0x7f090718

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance p2, Lcom/narvii/livelayer/LiveLayerMainFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/livelayer/LiveLayerMainFragment$2;-><init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
