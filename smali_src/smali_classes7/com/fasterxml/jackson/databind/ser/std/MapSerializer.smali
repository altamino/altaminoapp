.class public Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
        "Ljava/util/Map<",
        "**>;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field protected static final UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;


# instance fields
.field protected _dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _filterId:Ljava/lang/Object;

.field protected final _ignoredEntries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    .line 7
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 4
    iget-object p5, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 5
    iget-object p5, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    iget-boolean p5, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 7
    iget-object p5, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 8
    iget-object p3, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 9
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 2

    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 11
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 12
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 13
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 14
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 15
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 16
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 17
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 18
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 19
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;)V
    .locals 2

    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 21
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 22
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 23
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 24
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 25
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 26
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 27
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 28
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 29
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/util/HashSet;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iput-object p7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyMap()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    return-void
.end method

.method public static construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->toSet([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    if-nez p1, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->UNSPECIFIED_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    move-object v2, p0

    move-object v3, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    move-object v2, p0

    move-object v3, p1

    :goto_0
    const/4 p0, 0x0

    if-nez p2, :cond_3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    move p2, p0

    :cond_2
    move v4, p2

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    move v4, p0

    .line 7
    :goto_1
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Ljava/util/HashSet;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    if-eqz p6, :cond_4

    .line 8
    invoke-virtual {p0, p6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static toSet([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_1

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 9
    array-length v1, p0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, p0, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-object v0

    .line 26
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 4
    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 5
    iget-object p3, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 6
    :cond_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1
.end method

.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 1
    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 2
    iget-object p3, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_0

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 3
    :cond_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1
.end method

.method protected _orderEntries(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Ljava/util/SortedMap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object p1

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 11
    return-object v0
.end method

.method public bridge synthetic _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p1

    return-object p1
.end method

.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-object v0
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectMapFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    :goto_0
    if-eqz p2, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;->keyFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWithSerializerProvider;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v0, p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonMapFormatVisitor;->valueFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 39
    :cond_2
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
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
    if-eqz p2, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 23
    move-result-object v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v3, v0

    .line 38
    .line 39
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    if-nez v0, :cond_6

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeIsStatic:Z

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    const-class v2, Ljava/lang/Object;

    .line 60
    .line 61
    if-ne v1, v2, :cond_5

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->hasContentTypeAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_7

    .line 68
    .line 69
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 73
    move-result-object v0

    .line 74
    goto :goto_2

    .line 75
    .line 76
    .line 77
    :cond_6
    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 81
    .line 82
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 83
    .line 84
    :cond_8
    if-nez v3, :cond_9

    .line 85
    .line 86
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 90
    move-result-object v1

    .line 91
    goto :goto_3

    .line 92
    .line 93
    .line 94
    :cond_9
    invoke-virtual {p1, v3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    :goto_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    if-eqz p1, :cond_b

    .line 104
    .line 105
    if-eqz p2, :cond_b

    .line 106
    .line 107
    .line 108
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    if-eqz v3, :cond_b

    .line 116
    .line 117
    if-nez v2, :cond_a

    .line 118
    .line 119
    new-instance v2, Ljava/util/HashSet;

    .line 120
    .line 121
    .line 122
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 123
    goto :goto_4

    .line 124
    .line 125
    :cond_a
    new-instance v4, Ljava/util/HashSet;

    .line 126
    .line 127
    .line 128
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 129
    move-object v2, v4

    .line 130
    :goto_4
    array-length v4, v3

    .line 131
    const/4 v5, 0x0

    .line 132
    .line 133
    :goto_5
    if-ge v5, v4, :cond_b

    .line 134
    .line 135
    aget-object v6, v3, v5

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    goto :goto_5

    .line 142
    .line 143
    .line 144
    :cond_b
    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    if-eqz p2, :cond_c

    .line 148
    .line 149
    .line 150
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    if-eqz p1, :cond_c

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 161
    move-result-object v0

    .line 162
    :cond_c
    return-object v0
.end method

.method public getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getKeySerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 0

    .line 1
    .line 2
    const-string p1, "object"

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->hasSingleElement(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public hasSingleElement(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->isEmpty(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
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
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p3, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_orderEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 13
    .line 14
    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    xor-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v5

    .line 35
    .line 36
    if-eqz v5, :cond_7

    .line 37
    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    check-cast v5, Ljava/util/Map$Entry;

    .line 43
    .line 44
    .line 45
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 55
    .line 56
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v7, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 60
    move-result-object v7

    .line 61
    const/4 v8, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v8, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    if-eqz v2, :cond_2

    .line 68
    .line 69
    if-nez v6, :cond_2

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    if-eqz v1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 76
    move-result v7

    .line 77
    .line 78
    if-eqz v7, :cond_3

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v0, v5, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 83
    .line 84
    :goto_1
    if-nez v6, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    move-result-object v7

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 96
    move-result-object v8

    .line 97
    .line 98
    if-nez v8, :cond_6

    .line 99
    .line 100
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    .line 104
    move-result v8

    .line 105
    .line 106
    if-eqz v8, :cond_5

    .line 107
    .line 108
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v8, v7}, Lcom/fasterxml/jackson/databind/DatabindContext;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 112
    move-result-object v7

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3, v7, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 116
    move-result-object v3

    .line 117
    :goto_2
    move-object v8, v3

    .line 118
    goto :goto_3

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p0, v3, v7, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 122
    move-result-object v3

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :goto_3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 126
    .line 127
    .line 128
    :cond_6
    :try_start_0
    invoke-virtual {v8, v6, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v6

    .line 131
    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    const-string v8, ""

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v5

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p3, v6, p1, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    goto :goto_0

    .line 152
    :cond_7
    return-void
.end method

.method protected serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 7
    .line 8
    sget-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 12
    move-result v3

    .line 13
    .line 14
    xor-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v5

    .line 27
    .line 28
    if-eqz v5, :cond_5

    .line 29
    .line 30
    .line 31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    check-cast v5, Ljava/util/Map$Entry;

    .line 35
    .line 36
    .line 37
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    .line 41
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 47
    .line 48
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v7, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 52
    move-result-object v7

    .line 53
    const/4 v8, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v8, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_0
    if-eqz v3, :cond_1

    .line 60
    .line 61
    if-nez v6, :cond_1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    if-eqz v1, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v7

    .line 69
    .line 70
    if-eqz v7, :cond_2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v0, v5, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 75
    .line 76
    :goto_1
    if-nez v6, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_3
    if-nez v2, :cond_4

    .line 83
    .line 84
    .line 85
    :try_start_0
    invoke-virtual {p4, v6, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v6

    .line 88
    goto :goto_2

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {p4, v6, p2, p3, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string v8, ""

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p3, v6, p1, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 114
    :cond_5
    return-void
.end method

.method public serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/ser/PropertyFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 3
    .line 4
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 13
    .line 14
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v5

    .line 32
    .line 33
    if-eqz v5, :cond_6

    .line 34
    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    check-cast v5, Ljava/util/Map$Entry;

    .line 40
    .line 41
    .line 42
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    move-result-object v6

    .line 44
    .line 45
    .line 46
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    if-nez v6, :cond_0

    .line 50
    .line 51
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 52
    .line 53
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v7, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 57
    move-result-object v7

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_0
    if-eqz v1, :cond_1

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_1
    if-eqz v0, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v7

    .line 70
    .line 71
    if-eqz v7, :cond_2

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 75
    .line 76
    :goto_1
    if-nez v5, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 80
    move-result-object v8

    .line 81
    goto :goto_4

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    move-result-object v8

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v8}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 89
    move-result-object v9

    .line 90
    .line 91
    if-nez v9, :cond_5

    .line 92
    .line 93
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    .line 97
    move-result v9

    .line 98
    .line 99
    if-eqz v9, :cond_4

    .line 100
    .line 101
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v9, v8}, Lcom/fasterxml/jackson/databind/DatabindContext;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 105
    move-result-object v8

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v2, v8, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 109
    move-result-object v2

    .line 110
    :goto_2
    move-object v8, v2

    .line 111
    goto :goto_3

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0, v2, v8, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 115
    move-result-object v2

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :goto_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 119
    goto :goto_4

    .line 120
    :cond_5
    move-object v8, v9

    .line 121
    .line 122
    .line 123
    :goto_4
    invoke-virtual {v3, v6, v5, v7, v8}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->reset(Ljava/lang/Object;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 124
    .line 125
    .line 126
    :try_start_0
    invoke-interface {p4, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception v5

    .line 129
    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    const-string v8, ""

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v6

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p3, v5, p1, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    goto :goto_0

    .line 150
    :cond_6
    return-void
.end method

.method protected serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_ignoredEntries:Ljava/util/HashSet;

    .line 5
    .line 6
    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    .line 10
    move-result v2

    .line 11
    .line 12
    xor-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v5, v4

    .line 23
    move-object v6, v5

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v7

    .line 28
    .line 29
    if-eqz v7, :cond_6

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v7

    .line 34
    .line 35
    check-cast v7, Ljava/util/Map$Entry;

    .line 36
    .line 37
    .line 38
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v8

    .line 40
    .line 41
    .line 42
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    move-result-object v7

    .line 44
    .line 45
    if-nez v7, :cond_0

    .line 46
    .line 47
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 48
    .line 49
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v9, v10}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 53
    move-result-object v9

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v4, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_0
    if-eqz v2, :cond_1

    .line 60
    .line 61
    if-nez v8, :cond_1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    if-eqz v1, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v9

    .line 69
    .line 70
    if-eqz v9, :cond_2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v0, v7, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 75
    .line 76
    :goto_1
    if-nez v8, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    move-result-object v9

    .line 85
    .line 86
    if-ne v9, v5, :cond_4

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    .line 93
    move-result v5

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v5, v9}, Lcom/fasterxml/jackson/databind/DatabindContext;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v5, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 107
    move-result-object v5

    .line 108
    :goto_2
    move-object v6, v5

    .line 109
    goto :goto_3

    .line 110
    .line 111
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, v9, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 115
    move-result-object v5

    .line 116
    goto :goto_2

    .line 117
    :goto_3
    move-object v5, v9

    .line 118
    .line 119
    :goto_4
    :try_start_0
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v8, p2, p3, v9}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v8

    .line 125
    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    const-string v10, ""

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v7

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p3, v8, p1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    goto :goto_0

    .line 146
    :cond_6
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
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_orderEntries(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_filterId:Ljava/lang/Object;

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
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;)V

    .line 12
    :goto_0
    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

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
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/util/HashSet;)V

    .line 12
    return-object v6
.end method
