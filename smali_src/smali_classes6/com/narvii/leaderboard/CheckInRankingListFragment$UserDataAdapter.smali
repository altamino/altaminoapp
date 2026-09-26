.class Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;
.super Lcom/narvii/leaderboard/RankingUserListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/CheckInRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserDataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/leaderboard/CheckInRankingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, -0x2

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 9
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "/community/leaderboard"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x4

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "rankingType"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    .line 40
    xor-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopUserList"

    return-object v0
.end method

.method public loadNextPage(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

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

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 3
    iget-object p1, p1, Lcom/narvii/leaderboard/CheckInRankingListFragment;->adapter:Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;

    iget-object p2, p2, Lcom/narvii/model/api/UserListResponse;->groupedUserProfileList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/narvii/leaderboard/CheckInRankingListFragment$CheckInListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method protected rankingType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
