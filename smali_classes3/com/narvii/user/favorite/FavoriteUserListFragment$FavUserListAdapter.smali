.class Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "FavoriteUserListFragment.java"


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

    .line 266
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    .line 267
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Favorite Members"

    .line 268
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    iget-boolean v0, v0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->pageSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 352
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 278
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-group/quick-access"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 280
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090254

    .line 286
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    iget-boolean p3, p3, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090376

    .line 287
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    iget-boolean p3, p3, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 308
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    iget-boolean v0, v0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    if-eqz v0, :cond_1

    instance-of p1, p1, Lcom/narvii/model/User;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06be

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 314
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/User;

    const-string v2, "addFavoriteUser"

    if-eqz v1, :cond_2

    .line 315
    check-cast v0, Lcom/narvii/model/User;

    .line 316
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 317
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-static {v1}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->access$100(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->access$102(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/util/List;)Ljava/util/List;

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-static {v1}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->access$100(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 325
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 326
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 330
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/list/NVListFragment;

    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/NVListFragment;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    const/4 v1, 0x1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/narvii/list/NVListFragment;->blinkItem(Ljava/lang/String;ZJ)V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 264
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 2

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 294
    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-static {p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->access$100(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    .line 295
    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, v0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->access$102(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/util/List;)Ljava/util/List;

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 298
    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-static {p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->access$100(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 300
    :cond_1
    iget-object p3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;->this$0:Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-static {p3}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->access$100(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method
