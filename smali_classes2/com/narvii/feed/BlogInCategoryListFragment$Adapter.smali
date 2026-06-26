.class Lcom/narvii/feed/BlogInCategoryListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "BlogInCategoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/BlogInCategoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BlogInCategoryListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/BlogInCategoryListFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/feed/BlogInCategoryListFragment$Adapter;->this$0:Lcom/narvii/feed/BlogInCategoryListFragment;

    .line 149
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Topic Categories"

    .line 150
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 160
    iget-object p1, p0, Lcom/narvii/feed/BlogInCategoryListFragment$Adapter;->this$0:Lcom/narvii/feed/BlogInCategoryListFragment;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/blog-category/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/blog-list"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected openFeedDetail(Lcom/narvii/model/Feed;I)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->openFeedDetail(Lcom/narvii/model/Feed;I)V

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

    .line 155
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
