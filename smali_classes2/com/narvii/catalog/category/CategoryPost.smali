.class public Lcom/narvii/catalog/category/CategoryPost;
.super Ljava/lang/Object;
.source "CategoryPost.java"

# interfaces
.implements Lcom/narvii/post/PostObject;


# instance fields
.field public content:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public parentCategoryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/model/ItemCategory;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->parentCategoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->parentCategoryId:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->icon:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/narvii/model/ItemCategory;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->content:Ljava/lang/String;

    .line 39
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->mediaList:Ljava/util/List;

    iput-object p1, p0, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 74
    instance-of v0, p1, Lcom/narvii/catalog/category/CategoryPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/narvii/catalog/category/CategoryPost;

    .line 76
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->icon:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/catalog/category/CategoryPost;->icon:Ljava/lang/String;

    .line 77
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/catalog/category/CategoryPost;->content:Ljava/lang/String;

    .line 78
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/catalog/category/CategoryPost;->mediaList:Ljava/util/List;

    .line 79
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 63
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/catalog/category/CategoryPost;->label:Ljava/lang/String;

    return-object v0
.end method
