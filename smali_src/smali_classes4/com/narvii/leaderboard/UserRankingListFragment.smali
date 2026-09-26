.class public Lcom/narvii/leaderboard/UserRankingListFragment;
.super Lcom/narvii/leaderboard/ShareHeaderFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/leaderboard/ShareHeaderFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "ranking_mode"

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    const/4 v1, 0x3

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x5

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const-string v0, "ranking_quizzes"

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const-string v0, "ranking_hall_of_fame"

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_2
    const-string v0, "ranking_most_active_last_7_days"

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_3
    const-string v0, "ranking_most_active_24_hrs"

    .line 33
    :goto_0
    return-object v0
.end method

.method protected mainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;-><init>(Lcom/narvii/leaderboard/UserRankingListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0, v0}, Lcom/narvii/leaderboard/RankingUserListLayoutAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/leaderboard/RankingUserListAdapter;)V

    .line 15
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 14
    int-to-float p1, p1

    .line 15
    .line 16
    const/high16 v0, 0x40400000    # 3.0f

    .line 17
    div-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->top3CellWidth:I

    .line 21
    return-void
.end method

.method public setCurrentOffset(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/leaderboard/ShareHeaderFragment;->setCurrentOffset(I)V

    .line 4
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

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
    iget-object p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment;->userDataAdapter:Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    :cond_0
    return-void
.end method
