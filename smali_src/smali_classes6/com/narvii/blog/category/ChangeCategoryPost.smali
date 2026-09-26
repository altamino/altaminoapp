.class Lcom/narvii/blog/category/ChangeCategoryPost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostObject;


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/BlogCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/BlogCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/blog/category/ChangeCategoryPost;->list:Ljava/util/ArrayList;

    .line 6
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "taggedBlogCategoryIdList"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/blog/category/ChangeCategoryPost;->list:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/narvii/model/BlogCategory;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
