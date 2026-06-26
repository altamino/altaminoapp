.class public Lcom/narvii/model/Media$MediaSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/model/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer<",
        "Lcom/narvii/model/Media;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/narvii/model/Media;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 139
    iget p3, p1, Lcom/narvii/model/Media;->type:I

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    .line 140
    iget-object p3, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p3, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p3, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    iget-object p3, p1, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    if-nez p3, :cond_0

    iget-object p3, p1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    if-nez p3, :cond_0

    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_0

    iget p3, p1, Lcom/narvii/model/Media;->width:I

    if-nez p3, :cond_0

    iget p3, p1, Lcom/narvii/model/Media;->height:I

    if-nez p3, :cond_0

    .line 143
    iget-object p1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 144
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p3, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 148
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p3

    .line 150
    iget-object v2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "coverImage"

    .line 151
    invoke-virtual {p3, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 153
    :cond_1
    iget-wide v2, p1, Lcom/narvii/model/Media;->duration:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    long-to-float v0, v2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const-string v1, "duration"

    .line 154
    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 156
    :cond_2
    iget v0, p1, Lcom/narvii/model/Media;->width:I

    if-eqz v0, :cond_3

    const-string v1, "width"

    .line 157
    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 159
    :cond_3
    iget v0, p1, Lcom/narvii/model/Media;->height:I

    if-eqz v0, :cond_4

    const-string v1, "height"

    .line 160
    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 162
    :cond_4
    iget-object v0, p1, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "author"

    .line 163
    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 165
    :cond_5
    iget-object p1, p1, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v0, "fileName"

    .line 166
    invoke-virtual {p3, v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 168
    :cond_6
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 170
    :cond_7
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 133
    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/model/Media$MediaSerializer;->serialize(Lcom/narvii/model/Media;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
