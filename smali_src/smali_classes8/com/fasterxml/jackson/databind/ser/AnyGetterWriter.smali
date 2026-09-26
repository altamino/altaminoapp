.class public Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected _serializer:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_serializer:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 10
    return-void
.end method


# virtual methods
.method public getAndFilter(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_serializer:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 16
    .line 17
    check-cast p1, Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 24
    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string p4, "Value returned by \'any-getter\' ("

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    .line 39
    move-result-object p4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p4, "()) not java.util.Map but "

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p2
.end method

.method public getAndSerialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_serializer:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 16
    .line 17
    check-cast p1, Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 24
    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v0, "Value returned by \'any-getter\' ("

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "()) not java.util.Map but "

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p2
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_serializer:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->_serializer:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 13
    return-void
.end method
