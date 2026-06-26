.class public final Lcom/narvii/topic/TopicRelatedStoryListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "TopicRelatedStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/TopicRelatedStoryListFragment$RecommendationStoryAdapter;,
        Lcom/narvii/topic/TopicRelatedStoryListFragment$BottomOffsetAdapter;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private communityInfoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public myAdapter:Lcom/narvii/topic/adapter/StorySectionAdapter;

.field public sAdapter:Lcom/narvii/story/base/StoryListAdapter;

.field private topicId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->communityInfoMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 4

    .line 65
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 66
    new-instance v1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    new-instance v2, Lcom/narvii/topic/TopicRelatedStoryListFragment$RecommendationStoryAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/topic/TopicRelatedStoryListFragment$RecommendationStoryAdapter;-><init>(Lcom/narvii/topic/TopicRelatedStoryListFragment;)V

    iput-object v2, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->sAdapter:Lcom/narvii/story/base/StoryListAdapter;

    .line 68
    iget-object v2, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->sAdapter:Lcom/narvii/story/base/StoryListAdapter;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 70
    new-instance v1, Lcom/narvii/topic/TopicRelatedStoryListFragment$BottomOffsetAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/topic/TopicRelatedStoryListFragment$BottomOffsetAdapter;-><init>(Lcom/narvii/topic/TopicRelatedStoryListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 71
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object v0

    :cond_0
    const-string v0, "sAdapter"

    .line 68
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCommunityInfoMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->communityInfoMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public final getMyAdapter()Lcom/narvii/topic/adapter/StorySectionAdapter;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->myAdapter:Lcom/narvii/topic/adapter/StorySectionAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "myAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Stories"

    return-object v0
.end method

.method public final getSAdapter()Lcom/narvii/story/base/StoryListAdapter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->sAdapter:Lcom/narvii/story/base/StoryListAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTopicId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->topicId:I

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 139
    new-instance v0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "key_topic_id"

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->topicId:I

    .line 51
    new-instance p1, Lcom/narvii/topic/adapter/StorySectionAdapter;

    iget v0, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->topicId:I

    invoke-direct {p1, p0, v0}, Lcom/narvii/topic/adapter/StorySectionAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->myAdapter:Lcom/narvii/topic/adapter/StorySectionAdapter;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/topic/TopicRelatedStoryListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b049c

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-static {p0, p1}, Lcom/narvii/topic/CoordinateFragmentHelperKt;->setPaddingForChildFragmentInTopic(Lcom/narvii/app/NVFragment;Lcom/narvii/paging/state/PageStatusView;)V

    return-void
.end method

.method public final setCommunityInfoMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->communityInfoMapping:Ljava/util/Map;

    return-void
.end method

.method public final setMyAdapter(Lcom/narvii/topic/adapter/StorySectionAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->myAdapter:Lcom/narvii/topic/adapter/StorySectionAdapter;

    return-void
.end method

.method public final setSAdapter(Lcom/narvii/story/base/StoryListAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->sAdapter:Lcom/narvii/story/base/StoryListAdapter;

    return-void
.end method

.method public final setTopicId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/narvii/topic/TopicRelatedStoryListFragment;->topicId:I

    return-void
.end method
