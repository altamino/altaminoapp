.class public final Lcom/narvii/topic/TopicRelatedCommunityListFragment;
.super Lcom/narvii/community/CommunityListFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/CommunityListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/topic/adapter/TopicTopOffsetAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/topic/adapter/TopicTopOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/community/CommunityListFragment$Adapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, p0}, Lcom/narvii/community/CommunityListFragment$Adapter;-><init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;)V

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 23
    return-object v0
.end method

.method public createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "key_topic_id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v3, "topic/"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "/feed/community"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/community/CommunityListFragment;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-string v2, "language"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "topic_related_community_list"

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    const p1, 0x7f0d04c8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/narvii/topic/CoordinateFragmentHelperKt;->setPaddingForChildFragmentInTopic(Lcom/narvii/app/NVFragment;Lcom/narvii/paging/state/PageStatusView;)V

    .line 21
    return-void
.end method
