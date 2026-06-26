.class Lcom/narvii/story/StoryListFragment$Adapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "StoryListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/Blog;",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryListFragment;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 1874
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    .line 1875
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    return-void
.end method


# virtual methods
.method protected autoLoadInitData()Z
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1900(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1100(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1100(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
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

    .line 1910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1911
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1912
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    :cond_0
    new-instance v1, Lcom/narvii/story/StoryListFragment$Adapter$1;

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    sget-object v3, Lcom/narvii/story/StoryListFragment;->KEY_IS_OFFSET_PAGING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/narvii/paging/source/PagingConfiguration;->OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/narvii/paging/source/PagingConfiguration;->TOKEN_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    :goto_0
    invoke-direct {v1, p0, p1, v0, v2}, Lcom/narvii/story/StoryListFragment$Adapter$1;-><init>(Lcom/narvii/story/StoryListFragment$Adapter;Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-object v1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onNotification$0$StoryListFragment$Adapter()V
    .locals 3

    .line 2043
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1800(Lcom/narvii/story/StoryListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/story/StoryListFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    return-void
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1896
    instance-of v0, p1, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1897
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1100(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v3, v0, Lcom/narvii/paging/source/PageDataSource;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->get_isEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    sub-int/2addr v0, v2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1898
    :cond_1
    :goto_0
    check-cast p1, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {p1, v0, p2, v2}, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->bindStory(Lcom/narvii/model/Blog;IZ)V

    .line 1900
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$2000(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1901
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0, v1}, Lcom/narvii/story/StoryListFragment;->access$2002(Lcom/narvii/story/StoryListFragment;Z)Z

    .line 1902
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/narvii/story/StoryListFragment;->onSnapPotionChanged(IILjava/lang/Object;)V

    .line 1903
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->storyItemView:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0, p2, p1}, Lcom/narvii/story/StoryListFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1890
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_SHOW_COMMENT_BAR:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0452

    goto :goto_0

    :cond_0
    const v0, 0x7f0b044d

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1891
    new-instance p2, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p2, v0, p1}, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;-><init>(Lcom/narvii/story/StoryListFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 8

    .line 2019
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1

    .line 2020
    check-cast v0, Lcom/narvii/model/Blog;

    .line 2021
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2022
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2024
    invoke-static {v1, v0, p1}, Lcom/narvii/story/base/StoryListAdapterKt;->filterStoryNofication(Ljava/util/List;Lcom/narvii/model/Blog;Lcom/narvii/notification/Notification;)Lcom/narvii/notification/Notification;

    move-result-object p1

    .line 2026
    :cond_0
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2027
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/narvii/story/base/StoryListAdapterKt;->filterStoryNofication(Ljava/util/List;Lcom/narvii/model/Blog;Lcom/narvii/notification/Notification;)Lcom/narvii/notification/Notification;

    move-result-object p1

    .line 2032
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Blog;

    const-string v1, "update"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v3, "edit"

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_5

    .line 2033
    :cond_2
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2034
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v4, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v4}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v4

    iget v4, v4, Lcom/narvii/model/Blog;->currentWindowIndex:I

    iput v4, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2035
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/model/Blog;

    invoke-static {v0, v4}, Lcom/narvii/story/StoryListFragment;->access$102(Lcom/narvii/story/StoryListFragment;Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;

    .line 2036
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object v4, v4, Lcom/narvii/story/StoryListFragment;->pollPlayRecordHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isGlobalInteractionScope()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/narvii/scene/poll/PollExtensionKt;->initPollPlayRecord(Ljava/util/List;Ljava/util/HashMap;Z)V

    .line 2037
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v3, :cond_4

    .line 2038
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1500(Lcom/narvii/story/StoryListFragment;)V

    .line 2040
    :cond_4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->updateItem(Lcom/narvii/model/NVObject;)V

    .line 2041
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {v0}, Lcom/narvii/widgets/StoryProgressBar;->updatePlayedPollQuiz()V

    .line 2042
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v3, :cond_5

    .line 2043
    new-instance v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$Adapter$TQCu_KnFMfJBB4XHmZzOlaH6M00;

    invoke-direct {v0, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$Adapter$TQCu_KnFMfJBB4XHmZzOlaH6M00;-><init>(Lcom/narvii/story/StoryListFragment$Adapter;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 2047
    :cond_5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Blog;

    const-string v3, "delete"

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2048
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-nez v0, :cond_6

    move-object v0, v2

    goto :goto_1

    :cond_6
    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    .line 2049
    :goto_1
    iget-object v4, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v4}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2050
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1600(Lcom/narvii/story/StoryListFragment;)Z

    .line 2053
    :cond_8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "new"

    .line 2054
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2055
    :cond_9
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Comment;

    .line 2056
    iget-object v2, v0, Lcom/narvii/model/Comment;->parentId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_b

    .line 2058
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v3}, Lcom/narvii/story/StoryListFragment;->access$1900(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object v3

    if-nez v3, :cond_a

    .line 2059
    iget-object v3, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 2061
    :cond_a
    invoke-virtual {p0, v2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->updateItem(Lcom/narvii/model/NVObject;)V

    .line 2064
    :cond_b
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    .line 2066
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_c
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/NVObject;

    .line 2067
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/narvii/influencer/FanClub;

    iget-object v7, v7, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2068
    instance-of v4, v5, Lcom/narvii/model/Feed;

    if-eqz v4, :cond_d

    .line 2069
    check-cast v5, Lcom/narvii/model/Feed;

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/influencer/FanClub;

    invoke-virtual {v4}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v5, Lcom/narvii/model/Feed;->needHidden:Z

    :cond_d
    const/4 v4, 0x1

    goto :goto_3

    :cond_e
    if-eqz v4, :cond_f

    .line 2075
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3000(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2077
    :cond_f
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/influencer/FanClub;

    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/influencer/FanClub;

    .line 2078
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    .line 2079
    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2080
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    const v4, 0x7f09083e

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    if-eqz v0, :cond_10

    .line 2082
    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 2086
    :cond_10
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2088
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/NVObject;

    .line 2089
    instance-of v4, v1, Lcom/narvii/model/Feed;

    if-eqz v4, :cond_11

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/model/User;

    check-cast v1, Lcom/narvii/model/Feed;

    iget-object v5, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v4, v5}, Lcom/narvii/model/User;->isSameUser(Lcom/narvii/model/User;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2090
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/narvii/model/User;

    iput-object v2, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v2, 0x1

    goto :goto_4

    :cond_12
    if-eqz v2, :cond_13

    .line 2095
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$3100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_13
    return-void
.end method

.method protected pageStatusLayoutId()I
    .locals 1

    const v0, 0x7f0b040e

    return v0
.end method
