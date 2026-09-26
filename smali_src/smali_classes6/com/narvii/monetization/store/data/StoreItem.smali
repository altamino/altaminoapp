.class public Lcom/narvii/monetization/store/data/StoreItem;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method

.method public static parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    const/16 v1, 0x72

    .line 7
    .line 8
    if-eq p0, v1, :cond_3

    .line 9
    .line 10
    const/16 v1, 0x74

    .line 11
    .line 12
    if-eq p0, v1, :cond_2

    .line 13
    .line 14
    const/16 v1, 0x7a

    .line 15
    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v1, "Unknown store item ref object type: "

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    sget-object p0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 42
    .line 43
    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    check-cast p0, Lcom/narvii/model/NVObject;

    .line 50
    return-object p0

    .line 51
    .line 52
    :cond_2
    sget-object p0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 53
    .line 54
    const-class v1, Lcom/narvii/model/ChatBubble;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    check-cast p0, Lcom/narvii/model/NVObject;

    .line 61
    return-object p0

    .line 62
    .line 63
    :cond_3
    sget-object p0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 64
    .line 65
    const-class v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    check-cast p0, Lcom/narvii/model/NVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p0

    .line 73
    .line 74
    :goto_0
    const-string p1, "store item ref object parse error: "

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-object v0
.end method

.method public static wrapStoreItem(Lcom/narvii/model/IStoreItem;)Lcom/narvii/monetization/store/data/StoreItem;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/monetization/store/data/StoreItem;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->objectType()I

    .line 11
    move-result v1

    .line 12
    .line 13
    iput v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 26
    .line 27
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 34
    move-object v1, p0

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/model/NVObject;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;-><init>()V

    .line 44
    .line 45
    iput-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    iput-object v2, v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 54
    .line 55
    .line 56
    invoke-interface {p0}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    iput-object p0, v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    .line 60
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getRefObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 17
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibleByLeader(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 15
    move-result p1

    .line 16
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

    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public setChangedRefObject(Lcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 11
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
