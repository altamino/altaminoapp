.class public final Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

.field protected final _getter:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 4
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 5
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 7
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 8
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;)V

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2
    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
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
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .line 29
    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string p3, "Problem deserializing \'setterless\' property \'"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p3, "\': get method returned null"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    .line 63
    return-void
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 4
    return-object p3
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string p2, "Should never call \'set\' on setterless property"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1
.end method

.method public bridge synthetic withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    move-result-object p1

    return-object p1
.end method

.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    move-result-object p1

    return-object p1
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method
