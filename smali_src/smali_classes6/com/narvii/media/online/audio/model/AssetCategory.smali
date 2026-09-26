.class public Lcom/narvii/media/online/audio/model/AssetCategory;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getCoverBackgroundColor()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetCategory;->style:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 3
    .line 4
    const-string v1, "backgroundColor"

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
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    .line 21
    const v0, 0x33ffffff

    .line 22
    :cond_0
    return v0
.end method

.method public getCoverMediaCover()Lcom/narvii/model/Media;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/model/AssetCategory;->style:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 3
    .line 4
    const-string v1, "coverMediaList"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    .line 26
    const-class v3, [Lcom/narvii/model/Media;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, [Lcom/narvii/model/Media;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    return-object v1

    .line 36
    :cond_1
    array-length v2, v0

    .line 37
    .line 38
    if-lez v2, :cond_2

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    aget-object v0, v0, v2
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :cond_2
    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

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

    iget v0, p0, Lcom/narvii/media/online/audio/model/AssetCategory;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
