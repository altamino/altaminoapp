.class public Lcom/narvii/item/post/ItemPost;
.super Lcom/narvii/feed/BackgroundPost;
.source "SourceFile"

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

    .line 1
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

    .line 2
    invoke-direct {p0}, Lcom/narvii/feed/BackgroundPost;-><init>()V

    .line 3
    iget-object p1, p2, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    .line 4
    iget-object p1, p2, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    .line 5
    iget-object p1, p2, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    .line 6
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

    .line 7
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

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 9
    iget-object p1, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 10
    iget-object v1, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iput-object p3, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 11
    iget p1, p2, Lcom/narvii/model/Feed;->latitude:I

    iput p1, p0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 12
    iget p1, p2, Lcom/narvii/model/Feed;->longitude:I

    iput p1, p0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 13
    iget-object p1, p2, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewItem(Lcom/narvii/model/Item;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Item;
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    move-object v0, p1

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/model/Item;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/model/Item;-><init>()V

    .line 10
    .line 11
    :goto_0
    iput-object p3, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 12
    .line 13
    const-string p3, "account"

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    iput-object p2, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p2, v0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p2, v0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 40
    .line 41
    iput-object p2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    new-instance p2, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    new-instance p3, Lcom/narvii/model/Media;

    .line 53
    .line 54
    .line 55
    invoke-direct {p3}, Lcom/narvii/model/Media;-><init>()V

    .line 56
    .line 57
    const/16 v1, 0x64

    .line 58
    .line 59
    iput v1, p3, Lcom/narvii/model/Media;->type:I

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v1, p3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    iget-object p3, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p3, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    :cond_1
    iput-object p2, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 76
    .line 77
    :cond_2
    if-nez p1, :cond_3

    .line 78
    .line 79
    new-instance p1, Ljava/util/Date;

    .line 80
    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 83
    .line 84
    iput-object p1, v0, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 85
    .line 86
    new-instance p1, Ljava/util/Date;

    .line 87
    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 90
    .line 91
    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_3
    new-instance p1, Ljava/util/Date;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 98
    .line 99
    iput-object p1, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 100
    .line 101
    :goto_1
    iget p1, p0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 102
    .line 103
    iput p1, v0, Lcom/narvii/model/Feed;->latitude:I

    .line 104
    .line 105
    iget p1, p0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 106
    .line 107
    iput p1, v0, Lcom/narvii/model/Feed;->longitude:I

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/item/post/ItemPost;->address:Ljava/lang/String;

    .line 110
    .line 111
    iput-object p1, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    .line 112
    const/4 p1, 0x1

    .line 113
    .line 114
    iput-boolean p1, v0, Lcom/narvii/model/Feed;->_isPreview:Z

    .line 115
    return-object v0
.end method

.method public hasVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public isFansOnly()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "fansOnly"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeBoolean(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isSame(Lcom/narvii/post/PostObject;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/item/post/ItemPost;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/item/post/ItemPost;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->content:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->keywords:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 60
    .line 61
    iget-object v2, p1, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    iget v0, p0, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 70
    .line 71
    iget v2, p1, Lcom/narvii/item/post/ItemPost;->latitude:I

    .line 72
    .line 73
    if-ne v0, v2, :cond_0

    .line 74
    .line 75
    iget v0, p0, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 76
    .line 77
    iget p1, p1, Lcom/narvii/item/post/ItemPost;->longitude:I

    .line 78
    .line 79
    if-ne v0, p1, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 81
    :cond_0
    return v1
.end method

.method public postBody(Lcom/narvii/app/NVContext;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    .line 10
    const-string v1, "itemList"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    .line 15
    const-string v1, "firstImageTaken"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    .line 20
    const-string v1, "itemCategoryList"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const-string v1, "mediaList"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    new-instance v3, Lcom/narvii/model/Media;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    .line 43
    .line 44
    const/16 v4, 0x64

    .line 45
    .line 46
    iput v4, v3, Lcom/narvii/model/Media;->type:I

    .line 47
    .line 48
    iget-object v4, p0, Lcom/narvii/item/post/ItemPost;->icon:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v4, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/item/post/ItemPost;->mediaList:Ljava/util/List;

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    const-string p1, "taggedObjectInfo"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/item/post/ItemPost;->itemList:Ljava/util/List;

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    check-cast v2, Lcom/narvii/model/Item;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addArray()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    iget-object v2, v2, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 107
    const/4 v2, 0x2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_2
    iget-object p1, p0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    .line 114
    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/item/post/ItemPost;->itemCategoryList:Ljava/util/List;

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_3

    .line 132
    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 138
    .line 139
    iget-object v2, v2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :cond_3
    const-string v1, "itemCategoryIdList"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 149
    .line 150
    :cond_4
    const-string p1, "extensions"

    .line 151
    .line 152
    .line 153
    filled-new-array {p1}, [Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 161
    .line 162
    const-string v1, "props"

    .line 163
    .line 164
    .line 165
    filled-new-array {v1}, [Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 173
    .line 174
    if-eqz v2, :cond_7

    .line 175
    .line 176
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    .line 180
    move-result v2

    .line 181
    .line 182
    add-int/lit8 v2, v2, -0x1

    .line 183
    .line 184
    :goto_2
    if-ltz v2, :cond_6

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 188
    move-result-object v3

    .line 189
    .line 190
    const-string v4, "value"

    .line 191
    .line 192
    .line 193
    filled-new-array {v4}, [Ljava/lang/String;

    .line 194
    move-result-object v4

    .line 195
    .line 196
    .line 197
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object v3

    .line 199
    .line 200
    .line 201
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    move-result v3

    .line 203
    .line 204
    if-eqz v3, :cond_5

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->remove(I)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 208
    .line 209
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 210
    goto :goto_2

    .line 211
    .line 212
    .line 213
    :cond_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    .line 214
    move-result v1

    .line 215
    .line 216
    if-nez v1, :cond_7

    .line 217
    .line 218
    const-string v1, "info"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 222
    :cond_7
    return-object v0
.end method

.method public setFansOnly(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    const-string v1, "fansOnly"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/post/ItemPost;->label:Ljava/lang/String;

    return-object v0
.end method
