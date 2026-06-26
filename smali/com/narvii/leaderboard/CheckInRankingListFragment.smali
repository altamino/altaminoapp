.class public Lcom/narvii/leaderboard/CheckInRankingListFragment;
.super Lcom/narvii/leaderboard/ShareHeaderFragment;
.source "CheckInRankingListFragment.java"

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

    .line 58
    invoke-direct {p0}, Lcom/narvii/leaderboard/ShareHeaderFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/leaderboard/CheckInRankingListFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/leaderboard/CheckInRankingListFragment;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->interPadding:F

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/leaderboard/CheckInRankingListFragment;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    return p0
.end method

.method private initParameter()V
    .locals 10

    const/4 v0, 0x5

    .line 146
    iput v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 149
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 150
    iput v3, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->interPadding:F

    .line 151
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v4, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->interPadding:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v5, v1, v2

    .line 152
    iput v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 153
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    .line 154
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    .line 155
    iget v7, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    const v8, 0x3f99999a    # 1.2f

    cmpl-float v9, v7, v5

    if-lez v9, :cond_0

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v2, v2, v5

    sub-float v2, v1, v2

    mul-float v7, v5, v8

    div-float/2addr v2, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 156
    iput v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 157
    iput v5, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    goto :goto_0

    :cond_0
    cmpg-float v2, v7, v6

    if-gez v2, :cond_1

    mul-float v2, v6, v8

    div-float v2, v1, v2

    float-to-int v2, v2

    .line 159
    iput v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 160
    iput v6, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 162
    :cond_1
    :goto_0
    iget v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    if-nez v2, :cond_2

    .line 163
    iput v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    .line 164
    iget v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    int-to-float v0, v0

    mul-float v0, v0, v8

    div-float v0, v1, v0

    iput v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    .line 166
    :cond_2
    iget v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->cellWidth:F

    mul-float v0, v0, v8

    iget v2, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->countColumn:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->interPadding:F

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CheckInStreak"

    return-object v0
.end method

.method public hideBottomBar()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected isCellEmpty(Lcom/narvii/model/CheckInRanking;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 526
    iget-object p1, p1, Lcom/narvii/model/CheckInRanking;->userProfileList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected mainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 3

    .line 172
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 173
    new-instance v0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;-><init>(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V

    iput-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;

    .line 174
    new-instance v0, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;

    iget-object v1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;

    invoke-direct {v0, p0, v1}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/leaderboard/RankingUserListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 175
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    new-instance v0, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;-><init>(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V

    iput-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42820000    # 65.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-object p1
.end method

.method public onAffiliationChanged()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-direct {p0}, Lcom/narvii/leaderboard/CheckInRankingListFragment;->initParameter()V

    .line 88
    new-instance p1, Lcom/narvii/leaderboard/LeaderBoardHelper;

    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/LeaderBoardHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->leaderBoardHelper:Lcom/narvii/leaderboard/LeaderBoardHelper;

    const-string/jumbo p1, "ranking"

    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ranking/RankingService;

    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->rankingService:Lcom/narvii/util/ranking/RankingService;

    const-string p1, "affiliations"

    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 107
    invoke-super {p0, p1, p2}, Lcom/narvii/leaderboard/ShareHeaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->checkInBottomBarLayout:Lcom/narvii/checkin/CheckInBottomBarLayout;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 98
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->setFragmentVisible(Z)V

    .line 100
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment;->adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
