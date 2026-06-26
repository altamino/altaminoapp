.class public Lcom/narvii/master/search/AminoIdInfo$AminoIdInfoDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "AminoIdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/AminoIdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AminoIdInfoDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
        "Lcom/narvii/master/search/AminoIdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/master/search/AminoIdInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "objectType"

    aput-object v2, v0, v1

    const/4 v2, -0x1

    .line 58
    invoke-static {p1, v2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    move-result v0

    new-array v2, p2, [Ljava/lang/String;

    const-string v3, "refObject"

    aput-object v3, v2, v1

    .line 59
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 60
    new-instance v3, Lcom/narvii/master/search/AminoIdInfo;

    invoke-direct {v3}, Lcom/narvii/master/search/AminoIdInfo;-><init>()V

    .line 61
    iput v0, v3, Lcom/narvii/master/search/AminoIdInfo;->objectType:I

    new-array v4, p2, [Ljava/lang/String;

    const-string v5, "aminoId"

    aput-object v5, v4, v1

    .line 62
    invoke-static {p1, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/master/search/AminoIdInfo;->aminoId:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/String;

    const-string v4, "objectId"

    aput-object v4, p2, v1

    .line 63
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/narvii/master/search/AminoIdInfo;->objectId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class p2, Lcom/narvii/model/User;

    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, v3, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    return-object v3

    :cond_0
    const/16 p1, 0x10

    if-ne v0, p1, :cond_1

    .line 68
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class p2, Lcom/narvii/model/Community;

    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, v3, Lcom/narvii/master/search/AminoIdInfo;->refObject:Lcom/narvii/model/NVObject;

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/AminoIdInfo$AminoIdInfoDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/master/search/AminoIdInfo;

    move-result-object p1

    return-object p1
.end method
