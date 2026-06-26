.class public Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "HistoryFeaturedFeedResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Blog;",
        ">;"
    }
.end annotation


# instance fields
.field public blogList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentUsing = Lcom/narvii/model/Blog$BlogDeserializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field public featuredBlogCategory:Lcom/narvii/model/BlogCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;->blogList:Ljava/util/List;

    return-object v0
.end method
