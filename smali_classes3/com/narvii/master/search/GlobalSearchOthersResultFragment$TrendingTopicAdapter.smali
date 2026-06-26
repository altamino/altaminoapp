.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;
.super Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;
.source "GlobalSearchOthersResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrendingTopicAdapter"
.end annotation


# instance fields
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

    .line 381
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static final synthetic access$getList$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;
    .locals 0

    .line 381
    invoke-virtual {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setList$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;Ljava/util/List;)V
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->setList(Ljava/util/List;)V

    return-void
.end method

.method private final sendTopicReq()V
    .locals 4

    .line 394
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/topic/trending"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getApiService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/util/http/ApiService;

    move-result-object v1

    new-instance v2, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;

    const-class v3, Lcom/narvii/model/api/TopicSuggestResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "TrendingTopics"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$showSearchHistory(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 385
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->onAttach()V

    .line 386
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->sendTopicReq()V

    return-void
.end method
