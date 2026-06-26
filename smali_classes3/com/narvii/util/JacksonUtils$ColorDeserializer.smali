.class public Lcom/narvii/util/JacksonUtils$ColorDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "JacksonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/JacksonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 267
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/narvii/util/JacksonUtils$ColorDeserializer;->getEmptyValue()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 273
    :catch_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$color;->color_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/JacksonUtils$ColorDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getEmptyValue()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEmptyValue()Ljava/lang/Object;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/narvii/util/JacksonUtils$ColorDeserializer;->getEmptyValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Ljava/lang/Integer;
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/narvii/util/JacksonUtils$ColorDeserializer;->getEmptyValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNullValue()Ljava/lang/Object;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/narvii/util/JacksonUtils$ColorDeserializer;->getNullValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
