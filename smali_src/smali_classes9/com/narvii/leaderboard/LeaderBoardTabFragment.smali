.class public Lcom/narvii/leaderboard/LeaderBoardTabFragment;
.super Lcom/narvii/app/NVBaseScrollableTabFragment;
.source "SourceFile"


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

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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

    .line 1
    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    const v1, 0x7f120b6d

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 30
    const/4 v3, 0x2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 36
    .line 37
    .line 38
    const v1, 0x7f120b6f

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v1

    .line 43
    const/4 v4, 0x3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 49
    .line 50
    .line 51
    const v1, 0x7f120b6e

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 56
    const/4 v5, 0x4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->titleMapper:Landroid/util/SparseArray;

    .line 62
    .line 63
    .line 64
    const v1, 0x7f120b70

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v1

    .line 69
    const/4 v6, 0x5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 75
    .line 76
    .line 77
    const v1, 0x7f120b77

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    .line 86
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 87
    .line 88
    .line 89
    const v1, 0x7f120b78

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    .line 98
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 99
    .line 100
    .line 101
    const v1, 0x7f120b79

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    .line 110
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 111
    .line 112
    .line 113
    const v2, 0x7f120b7a

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    .line 122
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->subTitleMapper:Landroid/util/SparseArray;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    .line 15
    const v1, -0xb4b4b5

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->colorDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    const-string v0, "Quiz"

    .line 23
    .line 24
    const-string v1, "Hall of Fame"

    .line 25
    .line 26
    const-string v2, "Most Active 24"

    .line 27
    .line 28
    const-string v3, "Most Active 7 Day"

    .line 29
    .line 30
    const-string v4, "Check In"

    .line 31
    .line 32
    .line 33
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->statTabs:[Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment$2;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    .line 18
    const/4 v3, 0x2

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    .line 27
    const/4 v3, 0x3

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    .line 36
    const/4 v3, 0x4

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/model/LeaderBoardItem;

    .line 45
    const/4 v3, 0x5

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3}, Lcom/narvii/model/LeaderBoardItem;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    return-object v0
.end method

.method private buildLeaderBoardItems()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeaderBoardList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->buildDefaultLeaderBoardItems()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 17
    :cond_0
    return-void
.end method

