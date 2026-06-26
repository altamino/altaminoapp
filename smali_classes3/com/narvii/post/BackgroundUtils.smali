.class public Lcom/narvii/post/BackgroundUtils;
.super Ljava/lang/Object;
.source "BackgroundUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "backgroundColor"

    aput-object v3, v0, v2

    .line 20
    invoke-static {p0, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;
    .locals 2

    .line 54
    invoke-static {p0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMediaArray(Lcom/fasterxml/jackson/databind/node/ObjectNode;)[Lcom/narvii/model/Media;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 58
    :cond_0
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 59
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getBackgroundMediaArray(Lcom/fasterxml/jackson/databind/node/ObjectNode;)[Lcom/narvii/model/Media;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "backgroundMediaList"

    aput-object v2, v0, v1

    .line 65
    invoke-static {p0, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, [Lcom/narvii/model/Media;

    invoke-virtual {v1, p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/narvii/model/Media;

    if-nez p0, :cond_1

    return-object v0

    .line 75
    :cond_1
    array-length v1, p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_2

    return-object p0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static setBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;I)V
    .locals 4

    const-string v0, "backgroundColor"

    const-string v1, "style"

    if-nez p1, :cond_0

    if-eqz p0, :cond_3

    .line 35
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 37
    check-cast p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 44
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-nez v2, :cond_2

    .line 46
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 48
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->formatColor(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 49
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_3
    :goto_0
    return-void
.end method

.method public static setBackgroundMediaList(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "style"

    .line 89
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 91
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 93
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const-string v3, "backgroundMediaList"

    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    return-void
.end method
