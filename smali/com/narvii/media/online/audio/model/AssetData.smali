.class public Lcom/narvii/media/online/audio/model/AssetData;
.super Lcom/narvii/model/NVObject;
.source "AssetData.java"

# interfaces
.implements Lcom/narvii/asset/IAssetHost;


# instance fields
.field private cacheRefObject:Lcom/narvii/model/NVObject;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public categoryList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/media/online/audio/model/AssetCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/media/online/audio/model/AssetCategory;",
            ">;"
        }
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

.field public id:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field public refObject:Lcom/fasterxml/jackson/databind/JsonNode;

.field public searchKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method private parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x65

    if-eq p1, v1, :cond_2

    const/16 v1, 0x85

    if-eq p1, v1, :cond_1

    const/16 v1, 0x86

    if-eq p1, v1, :cond_1

    .line 84
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown asset item ref object type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    .line 82
    :cond_1
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/narvii/asset/NVAsset;

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    return-object p1

    .line 79
    :cond_2
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/narvii/media/online/audio/model/Sound;

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    const-string p2, "asset item ref object parse error: "

    .line 88
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getIAsset()Lcom/narvii/asset/IAsset;
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/narvii/media/online/audio/model/AssetData;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/narvii/asset/IAsset;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/narvii/asset/IAsset;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetData;->cacheRefObject:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_0

    .line 67
    iget v0, p0, Lcom/narvii/media/online/audio/model/AssetData;->objectType:I

    iget-object v1, p0, Lcom/narvii/media/online/audio/model/AssetData;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {p0, v0, v1}, Lcom/narvii/media/online/audio/model/AssetData;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/online/audio/model/AssetData;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetData;->cacheRefObject:Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isAccessibleByUser(Lcom/narvii/model/User;)Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/narvii/media/online/audio/model/AssetData;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    return p1

    .line 100
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
