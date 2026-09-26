.class Lcom/narvii/user/list/FollowersListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/user/list/FollowersListFragment;->isMe()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "My Followers"

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string p1, "Followers"

    .line 17
    .line 18
    :goto_0
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public allowExtraInfoForItem(Lcom/narvii/model/User;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->isDisabled()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 3
    .line 4
    const-string v0, "id"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p1, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v2, "/user-profile/"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p1, "/member"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 60
    move-result-object p1

    .line 61
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

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->filterDeleted()Lcom/narvii/util/FilterHelper;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d076d

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    const v0, 0x7f0d076c

    .line 16
    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/user/list/FollowersListFragment;->isMe()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 15
    .line 16
    check-cast p3, Lcom/narvii/model/User;

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3, p2}, Lcom/narvii/user/list/FollowersListFragment;->delete(Lcom/narvii/model/User;Z)V

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/user/list/FollowersListFragment;->isMe()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/User;

    .line 19
    .line 20
    iget v1, v0, Lcom/narvii/model/User;->membershipStatus:I

    .line 21
    .line 22
    and-int/lit8 v1, v1, 0x2

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 40
    .line 41
    const-string v1, "new"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 48
    return-void

    .line 49
    .line 50
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 51
    .line 52
    const-string v1, "delete"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 59
    return-void

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/user/list/UserListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 63
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/list/FollowersListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p2, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
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

    .line 4
    invoke-virtual {v1, v2}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method public showAminoId()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/user/list/FollowersListFragment;->showAminoId()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public showDisableView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
