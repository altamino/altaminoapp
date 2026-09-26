.class public Lcom/narvii/bookmark/BookMarkListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/bookmark/BookMarkListResponse;->bookmarkList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/bookmark/BookMark;

    .line 24
    .line 25
    iget-object v3, v2, Lcom/narvii/bookmark/BookMark;->refObject:Lcom/narvii/model/Feed;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Lcom/narvii/model/Blog;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Lcom/narvii/model/Blog;-><init>()V

    .line 33
    .line 34
    new-instance v4, Lcom/narvii/model/User;

    .line 35
    .line 36
    .line 37
    invoke-direct {v4}, Lcom/narvii/model/User;-><init>()V

    .line 38
    .line 39
    iput-object v4, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/narvii/bookmark/BookMark;->refObjectId:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, v3, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 44
    .line 45
    const/16 v2, 0xa

    .line 46
    .line 47
    iput v2, v3, Lcom/narvii/model/Feed;->status:I

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method
