.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;
.super Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method

.method public static final synthetic access$getList(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getList()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final sendTopicReq()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/topic/trending"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getContentLanguageService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/language/ContentLanguageService;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "contentLanguageService"

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    move-object v1, v2

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v3, "language"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getApiService$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/util/http/ApiService;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    const-string v1, "apiService"

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v2, v1

    .line 55
    .line 56
    :goto_0
    new-instance v1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;

    .line 57
    .line 58
    const-class v3, Lcom/narvii/model/api/TopicSuggestResponse;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0, v3}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter$sendTopicReq$1;-><init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "TrendingTopics"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$showSearchHistory(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TrendingTopicAdapter;->sendTopicReq()V

    .line 7
    return-void
.end method
