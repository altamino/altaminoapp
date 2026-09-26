.class public final Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _defaultValues:[Ljava/lang/Object;

.field protected final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _propertiesWithInjectables:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected final _propertyCount:I

.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 13
    array-length p1, p2

    .line 14
    .line 15
    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyCount:I

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v1, p1, :cond_2

    .line 20
    .line 21
    aget-object v2, p2, v1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-array v0, p1, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 41
    .line 42
    :cond_0
    aput-object v2, v0, v1

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 50
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    .line 3
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v4, v2

    .line 7
    .line 8
    :goto_0
    if-ge v3, v0, :cond_5

    .line 9
    .line 10
    aget-object v5, p2, v3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueDeserializer()Z

    .line 14
    move-result v6

    .line 15
    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 20
    move-result-object v6

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v6, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 24
    move-result-object v6

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    :cond_0
    aput-object v5, v1, v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 34
    move-result-object v6

    .line 35
    .line 36
    if-nez v6, :cond_1

    .line 37
    move-object v6, v2

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    :goto_1
    if-nez v6, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 48
    move-result-object v7

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    .line 52
    move-result v7

    .line 53
    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    .line 65
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object v6

    .line 67
    .line 68
    :cond_2
    if-eqz v6, :cond_4

    .line 69
    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    new-array v4, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    :cond_3
    aput-object v6, v4, v3

    .line 75
    .line 76
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_5
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1, v1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;-><init>(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;[Ljava/lang/Object;)V

    .line 83
    return-object p0
.end method


# virtual methods
.method public assignDeserializer(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->handleIdValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->buffered()Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    :goto_0
    if-eqz p2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;->assign(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;->next:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object p1
.end method

.method public findCreatorProperty(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1
.end method

.method public properties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyCount:I

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->inject([Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 15
    :cond_0
    return-object v0
.end method
