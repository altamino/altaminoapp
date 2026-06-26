.class Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;
.super Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;
.source "GlobalTopicSearchFragment.java"


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

    .line 184
    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 190
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "/topic/trending"

    .line 191
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/TopicListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Trending"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->access$000(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showBookmark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
