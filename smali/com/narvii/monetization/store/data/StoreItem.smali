.class public Lcom/narvii/monetization/store/data/StoreItem;
.super Lcom/narvii/model/NVObject;
.source "StoreItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;
    }
.end annotation


# instance fields
.field private cacheRefObject:Lcom/narvii/model/NVObject;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

.field public itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

.field public refObject:Lcom/fasterxml/jackson/databind/JsonNode;

.field public refObjectId:Ljava/lang/String;

.field public refObjectType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public static parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x72

    if-eq p0, v1, :cond_3

    const/16 v1, 0x74

    if-eq p0, v1, :cond_2

    const/16 v1, 0x7a

    if-eq p0, v1, :cond_1

    .line 121
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown store item ref object type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 119
    :cond_1
    sget-object p0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/model/NVObject;

    return-object p0

    .line 117
    :cond_2
    sget-object p0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/narvii/model/ChatBubble;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/model/NVObject;

    return-object p0

    .line 115
    :cond_3
    sget-object p0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/model/NVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string/jumbo p1, "store item ref object parse error: "

    .line 125
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static wrapStoreItem(Lcom/narvii/model/IStoreItem;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 3

    .line 131
    new-instance v0, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-direct {v0}, Lcom/narvii/monetization/store/data/StoreItem;-><init>()V

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->objectType()I

    move-result v1

    iput v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    .line 134
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 135
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 136
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 137
    move-object v1, p0

    check-cast v1, Lcom/narvii/model/NVObject;

    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 138
    new-instance v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    invoke-direct {v1}, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;-><init>()V

    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 139
    iget-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    .line 140
    iget-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getRefObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_0

    .line 75
    iget v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    iget-object v1, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0, v1}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibleByLeader(Lcom/narvii/model/User;)Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCachedRefObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public setChangedRefObject(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 86
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    return-void
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
