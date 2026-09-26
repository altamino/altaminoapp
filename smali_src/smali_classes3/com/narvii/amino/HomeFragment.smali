.class public Lcom/narvii/amino/HomeFragment;
.super Lcom/narvii/app/NVBaseScrollableTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/NVFragment$MenuHost;
.implements Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;
.implements Lcom/narvii/account/AccountService$FanClubListListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/HomeFragment$Adapter;,
        Lcom/narvii/amino/HomeFragment$HasExtraHeight;,
        Lcom/narvii/amino/HomeFragment$HomeMenuController;
    }
.end annotation


# static fields
.field private static final AUTO_REFRESH_TIME:I = 0x4e20

.field static fMenuItemShowAsAction:Ljava/lang/reflect/Field;


# instance fields
.field autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

.field private final bodyRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

.field collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field communityService:Lcom/narvii/community/CommunityService;

.field configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field configService:Lcom/narvii/config/ConfigService;

.field public curSelectedPos:I

.field currentShowingFragment:Lcom/narvii/app/NVFragment;

.field featureMemberEnabled:Z

.field featureUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

.field private final headerRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field homePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation
.end field

.field private isSpeedDialInitialCall:Z

.field private keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

.field private lastSpeedDialQueryTime:J

.field masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

.field final menuControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/narvii/amino/HomeFragment$HomeMenuController;",
            ">;"
        }
    .end annotation
.end field

.field menuFrame:Landroid/widget/FrameLayout;

.field pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field pageCreateComplete:Z

.field pageScrollState:I

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private refreshingCount:I

.field private final reset:Ljava/lang/Runnable;

.field scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

.field skipLayout:Z

.field speedDialItemClickListener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

.field startPageIndex:Ljava/lang/Integer;

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/narvii/amino/HomeFragment;->lastSpeedDialQueryTime:J

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->isSpeedDialInitialCall:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/amino/HomeFragment$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$1;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/amino/HomeFragment$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$2;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->reset:Ljava/lang/Runnable;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/amino/HomeFragment$3;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$3;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/amino/HomeFragment$4;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$4;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 51
    .line 52
    new-instance v0, Lcom/narvii/amino/HomeFragment$5;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$5;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->speedDialItemClickListener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/amino/HomeFragment$9;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$9;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/amino/HomeFragment$10;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$10;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest()V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/amino/HomeFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest(Z)V

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->setScreenNameForTabs()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    return-object p0
.end method

.method private checkFeaturedUser()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser(Z)V

    return-void
.end method

