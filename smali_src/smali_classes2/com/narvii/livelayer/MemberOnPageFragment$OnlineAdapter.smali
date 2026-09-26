.class Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;
.super Lcom/narvii/onlinestatus/OnlineMembersAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/MemberOnPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineAdapter"
.end annotation


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field final synthetic this$0:Lcom/narvii/livelayer/MemberOnPageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/MemberOnPageFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

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
    iput-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    .line 16
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/live-layer"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

    .line 13
    .line 14
    const-string v2, "topic"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const-string v1, "online-members"

    .line 27
    .line 28
    :cond_0
    const-string v3, "config"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/narvii/livelayer/MemberOnPageFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    const-string p1, "start0"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object p1

    .line 60
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
    iget-object v0, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

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

    iget-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

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

.method protected userClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->showUserDialog(Lcom/narvii/model/User;)V

    .line 6
    return-void
.end method