.method private changeBackground(Lcom/narvii/widget/NVImageView;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-lt p2, v0, :cond_9

    .line 10
    const/4 v1, 0x5

    .line 11
    .line 12
    if-le p2, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    return-void

    .line 18
    .line 19
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-nez v2, :cond_7

    .line 26
    .line 27
    .line 28
    const v2, 0x7f0806d4

    .line 29
    .line 30
    if-eq p2, v0, :cond_6

    .line 31
    const/4 v0, 0x2

    .line 32
    .line 33
    if-eq p2, v0, :cond_5

    .line 34
    const/4 v0, 0x3

    .line 35
    .line 36
    if-eq p2, v0, :cond_4

    .line 37
    const/4 v0, 0x4

    .line 38
    .line 39
    if-eq p2, v0, :cond_3

    .line 40
    .line 41
    if-eq p2, v1, :cond_2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_2
    const v2, 0x7f0806d5

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_3
    const v2, 0x7f0806d3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_4
    const v2, 0x7f0806d2

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_5
    const v2, 0x7f0806d6

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    goto :goto_3

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_7
    const/4 v0, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 78
    .line 79
    if-ne p1, v1, :cond_8

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->nextBackgroundView:Lcom/narvii/widget/NVImageView;

    .line 82
    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    iput-object v0, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_8
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->colorDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    iput-object v0, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    :goto_1
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    check-cast p2, Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_3

    .line 109
    .line 110
    :goto_2
    const-string p2, "oom when change background"

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 117
    :cond_9
    :goto_3
    return-void
.end method

.method private getCurFragment()Lcom/narvii/leaderboard/ShareHeaderFragment;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method private getOverlayAlpha(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    :goto_0
    return p1
.end method

.method private getRankingTypeIndex(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/LeaderBoardItem;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget p1, p1, Lcom/narvii/model/LeaderBoardItem;->type:I

    .line 15
    :goto_0
    return p1
.end method

.method private getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0d04cf

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private initLeaderBoardTabBar()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setLeaderBoardItems(Ljava/util/List;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setCheckPosition(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment$3;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabBar;->setLeaderBoardTabClickListener(Lcom/narvii/leaderboard/LeaderBoardTabBar$LeaderBoardClickListener;)V

    .line 26
    :cond_0
    return-void
.end method

.method private invalidAllList(I)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    instance-of v3, v2, Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setCurrentOffset(I)V

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    return p0
.end method

.method static bridge synthetic o(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->lastPosition:I

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->statTabs:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->lastPosition:I

    return-void
.end method

.method private resetBackground()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getRankingTypeIndex(I)I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->changeBackground(Lcom/narvii/widget/NVImageView;I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->overlay:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getRankingTypeIndex(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getOverlayAlpha(I)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/leaderboard/LeaderBoardTabFragment;Lcom/narvii/widget/NVImageView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->changeBackground(Lcom/narvii/widget/NVImageView;I)V

    return-void
.end method

.method private setUpBackgroundUrls()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 17
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    .line 20
    :goto_0
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-ge v1, v2, :cond_4

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/model/LeaderBoardItem;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/narvii/model/LeaderBoardItem;->style:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 37
    .line 38
    const-string v4, "backgroundMediaList"

    .line 39
    .line 40
    .line 41
    filled-new-array {v4}, [Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    :try_start_0
    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 58
    .line 59
    const-class v5, [Lcom/narvii/model/Media;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    check-cast v3, [Lcom/narvii/model/Media;

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    array-length v4, v3

    .line 70
    .line 71
    if-lez v4, :cond_3

    .line 72
    .line 73
    iget-object v4, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundUrls:Landroid/util/SparseArray;

    .line 74
    .line 75
    iget v2, v2, Lcom/narvii/model/LeaderBoardItem;->type:I

    .line 76
    .line 77
    aget-object v3, v3, v0

    .line 78
    .line 79
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    :goto_2
    return-void
.end method

.method private shareLeaderBoard()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    const/4 v2, 0x4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getCurFragment()Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    instance-of v1, v1, Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getCurFragment()Lcom/narvii/leaderboard/ShareHeaderFragment;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->hideBottomBar()V

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->helper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->community:Lcom/narvii/model/Community;

    .line 52
    .line 53
    new-instance v4, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, p0, v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;-><init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a07cd

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->saveLeaderBoardBackGround(Landroid/app/Activity;ILcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V

    .line 63
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getOverlayAlpha(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getRankingTypeIndex(I)I

    move-result p0

    return p0
.end method

.method private updateChildMarginTop()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->rankingTypeBarHeight:I

    .line 12
    add-int/2addr v0, v1

    .line 13
    .line 14
    sput v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Lcom/narvii/app/NVFragment$MenuController;->setTopMargin(IZ)V

    .line 27
    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/leaderboard/LeaderBoardTabFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->invalidAllList(I)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->resetBackground()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/narvii/app/NVScrollablePagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 28
    return-object v0

    .line 29
    .line 30
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    check-cast v2, Lcom/narvii/model/LeaderBoardItem;

    .line 52
    .line 53
    iget-object v3, v2, Lcom/narvii/model/LeaderBoardItem;->id:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    :cond_2
    move-object v5, v3

    .line 65
    .line 66
    iget v3, v2, Lcom/narvii/model/LeaderBoardItem;->type:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getMappedClzz(I)Ljava/lang/Class;

    .line 70
    move-result-object v8

    .line 71
    .line 72
    iget v3, v2, Lcom/narvii/model/LeaderBoardItem;->type:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getMappedBundle(I)Landroid/os/Bundle;

    .line 76
    move-result-object v9

    .line 77
    .line 78
    iget-object v3, v2, Lcom/narvii/model/LeaderBoardItem;->id:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    const v6, 0x7f080870

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v3, v4}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 93
    move-result-object v7

    .line 94
    .line 95
    new-instance v3, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 96
    .line 97
    iget-object v6, v2, Lcom/narvii/model/LeaderBoardItem;->id:Ljava/lang/String;

    .line 98
    move-object v4, v3

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_3
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabs:Ljava/util/List;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->adapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 115
    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "__embed"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    const v0, 0x7f13000d

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    .line 16
    move-result v0

    .line 17
    :goto_0
    return v0
.end method

.method public getMappedBundle(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "ranking_mode"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string p1, "__embed"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
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

    const-class p1, Lcom/narvii/leaderboard/CheckInRankingListFragment;

    return-object p1

    :cond_0
    const-class p1, Lcom/narvii/leaderboard/UserRankingListFragment;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "leaderboard"

    return-object v0
.end method

.method public getTopOverlayHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "__embed"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f07022f

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    const v1, 0x7f07022e

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

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

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->updateChildMarginTop()V

    .line 9
    .line 10
    :cond_0
    const-string v0, "liveLayer"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 17
    .line 18
    const-string v1, "leaderboards"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
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
    const-string p1, ""

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

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
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->buildLeaderBoardItems()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v0

    .line 30
    .line 31
    div-int/lit8 v0, v0, 0x3

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->leaderBoardItems:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    .line 39
    rem-int/lit8 v1, v1, 0x3

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v1, v2

    .line 46
    :goto_0
    add-int/2addr v0, v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    const v3, 0x7f07045c

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result v1

    .line 58
    mul-int/2addr v0, v1

    .line 59
    .line 60
    iput v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->rankingTypeBarHeight:I

    .line 61
    .line 62
    const-string v0, "community"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->community:Lcom/narvii/model/Community;

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    const-string v0, "offset"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 88
    move-result v0

    .line 89
    .line 90
    iput v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    .line 91
    .line 92
    :cond_1
    new-instance v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 96
    .line 97
    iput-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->helper:Lcom/narvii/leaderboard/LeaderBoardShareHelper;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->getTopOverlayHeight()I

    .line 101
    move-result v0

    .line 102
    .line 103
    sput v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->topOverlayHeight:I

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->setUpBackgroundUrls()V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->updateChildMarginTop()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 120
    .line 121
    sget v1, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->childMarginTopHeight:I

    .line 122
    sub-int/2addr v0, v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    move-result v1

    .line 131
    sub-int/2addr v0, v1

    .line 132
    .line 133
    sput v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->bottomOffsetHeight:I

    .line 134
    .line 135
    if-nez p1, :cond_2

    .line 136
    .line 137
    const-string p1, "statistics"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 144
    .line 145
    const-string v0, "Leaderboard Page Opened"

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    const-string v0, "Source"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    const-string v0, "Leaderboard Page Opened Total"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 165
    .line 166
    .line 167
    :cond_2
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 168
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f1210ad

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
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
    const p3, 0x7f0d04d0

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f1210ad

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "ShareIcon"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->shareLeaderBoard()V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "offset"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->globalScrollOffset:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
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
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0e19

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->tabBar:Lcom/narvii/leaderboard/LeaderBoardTabBar;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->initLeaderBoardTabBar()V

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 24
    .line 25
    const-string v0, "__embed"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    iput-boolean v1, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 35
    move-result p2

    .line 36
    .line 37
    iput p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->lastPosition:I

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 43
    .line 44
    .line 45
    const p2, 0x7f0a07ca

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->backgroundView:Lcom/narvii/widget/NVImageView;

    .line 54
    .line 55
    .line 56
    const p2, 0x7f0a07cb

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 63
    .line 64
    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->nextBackgroundView:Lcom/narvii/widget/NVImageView;

    .line 65
    .line 66
    .line 67
    const p2, 0x7f0a07cc

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->overlay:Landroid/view/View;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->resetBackground()V

    .line 77
    .line 78
    .line 79
    const p2, 0x7f0a0edc

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 87
    move-result p2

    .line 88
    .line 89
    if-eqz p2, :cond_0

    .line 90
    .line 91
    const/16 p2, 0x8

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const/4 p2, 0x0

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method
