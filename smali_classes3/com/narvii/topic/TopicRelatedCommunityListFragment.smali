.class public final Lcom/narvii/topic/TopicRelatedCommunityListFragment;
.super Lcom/narvii/community/CommunityListFragment;
.source "TopicRelatedCommunityListFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/community/CommunityListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedCommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedCommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/topic/TopicRelatedCommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/TopicRelatedCommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/topic/TopicRelatedCommunityListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 3

    .line 18
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    new-instance v1, Lcom/narvii/topic/adapter/TopicTopOffsetAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/topic/adapter/TopicTopOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 20
    new-instance v1, Lcom/narvii/community/CommunityListFragment$Adapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/community/CommunityListFragment$Adapter;-><init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    return-object v0
.end method

.method public createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 32
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "key_topic_id"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/feed/community"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListFragment;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Communities"

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/community/CommunityListFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/topic/TopicRelatedCommunityListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b049c

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 27
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-static {p0, p1}, Lcom/narvii/topic/CoordinateFragmentHelperKt;->setPaddingForChildFragmentInTopic(Lcom/narvii/app/NVFragment;Lcom/narvii/paging/state/PageStatusView;)V

    return-void
.end method
