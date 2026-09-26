.class public Lcom/narvii/monetization/sticker/post/StickerCollectionPost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/post/PostObject;


# instance fields
.field public collectionType:I

.field public description:Ljava/lang/String;

.field public iconSourceStickerIndex:I

.field public name:Ljava/lang/String;

.field public stickerList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/monetization/sticker/post/StickerPost;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/monetization/sticker/post/StickerPost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->collectionType:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->collectionType:I

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 7
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Sticker;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 8
    new-instance v3, Lcom/narvii/monetization/sticker/post/StickerPost;

    iget-object v4, v1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>(Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getIconSourceStickerId()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    :cond_2
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewStickerCollection(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 4

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    move-object v0, p2

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;-><init>()V

    .line 10
    .line 11
    :goto_0
    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 12
    const/4 p3, 0x3

    .line 13
    .line 14
    iput p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    new-instance p3, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/model/Sticker;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Lcom/narvii/model/Sticker;-><init>()V

    .line 57
    .line 58
    iget-object v3, v1, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v3, v2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/post/StickerPost;->getIconPreviewUrl()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iput-object v1, v2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v1, v2, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_1
    const-string p3, "account"

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    .line 89
    .line 90
    if-nez p2, :cond_2

    .line 91
    const/4 p1, 0x1

    .line 92
    .line 93
    iput-boolean p1, v0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 94
    .line 95
    new-instance p2, Lcom/narvii/model/OwnershipInfo;

    .line 96
    .line 97
    .line 98
    invoke-direct {p2}, Lcom/narvii/model/OwnershipInfo;-><init>()V

    .line 99
    .line 100
    iput p1, p2, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 101
    .line 102
    iput-object p2, v0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 103
    .line 104
    new-instance p1, Lcom/narvii/model/RestrictionInfo;

    .line 105
    .line 106
    .line 107
    invoke-direct {p1}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    .line 108
    .line 109
    iput-object p1, v0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 110
    const/4 p2, 0x2

    .line 111
    .line 112
    iput p2, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 113
    :cond_2
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
    .locals 6

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    .line 10
    const-string v0, "stickerList"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    iget-object v4, v2, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    .line 46
    .line 47
    const-string v5, "name"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 51
    .line 52
    iget-object v4, v2, Lcom/narvii/monetization/sticker/post/StickerPost;->sticker:Lcom/narvii/model/Sticker;

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    const-string v5, "stickerId"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 64
    .line 65
    :cond_0
    iget-object v4, v2, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    const-string v2, "originalStickerId"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    const-string v4, "icon"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/post/StickerPost;->getIconPreviewUrl()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    return-object v0
.end method
