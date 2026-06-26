.class public Lcom/narvii/monetization/sticker/model/StickerCollection;
.super Lcom/narvii/model/StoreItemBaseObject;
.source "StickerCollection.java"


# static fields
.field public static final STICKER_COLLECTION_TYPE_NORMAL:I = 0x1

.field public static final STICKER_COLLECTION_TYPE_PERSONAL:I = 0x2

.field public static final STICKER_COLLECTION_TYPE_USER_CREATED:I = 0x3


# instance fields
.field public author:Lcom/narvii/model/User;

.field public bannerUrl:Ljava/lang/String;

.field public collectionId:Ljava/lang/String;

.field public collectionType:I

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;

.field public status:I

.field public stickerList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Sticker;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field public stickersCount:I

.field public uid:Ljava/lang/String;

.field public usedCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/model/StoreItemBaseObject;-><init>()V

    return-void
.end method

.method public static getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 218
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 219
    iget-object p0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    iput-object p0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private isClosedAccessible(Lcom/narvii/model/User;Z)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/narvii/model/User;->isLeader()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 196
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->uid()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public canBeFlagged()Z
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconSourceStickerId()Ljava/lang/String;
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iconSourceStickerId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiteStickerCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v1, 0x0

    .line 234
    iput-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAuthor()Lcom/narvii/model/User;
    .locals 5

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "originalAuthor"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 144
    :cond_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/User;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getOriginalCommunity()Lcom/narvii/model/Community;
    .locals 5

    const/4 v0, 0x0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "originalCommunity"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 157
    :cond_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/Community;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getOwnTime()Ljava/util/Date;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->createdTime:Ljava/util/Date;

    :goto_0
    return-object v0
.end method

.method public getStoreIcon()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibleByLeader(Lcom/narvii/model/User;)Z
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->status()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isClosedAccessible(Lcom/narvii/model/User;Z)Z

    move-result p1

    return p1

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->status()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isClosedAccessible(Lcom/narvii/model/User;Z)Z

    move-result p1

    return p1

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 2

    .line 123
    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeleted()Z
    .locals 2

    .line 127
    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->status:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocalMood()Z
    .locals 1

    .line 107
    instance-of v0, p0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    return v0
.end method

.method public isNormal()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPersonal()Z
    .locals 2

    .line 99
    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShared()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTotalOwned()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/StoreItemBaseObject;->isTotalOwned()Z

    move-result v0

    return v0
.end method

.method public isUserCreated()Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notAvailable()Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x72

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->uid:Ljava/lang/String;

    return-object v0
.end method
