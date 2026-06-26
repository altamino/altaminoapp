.class public final Lcom/narvii/master/home/story/FavoriteStoryLisFragment;
.super Lcom/narvii/story/SubTypeStoryBaseListFragment;
.source "FavoriteStoryLisFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/story/FavoriteStoryLisFragment$MyDataSource;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final pendingNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/notification/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->pendingNotifications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment$MyDataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/home/story/FavoriteStoryLisFragment$MyDataSource;-><init>(Lcom/narvii/master/home/story/FavoriteStoryLisFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Likes"

    return-object v0
.end method

.method protected getStoryListAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Likes"

    return-object v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->pendingNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->pendingNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/Notification;

    .line 82
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    invoke-virtual {p0, v1, v0}, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->onAdapterNotification(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;Lcom/narvii/notification/Notification;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.paging.adapter.PagingRecyclerViewAdapter<com.narvii.model.Blog, com.narvii.model.api.BlogListResponse>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public onAdapterNotification(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;Lcom/narvii/notification/Notification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;",
            "Lcom/narvii/notification/Notification;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 91
    iget-object v0, p2, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    instance-of v0, v0, Lcom/narvii/story/StoryNotificationStub;

    if-eqz v0, :cond_8

    .line 92
    iget-object v0, p2, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/narvii/story/StoryNotificationStub;

    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    iget-object p2, v0, Lcom/narvii/story/StoryNotificationStub;->action:Ljava/lang/String;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x321392fd

    if-eq v1, v2, :cond_4

    const v2, 0x3752ea

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "vote"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 95
    iget-object p2, v0, Lcom/narvii/story/StoryNotificationStub;->story:Lcom/narvii/model/Blog;

    const-string v0, "new"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_1

    :cond_4
    const-string v1, "unvote"

    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 96
    iget-object p2, v0, Lcom/narvii/story/StoryNotificationStub;->story:Lcom/narvii/model/Blog;

    const-string v0, "delete"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_1

    .line 99
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->pendingNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    goto :goto_2

    .line 92
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.story.StoryNotificationStub"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0ae4

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/story/FavoriteStoryLisFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "config"

    .line 37
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 38
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f0b048a

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903e4

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/home/story/FavoriteStoryLisFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/story/FavoriteStoryLisFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/story/FavoriteStoryLisFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    return-void
.end method
