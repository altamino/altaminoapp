.class public Lcom/narvii/leaderboard/CheckInRankingListFragment;
.super Lcom/narvii/leaderboard/ShareHeaderFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;,
        Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;
    }
.end annotation


# static fields
.field private static final CELL_THRESHOLD_COUNT:I = 0x2

.field private static final COUNT_COLUMN:I = 0x5

.field private static final DEFAULT_CELL_COUNT:I = 0x5

.field private static final DEFAULT_CELL_MARGIN_WIDTH:F = 0.1f

.field private static final DEFAULT_CELL_SCALE_WIDTH:F = 1.2f

.field private static final MAX_CELL_WITH:I = 0x50

.field private static final MIN_CELL_WITH:I = 0x28


# instance fields
.field adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private cellWidth:F

.field private checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

.field private countColumn:I

.field private interPadding:F

.field leaderBoardHelper:Lcom/narvii/leaderboard/LeaderBoardHelper;

.field rankingService:Lcom/narvii/util/ranking/RankingService;

.field private userDataAdapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/leaderboard/ShareHeaderFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 4
    return-void
.end method

.method private initParameter()V
    .locals 10

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    const v3, 0x7f070223

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    const v4, 0x7f07022a

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v3

    .line 35
    int-to-float v3, v3

    .line 36
    .line 37
    iput v3, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->interPadding:F

    .line 38
    .line 39
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 40
    int-to-float v1, v1

    .line 41
    add-float/2addr v2, v3

    .line 42
    .line 43
    const/high16 v4, 0x40000000    # 2.0f

    .line 44
    mul-float/2addr v2, v4

    .line 45
    sub-float/2addr v1, v2

    .line 46
    .line 47
    const/high16 v2, 0x40c00000    # 6.0f

    .line 48
    .line 49
    div-float v5, v1, v2

    .line 50
    .line 51
    iput v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    const/high16 v6, 0x42a00000    # 80.0f

    .line 58
    .line 59
    .line 60
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 61
    move-result v5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    const/high16 v7, 0x42200000    # 40.0f

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 71
    move-result v6

    .line 72
    .line 73
    iget v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 74
    .line 75
    cmpl-float v8, v7, v5

    .line 76
    .line 77
    .line 78
    const v9, 0x3f99999a    # 1.2f

    .line 79
    .line 80
    if-lez v8, :cond_0

    .line 81
    mul-float/2addr v2, v5

    .line 82
    .line 83
    sub-float v2, v1, v2

    .line 84
    .line 85
    mul-float v6, v5, v9

    .line 86
    div-float/2addr v2, v6

    .line 87
    .line 88
    const/high16 v6, 0x40a00000    # 5.0f

    .line 89
    add-float/2addr v2, v6

    .line 90
    float-to-int v2, v2

    .line 91
    .line 92
    iput v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 93
    .line 94
    iput v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_0
    cmpg-float v2, v7, v6

    .line 98
    .line 99
    if-gez v2, :cond_1

    .line 100
    .line 101
    mul-float v2, v6, v9

    .line 102
    .line 103
    div-float v2, v1, v2

    .line 104
    float-to-int v2, v2

    .line 105
    .line 106
    iput v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 107
    .line 108
    iput v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 109
    .line 110
    :cond_1
    :goto_0
    iget v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 111
    .line 112
    if-nez v2, :cond_2

    .line 113
    .line 114
    iput v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 115
    int-to-float v0, v0

    .line 116
    mul-float/2addr v0, v9

    .line 117
    .line 118
    div-float v0, v1, v0

    .line 119
    .line 120
    iput v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 121
    .line 122
    :cond_2
    iget v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 123
    mul-float/2addr v0, v9

    .line 124
    .line 125
    iget v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 126
    int-to-float v2, v2

    .line 127
    mul-float/2addr v0, v2

    .line 128
    sub-float/2addr v1, v0

    .line 129
    div-float/2addr v1, v4

    .line 130
    add-float/2addr v1, v3

    .line 131
    .line 132
    iput v1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->interPadding:F

    .line 133
    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->interPadding:F

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/leaderboard/CheckInRankingListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "check_in_streak"

    return-object v0
.end method

.method public hideBottomBar()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_0
    return-void
.end method

.method protected isCellEmpty(Lcom/narvii/model/CheckInRanking;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x2

    .line 12
    .line 13
    if-gt p1, v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method protected mainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;-><init>(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/leaderboard/RankingUserListAdapter;)V

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const/high16 v2, 0x41c80000    # 25.0f

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 35
    move-result v1

    .line 36
    float-to-int v1, v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;-><init>(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    const/high16 v2, 0x42820000    # 65.0f

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 70
    move-result v1

    .line 71
    float-to-int v1, v1

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    :cond_0
    return-object p1
.end method

.method public onAffiliationChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->initParameter()V

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/leaderboard/LeaderBoardHelper;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/LeaderBoardHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->leaderBoardHelper:Lcom/narvii/leaderboard/LeaderBoardHelper;

    .line 14
    .line 15
    const-string p1, "ranking"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/util/ranking/RankingService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->rankingService:Lcom/narvii/util/ranking/RankingService;

    .line 24
    .line 25
    const-string p1, "affiliations"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/leaderboard/ShareHeaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    instance-of p2, p1, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, v0}, Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 25
    .line 26
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    const/4 v0, -0x1

    .line 28
    const/4 v1, -0x2

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    const/16 v0, 0x50

    .line 34
    .line 35
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 38
    .line 39
    const/16 v1, 0x10

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v1}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 52
    .line 53
    const/high16 v2, -0x1000000

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    check-cast p1, Landroid/widget/FrameLayout;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    const/16 p2, 0x8

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 87
    :cond_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setUserVisibleHint(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->setFragmentVisible(Z)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 21
    :cond_0
    return-void
.end method
