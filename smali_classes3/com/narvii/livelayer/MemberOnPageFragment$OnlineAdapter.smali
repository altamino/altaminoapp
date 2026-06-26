.class Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;
.super Lcom/narvii/onlinestatus/OnlineMembersAdapter;
.source "MemberOnPageFragment.java"


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

    .line 90
    iput-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

    .line 91
    invoke-direct {p0, p1}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "account"

    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 97
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/live-layer"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

    const-string v2, "topic"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "online-members"

    :cond_0
    const-string v3, "config"

    .line 102
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 103
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 104
    iget-object v3, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

    iget-object v3, v3, Lcom/narvii/livelayer/MemberOnPageFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {v3, v1}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_1

    const-string p1, "start0"

    .line 106
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 128
    iget-object v0, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 132
    :cond_0
    sput-object p1, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineMemberList:Ljava/util/List;

    .line 133
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 87
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 114
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "start0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected userClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/livelayer/MemberOnPageFragment$OnlineAdapter;->this$0:Lcom/narvii/livelayer/MemberOnPageFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->showUserDialog(Lcom/narvii/model/User;)V

    return-void
.end method
