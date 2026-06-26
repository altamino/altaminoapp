.class public final Lcom/narvii/master/home/discover/FollowingFeedListFragment$MyAdapter;
.super Lcom/narvii/feed/list/FeedAdapter;
.source "FollowingFeedListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/FollowingFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/FollowingFeedListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$MyAdapter;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/feed/list/FeedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
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

    .line 92
    new-instance v0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$DataSource;

    iget-object v1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$MyAdapter;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-direct {v0, v1, p1}, Lcom/narvii/master/home/discover/FollowingFeedListFragment$DataSource;-><init>(Lcom/narvii/master/home/discover/FollowingFeedListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "FollowingList"

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 97
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public showStoryDetailPage(Lcom/narvii/model/Feed;Landroid/view/View;)V
    .locals 12

    .line 105
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 106
    new-instance v1, Lcom/narvii/story/StoryHelper;

    invoke-direct {v1, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 107
    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$MyAdapter;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 108
    move-object v4, p1

    check-cast v4, Lcom/narvii/model/Blog;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x1020002

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, p2

    .line 107
    invoke-virtual/range {v1 .. v11}, Lcom/narvii/story/StoryHelper;->openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;Z)Lcom/narvii/story/StoryListFragment;

    return-void
.end method
