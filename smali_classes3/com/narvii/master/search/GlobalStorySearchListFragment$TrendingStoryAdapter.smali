.class final Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;
.super Lcom/narvii/story/StoryListAdapter;
.source "GlobalStorySearchListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalStorySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrendingStoryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V
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

    .line 216
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    const/4 p1, -0x1

    const-string v0, "trending-list"

    invoke-direct {p0, p2, p1, v0}, Lcom/narvii/story/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;ILjava/lang/String;)V

    const-string p1, "trending-player"

    .line 219
    iput-object p1, p0, Lcom/narvii/story/StoryListAdapter;->playerSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 223
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/feed/story"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "type"

    const-string v1, "trending-list"

    .line 225
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "v"

    const-string v1, "2.0.0"

    .line 226
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 227
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getLanguageService$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 228
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Trending"

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .line 236
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 238
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 239
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v2, v3, :cond_1

    :cond_0
    return v1

    .line 243
    :cond_1
    iget-object v2, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v2}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$showSearchHistory(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFirstStoryPageBecomeVisible()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->access$getMVideoListDelegate$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_0
    return-void
.end method

.method protected showCommentBarInDetailPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
