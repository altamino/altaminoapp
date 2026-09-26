.class public Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getRecommendedList()Ljava/util/List;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->blogList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->userInfoInBlog:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/livelayer/detailview/OnlineBlog;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v2, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->userInfoInBlog:Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    iput-object v2, v1, Lcom/narvii/livelayer/detailview/OnlineBlog;->userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBlogListResponse;->blogList:Ljava/util/List;

    .line 48
    return-object v0
.end method
