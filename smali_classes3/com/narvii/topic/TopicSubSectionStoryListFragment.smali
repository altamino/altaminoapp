.class public final Lcom/narvii/topic/TopicSubSectionStoryListFragment;
.super Lcom/narvii/story/SubTypeStoryBaseListFragment;
.source "TopicSubCategoryStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/TopicSubSectionStoryListFragment$TopOffsetAdapter;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private sectionKey:Ljava/lang/String;

.field private topicId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected addLinearIpc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 4

    .line 71
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 72
    new-instance v1, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 73
    new-instance v2, Lcom/narvii/topic/TopicSubSectionStoryListFragment$createAdapter$1;

    invoke-direct {v2, p0, p0}, Lcom/narvii/topic/TopicSubSectionStoryListFragment$createAdapter$1;-><init>(Lcom/narvii/topic/TopicSubSectionStoryListFragment;Lcom/narvii/app/NVContext;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 79
    new-instance v2, Lcom/narvii/topic/TopicSubSectionStoryListFragment$TopOffsetAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/topic/TopicSubSectionStoryListFragment$TopOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    return-object v0
.end method

.method public createApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 85
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->topicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/feed/story/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->sectionKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->getApiSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "type"

    const-string v2, "topic-list"

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "v"

    const-string v2, "2.0.0"

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    invoke-virtual {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 43
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getApiSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has no mapped api suffix for ke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " use latest instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 109
    sget-object p1, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    const-string v0, "LATEST"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 111
    :cond_0
    sget-object v0, Lcom/narvii/topic/model/StorySections;->feedKeyApiMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 3

    const-string v0, "key_section_key"

    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x13507eb9

    if-eq v1, v2, :cond_2

    const v2, 0x40b523b9

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "RECOMMENDATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TopicRecommendFullView"

    return-object v0

    :cond_2
    const-string v1, "POPULAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TopicPopularFullView"

    return-object v0

    .line 102
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSectionKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->sectionKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopicId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->topicId:I

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public itemCellLayoutId()I
    .locals 1

    const v0, 0x7f0b0395

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "key_topic_id"

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->topicId:I

    const-string p1, "key_section_key"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->sectionKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->sectionKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/topic/model/StorySections;->getSectionTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-wide v0, 0xff130e43L

    long-to-int p2, v0

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)Z
    .locals 0

    .line 115
    new-instance p1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 116
    iget-object p2, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->sectionKey:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->getApiSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->pathSuffix(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 118
    invoke-virtual {p1, p4}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 119
    iget p2, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->topicId:I

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 120
    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return p2
.end method

.method public final setSectionKey(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->sectionKey:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->sectionKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/topic/model/StorySections;->getSectionTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTopicId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;->topicId:I

    return-void
.end method
