.class Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SubTypeFeedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/SubTypeFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/SubTypeFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/SubTypeFeedListFragment;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    .line 246
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/narvii/feed/SubTypeFeedListFragment;->access$200(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Feed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-static {v0}, Lcom/narvii/feed/SubTypeFeedListFragment;->access$300(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    .line 259
    invoke-static {v0}, Lcom/narvii/feed/SubTypeFeedListFragment;->access$300(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "external-posts-recent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "/blog"

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 261
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "external-source"

    .line 262
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 263
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-static {v0}, Lcom/narvii/feed/SubTypeFeedListFragment;->access$300(Lcom/narvii/feed/SubTypeFeedListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_2

    .line 265
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 268
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "start0"

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 270
    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-object p1, v0

    .line 272
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I)V"
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/narvii/feed/SubTypeFeedListFragment$FeedAdapter;->this$0:Lcom/narvii/feed/SubTypeFeedListFragment;

    move-object v1, p2

    check-cast v1, Lcom/narvii/model/api/BlogListResponse;

    iget v1, v1, Lcom/narvii/model/api/BlogListResponse;->externalSourceCount:I

    invoke-static {v0, v1}, Lcom/narvii/feed/SubTypeFeedListFragment;->access$402(Lcom/narvii/feed/SubTypeFeedListFragment;I)I

    .line 279
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 281
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/feed/BaseFeedListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
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

    .line 252
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
