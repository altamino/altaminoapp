.class public Lcom/narvii/leaderboard/UserRankingListFragment;
.super Lcom/narvii/leaderboard/ShareHeaderFragment;
.source "UserRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;
    }
.end annotation


# instance fields
.field private top3CellWidth:I

.field private userDataAdapter:Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/leaderboard/ShareHeaderFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ranking_mode"

    const/4 v1, -0x1

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "Quizzes"

    return-object v0

    :cond_1
    const-string v0, "HallOfFame"

    return-object v0

    :cond_2
    const-string v0, "MostActiveLast7Days"

    return-object v0

    :cond_3
    const-string v0, "MostActiveLast24Hrs"

    return-object v0
.end method

.method protected mainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 40
    new-instance p1, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;-><init>(Lcom/narvii/leaderboard/UserRankingListFragment;)V

    iput-object p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    .line 41
    new-instance p1, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;

    iget-object v0, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    invoke-direct {p1, p0, v0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/leaderboard/RankingUserListAdapter;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    .line 24
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->top3CellWidth:I

    return-void
.end method

.method public setCurrentOffset(I)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setCurrentOffset(I)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 32
    iget-object p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
