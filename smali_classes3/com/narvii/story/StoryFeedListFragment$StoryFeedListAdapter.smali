.class public final Lcom/narvii/story/StoryFeedListFragment$StoryFeedListAdapter;
.super Lcom/narvii/story/base/StoryListAdapter;
.source "StoryFeedListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StoryFeedListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryFeedListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryFeedListFragment.kt\ncom/narvii/story/StoryFeedListFragment$StoryFeedListAdapter\n*L\n1#1,148:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryFeedListFragment;Lcom/narvii/app/NVContext;)V
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

    .line 77
    iput-object p1, p0, Lcom/narvii/story/StoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/story/StoryFeedListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/story/base/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 84
    new-instance v0, Lcom/narvii/story/StoryFeedListFragment$DataSource;

    iget-object v1, p0, Lcom/narvii/story/StoryFeedListFragment$StoryFeedListAdapter;->this$0:Lcom/narvii/story/StoryFeedListFragment;

    invoke-direct {v0, v1, p1}, Lcom/narvii/story/StoryFeedListFragment$DataSource;-><init>(Lcom/narvii/story/StoryFeedListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "FeedsList"

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 90
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1, p2}, Lcom/narvii/story/base/StoryListAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 95
    instance-of v0, p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->showHeaderView()Z

    move-result v0

    sub-int/2addr p2, v0

    .line 97
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_3

    .line 98
    check-cast p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/story/widgets/StoryCardView;->getNicknameView()Lcom/narvii/widget/NicknameView;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NicknameView;->setHideRankingBadge(Z)V

    .line 101
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NicknameView;->setHideInfluencerBadge(Z)V

    .line 103
    :cond_0
    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move-object v3, p2

    .line 104
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p1

    const v1, 0x7f090586

    invoke-virtual {v4}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v4, v0}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v2, p2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_3
    return-void
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const/4 p2, 0x1

    .line 111
    invoke-virtual {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    const-string p3, "community-player"

    .line 113
    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 114
    invoke-virtual {p2, p4}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p2

    .line 115
    new-instance p3, Lcom/narvii/story/StoryHelper;

    iget-object p4, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, p4}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    invoke-virtual {p3, p1, p2}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
