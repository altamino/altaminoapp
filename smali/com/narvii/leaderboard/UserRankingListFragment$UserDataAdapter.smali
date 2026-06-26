.class Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;
.super Lcom/narvii/leaderboard/RankingUserListAdapter;
.source "UserRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/UserRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserDataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/UserRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/leaderboard/UserRankingListFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/UserRankingListFragment;

    .line 63
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public loadNextPage(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/UserRankingListFragment;

    iget-boolean v0, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    :cond_0
    return-void
.end method

.method protected rankingType()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/UserRankingListFragment;

    iget v0, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    return v0
.end method
