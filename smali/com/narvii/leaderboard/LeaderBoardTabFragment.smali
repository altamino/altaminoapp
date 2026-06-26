.class public Lcom/narvii/leaderboard/LeaderBoardTabFragment;
.super Lcom/narvii/app/NVBaseScrollableTabFragment;
.source "LeaderBoardTabFragment.java"


# static fields
.field private static final COUNT_CATEGORY:I = 0x5

.field private static final COUNT_COLUMN:I = 0x3

.field public static bottomOffsetHeight:I

.field public static childMarginTopHeight:I

.field public static subTitleMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static titleMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static topOverlayHeight:I


# instance fields
.field adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

.field backgroundUrls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field backgroundView:Lcom/narvii/widget/NVImageView;

.field private colorDrawable:Landroid/graphics/drawable/Drawable;

.field private community:Lcom/narvii/model/Community;

.field configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field configService:Lcom/narvii/config/ConfigService;

.field private globalScrollOffset:I

.field helper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

.field private lastPosition:I

.field leaderBoardItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/LeaderBoardItem;",
            ">;"
        }
    .end annotation
.end field

.field nextBackgroundView:Lcom/narvii/widget/NVImageView;

.field overlay:Landroid/view/View;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private rankingTypeBarHeight:I

.field private final statTabs:[Ljava/lang/String;

.field tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

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
.method static constructor <clinit>()V
    .locals 7

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 81
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0aba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0abc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0abb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0abd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0ac4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0ac5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    const v1, 0x7f0f0ac6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    const v2, 0x7f0f0ac7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xb4b4b5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->colorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Most Active 24"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Most Active 7 Day"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Check In"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Quiz"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Hall of Fame"

    aput-object v2, v0, v1

    .line 96
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->statTabs:[Ljava/lang/String;

    .line 320
    new-instance v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)[Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->statTabs:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->lastPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->lastPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getRankingTypeIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/leaderboard/LeaderBoardTabFragment;Lcom/narvii/widget/NVImageView;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->changeBackground(Lcom/narvii/widget/NVImageView;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)F
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getOverlayAlpha(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    return p1
.end method

.method static synthetic access$600(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->invalidAllList(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->resetBackground()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method private buildDefaultLeaderBoardItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/LeaderBoardItem;",
            ">;"
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 505
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 506
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 507
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 508
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method private buildLeaderBoardItems()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeaderBoardList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 211
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->buildDefaultLeaderBoardItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private changeBackground(Lcom/narvii/widget/NVImageView;I)V
    .locals 3

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    if-lt p2, v0, :cond_9

    const/4 v1, 0x5

    if-le p2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 401
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    const v2, 0x7f0805a7

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0x7f0805a8

    goto :goto_0

    :cond_3
    const v2, 0x7f0805a6

    goto :goto_0

    :cond_4
    const v2, 0x7f0805a5

    goto :goto_0

    :cond_5
    const v2, 0x7f0805a9

    .line 423
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 424
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 426
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    if-ne p1, v1, :cond_8

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->nextBackgroundView:Lcom/narvii/widget/NVImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->nextBackgroundView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 428
    iput-object v0, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 430
    :cond_8
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->colorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 432
    :goto_1
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "oom when change background"

    .line 435
    invoke-static {p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 436
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private getCurFragment()Lcom/narvii/leaderboard/ShareHeaderFragment;
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 374
    instance-of v1, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;

    if-eqz v1, :cond_0

    .line 375
    check-cast v0, Lcom/narvii/leaderboard/ShareHeaderFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOverlayAlpha(I)F
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method private getRankingTypeIndex(I)I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/LeaderBoardItem;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 446
    :cond_0
    iget p1, p1, Lcom/narvii/model/LeaderBoardItem;->type:I

    :goto_0
    return p1
.end method

.method private getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1

    .line 527
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b04a3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private initLeaderBoardTabBar()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setLeaderBoardItems(Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setCheckPosition(I)V

    .line 453
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setLeaderBoardTabClickListener(Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;)V

    :cond_0
    return-void
.end method

.method private invalidAllList(I)V
    .locals 4

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 384
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 386
    instance-of v3, v2, Lcom/narvii/leaderboard/ShareHeaderFragment;

    if-eqz v3, :cond_0

    .line 387
    check-cast v2, Lcom/narvii/leaderboard/ShareHeaderFragment;

    invoke-virtual {v2, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setCurrentOffset(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetBackground()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getRankingTypeIndex(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->changeBackground(Lcom/narvii/widget/NVImageView;I)V

    .line 224
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->overlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getRankingTypeIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getOverlayAlpha(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setUpBackgroundUrls()V
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 290
    :goto_0
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 291
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/LeaderBoardItem;

    .line 292
    iget-object v3, v2, Lcom/narvii/model/LeaderBoardItem;->style:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "backgroundMediaList"

    aput-object v5, v4, v0

    .line 295
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    :try_start_0
    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v5, [Lcom/narvii/model/Media;

    invoke-virtual {v4, v3, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/narvii/model/Media;

    if-nez v3, :cond_2

    goto :goto_1

    .line 305
    :cond_2
    array-length v4, v3

    if-lez v4, :cond_3

    .line 306
    iget-object v4, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    iget v2, v2, Lcom/narvii/model/LeaderBoardItem;->type:I

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 309
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private shareLeaderBoard()V
    .locals 6

    .line 245
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 247
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getCurFragment()Lcom/narvii/leaderboard/ShareHeaderFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/leaderboard/CheckInRankingListFragment;

    if-eqz v1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getCurFragment()Lcom/narvii/leaderboard/ShareHeaderFragment;

    move-result-object v1

    check-cast v1, Lcom/narvii/leaderboard/CheckInRankingListFragment;

    invoke-virtual {v1}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->hideBottomBar()V

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->helper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f09064a

    iget-object v4, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->community:Lcom/narvii/model/Community;

    new-instance v5, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->saveLeaderBoardBackGround(Landroid/app/Activity;ILcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V

    return-void
.end method

.method private updateChildMarginTop()V
    .locals 3

    .line 466
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    .line 467
    sget v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    iget v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->rankingTypeBarHeight:I

    add-int/2addr v0, v1

    sput v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    .line 468
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    sget v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/narvii/app/NVFragment$MenuController;->setTopMargin(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 10

    .line 476
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object v0

    .line 483
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/LeaderBoardItem;

    .line 485
    iget-object v3, v2, Lcom/narvii/model/LeaderBoardItem;->id:Ljava/lang/String;

    if-nez v3, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v5, v3

    .line 486
    iget v3, v2, Lcom/narvii/model/LeaderBoardItem;->type:I

    invoke-virtual {p0, v3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getMappedClzz(I)Ljava/lang/Class;

    move-result-object v8

    .line 487
    iget v3, v2, Lcom/narvii/model/LeaderBoardItem;->type:I

    invoke-virtual {p0, v3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getMappedBundle(I)Landroid/os/Bundle;

    move-result-object v9

    .line 488
    iget-object v3, v2, Lcom/narvii/model/LeaderBoardItem;->id:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080676

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v7

    .line 489
    new-instance v3, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    iget-object v6, v2, Lcom/narvii/model/LeaderBoardItem;->id:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_3
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabs:Ljava/util/List;

    .line 493
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    .line 494
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    const-string v0, "__embed"

    .line 499
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f10000c

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMappedBundle(I)Landroid/os/Bundle;
    .locals 2

    .line 520
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ranking_mode"

    .line 521
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "__embed"

    .line 522
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMappedClzz(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 514
    const-class p1, Lcom/narvii/leaderboard/CheckInRankingListFragment;

    return-object p1

    .line 516
    :cond_0
    const-class p1, Lcom/narvii/leaderboard/UserRankingListFragment;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "LeaderBoard"

    return-object v0
.end method

.method public getTopOverlayHeight()I
    .locals 2

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "__embed"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0701b0

    goto :goto_0

    :cond_0
    const v1, 0x7f0701af

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public manuallyRefresh(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 200
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->updateChildMarginTop()V

    :cond_0
    const-string v0, "liveLayer"

    .line 205
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    const-string v1, "leaderboards"

    .line 206
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 176
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, ""

    .line 177
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 116
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const-string v0, "config"

    .line 119
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 120
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->buildLeaderBoardItems()V

    .line 122
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 123
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07023f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->rankingTypeBarHeight:I

    const-string v0, "community"

    .line 125
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 126
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_1

    const-string v0, "offset"

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    .line 131
    :cond_1
    new-instance v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->helper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 132
    invoke-virtual {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getTopOverlayHeight()I

    move-result v0

    sput v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->topOverlayHeight:I

    .line 134
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->setUpBackgroundUrls()V

    .line 135
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->updateChildMarginTop()V

    .line 137
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    .line 138
    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    sub-int/2addr v0, v1

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->bottomOffsetHeight:I

    .line 145
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 229
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 230
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080309

    .line 231
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 232
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b04a4

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-ne v0, v1, :cond_0

    .line 238
    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ShareIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 239
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->shareLeaderBoard()V

    .line 241
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 188
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 275
    invoke-super {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 276
    iget v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    const-string v1, "offset"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 160
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f090b33

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/leaderboard/LeaderBoardTabBar;

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 162
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->initLeaderBoardTabBar()V

    .line 163
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    const-string v0, "__embed"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 165
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result p2

    iput p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->lastPosition:I

    .line 166
    iget-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const p2, 0x7f090647

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f090648

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->nextBackgroundView:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f090649

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->overlay:Landroid/view/View;

    .line 170
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->resetBackground()V

    const p2, 0x7f090bbf

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
