.class public Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "SourceFile"


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->instance:Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V

    .line 4
    return-void
.end method

.method private static final _int(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p0

    .line 11
    :goto_0
    return p0
.end method

.method private static final _long(Ljava/lang/Object;)J
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    return-wide v0
.end method

.method private static creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .locals 11

    .line 1
    .line 2
    new-instance v10, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    .line 3
    .line 4
    new-instance v1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    .line 14
    sget-object v9, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 15
    move-object v0, v10

    .line 16
    move-object v2, p1

    .line 17
    move v7, p2

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 21
    return-object v10
.end method


# virtual methods
.method public canCreateFromObjectWith()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    .line 2
    new-instance p1, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    aget-object v1, p2, v0

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    aget-object v0, p2, v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_long(Ljava/lang/Object;)J

    .line 12
    move-result-wide v2

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    aget-object v0, p2, v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_long(Ljava/lang/Object;)J

    .line 19
    move-result-wide v4

    .line 20
    const/4 v0, 0x3

    .line 21
    .line 22
    aget-object v0, p2, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_int(Ljava/lang/Object;)I

    .line 26
    move-result v6

    .line 27
    const/4 v0, 0x4

    .line 28
    .line 29
    aget-object p2, p2, v0

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_int(Ljava/lang/Object;)I

    .line 33
    move-result v7

    .line 34
    move-object v0, p1

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 38
    return-object p1
.end method

.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .locals 5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    const-class v3, Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    const-string v3, "sourceRef"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "byteOffset"

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "charOffset"

    const/4 v3, 0x2

    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "lineNr"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "columnNr"

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object p1

    aput-object p1, v2, v1

    return-object v2
.end method

.method public bridge synthetic getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object p1

    return-object p1
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
