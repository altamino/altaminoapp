.class Lcom/narvii/search/SearchBlogListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/search/SearchBlogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/search/SearchBlogListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/search/SearchBlogListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/search/SearchBlogListFragment$Adapter;->this$0:Lcom/narvii/search/SearchBlogListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Search Results"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/search/SearchBlogListFragment$Adapter;->this$0:Lcom/narvii/search/SearchBlogListFragment;

    .line 3
    .line 4
    const-string v0, "q"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "/blog"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "type"

    .line 33
    .line 34
    const-string v3, "hashTags"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    .line 42
    const/16 p1, 0x4e20

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    const/4 p1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
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

    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
