.class public Lcom/narvii/monetization/sticker/model/StickerCollection;
.super Lcom/narvii/model/StoreItemBaseObject;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/StoreItemBaseObject;-><init>()V

    .line 4
    return-void
.end method

.method public static getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    return-object v0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object p0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 36
    :cond_2
    return-object p1

    .line 37
    :cond_3
    :goto_0
    return-object v0
.end method

.method private isClosedAccessible(Lcom/narvii/model/User;Z)Z
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/User;->isLeader()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->uid()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    return p1
.end method


# virtual methods
.method public canBeFlagged()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconSourceStickerId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "iconSourceStickerId"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getLiteStickerCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iput-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 10
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAuthor()Lcom/narvii/model/User;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    new-array v2, v2, [Ljava/lang/String;

    .line 7
    .line 8
    const-string v3, "originalAuthor"

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 21
    .line 22
    const-class v3, Lcom/narvii/model/User;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object v1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    return-object v0
.end method

.method public getOriginalCommunity()Lcom/narvii/model/Community;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    new-array v2, v2, [Ljava/lang/String;

    .line 7
    .line 8
    const-string v3, "originalCommunity"

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 21
    .line 22
    const-class v3, Lcom/narvii/model/Community;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/Community;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object v1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    return-object v0
.end method

.method public getOwnTime()Ljava/util/Date;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->createdTime:Ljava/util/Date;

    .line 12
    :goto_0
    return-object v0
.end method

.method public getStoreIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibleByLeader(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->status()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isClosedAccessible(Lcom/narvii/model/User;Z)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->status()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isClosedAccessible(Lcom/narvii/model/User;Z)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public isClosed()Z
    .locals 2

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

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 3
    return v0
.end method

.method public isNormal()Z
    .locals 2

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSystem()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isTotalOwned()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lcom/narvii/model/StoreItemBaseObject;->isTotalOwned()Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public isUserCreated()Z
    .locals 2

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
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

    iget v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->uid:Ljava/lang/String;

    return-object v0
.end method
