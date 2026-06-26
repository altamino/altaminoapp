.class Lcom/narvii/user/list/FollowingListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "FollowingListFragment.java"


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

    .line 104
    iput-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 105
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Following"

    .line 106
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allowExtraInfoForItem(Lcom/narvii/model/User;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 130
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

    .line 135
    iget-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "account"

    .line 137
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 138
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/joined"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 141
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

    .line 147
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

    .line 111
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    iget-boolean v0, v0, Lcom/narvii/user/list/FollowingListFragment;->isMe:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b06b6

    goto :goto_0

    :cond_0
    const v0, 0x7f0b06b8

    :goto_0
    return v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    iget-boolean v0, v0, Lcom/narvii/user/list/FollowingListFragment;->isMe:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b06b2

    goto :goto_1

    :cond_2
    const v0, 0x7f0b06b7

    :goto_1
    return v0
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 153
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    check-cast p3, Lcom/narvii/model/User;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/narvii/user/list/FollowingListFragment;->delete(Lcom/narvii/model/User;Z)V

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 162
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    const-string v1, "delete"

    const-string v2, "new"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/User;

    .line 164
    iget v3, v0, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v3

    iget-object v5, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-direct {p1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 169
    invoke-virtual {p0, p1, v4}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void

    .line 173
    :cond_1
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 175
    invoke-virtual {p0, p1, v4}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void

    .line 179
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_3
    return-void

    .line 186
    :cond_4
    invoke-super {p0, p1}, Lcom/narvii/user/list/UserListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public showAminoId()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$Adapter;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    invoke-virtual {v0}, Lcom/narvii/user/list/FollowingListFragment;->showAminoId()Z

    move-result v0

    return v0
.end method

.method public showDisableView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
