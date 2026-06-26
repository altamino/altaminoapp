.class Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;
.super Lcom/narvii/members/HorizontalMemberAdapter;
.source "LiveLayerMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineMemberAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 187
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->access$100(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;Lcom/narvii/model/api/UserListResponse;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->setUserListResponse(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private setUserListResponse(Lcom/narvii/model/api/UserListResponse;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iget p1, p1, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    iput p1, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 293
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->access$500(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)V

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 266
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->apiPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->processApiBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "size"

    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 270
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "stoptime"

    .line 271
    invoke-virtual {v0, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "start0"

    .line 274
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 276
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getNormalItemLayoutId()I
    .locals 1

    const v0, 0x7f0b04d7

    return v0
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V
    .locals 0

    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V

    .line 301
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    .line 302
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V

    .line 199
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->blockUserClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 203
    invoke-virtual {p0, p2, p1}, Lcom/narvii/members/HorizontalMemberAdapter;->getItemType(ILjava/lang/Object;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 204
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onMoreItemClick()Z

    return-void

    .line 211
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 212
    instance-of p2, p1, Lcom/narvii/model/User;

    if-eqz p2, :cond_7

    .line 213
    check-cast p1, Lcom/narvii/model/User;

    .line 214
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onUserClicked(Lcom/narvii/model/User;)V

    .line 216
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const-string p3, "account"

    invoke-virtual {p2, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 217
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 218
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 220
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    const-string p3, "Source"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    .line 226
    :cond_4
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    invoke-static {p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->access$200(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/modulization/CommunityConfigHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result p2

    if-nez p2, :cond_6

    .line 227
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 229
    :cond_5
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 232
    :cond_6
    new-instance p2, Lcom/narvii/onlinestatus/UserDialog;

    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 233
    new-instance p3, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;-><init>(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;Lcom/narvii/model/User;)V

    invoke-virtual {p2, p3}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 250
    invoke-virtual {p2}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    :cond_7
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V
    .locals 0

    .line 184
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V
    .locals 0

    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    .line 284
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iput-object p2, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    const/4 p3, 0x1

    .line 286
    iput-boolean p3, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    .line 288
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->setUserListResponse(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected shouldShakeMoods()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    iget-boolean v0, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    return v0
.end method
