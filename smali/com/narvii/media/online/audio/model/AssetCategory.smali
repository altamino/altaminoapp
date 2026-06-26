.class public Lcom/narvii/media/online/audio/model/AssetCategory;
.super Lcom/narvii/model/NVObject;
.source "AssetCategory.java"


# static fields
.field public static final ASSET_TYPE_SOUND:I = 0x1


# instance fields
.field public assetType:I

.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.field public status:I

.field public style:Lcom/fasterxml/jackson/databind/JsonNode;

.field public title:Ljava/lang/String;

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverBackgroundColor()I
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetCategory;->style:Lcom/fasterxml/jackson/databind/JsonNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "backgroundColor"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x33ffffff

    :cond_0
    return v0
.end method

.method public getCoverMediaCover()Lcom/narvii/model/Media;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetCategory;->style:Lcom/fasterxml/jackson/databind/JsonNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "coverMediaList"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    :try_start_0
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, [Lcom/narvii/model/Media;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/narvii/model/Media;

    if-nez v0, :cond_1

    return-object v1

    .line 56
    :cond_1
    array-length v3, v0

    if-lez v3, :cond_2

    .line 57
    aget-object v0, v0, v2
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    return-object v0
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

    .line 88
    iget v0, p0, Lcom/narvii/media/online/audio/model/AssetCategory;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
