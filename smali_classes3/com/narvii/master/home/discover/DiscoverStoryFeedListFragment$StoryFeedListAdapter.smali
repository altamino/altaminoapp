.class public final Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;
.super Lcom/narvii/story/base/StoryListAdapter;
.source "DiscoverStoryFeedListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StoryFeedListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;Lcom/narvii/app/NVContext;)V
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

    .line 166
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/story/base/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
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

    .line 169
    new-instance v0, Lcom/narvii/story/base/StoryListAdapter$DataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/base/StoryListAdapter$DataSource;-><init>(Lcom/narvii/story/base/StoryListAdapter;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoryList"

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 174
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2}, Lcom/narvii/story/base/StoryListAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 179
    instance-of v0, p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    sub-int/2addr p2, v0

    .line 181
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/narvii/model/Blog;

    const/4 p2, 0x0

    if-eqz v4, :cond_2

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    invoke-virtual {v0}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 184
    invoke-virtual {v0}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v0

    const v1, 0x7f090586

    invoke-virtual {v4}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, p2}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    .line 186
    :cond_2
    check-cast p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryCardView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setRankingBadge(I)V

    :cond_3
    return-void
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 14

    move-object v0, p0

    .line 195
    iget-object v1, v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment"

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateMasterBottomBar(Z)V

    .line 197
    new-instance v4, Lcom/narvii/story/StoryHelper;

    invoke-direct {v4, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 198
    iget-object v1, v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    const v11, 0x7f090ae5

    .line 199
    iget-object v1, v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v12

    iget-object v1, v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v13, v1

    check-cast v13, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, p1

    .line 198
    invoke-virtual/range {v4 .. v13}, Lcom/narvii/story/StoryHelper;->openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;)Lcom/narvii/story/StoryListFragment;

    move-result-object v1

    .line 199
    iget-object v2, v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-static {v2}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->access$getBottomSheetLayout$p(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment;->setBottomSheetLayout(Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_3
    new-instance v1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    move-object/from16 v2, p3

    .line 202
    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    const-string v2, "discover-player"

    .line 204
    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    move-object/from16 v2, p4

    .line 205
    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 206
    new-instance v2, Lcom/narvii/story/StoryHelper;

    iget-object v3, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v3}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    move-object v3, p1

    .line 207
    invoke-virtual {v2, p1, v1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    or-int/lit8 p1, p1, 0x1

    .line 213
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method
