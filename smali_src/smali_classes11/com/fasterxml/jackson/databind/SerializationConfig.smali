.class public final Lcom/fasterxml/jackson/databind/SerializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        "Lcom/fasterxml/jackson/databind/SerializationConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ace4b0d59bb8a49L


# instance fields
.field protected final _filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

.field protected final _serFeatures:I

.field protected _serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput p3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 8
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 9
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 22
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 23
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 11
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 12
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 13
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 33
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 34
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 35
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 4
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 5
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 6
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 15
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 16
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 18
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 19
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 20
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 25
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 26
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 27
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/util/Map;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 29
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 30
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 31
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/BaseSettings;",
            "Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const-class p2, Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 2
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-void
.end method

.method private final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 12
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->nopInstance()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 46
    move-result-object v0

    .line 47
    :cond_2
    return-object v0
.end method

.method public getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-object v0
.end method

.method public final getSerializationFeatures()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    return v0
.end method

.method public getSerializationInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 8
    return-object v0
.end method

.method public final hasSerializationFeatures(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    .line 6
    move-result p1

    .line 7
    and-int/2addr p1, v0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "[SerializationConfig: flags=0x"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "]"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public useRootWrapping()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0

    .line 15
    .line 16
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 35
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 22
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 19
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result p1

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 20
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iget p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    if-ne p1, p2, :cond_1

    move-object p2, p0

    goto :goto_1

    .line 21
    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-direct {p2, p0, p1, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    :goto_1
    return-object p2
.end method

.method public with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 28
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 37
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    :goto_0
    return-object v0
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 39
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    .line 40
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 41
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v2

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne p1, p2, :cond_1

    move-object p2, p0

    goto :goto_1

    .line 42
    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    invoke-direct {p2, p0, v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    :goto_1
    return-object p2
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 27
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 23
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 32
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 31
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeResolverBuilder(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 30
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 2

    .line 24
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    if-nez p1, :cond_0

    .line 25
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 33
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 34
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 16
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 17
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    if-ne v0, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    .line 18
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-direct {p1, p0, v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, p1, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    .line 12
    move-result v3

    .line 13
    or-int/2addr v0, v3

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 19
    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    move-object p1, p0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 25
    .line 26
    iget v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0, v1, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    .line 30
    :goto_1
    return-object p1
.end method

.method public withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V

    .line 12
    :goto_0
    return-object v0
.end method

.method public withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 2
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V

    .line 12
    :goto_0
    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    :goto_0
    return-object v0
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    .line 8
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v2

    not-int v2, v2

    and-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne p1, p2, :cond_1

    move-object p2, p0

    goto :goto_1

    .line 10
    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    invoke-direct {p2, p0, v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    :goto_1
    return-object p2
.end method

.method public varargs without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    if-ne v0, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-direct {p1, p0, v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, p1, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    .line 12
    move-result v3

    .line 13
    not-int v3, v3

    .line 14
    and-int/2addr v0, v3

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 20
    .line 21
    if-ne v0, p1, :cond_1

    .line 22
    move-object p1, p0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 26
    .line 27
    iget v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p0, v1, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V

    .line 31
    :goto_1
    return-object p1
.end method
