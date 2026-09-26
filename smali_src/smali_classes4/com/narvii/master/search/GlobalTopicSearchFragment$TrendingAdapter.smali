.class Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;
.super Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalTopicSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrendingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v0, "/topic/trending"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/TopicListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "language"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Trending"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->w(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

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

.method public showBookmark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
