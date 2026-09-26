.class Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;
.super Lcom/narvii/members/HorizontalMemberAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->g(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static bridge synthetic j(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;Lcom/narvii/model/api/UserListResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->setUserListResponse(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setUserListResponse(Lcom/narvii/model/api/UserListResponse;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 3
    .line 4
    iget p1, p1, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    .line 5
    .line 6
    iput p1, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->h(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 16
    return-void
.end method


# virtual methods
.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->apiPath()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->processApiBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 20
    .line 21
    const-string/jumbo v1, "start"

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    .line 30
    const-string/jumbo v1, "size"

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    .line 40
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result p2

    .line 42
    .line 43
    if-nez p2, :cond_0

    .line 44
    .line 45
    const-string/jumbo p2, "stoptime"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    :cond_0
    if-nez p1, :cond_1

    .line 51
    .line 52
    const-string/jumbo p1, "start0"

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

.method protected getNormalItemLayoutId()I
    .locals 1

    const v0, 0x7f0d0504

    return v0
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Z)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    iput-boolean p2, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    return-void
.end method

.method public onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->blockUserClick()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/narvii/members/HorizontalMemberAdapter;->getItemType(ILjava/lang/Object;)I

    .line 17
    move-result p1

    .line 18
    const/4 p3, 0x1

    .line 19
    .line 20
    if-ne p1, p3, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 31
    .line 32
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onMoreItemClick()Z

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    instance-of p2, p1, Lcom/narvii/model/User;

    .line 48
    .line 49
    if-eqz p2, :cond_7

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/model/User;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onUserClicked(Lcom/narvii/model/User;)V

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 59
    .line 60
    const-string p3, "account"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 71
    .line 72
    if-eqz p3, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p2

    .line 85
    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 97
    .line 98
    iget-object p2, p2, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 99
    .line 100
    const-string p3, "Source"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 106
    .line 107
    .line 108
    invoke-static {p2, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 109
    :cond_3
    return-void

    .line 110
    .line 111
    :cond_4
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->f(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/modulization/CommunityConfigHelper;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 119
    move-result p2

    .line 120
    .line 121
    if-nez p2, :cond_6

    .line 122
    .line 123
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 124
    .line 125
    .line 126
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    if-nez p1, :cond_5

    .line 130
    return-void

    .line 131
    .line 132
    :cond_5
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 133
    .line 134
    .line 135
    invoke-static {p2, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 136
    return-void

    .line 137
    .line 138
    :cond_6
    new-instance p2, Lcom/narvii/onlinestatus/UserDialog;

    .line 139
    .line 140
    iget-object p3, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 141
    .line 142
    .line 143
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 144
    move-result-object p3

    .line 145
    .line 146
    .line 147
    invoke-direct {p2, p3, p1}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 148
    .line 149
    new-instance p3, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;

    .line 150
    .line 151
    .line 152
    invoke-direct {p3, p0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter$1;-><init>(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;Lcom/narvii/model/User;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p3}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    .line 159
    :cond_7
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 3
    iput-object p2, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    .line 5
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->this$0:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    .line 5
    return v0
.end method
