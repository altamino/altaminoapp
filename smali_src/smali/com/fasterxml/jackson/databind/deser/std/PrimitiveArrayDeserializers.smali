.class public abstract Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;,
        Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 4
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;->instance:Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$IntDeser;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;->instance:Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$LongDeser;

    .line 14
    return-object p0

    .line 15
    .line 16
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    if-ne p0, v0, :cond_2

    .line 19
    .line 20
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;-><init>()V

    .line 24
    return-object p0

    .line 25
    .line 26
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    if-ne p0, v0, :cond_3

    .line 29
    .line 30
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;-><init>()V

    .line 34
    return-object p0

    .line 35
    .line 36
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    if-ne p0, v0, :cond_4

    .line 39
    .line 40
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$FloatDeser;-><init>()V

    .line 44
    return-object p0

    .line 45
    .line 46
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    if-ne p0, v0, :cond_5

    .line 49
    .line 50
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$DoubleDeser;-><init>()V

    .line 54
    return-object p0

    .line 55
    .line 56
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    if-ne p0, v0, :cond_6

    .line 59
    .line 60
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$BooleanDeser;-><init>()V

    .line 64
    return-object p0

    .line 65
    .line 66
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 67
    .line 68
    if-ne p0, v0, :cond_7

    .line 69
    .line 70
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;-><init>()V

    .line 74
    return-object p0

    .line 75
    .line 76
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 80
    throw p0
.end method


# virtual methods
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
