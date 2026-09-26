.class Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/favorite/FavoriteUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FavUserListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Favorite Members"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->pageSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    return-object p2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/user-group/quick-access"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0315

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 14
    .line 15
    iget-boolean p3, p3, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    move p3, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p3, v0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    const p2, 0x7f0a0465

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 36
    .line 37
    iget-boolean p3, p3, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    move v0, v1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    instance-of p1, p1, Lcom/narvii/model/User;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d0773

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/User;

    .line 5
    .line 6
    const-string v2, "addFavoriteUser"

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/User;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 13
    .line 14
    if-ne v1, v2, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->u(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 25
    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->v(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/util/List;)V

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->u(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 55
    const/4 v3, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 65
    .line 66
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 67
    .line 68
    if-ne v0, v2, :cond_3

    .line 69
    .line 70
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 91
    const/4 v1, 0x1

    .line 92
    .line 93
    const-wide/16 v2, 0x190

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    .line 97
    :cond_3
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 3
    invoke-static {p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->u(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, v0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->v(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/util/List;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 6
    invoke-static {p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->u(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_1
    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 7
    invoke-static {p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->u(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method
