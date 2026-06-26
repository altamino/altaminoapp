.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "GlobalSearchOthersResultFragment.kt"

# interfaces
.implements Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorySectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Blog;",
        ">;",
        "Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;"
    }
.end annotation


# instance fields
.field private storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const-class p1, Lcom/narvii/model/Blog;

    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoriesSearchResult"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 640
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getStorySection()Lcom/narvii/master/search/model/GlobalSearchResultSection;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 592
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/narvii/model/Blog;

    const/4 v0, 0x0

    if-eqz v5, :cond_2

    .line 593
    iget v1, v5, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const v1, 0x7f0b0392

    .line 594
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090ae4

    .line 595
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/narvii/story/widgets/StoryCardView;

    .line 596
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {v1, p1}, Lcom/narvii/story/widgets/StoryCardView;->setStory(Lcom/narvii/model/Blog;)V

    .line 597
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    invoke-virtual {p0, p2, v5}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 599
    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const v2, 0x7f090586

    .line 600
    invoke-virtual {v5}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v5, p3}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v3, p1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-object p2

    :cond_2
    return-object v0
.end method

.method public hasMoreResult()Z
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/master/search/model/GlobalSearchResultSection;->hitsTotal:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttach()V
    .locals 2

    .line 607
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 608
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const-string p5, "adapter"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 613
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    .line 614
    iget p2, p1, Lcom/narvii/model/Blog;->type:I

    const/16 p3, 0x9

    if-ne p2, p3, :cond_0

    const-string p2, "blog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 615
    :goto_0
    iget-object p3, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/narvii/master/search/model/GlobalSearchResultSection;->communityInfoMapping:Ljava/util/HashMap;

    if-eqz p3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    goto :goto_1

    :cond_1
    move-object p3, p5

    .line 616
    :goto_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/master/search/model/GlobalSearchResultSection;->userProfileMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object p5, p2

    check-cast p5, Lcom/narvii/model/User;

    .line 617
    :cond_2
    new-instance p2, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {p2, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 618
    invoke-virtual {p2, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string p2, "global-search-player"

    .line 619
    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 620
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->searchKeyWord(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 621
    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 622
    invoke-virtual {p1, p5}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 623
    new-instance p3, Lcom/narvii/story/StoryHelper;

    iget-object p5, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p3, p5}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 624
    invoke-virtual {p3, p4, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return p2
.end method

.method public final setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 1

    .line 644
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 645
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    .line 647
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    return-void

    .line 646
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.model.Blog> /* = java.util.ArrayList<com.narvii.model.Blog> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setStorySection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$StorySectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    return-void
.end method
