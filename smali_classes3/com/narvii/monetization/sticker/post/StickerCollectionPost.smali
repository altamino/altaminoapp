.class public Lcom/narvii/monetization/sticker/post/StickerCollectionPost;
.super Ljava/lang/Object;
.source "StickerCollectionPost.java"

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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->collectionType:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->collectionType:I

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    .line 44
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

    .line 45
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    new-instance v3, Lcom/narvii/monetization/sticker/post/StickerPost;

    iget-object v4, v1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Lcom/narvii/monetization/sticker/post/StickerPost;-><init>(Lcom/narvii/model/Sticker;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getIconSourceStickerId()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    .line 51
    iget p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->iconSourceStickerIndex:I

    :cond_2
    return-void
.end method


# virtual methods
.method public content()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewStickerCollection(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 4

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;-><init>()V

    .line 112
    :goto_0
    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    const/4 p3, 0x3

    .line 113
    iput p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    .line 114
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    .line 115
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->description:Ljava/lang/String;

    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    .line 117
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 118
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 119
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 120
    new-instance v2, Lcom/narvii/model/Sticker;

    invoke-direct {v2}, Lcom/narvii/model/Sticker;-><init>()V

    .line 121
    iget-object v3, v1, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 122
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/post/StickerPost;->getIconPreviewUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 123
    iget-object v1, v2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    iput-object v1, v2, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 124
    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p3, "account"

    .line 128
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 129
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    .line 130
    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    if-nez p2, :cond_2

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, v0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 134
    new-instance p2, Lcom/narvii/model/OwnershipInfo;

    invoke-direct {p2}, Lcom/narvii/model/OwnershipInfo;-><init>()V

    .line 135
    iput p1, p2, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 136
    iput-object p2, v0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 137
    new-instance p1, Lcom/narvii/model/RestrictionInfo;

    invoke-direct {p1}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    iput-object p1, v0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 138
    iget-object p1, v0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 p2, 0x2

    iput p2, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

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

    .line 74
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "stickerList"

    .line 75
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 76
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/sticker/post/StickerPost;

    .line 79
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    .line 80
    iget-object v4, v2, Lcom/narvii/monetization/sticker/post/StickerPost;->name:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 81
    iget-object v4, v2, Lcom/narvii/monetization/sticker/post/StickerPost;->sticker:Lcom/narvii/model/Sticker;

    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stickerId"

    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 84
    :cond_0
    iget-object v4, v2, Lcom/narvii/monetization/sticker/post/StickerPost;->originalSticker:Lcom/narvii/model/Sticker;

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v4}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v2

    const-string v4, "originalStickerId"

    invoke-virtual {v3, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/post/StickerPost;->getIconPreviewUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "icon"

    invoke-virtual {v3, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 89
    :goto_1
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/StickerCollectionPost;->name:Ljava/lang/String;

    return-object v0
.end method
