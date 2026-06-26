.class public Lcom/narvii/bookmark/BookMarkListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "BookMarkListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field public bookmarkList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/bookmark/BookMark;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/bookmark/BookMark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/narvii/bookmark/BookMarkListResponse;->bookmarkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/bookmark/BookMark;

    .line 24
    iget-object v3, v2, Lcom/narvii/bookmark/BookMark;->refObject:Lcom/narvii/model/Feed;

    if-nez v3, :cond_0

    .line 25
    new-instance v3, Lcom/narvii/model/Blog;

    invoke-direct {v3}, Lcom/narvii/model/Blog;-><init>()V

    .line 26
    new-instance v4, Lcom/narvii/model/User;

    invoke-direct {v4}, Lcom/narvii/model/User;-><init>()V

    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 27
    iget-object v2, v2, Lcom/narvii/bookmark/BookMark;->refObjectId:Ljava/lang/String;

    iput-object v2, v3, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    const/16 v2, 0xa

    .line 28
    iput v2, v3, Lcom/narvii/model/Feed;->status:I

    .line 29
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
