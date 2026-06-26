.class Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "StoryListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleStoryAdapter"
.end annotation


# instance fields
.field dataSource:Lcom/narvii/paging/source/SinglePageDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/SinglePageDataSource<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field error:Ljava/lang/String;

.field helper:Lcom/narvii/feed/FeedRequestHelper;

.field requestFinished:Z

.field private story:Lcom/narvii/model/Blog;

.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryListFragment;)V
    .locals 1

    .line 1726
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    .line 1727
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1728
    new-instance v0, Lcom/narvii/feed/FeedRequestHelper;

    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->helper:Lcom/narvii/feed/FeedRequestHelper;

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;)Lcom/narvii/model/Blog;
    .locals 0

    .line 1719
    iget-object p0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic lambda$null$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1746
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    return-void
.end method


# virtual methods
.method public createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
    .locals 1

    .line 1753
    new-instance v0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter$1;-><init>(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    .line 1764
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    return-object p1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->error:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    .line 1799
    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1400(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    const v1, 0x7f0f1054

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1788
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isListShow()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1793
    iget-boolean v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->requestFinished:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$onAttach$1$StoryListFragment$SingleStoryAdapter(Lcom/narvii/util/RequestResult;)V
    .locals 1

    const/4 v0, 0x1

    .line 1737
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->requestFinished:Z

    .line 1738
    iget v0, p1, Lcom/narvii/util/RequestResult;->code:I

    if-nez v0, :cond_0

    .line 1739
    iget-object p1, p1, Lcom/narvii/util/RequestResult;->object:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Blog;

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->story:Lcom/narvii/model/Blog;

    .line 1740
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/SinglePageDataSource;->loadInitData()V

    goto :goto_0

    .line 1742
    :cond_0
    iget-object p1, p1, Lcom/narvii/util/RequestResult;->errorMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->error:Ljava/lang/String;

    .line 1744
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1745
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$SingleStoryAdapter$T_NORcvMDld-i3WZQbvvpKkAooc;->INSTANCE:Lcom/narvii/story/-$$Lambda$StoryListFragment$SingleStoryAdapter$T_NORcvMDld-i3WZQbvvpKkAooc;

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public synthetic lambda$onNotification$2$StoryListFragment$SingleStoryAdapter()V
    .locals 3

    .line 1828
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1800(Lcom/narvii/story/StoryListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/story/StoryListFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    return-void
.end method

.method public onAttach()V
    .locals 5

    .line 1733
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    const/4 v0, 0x0

    .line 1734
    iput-boolean v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->requestFinished:Z

    .line 1735
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/StoryListFragment;->updateViews()V

    .line 1736
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->helper:Lcom/narvii/feed/FeedRequestHelper;

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    sget-object v2, Lcom/narvii/story/StoryListFragment;->KEY_FEED_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$1200(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/narvii/story/-$$Lambda$StoryListFragment$SingleStoryAdapter$_xqh-eCeqK0FJVd5AsBUum5tJVc;

    invoke-direct {v3, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$SingleStoryAdapter$_xqh-eCeqK0FJVd5AsBUum5tJVc;-><init>(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/narvii/feed/FeedRequestHelper;->sendBlogDetailRequest(Ljava/lang/String;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1780
    instance-of v0, p1, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1781
    move-object v0, p1

    check-cast v0, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;->bindStory(Lcom/narvii/model/Blog;IZ)V

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/paging/PageViewUtils;->onBindViewHolder(Lcom/narvii/app/NVFragment;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1770
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

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

    .line 1771
    new-instance p2, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p2, v0, p1}, Lcom/narvii/story/StoryListFragment$StoryItemViewHolder;-><init>(Lcom/narvii/story/StoryListFragment;Landroid/view/View;)V

    .line 1772
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/narvii/paging/PageView;

    if-eqz v0, :cond_1

    .line 1773
    check-cast p1, Lcom/narvii/paging/PageView;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {p1, v0}, Lcom/narvii/paging/PageView;->setNvContext(Lcom/narvii/app/NVContext;)V

    :cond_1
    return-object p2
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 1804
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1

    .line 1805
    check-cast v0, Lcom/narvii/model/Blog;

    .line 1806
    iget v1, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1807
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1809
    invoke-static {v1, v0, p1}, Lcom/narvii/story/base/StoryListAdapterKt;->filterStoryNofication(Ljava/util/List;Lcom/narvii/model/Blog;Lcom/narvii/notification/Notification;)Lcom/narvii/notification/Notification;

    move-result-object p1

    .line 1811
    :cond_0
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1812
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/narvii/story/base/StoryListAdapterKt;->filterStoryNofication(Ljava/util/List;Lcom/narvii/model/Blog;Lcom/narvii/notification/Notification;)Lcom/narvii/notification/Notification;

    move-result-object p1

    .line 1817
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "edit"

    const-string v2, "update"

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_5

    .line 1818
    :cond_2
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1819
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    iget v2, v2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    iput v2, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 1821
    :cond_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 1822
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1500(Lcom/narvii/story/StoryListFragment;)V

    .line 1824
    :cond_4
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/narvii/model/Blog;

    invoke-virtual {v0, v2}, Lcom/narvii/paging/source/DataSource;->updateItem(Lcom/narvii/model/NVObject;)I

    .line 1825
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1000(Lcom/narvii/story/StoryListFragment;)V

    .line 1826
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    if-ne v0, v1, :cond_5

    .line 1827
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {v0}, Lcom/narvii/widgets/StoryProgressBar;->updatePlayedPollQuiz()V

    .line 1828
    new-instance v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$SingleStoryAdapter$QRLLPuxFDwQLdaf2cNdyQoyMv80;

    invoke-direct {v0, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$SingleStoryAdapter$QRLLPuxFDwQLdaf2cNdyQoyMv80;-><init>(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 1831
    :cond_5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Blog;

    const-string v1, "delete"

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1832
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    move-object v0, v2

    goto :goto_0

    :cond_6
    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    .line 1833
    :goto_0
    iget-object v3, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v3}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1834
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1600(Lcom/narvii/story/StoryListFragment;)Z

    .line 1837
    :cond_8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "new"

    .line 1838
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1839
    :cond_9
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/Comment;

    .line 1840
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1842
    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 1843
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    invoke-virtual {v0, v1}, Lcom/narvii/paging/source/DataSource;->updateItem(Lcom/narvii/model/NVObject;)I

    .line 1844
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1000(Lcom/narvii/story/StoryListFragment;)V

    .line 1847
    :cond_a
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1849
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->dataSource:Lcom/narvii/paging/source/SinglePageDataSource;

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/NVObject;

    .line 1850
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/influencer/FanClub;

    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    .line 1851
    instance-of v0, v2, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_c

    .line 1852
    check-cast v2, Lcom/narvii/model/Feed;

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/influencer/FanClub;

    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, v2, Lcom/narvii/model/Feed;->needHidden:Z

    :cond_c
    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    if-eqz v0, :cond_e

    .line 1858
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1700(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1860
    :cond_e
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/influencer/FanClub;

    iget-object v1, v1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 1861
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    .line 1862
    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1863
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object p1

    const v0, 0x7f09083e

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EasyButton;

    if-eqz p1, :cond_f

    .line 1865
    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :cond_f
    return-void
.end method
