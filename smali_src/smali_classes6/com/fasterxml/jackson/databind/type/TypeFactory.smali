.class public final Lcom/fasterxml/jackson/databind/type/TypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field protected static final CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

.field protected static final instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

.field protected transient _cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

.field protected final _modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

.field protected final _parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

.field protected final _typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    .line 5
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    .line 7
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>()V

    .line 11
    .line 12
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 13
    .line 14
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 15
    .line 16
    const-class v1, Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 20
    .line 21
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 22
    .line 23
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 29
    .line 30
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 31
    .line 32
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 33
    .line 34
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 38
    .line 39
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 40
    .line 41
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 42
    .line 43
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 47
    .line 48
    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeParser;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/type/TypeParser;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    return-void
.end method

.method private _collectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/util/Collection;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v2, "Strange Collection type "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, ": can not determine type parameters"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method private _mapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    array-length v1, v0

    .line 23
    const/4 v2, 0x2

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    aget-object v1, v0, v1

    .line 29
    const/4 v2, 0x1

    .line 30
    .line 31
    aget-object v0, v0, v2

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v2, "Strange Map type "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p1, ": can not determine type parameters"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0
.end method

.method public static defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->instance:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public static rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Class;

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static unknownType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method protected declared-synchronized _arrayListSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedArrayListType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    return-object p1

    .line 38
    :goto_1
    monitor-exit p0

    .line 39
    throw p1
.end method

.method protected _constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    move-object v0, p1

    .line 18
    .line 19
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/JavaType;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    check-cast p1, Lcom/fasterxml/jackson/databind/JavaType;

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    move-object v0, p1

    .line 37
    .line 38
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    move-object v0, p1

    .line 49
    .line 50
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    move-object v0, p1

    .line 61
    .line 62
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_5

    .line 77
    .line 78
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 79
    array-length v2, v1

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    :goto_1
    if-ge v3, v2, :cond_5

    .line 83
    .line 84
    aget-object v4, v1, v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/type/TypeModifier;->modifyType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    return-object v0

    .line 93
    .line 94
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    const-string v1, "Unrecognized Type: "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    if-nez p1, :cond_7

    .line 107
    .line 108
    const-string p1, "[null]"

    .line 109
    goto :goto_2

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    throw p2
.end method

.method protected _doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    .line 16
    aget-object v4, v1, v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v4, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 51
    return-object p1

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method protected _findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    return-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 31
    return-object v0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method protected _findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-ne v1, p2, :cond_0

    .line 12
    .line 13
    new-instance p2, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 17
    return-object p2

    .line 18
    .line 19
    :cond_0
    const-class p1, Ljava/util/HashMap;

    .line 20
    .line 21
    if-ne v1, p1, :cond_1

    .line 22
    .line 23
    const-class p1, Ljava/util/Map;

    .line 24
    .line 25
    if-ne p2, p1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_hashMapSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_1
    const-class p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    if-ne v1, p1, :cond_2

    .line 35
    .line 36
    const-class p1, Ljava/util/List;

    .line 37
    .line 38
    if-ne p2, p1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_arrayListSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method protected _findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method protected _fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 8
    move-result-object p1

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected _fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    const-class p2, Ljava/lang/String;

    .line 3
    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_STRING:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_BOOL:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_1
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    if-ne p1, p2, :cond_2

    .line 19
    .line 20
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_INT:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_2
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    if-ne p1, p2, :cond_3

    .line 26
    .line 27
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->CORE_TYPE_LONG:Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_3
    new-instance p2, Lcom/fasterxml/jackson/databind/type/ClassKey;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 36
    monitor-enter v0

    .line 37
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Lcom/fasterxml/jackson/databind/JavaType;

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    return-object v1

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 58
    move-result-object p1

    .line 59
    const/4 v0, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0, v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 67
    move-result-object p1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 80
    :goto_0
    move-object p1, v0

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_6
    const-class v0, Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 93
    move-result-object p1

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_7
    const-class v0, Ljava/util/Collection;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 106
    move-result-object p1

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 116
    monitor-enter v1

    .line 117
    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_typeCache:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    monitor-exit v1

    .line 123
    return-object p1

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p1

    .line 127
    :catchall_1
    move-exception p1

    .line 128
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    throw p1
.end method

