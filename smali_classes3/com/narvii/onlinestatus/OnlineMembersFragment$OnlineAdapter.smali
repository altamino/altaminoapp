.class Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;
.super Lcom/narvii/onlinestatus/OnlineMembersAdapter;
.source "OnlineMembersFragment.java"


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

    .line 252
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 253
    invoke-direct {p0, p1}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "account"

    .line 254
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 265
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    if-eqz v1, :cond_0

    const-string v1, "/live-layer"

    goto :goto_0

    :cond_0
    const-string v1, "/user-profile"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 266
    sget-boolean v1, Lcom/narvii/livelayer/LiveLayerService;->OPEN:Z

    if-eqz v1, :cond_1

    const-string v1, "config"

    .line 267
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 268
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 269
    iget-object v1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    iget-object v1, v1, Lcom/narvii/onlinestatus/OnlineMembersFragment;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    const-string v2, "online-members"

    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    :cond_1
    const-string v1, "type"

    const-string v2, "online"

    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "start0"

    .line 274
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 276
    :cond_2
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

    .line 296
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 300
    :cond_0
    sput-object p1, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineMemberList:Ljava/util/List;

    .line 301
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 249
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 282
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "start0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getOnlineStatus()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 285
    iget-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
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

    .line 259
    invoke-super {p0, p1, p2}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 260
    iget-object p2, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    iget-object p2, p2, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteOnlineAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected userClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$OnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->showUserDialog(Lcom/narvii/model/User;)V

    return-void
.end method
