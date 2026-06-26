.class Lcom/narvii/search/SearchPostListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SearchPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/search/SearchPostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/search/SearchPostListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/search/SearchPostListFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->this$0:Lcom/narvii/search/SearchPostListFragment;

    .line 74
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Search Results"

    .line 75
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/search/SearchPostListFragment$Adapter;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/search/SearchPostListFragment$Adapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->keyword:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/feed/blog-all"

    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/blog"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->this$0:Lcom/narvii/search/SearchPostListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "type"

    const-string v1, "keywords"

    .line 114
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    iget-object v0, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->keyword:Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v0, 0x4e20

    .line 116
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LatestPosts"

    return-object v0

    :cond_0
    const-string v0, "PostsSearchResult"

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "keyword"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->keyword:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/narvii/search/SearchPostListFragment$Adapter;->keyword:Ljava/lang/String;

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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

    .line 102
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
