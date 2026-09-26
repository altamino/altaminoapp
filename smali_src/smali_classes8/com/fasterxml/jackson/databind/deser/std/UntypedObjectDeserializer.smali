.class public Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


# static fields
.field private static final NO_OBJECTS:[Ljava/lang/Object;

.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>()V

    .line 11
    .line 12
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    .line 1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)V"
        }
    .end annotation

    const-class p1, Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-void
.end method


# virtual methods
.method protected _findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    :cond_0
    return-object p1
.end method

.method protected _withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 12
    return-object v6
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 15
    .line 16
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v1, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 27
    .line 28
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    check-cast v2, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 39
    .line 40
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    check-cast v3, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 51
    .line 52
    if-ne v0, p1, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 55
    .line 56
    if-ne v1, p1, :cond_5

    .line 57
    .line 58
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 59
    .line 60
    if-ne v2, p1, :cond_5

    .line 61
    .line 62
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 63
    .line 64
    if-eq v3, p1, :cond_4

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    return-object p0

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    const-class p1, Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :pswitch_0
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    .line 26
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    return-object p1

    .line 28
    .line 29
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    return-object p1

    .line 31
    .line 32
    :pswitch_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 45
    move-result p2

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    .line 56
    move-result-wide p1

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    :pswitch_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 76
    move-result p2

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    .line 90
    :pswitch_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    .line 104
    .line 105
    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    .line 109
    :pswitch_7
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapArrayToArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    .line 122
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 123
    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    .line 136
    :pswitch_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v0

    .line 11
    .line 12
    aget v0, v1, v0

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    const-class p1, Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :pswitch_0
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    .line 26
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    return-object p1

    .line 28
    .line 29
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    return-object p1

    .line 31
    .line 32
    :pswitch_3
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_0
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 45
    move-result p2

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    .line 56
    move-result-wide p1

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    :pswitch_4
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 64
    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_2
    sget-object p3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    .line 76
    move-result p2

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;

    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    .line 90
    :pswitch_5
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 91
    .line 92
    if-eqz p3, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    .line 104
    .line 105
    :pswitch_6
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    .line 109
    .line 110
    :pswitch_7
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected mapArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    const/4 p2, 0x4

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    move v4, v3

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    array-length v6, v1

    .line 34
    .line 35
    if-lt v4, v6, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    move v4, v2

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 43
    .line 44
    aput-object v5, v1, v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 51
    .line 52
    if-ne v4, v5, :cond_2

    .line 53
    .line 54
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    shr-int/lit8 p2, v3, 0x3

    .line 57
    add-int/2addr v3, p2

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v6, p1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V

    .line 66
    return-object p1

    .line 67
    :cond_2
    move v4, v6

    .line 68
    goto :goto_0
.end method

.method protected mapArrayToArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    array-length v5, v1

    .line 27
    .line 28
    if-lt v3, v5, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    move v3, v2

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 36
    .line 37
    aput-object v4, v1, v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 44
    .line 45
    if-ne v3, v4, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v5}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    move v3, v5

    .line 52
    goto :goto_0
.end method

.method protected mapObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 15
    const/4 v2, 0x4

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    return-object p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    if-eq v4, v1, :cond_2

    .line 41
    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object p1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    if-eq v6, v1, :cond_3

    .line 67
    .line 68
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p1

    .line 79
    .line 80
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 110
    .line 111
    if-ne v0, v2, :cond_4

    .line 112
    return-object v1
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-class v3, Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 29
    .line 30
    const-class v3, Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 47
    .line 48
    const-class v0, Ljava/lang/Number;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 59
    return-void
.end method
