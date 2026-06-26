.class public Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "OnlineBlogListResponse.java"

# interfaces
.implements Lcom/narvii/livelayer/detailview/OnlineDataResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/livelayer/detailview/OnlineBlog;",
        ">;",
        "Lcom/narvii/livelayer/detailview/OnlineDataResponse<",
        "Lcom/narvii/livelayer/detailview/OnlineBlog;",
        ">;"
    }
.end annotation


# instance fields
.field public blogList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/livelayer/detailview/OnlineBlog;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineBlog;",
            ">;"
        }
    .end annotation
.end field

.field public recommendedBlogList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/livelayer/detailview/OnlineBlog;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineBlog;",
            ">;"
        }
    .end annotation
.end field

.field public userInfoInBlog:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/chat/thread/OnlineUserInfoInfo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommendedList()Ljava/util/List;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->recommendedBlogList:Ljava/util/List;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineBlog;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->blogList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->userInfoInBlog:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/detailview/OnlineBlog;

    if-eqz v1, :cond_0

    .line 30
    iget-object v2, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->userInfoInBlog:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    if-nez v2, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    iput-object v2, v1, Lcom/narvii/livelayer/detailview/OnlineBlog;->userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    goto :goto_0

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->blogList:Ljava/util/List;

    return-object v0
.end method
