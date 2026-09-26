.class Lcom/narvii/user/list/FollowingListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/list/FollowingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/list/FollowingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/list/FollowingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Following"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 10
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
    iget-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

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
    const-string p1, "/joined"

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
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/user/list/FollowingListFragment;->isMe:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0d076b

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    const v0, 0x7f0d076d

    .line 22
    :goto_0
    return v0

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/narvii/user/list/FollowingListFragment;->isMe:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0d0767

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_2
    const v0, 0x7f0d076c

    .line 36
    :goto_1
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
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 15
    .line 16
    check-cast p3, Lcom/narvii/model/User;

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3, p2}, Lcom/narvii/user/list/FollowingListFragment;->delete(Lcom/narvii/model/User;Z)V

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
    .locals 6

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    const-string v1, "delete"

    .line 7
    .line 8
    const-string v2, "new"

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/model/User;

    .line 23
    .line 24
    iget v3, v0, Lcom/narvii/model/User;->membershipStatus:I

    .line 25
    const/4 v4, 0x1

    .line 26
    and-int/2addr v3, v4

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    iget-object v5, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v4}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 49
    return-void

    .line 50
    .line 51
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v4}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 58
    return-void

    .line 59
    .line 60
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 75
    .line 76
    if-eq v0, v2, :cond_2

    .line 77
    .line 78
    if-ne v0, v1, :cond_3

    .line 79
    .line 80
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    :cond_2
    return-void

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/user/list/UserListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 87
    return-void
.end method

.method public showAminoId()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->showAminoId()Z

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
