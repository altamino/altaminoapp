.class public Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected final _idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/lang/Enum;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "java.util"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    instance-of p2, p1, Ljava/util/EnumSet;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    check-cast p1, Ljava/util/EnumSet;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    const-class v0, Ljava/util/EnumSet;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->toCanonical()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    instance-of p2, p1, Ljava/util/EnumMap;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    check-cast p1, Ljava/util/EnumMap;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    const-class v0, Ljava/util/EnumMap;

    .line 72
    .line 73
    const-class v1, Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;->toCanonical()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_2
    const/16 p1, 0x9

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string p2, ".Arrays$"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    move-result p2

    .line 95
    .line 96
    if-nez p2, :cond_3

    .line 97
    .line 98
    const-string p2, ".Collections$"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    move-result p1

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    :cond_3
    const-string p1, "List"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 110
    move-result p1

    .line 111
    .line 112
    if-ltz p1, :cond_5

    .line 113
    .line 114
    const-string v0, "java.util.ArrayList"

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_4
    const/16 p1, 0x24

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 121
    move-result p1

    .line 122
    .line 123
    if-ltz p1, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    if-nez p1, :cond_5

    .line 142
    .line 143
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    :cond_5
    :goto_0
    return-object v0
.end method

.method protected _typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3

    .line 1
    .line 2
    const-string v0, "Invalid type id \'"

    .line 3
    .line 4
    const/16 v1, 0x3c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p1, "\' (for id type \'Id.class\'): "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw v1

    .line 61
    .line 62
    :catch_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p1, "\' (for id type \'Id.class\'): no such class found"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p2
.end method

.method public getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 3
    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DatabindContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method
