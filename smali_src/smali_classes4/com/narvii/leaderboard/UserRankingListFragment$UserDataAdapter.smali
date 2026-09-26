.class Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;
.super Lcom/narvii/leaderboard/RankingUserListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/UserRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public loadNextPage(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/UserRankingListFragment;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method protected rankingType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/UserRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/UserRankingListFragment;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->rankingMode:I

    .line 5
    return v0
.end method