.method protected _fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v2, p1

    .line 17
    .line 18
    :goto_0
    if-nez v2, :cond_1

    .line 19
    .line 20
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeFactory;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 21
    goto :goto_2

    .line 22
    .line 23
    :cond_1
    new-array v3, v2, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 24
    move v4, v1

    .line 25
    .line 26
    :goto_1
    if-ge v4, v2, :cond_2

    .line 27
    .line 28
    aget-object v5, p1, v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    aput-object v5, v3, v4

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object p1, v3

    .line 39
    .line 40
    :goto_2
    const-class p2, Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    const-string v4, ")"

    .line 47
    .line 48
    const-string v5, " (found "

    .line 49
    const/4 v6, 0x1

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    .line 59
    move-result-object p1

    .line 60
    array-length p2, p1

    .line 61
    const/4 v2, 0x2

    .line 62
    .line 63
    if-ne p2, v2, :cond_3

    .line 64
    .line 65
    aget-object p2, p1, v1

    .line 66
    .line 67
    aget-object p1, p1, v6

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p2, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    .line 74
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    const-string v2, "Could not find 2 type parameters for Map class "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    array-length p1, p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p2

    .line 110
    .line 111
    :cond_4
    const-class p2, Ljava/util/Collection;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 115
    move-result v3

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    .line 125
    move-result-object p1

    .line 126
    array-length p2, p1

    .line 127
    .line 128
    if-ne p2, v6, :cond_5

    .line 129
    .line 130
    aget-object p1, p1, v1

    .line 131
    .line 132
    .line 133
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    .line 137
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    const-string v2, "Could not find 1 type parameter for Collection class "

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    array-length p1, p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p2

    .line 173
    .line 174
    :cond_6
    if-nez v2, :cond_7

    .line 175
    .line 176
    new-instance p1, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 177
    .line 178
    .line 179
    invoke-direct {p1, v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 180
    return-object p1

    .line 181
    .line 182
    .line 183
    :cond_7
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 184
    move-result-object p1

    .line 185
    return-object p1
.end method

.method protected _fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance p2, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 32
    return-object p2

    .line 33
    .line 34
    :cond_1
    const-class v0, Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-lez v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    .line 55
    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x2

    .line 60
    .line 61
    if-lt v2, v3, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-static {p1, v0, p2}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_4
    const-class v0, Ljava/util/Collection;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 94
    move-result v0

    .line 95
    .line 96
    if-lt v0, v1, :cond_5

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 116
    move-result v0

    .line 117
    .line 118
    if-nez v0, :cond_7

    .line 119
    .line 120
    new-instance p2, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 124
    return-object p2

    .line 125
    .line 126
    .line 127
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 128
    move-result v0

    .line 129
    .line 130
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    check-cast p2, [Lcom/fasterxml/jackson/databind/JavaType;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method

.method protected _fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->findType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    return-object v1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    aget-object p1, p1, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method protected _fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    aget-object p1, p1, v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method protected declared-synchronized _hashMapSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;)Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_cachedHashMapType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    return-object p1

    .line 38
    :goto_1
    monitor-exit p0

    .line 39
    throw p1
.end method

.method protected _resolveVariableViaSubTypes(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->isGeneric()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 16
    move-result-object v0

    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v2, v1, :cond_2

    .line 21
    .line 22
    aget-object v3, v0, v2

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    aget-object p2, p2, v2

    .line 43
    .line 44
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSubType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_resolveVariableViaSubTypes(Lcom/fasterxml/jackson/databind/type/HierarchicType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    .line 68
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method protected _unknownType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 3
    .line 4
    const-class v1, Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 8
    return-object v0
.end method

.method public constructArrayType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public constructArrayType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeParser;->parse(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public constructMapLikeType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructMapLikeType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ")"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 6
    array-length v0, p2

    if-ne v0, v3, :cond_0

    .line 7
    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructArrayType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p1

    goto/16 :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need exactly 1 parameter type for arrays ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-class v0, Ljava/util/Map;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    array-length v0, p2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 11
    aget-object v0, p2, v1

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need exactly 2 parameter types for Map types ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-class v0, Ljava/util/Collection;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    array-length v0, p2

    if-ne v0, v3, :cond_4

    .line 15
    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Need exactly 1 parameter type for Collection types ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-object v3, p2, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructRawCollectionLikeType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public constructRawCollectionType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public constructRawMapLikeType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public constructRawMapType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/type/MapType;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public constructSimpleType(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    array-length v2, p2

    .line 7
    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    array-length v1, v0

    .line 10
    .line 11
    new-array v4, v1, [Ljava/lang/String;

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget-object v3, v0, v2

    .line 18
    .line 19
    .line 20
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    aput-object v3, v4, v2

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v2, v0

    .line 33
    move-object v3, p1

    .line 34
    move-object v5, p2

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 38
    return-object v0

    .line 39
    .line 40
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v3, "Parameter type mismatch for "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p1, ": expected "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    array-length p1, v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p1, " parameters, was given "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    array-length p1, p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v1
.end method

.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne v0, p2, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-class v0, Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-class v0, Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 76
    move-result-object p2

    .line 77
    :cond_3
    return-object p2

    .line 78
    .line 79
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string v2, "Class "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p2, " not subtype of "

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v0

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 120
    move-result-object p1

    .line 121
    return-object p1
.end method

.method public constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;)V

    move-object p2, v0

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    move-object p2, v0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-array v0, p2, [Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v1, p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")[",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-direct {p2, p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    .line 16
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 17
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 18
    aget-object v5, v1, v3

    invoke-virtual {p0, v5, p3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 19
    invoke-virtual {p2, v4, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object p3, p2

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->isGeneric()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->typesAsArray()[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1

    .line 22
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a subtype of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public moreSpecificType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p2

    .line 4
    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    return-object p2

    .line 25
    :cond_3
    return-object p1
.end method

.method public uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V

    .line 6
    return-object v0
.end method

.method public withModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_modifiers:[Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    new-array v2, v2, [Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    aput-object p1, v2, v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;)V

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_parser:Lcom/fasterxml/jackson/databind/type/TypeParser;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, [Lcom/fasterxml/jackson/databind/type/TypeModifier;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;-><init>(Lcom/fasterxml/jackson/databind/type/TypeParser;[Lcom/fasterxml/jackson/databind/type/TypeModifier;)V

    .line 32
    return-object v1
.end method
