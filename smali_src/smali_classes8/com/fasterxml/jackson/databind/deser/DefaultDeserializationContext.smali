.class public abstract Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.super Lcom/fasterxml/jackson/databind/DeserializationContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _objectIds:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V

    return-void
.end method


# virtual methods
.method public abstract createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method

.method public deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
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
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    .line 14
    .line 15
    if-eqz v1, :cond_8

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Class;

    .line 18
    .line 19
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    .line 20
    .line 21
    if-eq p2, v1, :cond_7

    .line 22
    .line 23
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 24
    .line 25
    if-ne p2, v1, :cond_2

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_2
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->deserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    :goto_0
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    move-object p2, p1

    .line 63
    .line 64
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move-object p2, v0

    .line 67
    .line 68
    :goto_1
    instance-of p1, p2, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    move-object p1, p2

    .line 72
    .line 73
    check-cast p1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 77
    :cond_5
    return-object p2

    .line 78
    .line 79
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string v1, "AnnotationIntrospector returned Class "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p2, "; expected Class<JsonDeserializer>"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1

    .line 110
    :cond_7
    :goto_2
    return-object v0

    .line 111
    .line 112
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    const-string v1, "AnnotationIntrospector returned deserializer definition of type "

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p2, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p1
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_1
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0
.end method

.method public final keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    .line 14
    .line 15
    if-eqz v1, :cond_8

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Class;

    .line 18
    .line 19
    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    .line 20
    .line 21
    if-eq p2, v1, :cond_7

    .line 22
    .line 23
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 24
    .line 25
    if-ne p2, v1, :cond_2

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_2
    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    :goto_0
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    move-object p2, p1

    .line 63
    .line 64
    check-cast p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move-object p2, v0

    .line 67
    .line 68
    :goto_1
    instance-of p1, p2, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    move-object p1, p2

    .line 72
    .line 73
    check-cast p1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 77
    :cond_5
    return-object p2

    .line 78
    .line 79
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string v1, "AnnotationIntrospector returned Class "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p2, "; expected Class<KeyDeserializer>"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1

    .line 110
    :cond_7
    :goto_2
    return-object v0

    .line 111
    .line 112
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    const-string v1, "AnnotationIntrospector returned key deserializer definition of type "

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p1
.end method

.method public abstract with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method
