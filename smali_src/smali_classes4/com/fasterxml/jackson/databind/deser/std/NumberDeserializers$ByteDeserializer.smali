.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field private static final primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

.field private static final serialVersionUID:J = 0x1L

.field private static final wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 3
    .line 4
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    .line 13
    .line 14
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 15
    .line 16
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 17
    .line 18
    const-class v1, Ljava/lang/Byte;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    .line 23
    .line 24
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Byte;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/Byte;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method static synthetic access$1300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    return-object v0
.end method

.method static synthetic access$500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseByte(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;

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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
