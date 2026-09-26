.class Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;
.super Lcom/narvii/onlinestatus/OnlineMembersAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/OnlineMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineAdapter"
.end annotation


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field final synthetic this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    .line 16
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-boolean v1, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "/live-layer"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-string v1, "/user-profile"

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget-boolean v1, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, "config"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/onlinestatus/OnlineMembersFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 37
    .line 38
    const-string v2, "online-members"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    const-string v2, "topic"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    const-string v1, "type"

    .line 51
    .line 52
    const-string v2, "online"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    .line 57
    :goto_1
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const-string p1, "start0"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 12
    .line 13
    :cond_0
    sput-object p1, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineMemberList:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const-string p2, "start0"

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1, v0}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    return-void
.end method

.method protected userClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->showUserDialog(Lcom/narvii/model/User;)V

    .line 6
    return-void
.end method
