.class final Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;
.super Lcom/narvii/story/StoryListAdapter;
.source "GlobalStorySearchListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalStorySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FeedStoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalStorySearchListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalStorySearchListFragment.kt\ncom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter\n*L\n1#1,367:1\n*E\n"
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    const/4 v0, -0x1

    const-string v1, "trending-list"

    invoke-direct {p0, p2, v0, v1}, Lcom/narvii/story/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;ILjava/lang/String;)V

    const-string p2, "search_key"

    .line 256
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 259
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    const-string p1, "trending-player"

    .line 260
    iput-object p1, p0, Lcom/narvii/story/StoryListAdapter;->playerSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 271
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "post/search"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "v"

    const-string v1, "2.0.0"

    .line 273
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 274
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 275
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 276
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getPrefsHelper$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->filterByMyAmino()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 277
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getPrefsHelper$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->sortBy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "orderBy"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 278
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getLanguageService$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v0, 0x9

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "postType"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 280
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoriesSearchResult"

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 295
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 297
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    sget-object v2, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v1

    :goto_0
    return v1
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method protected onFirstStoryPageBecomeVisible()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getMVideoListDelegate$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    check-cast v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->reset()V

    .line 318
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "keyword"

    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 284
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "b"

    .line 286
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 310
    const-class v0, Lcom/narvii/master/search/StorySearchListResponse;

    return-object v0
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    return-void
.end method

.method protected showCommentBarInDetailPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showListEnd(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected showStoryListFragment(Landroid/view/View;Lcom/narvii/model/Blog;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 324
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 325
    iget v1, p2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p0, v1}, Lcom/narvii/story/StoryListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    const-string v1, "global-search-player"

    .line 326
    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->searchKeyWord(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v0

    .line 329
    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p0, p2}, Lcom/narvii/story/StoryListAdapter;->getUserInfo(I)Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p2

    .line 330
    new-instance v0, Lcom/narvii/story/StoryHelper;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 331
    invoke-virtual {v0, p1, p2}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
