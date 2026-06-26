.class public Lcom/narvii/model/api/BlogResponse;
.super Lcom/narvii/model/api/FeedResponse;
.source "BlogResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/FeedResponse<",
        "Lcom/narvii/model/Blog;",
        ">;"
    }
.end annotation


# instance fields
.field public blog:Lcom/narvii/model/Blog;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/model/Blog$BlogDeserializer;
    .end annotation
.end field

.field public suggestedCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public taggedBlogCategoryList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/BlogCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/api/FeedResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/model/Blog;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/Feed;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/api/BlogResponse;->object()Lcom/narvii/model/Blog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/api/BlogResponse;->object()Lcom/narvii/model/Blog;

    move-result-object v0

    return-object v0
.end method
