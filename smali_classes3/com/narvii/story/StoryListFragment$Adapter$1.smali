.class Lcom/narvii/story/StoryListFragment$Adapter$1;
.super Lcom/narvii/paging/source/PageDataSource;
.source "StoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment$Adapter;->createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/Blog;",
        "Lcom/narvii/model/api/BlogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/StoryListFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment$Adapter;Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 0

    .line 1914
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 7

    .line 1917
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$2200(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "refererObjectId"

    if-nez v0, :cond_2

    .line 1918
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1919
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2200(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1920
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2300(Lcom/narvii/story/StoryListFragment;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1921
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2300(Lcom/narvii/story/StoryListFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1922
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1923
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 1925
    :cond_0
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1926
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1929
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0

    .line 1931
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1933
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2400(Lcom/narvii/story/StoryListFragment;)I

    move-result v2

    const-string v3, "/feed/story"

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 1934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topic/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v5, v5, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v5}, Lcom/narvii/story/StoryListFragment;->access$2400(Lcom/narvii/story/StoryListFragment;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v3, v3, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    sget-object v5, Lcom/narvii/story/StoryListFragment;->KEY_PATH_SUFFIX:Ljava/lang/String;

    .line 1935
    invoke-virtual {v3, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v5, v5, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    sget-object v6, Lcom/narvii/story/StoryListFragment;->KEY_PATH_SUFFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1937
    :cond_4
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1938
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2400(Lcom/narvii/story/StoryListFragment;)I

    move-result v2

    const-string v3, "community-player"

    const-string v5, "type"

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2500(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "topic-player"

    .line 1940
    invoke-virtual {v0, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_2

    .line 1942
    :cond_5
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2500(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1944
    :goto_2
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2500(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/story/StoryApi;->isPlayerType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1945
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1946
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1948
    :cond_6
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2400(Lcom/narvii/story/StoryListFragment;)I

    move-result v1

    if-eq v1, v4, :cond_7

    .line 1949
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2400(Lcom/narvii/story/StoryListFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "refererTopicId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1952
    :cond_7
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2500(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user-player"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1953
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    sget-object v2, Lcom/narvii/story/StoryListFragment;->KEY_UID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profileUid"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1955
    :cond_8
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2500(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "global-search-player"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1956
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    sget-object v2, Lcom/narvii/story/StoryListFragment;->KEY_KEY_WORD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1958
    :cond_9
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "v"

    const-string v2, "2.0.0"

    .line 1959
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1960
    invoke-virtual {p0}, Lcom/narvii/paging/source/PageDataSource;->get_nextPageToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "fromStart"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1962
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$2500(Lcom/narvii/story/StoryListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1963
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 1964
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-gtz v1, :cond_b

    const-string v1, "request community player in global"

    .line 1966
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 1969
    :cond_b
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;I)V
    .locals 5

    .line 1979
    iget-object v0, p2, Lcom/narvii/model/api/BlogListResponse;->communityInfoMapping:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1980
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 1981
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1984
    :cond_1
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$900(Lcom/narvii/story/StoryListFragment;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1985
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2700(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/community/CommunityService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1986
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object v2, v2, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$2700(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/community/CommunityService;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->updateLiteCommunity(Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 1990
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const/4 p2, 0x0

    const-string p3, "fromStart"

    .line 1992
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/http/ApiRequest;->tagBoolean(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1993
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/narvii/story/StoryListFragment;->access$2800(Lcom/narvii/story/StoryListFragment;I)V

    .line 1995
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$1000(Lcom/narvii/story/StoryListFragment;)V

    .line 1996
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$2900(Lcom/narvii/story/StoryListFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1997
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1, p2}, Lcom/narvii/story/StoryListFragment;->access$2902(Lcom/narvii/story/StoryListFragment;Z)Z

    .line 1998
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$1800(Lcom/narvii/story/StoryListFragment;)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$2100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_4

    return-void

    .line 2001
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$1800(Lcom/narvii/story/StoryListFragment;)I

    move-result p2

    iget-object p3, p0, Lcom/narvii/story/StoryListFragment$Adapter$1;->this$1:Lcom/narvii/story/StoryListFragment$Adapter;

    iget-object p3, p3, Lcom/narvii/story/StoryListFragment$Adapter;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p3}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/narvii/story/StoryListFragment;->onPlayerViewChanged(ILandroid/view/View;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1914
    check-cast p2, Lcom/narvii/model/api/BlogListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/story/StoryListFragment$Adapter$1;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    .line 1974
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