.method private checkFeaturedUser(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method private checkInfluencer()V
    .locals 0

    return-void
.end method

.method static getMenuItemShowAsAction(Landroid/view/MenuItem;)I
    .locals 3

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    :goto_0
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "mShowAsAction"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    sput-object v1, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    :goto_1
    sget-object v0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 35
    .line 36
    :cond_1
    sget-object v0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    check-cast p0, Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    return p0

    .line 48
    :catch_1
    const/4 p0, 0x0

    .line 49
    .line 50
    sput-object p0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    .line 51
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method private getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v0, v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    move-object v1, v0

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 26
    :cond_1
    return-object v1
.end method

.method private getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d036e

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0e27

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    .line 38
    const p1, 0x7f12040c

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    const/4 v0, -0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    return-object p2
.end method

.method private isFeaturedMemberEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->featureMemberEnabled:Z

    .line 9
    return v0
.end method

.method private synthetic lambda$onResume$2()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->pageCreateComplete:Z

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string p2, "communityNavBar"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    instance-of p2, p1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityView()V

    .line 30
    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getLifecycleState()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->collapse()V

    .line 19
    :cond_0
    return-void
.end method

.method private synthetic lambda$setupSwipeRefreshLayout$3()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    .line 8
    add-int/2addr v2, v1

    .line 9
    .line 10
    iput v2, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    .line 11
    .line 12
    instance-of v2, v0, Lcom/narvii/list/NVListFragment;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->manuallyRefresh(Lcom/narvii/util/Callback;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-direct {p0, v1, v1}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest(ZZ)V

    .line 31
    return-void
.end method

.method public static synthetic n(Lcom/narvii/amino/HomeFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/HomeFragment;->lambda$onViewCreated$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->lambda$onResume$2()V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/amino/HomeFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/amino/HomeFragment;->lambda$onViewCreated$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->lambda$setupSwipeRefreshLayout$3()V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/HomeFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/amino/HomeFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/amino/HomeFragment;->isSpeedDialInitialCall:Z

    return p0
.end method

.method private sendFeaturedUserListRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest(ZZ)V

    return-void
.end method

.method private sendFeaturedUserListRequest(ZZ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->isFeaturedMemberEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "api"

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    .line 6
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/user-profile"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string v3, "featured"

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    .line 7
    new-instance v2, Lcom/narvii/amino/HomeFragment$6;

    const-class v3, Lcom/narvii/model/api/UserListResponse;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/narvii/amino/HomeFragment$6;-><init>(Lcom/narvii/amino/HomeFragment;Ljava/lang/Class;ZZ)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendSpeedDialRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest(Z)V

    return-void
.end method

.method private sendSpeedDialRequest(Z)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment;->shouldShowSpeedDial()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    .line 3
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    .line 4
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/amino/HomeFragment;->lastSpeedDialQueryTime:J

    .line 6
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/live-layer/speed-dial-public"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 7
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 8
    new-instance v2, Lcom/narvii/amino/HomeFragment$7;

    const-class v3, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/amino/HomeFragment$7;-><init>(Lcom/narvii/amino/HomeFragment;Ljava/lang/Class;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setScreenNameForTabs()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_10

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/amino/HomeFragment;->curSelectedPos:I

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-ge v1, v0, :cond_10

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/amino/HomeFragment;->curSelectedPos:I

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/modulization/page/Page;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x1

    .line 33
    .line 34
    .line 35
    sparse-switch v1, :sswitch_data_0

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    .line 40
    :sswitch_0
    const-string/jumbo v1, "ndc://following-feed"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_0
    const/16 v2, 0xf

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    .line 55
    :sswitch_1
    const-string/jumbo v1, "ndc://shared-folder/photos"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_1
    const/16 v2, 0xe

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    .line 70
    :sswitch_2
    const-string/jumbo v1, "ndc://polls"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_2
    const/16 v2, 0xd

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    .line 85
    :sswitch_3
    const-string/jumbo v1, "ndc://blogs"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 90
    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_3
    const/16 v2, 0xc

    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    .line 100
    :sswitch_4
    const-string/jumbo v1, "ndc://stories"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 105
    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_4
    const/16 v2, 0xb

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    .line 115
    :sswitch_5
    const-string/jumbo v1, "ndc://shared-folder/albums"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v0

    .line 120
    .line 121
    if-nez v0, :cond_5

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_5
    const/16 v2, 0xa

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    .line 130
    :sswitch_6
    const-string/jumbo v1, "ndc://image-posts"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v0

    .line 135
    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_6
    const/16 v2, 0x9

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    .line 145
    :sswitch_7
    const-string/jumbo v1, "ndc://link-posts"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v0

    .line 150
    .line 151
    if-nez v0, :cond_7

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_7
    const/16 v2, 0x8

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    .line 160
    :sswitch_8
    const-string/jumbo v1, "ndc://shared-folder"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v0

    .line 165
    .line 166
    if-nez v0, :cond_8

    .line 167
    goto :goto_0

    .line 168
    :cond_8
    const/4 v2, 0x7

    .line 169
    goto :goto_0

    .line 170
    .line 171
    .line 172
    :sswitch_9
    const-string/jumbo v1, "ndc://featured"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result v0

    .line 177
    .line 178
    if-nez v0, :cond_9

    .line 179
    goto :goto_0

    .line 180
    :cond_9
    const/4 v2, 0x6

    .line 181
    goto :goto_0

    .line 182
    .line 183
    .line 184
    :sswitch_a
    const-string/jumbo v1, "ndc://quizzes"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v0

    .line 189
    .line 190
    if-nez v0, :cond_a

    .line 191
    goto :goto_0

    .line 192
    :cond_a
    const/4 v2, 0x5

    .line 193
    goto :goto_0

    .line 194
    .line 195
    .line 196
    :sswitch_b
    const-string/jumbo v1, "ndc://blog-categories"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v0

    .line 201
    .line 202
    if-nez v0, :cond_b

    .line 203
    goto :goto_0

    .line 204
    :cond_b
    const/4 v2, 0x4

    .line 205
    goto :goto_0

    .line 206
    .line 207
    .line 208
    :sswitch_c
    const-string/jumbo v1, "ndc://external-posts"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v0

    .line 213
    .line 214
    if-nez v0, :cond_c

    .line 215
    goto :goto_0

    .line 216
    :cond_c
    const/4 v2, 0x3

    .line 217
    goto :goto_0

    .line 218
    .line 219
    .line 220
    :sswitch_d
    const-string/jumbo v1, "ndc://public-chats"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result v0

    .line 225
    .line 226
    if-nez v0, :cond_d

    .line 227
    goto :goto_0

    .line 228
    :cond_d
    const/4 v2, 0x2

    .line 229
    goto :goto_0

    .line 230
    .line 231
    .line 232
    :sswitch_e
    const-string/jumbo v1, "ndc://latest-posts"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result v0

    .line 237
    .line 238
    if-nez v0, :cond_e

    .line 239
    goto :goto_0

    .line 240
    :cond_e
    const/4 v2, 0x1

    .line 241
    goto :goto_0

    .line 242
    .line 243
    .line 244
    :sswitch_f
    const-string/jumbo v1, "ndc://my-chats"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    move-result v0

    .line 249
    .line 250
    if-nez v0, :cond_f

    .line 251
    goto :goto_0

    .line 252
    :cond_f
    const/4 v2, 0x0

    .line 253
    .line 254
    .line 255
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 256
    const/4 v0, 0x0

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 260
    goto :goto_1

    .line 261
    .line 262
    :pswitch_0
    const-string v0, "community_following"

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 266
    goto :goto_1

    .line 267
    .line 268
    :pswitch_1
    const-string v0, "community_polls"

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 272
    goto :goto_1

    .line 273
    .line 274
    :pswitch_2
    const-string v0, "community_blogs"

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 278
    goto :goto_1

    .line 279
    .line 280
    :pswitch_3
    const-string v0, "community_stories"

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 284
    goto :goto_1

    .line 285
    .line 286
    :pswitch_4
    const-string v0, "community_image_posts"

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 290
    goto :goto_1

    .line 291
    .line 292
    :pswitch_5
    const-string v0, "community_link_posts"

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 296
    goto :goto_1

    .line 297
    .line 298
    :pswitch_6
    const-string v0, "community_shared_folder"

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 302
    goto :goto_1

    .line 303
    .line 304
    :pswitch_7
    const-string v0, "community_featured"

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 308
    goto :goto_1

    .line 309
    .line 310
    :pswitch_8
    const-string v0, "community_quizzes"

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 314
    goto :goto_1

    .line 315
    .line 316
    :pswitch_9
    const-string v0, "community_post_categories"

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 320
    goto :goto_1

    .line 321
    .line 322
    :pswitch_a
    const-string v0, "community_external_posts"

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 326
    goto :goto_1

    .line 327
    .line 328
    :pswitch_b
    const-string v0, "community_public_chatrooms"

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 332
    goto :goto_1

    .line 333
    .line 334
    :pswitch_c
    const-string v0, "community_latest"

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 338
    goto :goto_1

    .line 339
    .line 340
    :pswitch_d
    const-string v0, "community_my_chats"

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 344
    :cond_10
    :goto_1
    return-void

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    :sswitch_data_0
    .sparse-switch
        -0x71d53139 -> :sswitch_f
        -0x5e8dea66 -> :sswitch_e
        -0x50049cbc -> :sswitch_d
        -0x4a940862 -> :sswitch_c
        -0x23d27586 -> :sswitch_b
        -0x230a237a -> :sswitch_a
        -0x114855c5 -> :sswitch_9
        -0x7e1f717 -> :sswitch_8
        0x19a3530d -> :sswitch_7
        0x2654ebb4 -> :sswitch_6
        0x4165ffca -> :sswitch_5
        0x455e24a6 -> :sswitch_4
        0x52808224 -> :sswitch_3
        0x53471da7 -> :sswitch_2
        0x5acc3867 -> :sswitch_1
        0x6b084fa7 -> :sswitch_0
    .end sparse-switch

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private setupSwipeRefreshLayout()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/amino/g;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/amino/g;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 11
    .line 12
    const-string v0, "config"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    filled-new-array {v0}, [I

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 39
    move-result v0

    .line 40
    .line 41
    if-lez v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    const v2, 0x7f0704f8

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    const v3, 0x7f0704f7

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 68
    move-result v2

    .line 69
    .line 70
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 71
    add-int/2addr v1, v0

    .line 72
    add-int/2addr v0, v2

    .line 73
    const/4 v2, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 77
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/amino/HomeFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/amino/HomeFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/HomeFragment;->reset:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/amino/HomeFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/amino/HomeFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/amino/HomeFragment;->isSpeedDialInitialCall:Z

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/amino/HomeFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser()V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/amino/HomeFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser(Z)V

    return-void
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "isVisitorMode"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 17
    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 14

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/amino/HomeFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/amino/HomeFragment$Adapter;-><init>(Lcom/narvii/amino/HomeFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    .line 22
    :goto_0
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x1

    .line 29
    .line 30
    if-ge v3, v4, :cond_5

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 42
    move-result v4

    .line 43
    sub-int/2addr v4, v6

    .line 44
    sub-int/2addr v4, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move v4, v3

    .line 47
    .line 48
    :goto_1
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    check-cast v4, Lcom/narvii/modulization/page/Page;

    .line 55
    .line 56
    iget-object v7, v4, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    .line 57
    .line 58
    if-nez v7, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 62
    move-result-object v7

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    :cond_1
    move-object v9, v7

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v7

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v7}, Lcom/narvii/modulization/page/Page;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    .line 75
    move-result-object v10

    .line 76
    .line 77
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 78
    .line 79
    iget-object v8, v4, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v8}, Lcom/narvii/modulization/CommunityConfigHelper;->inlineMapping(Ljava/lang/String;)Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;

    .line 83
    move-result-object v7

    .line 84
    .line 85
    if-nez v7, :cond_2

    .line 86
    .line 87
    const-class v8, Lcom/narvii/amino/page/FailoverPage;

    .line 88
    :goto_2
    move-object v12, v8

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_2
    iget-object v8, v7, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->component:Ljava/lang/Class;

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :goto_3
    if-nez v7, :cond_3

    .line 95
    move-object v7, v5

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_3
    iget-object v7, v7, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    .line 99
    .line 100
    :goto_4
    if-nez v7, :cond_4

    .line 101
    .line 102
    new-instance v7, Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 106
    :cond_4
    move-object v13, v7

    .line 107
    .line 108
    const-string v7, "__embed"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v13, v7, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    .line 113
    :try_start_0
    iget-object v6, v4, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    :catch_0
    const-string v6, "__url"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v13, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    .line 124
    const-string v5, "Source"

    .line 125
    .line 126
    const-string v6, "Home Page"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 133
    move-result-object v5

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v5}, Lcom/narvii/modulization/page/Page;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v10, v4}, Lcom/narvii/amino/HomeFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 141
    move-result-object v11

    .line 142
    .line 143
    new-instance v4, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 144
    move-object v8, v4

    .line 145
    .line 146
    .line 147
    invoke-direct/range {v8 .. v13}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    move-result v3

    .line 159
    .line 160
    if-eqz v3, :cond_6

    .line 161
    .line 162
    const-class v11, Lcom/narvii/amino/page/EmptyHomePage;

    .line 163
    .line 164
    const-string v3, ""

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, v3, v5}, Lcom/narvii/amino/HomeFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 168
    move-result-object v10

    .line 169
    .line 170
    new-instance v3, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 171
    .line 172
    const-string v8, "emptyHome"

    .line 173
    .line 174
    const-string v9, ""

    .line 175
    const/4 v12, 0x0

    .line 176
    move-object v7, v3

    .line 177
    .line 178
    .line 179
    invoke-direct/range {v7 .. v12}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    :cond_6
    iput-object v1, p0, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    .line 188
    .line 189
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    .line 190
    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 193
    move-result v1

    .line 194
    .line 195
    if-le v1, v6, :cond_7

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    move v6, v2

    .line 198
    .line 199
    .line 200
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 201
    move-result-object v1

    .line 202
    .line 203
    .line 204
    const v3, 0x7f0701ed

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 208
    move-result v1

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 212
    move-result-object v3

    .line 213
    .line 214
    if-eqz v6, :cond_8

    .line 215
    move v4, v2

    .line 216
    goto :goto_6

    .line 217
    .line 218
    :cond_8
    const/16 v4, 0x8

    .line 219
    .line 220
    .line 221
    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    iget-object v3, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 227
    move-result-object v3

    .line 228
    .line 229
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 230
    .line 231
    if-eqz v6, :cond_9

    .line 232
    move v4, v1

    .line 233
    goto :goto_7

    .line 234
    :cond_9
    move v4, v2

    .line 235
    .line 236
    :goto_7
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 237
    .line 238
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 242
    move-result-object v3

    .line 243
    .line 244
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 245
    .line 246
    if-eqz v6, :cond_a

    .line 247
    move v2, v1

    .line 248
    .line 249
    :cond_a
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 250
    .line 251
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 255
    .line 256
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 260
    .line 261
    new-instance v1, Lcom/narvii/amino/HomeFragment$8;

    .line 262
    .line 263
    .line 264
    invoke-direct {v1, p0}, Lcom/narvii/amino/HomeFragment$8;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 268
    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public defaultTabIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->startPageIndex:Ljava/lang/Integer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getCollapsibleLayout()Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    return-object v0
.end method

.method public getCurrentDeepLink()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    sub-int v0, v1, v0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    move-result v1

    .line 32
    .line 33
    if-ge v0, v1, :cond_1

    .line 34
    .line 35
    if-ltz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/modulization/page/Page;

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v0, v2

    .line 46
    .line 47
    :goto_0
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v2, v0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 50
    :cond_2
    return-object v2
.end method

.method getHostFragment(Lcom/narvii/app/NVFragment;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne v0, p0, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    if-nez v0, :cond_1

    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_1
    move-object p1, v0

    .line 13
    goto :goto_0
.end method

.method public getMenuController(Lcom/narvii/app/NVFragment;)Lcom/narvii/app/NVFragment$MenuController;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment;->getHostFragment(Lcom/narvii/app/NVFragment;)Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;-><init>(Lcom/narvii/amino/HomeFragment;Landroidx/fragment/app/Fragment;)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "community_home"

    return-object v0
.end method

.method public isFragmentSelected(Landroidx/fragment/app/Fragment;)Z
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
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-ne v1, p1, :cond_1

    .line 15
    const/4 v0, 0x1

    .line 16
    :cond_1
    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->logSpeedDialImpression()V

    .line 15
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
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
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCommunityInfo()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->setupAdView()V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x4

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x3

    .line 32
    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothExpand()V

    .line 39
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    const-string p1, "community"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/community/search/MasterThemeHelper;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    .line 42
    .line 43
    const-string v1, "com.narvii.action.COMMUNITY_CHANGED"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 52
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    .line 54
    .line 55
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 64
    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    .line 66
    .line 67
    const-string v1, "com.narvii.action.FEATURE_USER_CHANGED"

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 74
    .line 75
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getHomePageList()Ljava/util/List;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getStartPageIndex()Ljava/lang/Integer;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->startPageIndex:Ljava/lang/Integer;

    .line 95
    const/4 p1, 0x1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest(ZZ)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d036d

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->reset:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    .line 25
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

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
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/narvii/account/AccountService;->removeFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->clearAdViewObstructions()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onDestroyView()V

    .line 24
    return-void
.end method

.method public onFanClubListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FanClub;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onHeaderCollapsed()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateHeaderOffset(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "communityNavBar"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    instance-of v1, v0, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityView()V

    .line 37
    :cond_0
    return-void
.end method

.method public onHeaderExpanded()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/amino/HomeFragment;->lastSpeedDialQueryTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    .line 9
    const-wide/16 v2, 0x4e20

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateHeaderOffset(F)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->logSpeedDialImpression()V

    .line 32
    :cond_1
    return-void
.end method

.method public onHeaderOffsetChanged(IIFZ)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateHeaderOffset(F)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "communityNavBar"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    instance-of p2, p1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    float-to-double p2, p3

    .line 31
    .line 32
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 33
    .line 34
    cmpl-double p2, p2, v0

    .line 35
    .line 36
    if-ltz p2, :cond_0

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityView()V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    check-cast p1, Lcom/narvii/amino/CommunityNavBarFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityView()V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public onHeaderStartCollapsing()V
    .locals 0

    return-void
.end method

.method public onHeaderStartExpanding()V
    .locals 0

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "update"

    .line 10
    .line 11
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateFeaturedChatThreadList(Lcom/narvii/model/ChatThread;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/narvii/amino/d;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/amino/d;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 36
    .line 37
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    .line 45
    .line 46
    const-wide/16 v1, 0x4e20

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 50
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0341

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0678

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    instance-of v0, v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/amino/e;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/narvii/amino/e;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->setOnHeaderInvalidatedListener(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    instance-of v0, v0, Lcom/narvii/amino/MainActivity;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Lcom/narvii/amino/MainActivity;

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0a0550

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/narvii/amino/MainActivity;->updateOverlayListPlaceholder(Lcom/narvii/list/overlay/OverlayListPlaceholder;)V

    .line 78
    .line 79
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->speedDialItemClickListener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->setSpeedDialItemClicked(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->checkInfluencer()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser()V

    .line 91
    .line 92
    .line 93
    :cond_1
    const v0, 0x7f0a0967

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Landroid/widget/FrameLayout;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a0e28

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0a067b

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    check-cast v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 124
    .line 125
    .line 126
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    .line 128
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    const v1, 0x7f0704fe

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 139
    move-result v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setScrollOffset(I)V

    .line 143
    .line 144
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->setupSwipeRefreshLayout()V

    .line 151
    .line 152
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 153
    .line 154
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 155
    const/4 v1, -0x1

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .line 163
    const-string p2, "account"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    move-result-object p2

    .line 168
    .line 169
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p0}, Lcom/narvii/account/AccountService;->addFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V

    .line 173
    .line 174
    .line 175
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 176
    move-result-object p2

    .line 177
    .line 178
    iget-object p2, p2, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p1}, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;->setRootView(Landroid/view/View;)V

    .line 182
    .line 183
    new-instance p2, Lcom/narvii/amino/f;

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, p0}, Lcom/narvii/amino/f;-><init>(Lcom/narvii/amino/HomeFragment;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 193
    return-void
.end method

.method public restoreHomeTab()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment;->smoothScrollToTop()V

    .line 11
    return-void
.end method

.method public shouldShowSpeedDial()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isEligibleForSpeedDial()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isSpeedDialDisabled()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0
.end method

.method protected showThemeColorAsAlternativeBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollToTop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    .line 14
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "Home "

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, " ["

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    :goto_0
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 34
    move-result v3

    .line 35
    .line 36
    if-ge v2, v3, :cond_2

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    check-cast v3, Lcom/narvii/modulization/page/Page;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, ":"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    const/16 v4, 0x28

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const/16 v3, 0x29

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    :cond_0
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 89
    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 92
    move-result v3

    .line 93
    .line 94
    add-int/lit8 v3, v3, -0x1

    .line 95
    .line 96
    if-ge v2, v3, :cond_1

    .line 97
    .line 98
    const-string v3, "; "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 104
    goto :goto_0

    .line 105
    .line 106
    :cond_2
    const/16 v1, 0x5d

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    return-object v0
.end method

.method public updateTabView(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/amino/HomeFragment;->pageScrollState:I

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-ne v0, p1, :cond_3

    .line 11
    .line 12
    instance-of v0, p1, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->getTabAlpha()F

    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v1

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 34
    move-result v0

    .line 35
    .line 36
    cmpl-float v2, p1, v1

    .line 37
    .line 38
    if-lez v2, :cond_1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, p1

    .line 41
    .line 42
    :goto_1
    const/high16 p1, 0x437f0000    # 255.0f

    .line 43
    mul-float/2addr v1, p1

    .line 44
    float-to-int p1, v1

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 86
    move-result v0

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/4 v0, -0x1

    .line 89
    .line 90
    :goto_2
    if-eq p1, v0, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_3
    return-void
.end method

.method public updateThemeUI()V
    .locals 2

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
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    filled-new-array {v0}, [I

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateThemeUI()V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/amino/HomeFragment;->updateTabView(Landroidx/fragment/app/Fragment;)V

    .line 42
    return-void
.end method
