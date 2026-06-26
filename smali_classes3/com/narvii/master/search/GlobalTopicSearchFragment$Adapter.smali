.class Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;
.super Lcom/narvii/topic/adapter/TopicListAdapter;
.source "GlobalTopicSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalTopicSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 216
    invoke-direct {p0, p2}, Lcom/narvii/topic/adapter/TopicListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 213
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    const-string p2, "search_key"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 234
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "topic/search"

    .line 235
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    const-string v1, "q"

    .line 236
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalTopicSearchFragment;

    .line 237
    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 238
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

    const-string v0, "TopicsSearchResult"

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 244
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 222
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 223
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/story/StoryTopic;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
