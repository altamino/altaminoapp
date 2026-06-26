.class Lcom/narvii/user/list/FollowersListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "FollowersListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/list/FollowersListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/list/FollowersListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/list/FollowersListFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 103
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 104
    invoke-virtual {p1}, Lcom/narvii/user/list/FollowersListFragment;->isMe()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "My Followers"

    goto :goto_0

    :cond_0
    const-string p1, "Followers"

    :goto_0
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allowExtraInfoForItem(Lcom/narvii/model/User;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 129
    iget-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "account"

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 132
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/member"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
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

    .line 140
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->filterDeleted()Lcom/narvii/util/FilterHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b06b8

    goto :goto_0

    :cond_0
    const v0, 0x7f0b06b7

    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 157
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    invoke-virtual {v0}, Lcom/narvii/user/list/FollowersListFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    check-cast p3, Lcom/narvii/model/User;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/narvii/user/list/FollowersListFragment;->delete(Lcom/narvii/model/User;Z)V

    const/4 p1, 0x1

    return p1

    .line 161
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 166
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    invoke-virtual {v0}, Lcom/narvii/user/list/FollowersListFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/User;

    .line 168
    iget v1, v0, Lcom/narvii/model/User;->membershipStatus:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v1, "new"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 173
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void

    .line 177
    :cond_1
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 179
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void

    .line 183
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/user/list/UserListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 101
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/list/FollowersListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 146
    iget-object v0, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    const/4 v2, 0x2

    .line 148
    invoke-virtual {v1, v2}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method public showAminoId()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    invoke-virtual {v0}, Lcom/narvii/user/list/FollowersListFragment;->showAminoId()Z

    move-result v0

    return v0
.end method

.method public showDisableView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
