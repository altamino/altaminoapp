.class public Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Lcom/fasterxml/jackson/databind/JsonSerializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final _mapperReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_mapperReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/JsonSerializable;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method private static final declared-synchronized _getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_mapperReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    check-cast v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-object v2

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw v1
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;

    .line 4
    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    const-class v1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaType()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string v3, "##irrelevant"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v2, v0

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    :cond_1
    move-object p2, v0

    .line 63
    move-object v0, v2

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_2
    const-string v1, "any"

    .line 67
    move-object p2, v0

    .line 68
    .line 69
    :goto_1
    const-string v2, "type"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    :try_start_0
    const-string v1, "properties"

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :catch_0
    new-instance p1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 91
    .line 92
    const-string p2, "Failed to parse @JsonSerializableSchema.schemaObjectPropertiesDefinition value"

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 99
    .line 100
    :try_start_1
    const-string v0, "items"

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->_getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    goto :goto_3

    .line 113
    .line 114
    :catch_1
    new-instance p1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 115
    .line 116
    const-string p2, "Failed to parse @JsonSerializableSchema.schemaItemDefinition value"

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1

    .line 121
    :cond_4
    :goto_3
    return-object p1
.end method

.method public serialize(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serialize(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializable;->serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->serializeWithType(Lcom/fasterxml/jackson/databind/JsonSerializable;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method
