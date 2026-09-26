.class public Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;,
        Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;
    }
.end annotation


# instance fields
.field private final _nameToPropertyIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

.field private final _tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

.field private final _typeIds:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 4
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 5
    array-length p1, v0

    .line 6
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 7
    new-array p1, p1, [Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/TokenBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/fasterxml/jackson/databind/util/TokenBuffer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    return-void
.end method


# virtual methods
.method protected final _deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 14
    .line 15
    aget-object p4, p4, p3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 19
    move-result-object p4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 36
    .line 37
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 38
    .line 39
    aget-object p3, p4, p3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method protected final _deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 14
    .line 15
    aget-object p5, p5, p4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 19
    move-result-object p5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 36
    .line 37
    iget-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 38
    .line 39
    aget-object p4, p5, p4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 43
    move-result-object p4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 18
    array-length v0, v0

    .line 19
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 20
    aget-object v4, v4, v3

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 21
    aget-object v4, v4, v3

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 22
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 23
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing external type id property \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p3, p3, v3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 25
    aget-object v5, v5, v3

    if-eqz v5, :cond_3

    .line 26
    :goto_1
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 27
    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing property \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for external type id \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_4
    move p1, v2

    :goto_3
    if-ge p1, v0, :cond_6

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 29
    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 31
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v3

    aget-object v4, v1, p1

    invoke-virtual {p3, v3, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {p4, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    if-ge v2, v0, :cond_8

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 33
    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p3

    if-nez p3, :cond_7

    .line 35
    aget-object p3, v1, v2

    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method public complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 1
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 2
    aget-object v2, v2, v1

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 3
    aget-object v3, v3, v1

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->firstToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 8
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-static {v2, p2, v4}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v3, p3, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 11
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 12
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing external type id property \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 14
    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    goto :goto_1

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v1

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 16
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing property \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for external type id \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_6
    return-object p3
.end method

.method public handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v6

    .line 17
    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 19
    .line 20
    aget-object v0, v0, v6

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    .line 24
    move-result p3

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    aput-object v0, p3, v6

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 38
    .line 39
    if-eqz p4, :cond_2

    .line 40
    .line 41
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 42
    .line 43
    aget-object p3, p3, v6

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    new-instance p3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 49
    .line 50
    .line 51
    invoke-direct {p3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 57
    .line 58
    aput-object p3, v0, v6

    .line 59
    .line 60
    if-eqz p4, :cond_2

    .line 61
    .line 62
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 63
    .line 64
    aget-object p3, p3, v6

    .line 65
    .line 66
    if-eqz p3, :cond_2

    .line 67
    .line 68
    :goto_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 69
    .line 70
    aget-object v5, p3, v6

    .line 71
    const/4 v7, 0x0

    .line 72
    .line 73
    aput-object v7, p3, v6

    .line 74
    move-object v0, p0

    .line 75
    move-object v1, p1

    .line 76
    move-object v2, p2

    .line 77
    move-object v3, p4

    .line 78
    move v4, v6

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 84
    .line 85
    aput-object v7, p1, v6

    .line 86
    :cond_2
    const/4 p1, 0x1

    .line 87
    return p1
.end method

.method public handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 19
    .line 20
    aget-object v2, v2, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    .line 24
    move-result p3

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    return v1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 36
    .line 37
    aget-object p3, p3, v0

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    move-object v5, p4

    .line 44
    move v6, v0

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 50
    const/4 p2, 0x0

    .line 51
    .line 52
    aput-object p2, p1, v0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 56
    .line 57
    aput-object v7, p1, v0

    .line 58
    :goto_0
    const/4 p1, 0x1

    .line 59
    return p1
.end method

.method public start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V

    .line 6
    return-object v0
.end method
