.class Lcom/narvii/feed/ExternalPostListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "ExternalPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/ExternalPostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/ExternalPostListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/ExternalPostListFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/feed/ExternalPostListFragment$Adapter;->this$0:Lcom/narvii/feed/ExternalPostListFragment;

    .line 72
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "External Content"

    .line 73
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 83
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/blog"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string/jumbo v0, "type"

    const-string v1, "external-source"

    .line 84
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    iget-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment$Adapter;->this$0:Lcom/narvii/feed/ExternalPostListFragment;

    iget-object v0, v0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    .line 78
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
