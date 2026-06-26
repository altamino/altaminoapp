.class Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;
.super Lcom/narvii/leaderboard/RankingUserListAdapter;
.source "CheckInRankingListFragment.java"


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

    .line 184
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    .line 185
    invoke-direct {p0, p1}, Lcom/narvii/leaderboard/RankingUserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, -0x2

    .line 186
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 192
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/leaderboard"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rankingType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    xor-int/lit8 p1, p1, 0x1

    .line 194
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 195
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopUserList"

    return-object v0
.end method

.method public loadNextPage(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

    iget-boolean v0, v0, Lcom/narvii/leaderboard/ShareHeaderFragment;->readyToLoad:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 183
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 218
    iget-object p1, p0, Lcom/narvii/leaderboard/CheckInRankingListFragment$UserDataAdapter;->this$0:Lcom/narvii/leaderboard/CheckInRankingListFragment;

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
