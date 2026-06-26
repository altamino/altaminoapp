.class public Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;
.super Lcom/narvii/story/base/StoryListAdapter;
.source "SubTypeStoryBaseListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/SubTypeStoryBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/SubTypeStoryBaseListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/story/base/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->createApiRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public createHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->createHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
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

    .line 94
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/story/base/StoryListAdapter;->createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getStoryListAreaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public itemCellLayoutId()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->itemCellLayoutId()I

    move-result v0

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 88
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->addLinearIpc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    :cond_0
    return-void
.end method

.method public onHeaderViewClicked(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onHeaderViewClicked(Landroid/view/View;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0, p0, p1}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onAdapterNotification(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 11

    .line 126
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v1, Lcom/narvii/story/StoryHelper;

    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-direct {v1, v0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const v2, 0x7f090586

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    :cond_1
    move-object v7, v0

    .line 131
    :goto_0
    iget-object p1, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    iget-object v3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    const v8, 0x1020002

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v10}, Lcom/narvii/story/StoryHelper;->openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;)Lcom/narvii/story/StoryListFragment;

    return-void
.end method

.method public showHeaderView()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->this$0:Lcom/narvii/story/SubTypeStoryBaseListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->showHeaderView()Z

    move-result v0

    return v0
.end method
