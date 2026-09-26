.class public Lcom/narvii/model/Media$MediaDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/model/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
        "Lcom/narvii/model/Media;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/model/Media;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/narvii/model/Media;

    invoke-direct {p2}, Lcom/narvii/model/Media;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    return-object p2

    .line 4
    :cond_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Lcom/narvii/model/Media;->type:I

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object p2

    :cond_2
    if-ne v0, v2, :cond_3

    const-string v0, ""

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object p2

    :cond_4
    if-ne v0, v2, :cond_5

    move-object v0, v3

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p2, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object p2

    :cond_6
    if-ne v0, v2, :cond_7

    move-object v0, v3

    goto :goto_3

    .line 10
    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p2, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object p2

    .line 12
    :cond_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_9

    return-object p2

    .line 13
    :cond_9
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v4, :cond_b

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "coverImage"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    const-string v1, "duration"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeDouble(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, p2, Lcom/narvii/model/Media;->duration:J

    const-string/jumbo v1, "width"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/narvii/model/Media;->width:I

    const-string v1, "height"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/narvii/model/Media;->height:I

    const-string v1, "author"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    const-string v1, "fileName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 21
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_a

    goto :goto_4

    :cond_a
    return-object p2

    .line 22
    :cond_b
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_c

    return-object p2

    .line 23
    :cond_c
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_d

    return-object p2

    .line 24
    :cond_d
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_e

    return-object p2

    :cond_e
    if-ne v0, v2, :cond_f

    move-object v0, v3

    goto :goto_5

    .line 25
    :cond_f
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_10

    return-object p2

    :cond_10
    if-ne v0, v2, :cond_11

    move-object v0, v3

    goto :goto_6

    .line 27
    :cond_11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p2, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_12

    return-object p2

    :cond_12
    if-ne v0, v2, :cond_13

    goto :goto_7

    .line 29
    :cond_13
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    :goto_7
    iput-object v3, p2, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-ne v0, v1, :cond_14

    return-object p2

    :cond_14
    if-ne v0, v2, :cond_15

    const-wide/16 v0, 0x0

    goto :goto_8

    .line 31
    :cond_15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    :goto_8
    iput-wide v0, p2, Lcom/narvii/model/Media;->duration:J

    .line 32
    :goto_9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_16

    goto :goto_9

    :cond_16
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/model/Media$MediaDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/narvii/model/Media;

    move-result-object p1

    return-object p1
.end method
