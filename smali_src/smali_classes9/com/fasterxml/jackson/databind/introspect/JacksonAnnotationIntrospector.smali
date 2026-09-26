.class public Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected _constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->noTypeInfoBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected _constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    .line 6
    return-object v0
.end method

.method protected final _findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFilter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonFilter;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFilter;->value()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method protected _findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    .line 9
    .line 10
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    return-object v2

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;->value()Ljava/lang/Class;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    if-nez v0, :cond_2

    .line 34
    return-object v2

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 41
    .line 42
    if-ne v1, v3, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    :goto_0
    const-class v3, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    check-cast v3, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-interface {v3}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;->value()Ljava/lang/Class;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    :goto_1
    if-eqz v2, :cond_5

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->init(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->include()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 90
    .line 91
    if-ne p3, v1, :cond_6

    .line 92
    .line 93
    instance-of p2, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 94
    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-interface {p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->property()Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->defaultImpl()Ljava/lang/Class;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    const-class p3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$None;

    .line 116
    .line 117
    if-eq p2, p3, :cond_7

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    :cond_7
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->visible()Z

    .line 125
    move-result p2

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method

.method protected _isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIgnore;->value()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p2, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 15
    move-result-object p2

    .line 16
    :goto_0
    return-object p2
.end method

.method public findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentConverter()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/util/Converter$None;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentAs()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 17
    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->converter()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/util/Converter$None;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyAs()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 17
    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 6
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 8
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    .line 1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonSetter;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 3
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 9
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->as()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 17
    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonFormat;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V

    .line 18
    move-object p1, v0

    .line 19
    :goto_0
    return-object p1
.end method

.method public findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->ignoreUnknown()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p1

    .line 21
    :goto_0
    return-object p1
.end method

.method public findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JacksonInject;->value()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_1
    move-object v0, p1

    .line 37
    .line 38
    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    .line 42
    move-result v1

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_3
    return-object v0
.end method

.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object p1, v1

    .line 36
    .line 37
    :goto_0
    if-eqz p1, :cond_4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    sget-object p1, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 46
    return-object p1

    .line 47
    .line 48
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    .line 52
    return-object v0

    .line 53
    :cond_4
    return-object v1
.end method

.method public findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object p1, v1

    .line 25
    .line 26
    :goto_0
    if-eqz p1, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object p1, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    .line 41
    return-object v0

    .line 42
    :cond_3
    return-object v1
.end method

.method public findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;->value()Ljava/lang/Class;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->nullsUsing()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$None;

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->property()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->scope()Ljava/lang/Class;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v0, v2, p1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 42
    return-object v1

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;->alwaysAsId()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 18
    move-result-object p2

    .line 19
    :cond_0
    return-object p2
.end method

.method public findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->builder()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->builder()Ljava/lang/Class;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    :goto_1
    return-object p1
.end method

.method public findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;-><init>(Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;)V

    .line 18
    move-object p1, v0

    .line 19
    :goto_0
    return-object p1
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->value()[Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v0, "Must call method with a container type (got "

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p3, ")"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method

.method public findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;->value()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonManagedReference;->value()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->managed(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonBackReference;->value()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->back(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonRootName;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonRootName;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonRootName;->value()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    .line 22
    return-object v0
.end method

.method public findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentConverter()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/util/Converter$None;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentAs()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 17
    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->converter()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/util/Converter$None;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 24
    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->include()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$1;->$SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion:[I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result p1

    .line 36
    .line 37
    aget p1, v0, p1

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    if-eq p1, v0, :cond_4

    .line 41
    const/4 v0, 0x2

    .line 42
    .line 43
    if-eq p1, v0, :cond_3

    .line 44
    const/4 v0, 0x3

    .line 45
    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    const/4 v0, 0x4

    .line 48
    .line 49
    if-eq p1, v0, :cond_1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 53
    return-object p1

    .line 54
    .line 55
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 59
    return-object p1

    .line 60
    .line 61
    :cond_4
    sget-object p1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 62
    return-object p1

    .line 63
    :cond_5
    :goto_0
    return-object p2
.end method

.method public findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyAs()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 17
    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonGetter;

    .line 4
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonGetter;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonGetter;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 6
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 8
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->value()[Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->alphabetic()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p1

    .line 21
    :goto_0
    return-object p1
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->as()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->typing()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->using()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonRawValue;->value()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(Ljava/lang/Class;)V

    .line 45
    return-object v0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonSubTypes;->value()[Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    array-length v1, p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    array-length v1, p1

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    :goto_0
    if-ge v2, v1, :cond_1

    .line 27
    .line 28
    aget-object v3, p1, v2

    .line 29
    .line 30
    new-instance v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->value()Ljava/lang/Class;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->name()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v5, v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonTypeName;->value()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->enabled()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->prefix()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->suffix()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;->value()Ljava/lang/Class;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonView;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonView;->value()[Ljava/lang/Class;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnyGetter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnySetter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonValue;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonValue;->value()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->required()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-class v0, Lcom/fasterxml/jackson/annotation/JacksonAnnotationsInside;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;->value()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p1

    .line 21
    :goto_0
    return-object p1
.end method

.method public isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeId;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    .line 3
    return-object v0
.end method
