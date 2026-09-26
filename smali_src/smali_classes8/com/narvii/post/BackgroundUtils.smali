.class public Lcom/narvii/post/BackgroundUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;)I
    .locals 2

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    const-string v1, "backgroundColor"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    return v0
.end method

.method public static getBackgroundMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/post/BackgroundUtils;->getBackgroundMediaArray(Lcom/fasterxml/jackson/databind/node/ObjectNode;)[Lcom/narvii/model/Media;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    :cond_0
    array-length v1, p0

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    aget-object p0, p0, v0

    .line 15
    return-object p0

    .line 16
    :cond_1
    return-object v0
.end method

.method public static getBackgroundMediaArray(Lcom/fasterxml/jackson/databind/node/ObjectNode;)[Lcom/narvii/model/Media;
    .locals 3

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    const-string v1, "backgroundMediaList"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    return-object v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    :try_start_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 25
    .line 26
    const-class v2, [Lcom/narvii/model/Media;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    check-cast p0, [Lcom/narvii/model/Media;

    .line 33
    .line 34
    if-nez p0, :cond_1

    .line 35
    return-object v0

    .line 36
    :cond_1
    array-length v1, p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    if-lez v1, :cond_2

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    :cond_2
    return-object v0
.end method

.method public static setBackgroundColor(Lcom/fasterxml/jackson/databind/node/ObjectNode;I)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "backgroundColor"

    .line 3
    .line 4
    const-string v1, "style"

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-eqz p0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    check-cast p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    if-nez p0, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 33
    move-result-object v2

    .line 34
    :cond_2
    move-object v3, v2

    .line 35
    .line 36
    check-cast v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->formatColor(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 47
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

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-string v0, "style"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 15
    move-result-object v1

    .line 16
    :cond_1
    move-object v2, v1

    .line 17
    .line 18
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    sget-object v3, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v3, "backgroundMediaList"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 33
    return-void
.end method
