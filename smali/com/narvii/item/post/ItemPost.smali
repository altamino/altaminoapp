.class public Lcom/narvii/item/post/ItemPost;
.super Lcom/narvii/feed/BackgroundPost;
.source "ItemPost.java"

# interfaces
.implements Lcom/narvii/influencer/FansOnlyPost;


# instance fields
.field public address:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public itemCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;"
        }
    .end annotation
.end field

.field public itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field public keywords:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public latitude:I

.field public longitude:I

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Item;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Item;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    .line 32
    iget-object p1, p2, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    .line 33
    iget-object p1, p2, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    .line 34
    iget-object p1, p2, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    .line 35
    iget-object p1, p2, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 36
    iget-object p1, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_1
    iput-object v0, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 38
    iget-object p1, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    .line 39
    iget-object p1, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    iget-object v1, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_2
    iput-object p3, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 42
    iget p1, p2, Lcom/narvii/model/Feed;->latitude:I

    iput p1, p0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 43
    iget p1, p2, Lcom/narvii/model/Feed;->longitude:I

    iput p1, p0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 44
    iget-object p1, p2, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewItem(Lcom/narvii/model/Item;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Item;
    .locals 2

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lcom/narvii/model/Item;

    invoke-direct {v0}, Lcom/narvii/model/Item;-><init>()V

    .line 49
    :goto_0
    iput-object p3, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    const-string p3, "account"

    .line 50
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 51
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    .line 52
    iput-object p2, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 53
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    iput-object p2, v0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 54
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    iput-object p2, v0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    .line 55
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    iput-object p2, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 56
    iget-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 57
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance p3, Lcom/narvii/model/Media;

    invoke-direct {p3}, Lcom/narvii/model/Media;-><init>()V

    const/16 v1, 0x64

    .line 60
    iput v1, p3, Lcom/narvii/model/Media;->type:I

    .line 61
    iget-object v1, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    iput-object v1, p3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 62
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p3, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 64
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_1
    iput-object p2, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    :cond_2
    if-nez p1, :cond_3

    .line 69
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 70
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    goto :goto_1

    .line 72
    :cond_3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 74
    :goto_1
    iget p1, p0, Lcom/narvii/item/post/ItemPost;->latitude:I

    iput p1, v0, Lcom/narvii/model/Feed;->latitude:I

    .line 75
    iget p1, p0, Lcom/narvii/item/post/ItemPost;->longitude:I

    iput p1, v0, Lcom/narvii/model/Feed;->longitude:I

    .line 76
    iget-object p1, p0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, v0, Lcom/narvii/model/Feed;->_isPreview:Z

    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

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

.method public isFansOnly()Z
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "fansOnly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 183
    instance-of v0, p1, Lcom/narvii/item/post/ItemPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    .line 185
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    .line 186
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 187
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 188
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    .line 189
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 190
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/item/post/ItemPost;->latitude:I

    iget v2, p1, Lcom/narvii/item/post/ItemPost;->latitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/narvii/item/post/ItemPost;->longitude:I

    iget p1, p1, Lcom/narvii/item/post/ItemPost;->longitude:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 8

    .line 120
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "itemList"

    .line 122
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v0, "firstImageTaken"

    .line 123
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v0, "itemCategoryList"

    .line 124
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 126
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "mediaList"

    .line 127
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v2, Lcom/narvii/model/Media;

    invoke-direct {v2}, Lcom/narvii/model/Media;-><init>()V

    const/16 v3, 0x64

    .line 130
    iput v3, v2, Lcom/narvii/model/Media;->type:I

    .line 131
    iget-object v3, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "taggedObjectInfo"

    .line 141
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Item;

    .line 143
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addArray()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v3

    .line 144
    iget-object v2, v2, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const/4 v2, 0x2

    .line 145
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 150
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 152
    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_1

    :cond_3
    const-string v1, "itemCategoryIdList"

    .line 154
    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_4
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "extensions"

    aput-object v3, v1, v2

    .line 157
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v4, "props"

    aput-object v4, v3, v2

    .line 158
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    .line 159
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v4, :cond_7

    .line 160
    check-cast v3, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 161
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_2
    if-ltz v4, :cond_6

    .line 162
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v7, "value"

    aput-object v7, v6, v2

    .line 163
    invoke-static {v5, v6}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 164
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->remove(I)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 167
    :cond_6
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "info"

    .line 169
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_7
    return-object p1
.end method

.method public setFansOnly(Z)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "fansOnly"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    return-object v0
.end method
