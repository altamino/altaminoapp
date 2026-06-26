.class public final Lcom/narvii/topic/TopicRelatedStoryListFragment$RecommendationStoryAdapter;
.super Lcom/narvii/story/base/StoryListAdapter;
.source "TopicRelatedStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/TopicRelatedStoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecommendationStoryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicRelatedStoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/TopicRelatedStoryListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/narvii/story/base/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment$RecommendationStoryAdapter;->this$0:Lcom/narvii/topic/TopicRelatedStoryListFragment;

    return-void
.end method


# virtual methods
.method public createApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 81
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment$RecommendationStoryAdapter;->this$0:Lcom/narvii/topic/TopicRelatedStoryListFragment;

    invoke-virtual {v3}, Lcom/narvii/topic/TopicRelatedStoryListFragment;->getTopicId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/feed/story/recommendation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "type"

    const-string v2, "topic-list"

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "v"

    const-string v2, "2.0.0"

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 92
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

    .line 107
    invoke-super {p0, p1, p2}, Lcom/narvii/story/base/StoryListAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/narvii/model/Blog;

    if-eqz v4, :cond_2

    .line 109
    instance-of p2, p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 110
    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {v4}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v3, p2

    .line 111
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p1

    const v1, 0x7f090586

    invoke-virtual {v4}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v4, v0}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v2, p2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_2
    return-void
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 2

    .line 96
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 97
    sget-object p2, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    const-string v1, "LATEST"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->pathSuffix(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 98
    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment$RecommendationStoryAdapter;->this$0:Lcom/narvii/topic/TopicRelatedStoryListFragment;

    invoke-virtual {v0}, Lcom/narvii/topic/TopicRelatedStoryListFragment;->getTopicId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 99
    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    .line 100
    invoke-virtual {p2, p4}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    const-string p3, "topic-player"

    .line 101
    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p2

    .line 102
    new-instance p3, Lcom/narvii/story/StoryHelper;

    iget-object p4, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, p4}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 103
    invoke-virtual {p3, p1, p2}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
