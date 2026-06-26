.class public Lcom/narvii/amino/HomeFragment;
.super Lcom/narvii/app/NVBaseScrollableTabFragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/narvii/app/NVFragment$MenuHost;
.implements Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;
.implements Lcom/narvii/account/AccountService$FanClubListListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/HomeFragment$HomeMenuController;,
        Lcom/narvii/amino/HomeFragment$Adapter;,
        Lcom/narvii/amino/HomeFragment$HasExtraHeight;
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
            "Landroid/support/v4/app/Fragment;",
            "Lcom/narvii/amino/HomeFragment$HomeMenuController;",
            ">;"
        }
    .end annotation
.end field

.field menuFrame:Landroid/widget/FrameLayout;

.field pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

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

    .line 104
    invoke-direct {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lcom/narvii/amino/HomeFragment;->lastSpeedDialQueryTime:J

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->isSpeedDialInitialCall:Z

    .line 145
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    .line 149
    new-instance v0, Lcom/narvii/amino/HomeFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$1;-><init>(Lcom/narvii/amino/HomeFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v0, Lcom/narvii/amino/HomeFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$2;-><init>(Lcom/narvii/amino/HomeFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->reset:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    .line 213
    new-instance v0, Lcom/narvii/amino/HomeFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$3;-><init>(Lcom/narvii/amino/HomeFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    .line 223
    new-instance v0, Lcom/narvii/amino/HomeFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$4;-><init>(Lcom/narvii/amino/HomeFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 375
    new-instance v0, Lcom/narvii/amino/HomeFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$5;-><init>(Lcom/narvii/amino/HomeFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->speedDialItemClickListener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    .line 722
    new-instance v0, Lcom/narvii/amino/HomeFragment$11;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$11;-><init>(Lcom/narvii/amino/HomeFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1305
    new-instance v0, Lcom/narvii/amino/HomeFragment$12;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$12;-><init>(Lcom/narvii/amino/HomeFragment;)V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/amino/HomeFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/amino/HomeFragment;->reset:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/amino/HomeFragment;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/narvii/amino/HomeFragment;->isSpeedDialInitialCall:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/narvii/amino/HomeFragment;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/narvii/amino/HomeFragment;->isSpeedDialInitialCall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/amino/HomeFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/amino/HomeFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    return p0
.end method

.method static synthetic access$408(Lcom/narvii/amino/HomeFragment;)I
    .locals 2

    .line 104
    iget v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/narvii/amino/HomeFragment;)I
    .locals 2

    .line 104
    iget v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/amino/HomeFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/amino/HomeFragment;ZZ)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest(ZZ)V

    return-void
.end method

.method static synthetic access$702(Lcom/narvii/amino/HomeFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/amino/HomeFragment;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/amino/HomeFragment;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest(Z)V

    return-void
.end method

.method private checkFeaturedUser()V
    .locals 1

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser(Z)V

    return-void
.end method

.method private checkFeaturedUser(Z)V
    .locals 0

    return-void
.end method

.method private checkInfluencer()V
    .locals 0

    return-void
.end method

.method static getMenuItemShowAsAction(Landroid/view/MenuItem;)I
    .locals 3

    .line 1281
    :try_start_0
    sget-object v0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 1282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v0, :cond_0

    .line 1285
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mShowAsAction"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1288
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1291
    :cond_0
    :goto_1
    sget-object v0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1293
    :cond_1
    sget-object v0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p0

    :catch_1
    const/4 p0, 0x0

    .line 1295
    sput-object p0, Lcom/narvii/amino/HomeFragment;->fMenuItemShowAsAction:Ljava/lang/reflect/Field;

    const/4 p0, 0x0

    return p0
.end method

.method private getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    :cond_1
    return-object v1
.end method

.method private getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 3

    .line 938
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b033c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 939
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090b41

    .line 940
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const p1, 0x7f0f03b4

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method private isFeaturedMemberEnabled()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->featureMemberEnabled:Z

    return v0
.end method

.method private sendFeaturedUserListRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, v0, v0}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest(ZZ)V

    return-void
.end method

.method private sendFeaturedUserListRequest(ZZ)V
    .locals 4

    .line 503
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->isFeaturedMemberEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment;->skipLayout:Z

    if-eqz p1, :cond_0

    .line 506
    invoke-direct {p0, p2}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "api"

    .line 511
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 513
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v1, 0x0

    .line 515
    iput-object v1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    .line 517
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

    .line 518
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->featuredUserRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/amino/HomeFragment$8;

    const-class v3, Lcom/narvii/model/api/UserListResponse;

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/narvii/amino/HomeFragment$8;-><init>(Lcom/narvii/amino/HomeFragment;Ljava/lang/Class;ZZ)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendSpeedDialRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 495
    invoke-direct {p0, v0}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest(Z)V

    return-void
.end method

.method private sendSpeedDialRequest(Z)V
    .locals 4

    .line 545
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment;->shouldShowSpeedDial()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 549
    iget v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/amino/HomeFragment;->refreshingCount:I

    .line 551
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/amino/HomeFragment;->lastSpeedDialQueryTime:J

    .line 554
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

    .line 555
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 556
    new-instance v2, Lcom/narvii/amino/HomeFragment$9;

    const-class v3, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/amino/HomeFragment$9;-><init>(Lcom/narvii/amino/HomeFragment;Ljava/lang/Class;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setupSwipeRefreshLayout()V
    .locals 5

    .line 467
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    new-instance v1, Lcom/narvii/amino/HomeFragment$7;

    invoke-direct {v1, p0}, Lcom/narvii/amino/HomeFragment$7;-><init>(Lcom/narvii/amino/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    const-string v0, "config"

    .line 482
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 483
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 484
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 489
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0702c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 490
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    add-int/2addr v1, v0

    add-int/2addr v0, v2

    invoke-virtual {v4, v3, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    return-void
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 955
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 956
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 957
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 1383
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 1384
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isVisitorMode"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 14

    .line 603
    new-instance v0, Lcom/narvii/amino/HomeFragment$Adapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/amino/HomeFragment$Adapter;-><init>(Lcom/narvii/amino/HomeFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 604
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 605
    :goto_0
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_5

    .line 606
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_0
    move v4, v3

    .line 607
    :goto_1
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/modulization/page/Page;

    .line 608
    iget-object v7, v4, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    move-object v9, v7

    .line 609
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/narvii/modulization/page/Page;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 610
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v8, v4, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/narvii/modulization/CommunityConfigHelper;->inlineMapping(Ljava/lang/String;)Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;

    move-result-object v7

    if-nez v7, :cond_2

    .line 611
    const-class v8, Lcom/narvii/amino/page/FailoverPage;

    goto :goto_2

    :cond_2
    iget-object v8, v7, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->component:Ljava/lang/Class;

    :goto_2
    move-object v12, v8

    if-nez v7, :cond_3

    move-object v7, v5

    goto :goto_3

    .line 612
    :cond_3
    iget-object v7, v7, Lcom/narvii/modulization/CommunityConfigHelper$InlineMapping;->args:Landroid/os/Bundle;

    :goto_3
    if-nez v7, :cond_4

    .line 614
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    :cond_4
    move-object v13, v7

    const-string v7, "__embed"

    .line 616
    invoke-virtual {v13, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    :try_start_0
    iget-object v6, v4, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v6, "__url"

    .line 622
    invoke-virtual {v13, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "Source"

    const-string v6, "Home Page"

    .line 623
    invoke-virtual {v13, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/modulization/page/Page;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v10, v4}, Lcom/narvii/amino/HomeFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v11

    .line 625
    new-instance v4, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 626
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 628
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 629
    const-class v11, Lcom/narvii/amino/page/EmptyHomePage;

    const-string v3, ""

    .line 630
    invoke-direct {p0, v3, v5}, Lcom/narvii/amino/HomeFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v10

    .line 631
    new-instance v3, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    const/4 v12, 0x0

    const-string v8, "emptyHome"

    const-string v9, ""

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 632
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_6
    iput-object v1, p0, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    .line 635
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    .line 637
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    .line 638
    :goto_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070180

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 639
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v3

    if-eqz v6, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 640
    iget-object v3, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_9

    move v4, v1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 641
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    :goto_7
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 642
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 643
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 645
    new-instance v1, Lcom/narvii/amino/HomeFragment$10;

    invoke-direct {v1, p0}, Lcom/narvii/amino/HomeFragment$10;-><init>(Lcom/narvii/amino/HomeFragment;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public defaultTabIndex()I
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->startPageIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCollapsibleLayout()Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;
    .locals 1

    .line 1302
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    return-object v0
.end method

.method public getCurrentDeepLink()Ljava/lang/String;
    .locals 3

    .line 1404
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    .line 1405
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 1406
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/modulization/page/Page;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1407
    iget-object v2, v0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    :cond_2
    return-object v2
.end method

.method getHostFragment(Lcom/narvii/app/NVFragment;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 1257
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public getMenuController(Lcom/narvii/app/NVFragment;)Lcom/narvii/app/NVFragment$MenuController;
    .locals 2

    .line 1268
    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment;->getHostFragment(Lcom/narvii/app/NVFragment;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 1269
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    if-nez v0, :cond_0

    .line 1271
    new-instance v0, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    invoke-direct {v0, p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;-><init>(Lcom/narvii/amino/HomeFragment;Landroid/support/v4/app/Fragment;)V

    .line 1272
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Amino"

    return-object v0
.end method

.method public isFragmentSelected(Landroid/support/v4/app/Fragment;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public synthetic lambda$onViewCreated$0$HomeFragment(Landroid/view/View;Z)V
    .locals 0

    .line 269
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "communityNavBar"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 271
    instance-of p2, p1, Lcom/narvii/amino/CommunityNavBarFragment;

    if-eqz p2, :cond_0

    .line 272
    check-cast p1, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityView()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$HomeFragment(Ljava/lang/Boolean;)V
    .locals 1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getLifecycleState()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 300
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->collapse()V

    :cond_0
    return-void
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1372
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 1373
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1376
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->logSpeedDialImpression()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 307
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 308
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCommunityInfo()V

    .line 311
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 312
    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getCurrentHeaderStatus()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 313
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothExpand()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 235
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "config"

    .line 236
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string p1, "community"

    .line 237
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->communityService:Lcom/narvii/community/CommunityService;

    .line 238
    new-instance p1, Lcom/narvii/community/search/MasterThemeHelper;

    invoke-direct {p1, p0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->masterThemeHelper:Lcom/narvii/community/search/MasterThemeHelper;

    .line 239
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 241
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 242
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 243
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.FEATURE_USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 245
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 246
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getHomePageList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    .line 247
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->getStartPageIndex()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->startPageIndex:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 248
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/HomeFragment;->sendFeaturedUserListRequest(ZZ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b033b

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->reset:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 457
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 460
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 461
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Lcom/narvii/util/SoftKeyboard$KeyboardObserver;->dispose()V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "account"

    .line 320
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    invoke-virtual {v0, p0}, Lcom/narvii/account/AccountService;->removeFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V

    .line 321
    invoke-super {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onDestroyView()V

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

    .line 1324
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateHeaderOffset(F)V

    .line 1325
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "communityNavBar"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1327
    instance-of v1, v0, Lcom/narvii/amino/CommunityNavBarFragment;

    if-eqz v1, :cond_0

    .line 1328
    check-cast v0, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {v0}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityView()V

    :cond_0
    return-void
.end method

.method public onHeaderExpanded()V
    .locals 5

    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/amino/HomeFragment;->lastSpeedDialQueryTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1341
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->sendSpeedDialRequest()V

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateHeaderOffset(F)V

    .line 1344
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1346
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->logSpeedDialImpression()V

    :cond_1
    return-void
.end method

.method public onHeaderOffsetChanged(IIFZ)V
    .locals 2

    .line 1352
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-virtual {p1, p3}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateHeaderOffset(F)V

    .line 1353
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1354
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "communityNavBar"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 1355
    instance-of p2, p1, Lcom/narvii/amino/CommunityNavBarFragment;

    if-eqz p2, :cond_1

    float-to-double p2, p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p4, p2, v0

    if-ltz p4, :cond_0

    .line 1357
    check-cast p1, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->showCommunityView()V

    goto :goto_0

    .line 1359
    :cond_0
    check-cast p1, Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-virtual {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->hideCommunityView()V

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

    .line 326
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object v0

    .line 328
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateFeaturedChatThreadList(Lcom/narvii/model/ChatThread;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 450
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 451
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 428
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 429
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 434
    :cond_0
    new-instance v0, Lcom/narvii/amino/HomeFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/amino/HomeFragment$6;-><init>(Lcom/narvii/amino/HomeFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 441
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 444
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->autoRefreshSpeedDialRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f090278

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    .line 264
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V

    const v0, 0x7f09051d

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 266
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/NVHeaderCollapsibleLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getTopView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 268
    new-instance v1, Lcom/narvii/amino/-$$Lambda$HomeFragment$99fj4wHMmGQ9JUbpUrBgIdEo25c;

    invoke-direct {v1, p0}, Lcom/narvii/amino/-$$Lambda$HomeFragment$99fj4wHMmGQ9JUbpUrBgIdEo25c;-><init>(Lcom/narvii/amino/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->setOnHeaderInvalidatedListener(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;)V

    .line 276
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/amino/MainActivity;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/MainActivity;

    const v1, 0x7f090416

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {v0, v1}, Lcom/narvii/amino/MainActivity;->updateOverlayListPlaceholder(Lcom/narvii/list/overlay/OverlayListPlaceholder;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->collapsibleHeaderLayout:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->speedDialItemClickListener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->setSpeedDialItemClicked(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V

    .line 281
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->checkInfluencer()V

    .line 282
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->checkFeaturedUser()V

    :cond_1
    const v0, 0x7f090705

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f090b42

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout;

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    const v0, 0x7f090520

    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 287
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 288
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setScrollOffset(I)V

    .line 289
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 290
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->setupSwipeRefreshLayout()V

    .line 291
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p2, "account"

    .line 293
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    invoke-virtual {p2, p0}, Lcom/narvii/account/AccountService;->addFanClubListListener(Lcom/narvii/account/AccountService$FanClubListListener;)V

    .line 295
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object p2

    .line 296
    iget-object p2, p2, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    invoke-virtual {p2, p1}, Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;->setRootView(Landroid/view/View;)V

    .line 298
    new-instance p2, Lcom/narvii/amino/-$$Lambda$HomeFragment$C7MbfacKPwwfvzwfQmtD4KhpZEI;

    invoke-direct {p2, p0}, Lcom/narvii/amino/-$$Lambda$HomeFragment$C7MbfacKPwwfvzwfQmtD4KhpZEI;-><init>(Lcom/narvii/amino/HomeFragment;)V

    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/HomeFragment;->keyboardObserver:Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    return-void
.end method

.method public restoreHomeTab()V
    .locals 1

    .line 964
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    .line 965
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment;->smoothScrollToTop()V

    return-void
.end method

.method public shouldShowSpeedDial()Z
    .locals 1

    .line 368
    invoke-static {}, Lcom/narvii/util/Utils;->isEligibleForSpeedDial()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isSpeedDialDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 369
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 370
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isScreenRoomEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 371
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAvatarChatEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoChatEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 372
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isAudio2ChatEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

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

    .line 947
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 948
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 949
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Home "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v1

    .line 973
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 974
    :goto_0
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 975
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/modulization/page/Page;

    .line 976
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 977
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    iget-object v3, v3, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const/16 v3, 0x28

    .line 980
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 982
    :cond_0
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment;->homePages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, "; "

    .line 983
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTabView(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .line 922
    iget v0, p0, Lcom/narvii/amino/HomeFragment;->pageScrollState:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 923
    instance-of v0, p1, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    invoke-interface {p1}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->getTabAlpha()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 924
    :goto_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 925
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const/4 v0, -0x1

    .line 927
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 928
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 929
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    :cond_2
    if-eq p1, v0, :cond_3

    .line 932
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public updateThemeUI()V
    .locals 4

    const-string v0, "config"

    .line 1394
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1395
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 1396
    invoke-direct {p0}, Lcom/narvii/amino/HomeFragment;->getSpeedDialHeaderLayout()Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateThemeUI()V

    .line 1400
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/amino/HomeFragment;->updateTabView(Landroid/support/v4/app/Fragment;)V

    return-void
.end method
