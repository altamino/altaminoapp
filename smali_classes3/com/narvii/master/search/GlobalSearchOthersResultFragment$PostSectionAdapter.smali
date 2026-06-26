.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "GlobalSearchOthersResultFragment.kt"

# interfaces
.implements Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MoreSearchResultHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PostSectionAdapter"
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

    .line 492
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-direct {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$shouldShowDownloadMasterDialog(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;I)Z
    .locals 0

    .line 492
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "PostSearchResult"

    return-object v0
.end method

.method protected getCommunityTimestamp(I)Ljava/lang/String;
    .locals 0

    .line 503
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-virtual {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getResponseTime()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 534
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;
    .locals 1

    .line 573
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 574
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showCommentBarInStoryDetail()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string v0, "global-search-player"

    .line 575
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 576
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->searchKeyWord(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 577
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final getStorySection()Lcom/narvii/master/search/model/GlobalSearchResultSection;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    return-object v0
.end method

.method public hasMoreResult()Z
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

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

.method public onAttach()V
    .locals 1

    .line 497
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 499
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 538
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904fe

    if-ne v1, v2, :cond_0

    .line 539
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const-string p2, "affiliations"

    .line 540
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "getService(\"affiliations\")"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/community/AffiliationsService;

    .line 541
    move-object p4, p3

    check-cast p4, Lcom/narvii/model/Feed;

    iget p4, p4, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p2, p4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    const p2, 0x7f0f06d5

    const/4 p4, 0x0

    .line 542
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 543
    new-instance p2, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;

    invoke-direct {p2, p0, p3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter$onItemClick$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 551
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v0

    .line 554
    :cond_0
    instance-of v1, p3, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_3

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/Blog;

    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    if-eqz p5, :cond_1

    .line 556
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090571

    if-eq v2, v3, :cond_2

    :cond_1
    if-nez p5, :cond_3

    iget v2, v1, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v2, :cond_3

    .line 557
    :cond_2
    new-instance p1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    check-cast p3, Lcom/narvii/model/Feed;

    invoke-direct {p1, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 558
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string p2, "global-search-player"

    .line 559
    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 560
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->searchKeyWord(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 561
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 562
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 563
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 564
    new-instance p2, Lcom/narvii/story/StoryHelper;

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, p4}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2, p5, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    .line 565
    invoke-virtual {p0, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    return v0

    .line 569
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final setSection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 2

    .line 511
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    .line 512
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->resultList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_5

    .line 514
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 515
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->communityInfoMapping:Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->setFeedRelatedCommunityList(Ljava/util/HashMap;)V

    .line 516
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->userProfileMapping:Ljava/util/HashMap;

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->setUserProgfileMapping(Ljava/util/HashMap;)V

    .line 517
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->launchHelper()Lcom/narvii/headlines/HeadlineLaunchHelper;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/narvii/master/search/model/GlobalSearchResultSection;->communityInfoMapping:Ljava/util/HashMap;

    :cond_3
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-virtual {v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getResponseTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->setCommunityMap(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 519
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    return-void

    .line 513
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.narvii.model.Feed> /* = java.util.ArrayList<com.narvii.model.Feed> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setStorySection(Lcom/narvii/master/search/model/GlobalSearchResultSection;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$PostSectionAdapter;->storySection:Lcom/narvii/master/search/model/GlobalSearchResultSection;

    return-void
.end method

.method protected showAllLike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
