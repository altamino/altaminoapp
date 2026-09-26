.class public Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CLASS_NAME_DOM_DOCUMENT:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final CLASS_NAME_DOM_NODE:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final DESERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

.field private static final DESERIALIZER_FOR_DOM_DOCUMENT:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

.field private static final DESERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

.field private static final PACKAGE_PREFIX_JAVAX_XML:Ljava/lang/String; = "javax.xml."

.field private static final SERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

.field private static final SERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMSerializer"

.field public static final instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    return v1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x1

    .line 9
    .line 10
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v4, p1, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    return v3

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    array-length v0, p1

    .line 28
    move v2, v1

    .line 29
    .line 30
    :goto_1
    if-ge v2, v0, :cond_3

    .line 31
    .line 32
    aget-object v4, p1, v2

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v4, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    return v3

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    return v1
.end method

.method private hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x1

    .line 9
    .line 10
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v4, p1, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    return v3

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    array-length v0, p1

    .line 28
    move v2, v1

    .line 29
    .line 30
    :goto_1
    if-ge v2, v0, :cond_3

    .line 31
    .line 32
    aget-object v4, p1, v2

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v4, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    return v3

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    return v1
.end method

.method private hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    :goto_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    return v1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    return v1

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 36
    move-result-object p1

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method private instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method


# virtual methods
.method public findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
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
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "javax.xml."

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const-string p1, "org.w3c.dom.Node"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 30
    move-result p2

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    const-string p1, "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 41
    return-object p1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string p1, "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 56
    return-object p1

    .line 57
    :cond_2
    return-object v3

    .line 58
    .line 59
    :cond_3
    :goto_0
    const-string v0, "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    return-object v3

    .line 67
    .line 68
    :cond_4
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "javax.xml."

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const-string p1, "org.w3c.dom.Node"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string p1, "com.fasterxml.jackson.databind.ext.DOMSerializer"

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 41
    return-object p1

    .line 42
    :cond_1
    return-object v3

    .line 43
    .line 44
    :cond_2
    :goto_0
    const-string v0, "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    return-object v3

    .line 52
    .line 53
    :cond_3
    check-cast v0, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method
