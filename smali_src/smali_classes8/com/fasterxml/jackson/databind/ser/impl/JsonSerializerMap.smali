.class public Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->findSize(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_size:I

    .line 14
    .line 15
    add-int/lit8 v1, v0, -0x1

    .line 16
    .line 17
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    check-cast v3, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hashCode()I

    .line 47
    move-result v4

    .line 48
    and-int/2addr v4, v1

    .line 49
    .line 50
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 51
    .line 52
    aget-object v6, v0, v4

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    check-cast v2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 59
    .line 60
    .line 61
    invoke-direct {v5, v6, v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 62
    .line 63
    aput-object v5, v0, v4

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 67
    return-void
.end method

.method private static final findSize(I)I
    .locals 1

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    add-int/2addr p0, p0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr p0, v0

    :goto_0
    const/16 v0, 0x8

    :goto_1
    if-ge v0, p0, :cond_1

    add-int/2addr v0, v0

    goto :goto_1

    :cond_1
    return v0
.end method


# virtual methods
.method public find(Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hashCode()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_buckets:[Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 7
    array-length v2, v1

    .line 8
    .line 9
    add-int/lit8 v2, v2, -0x1

    .line 10
    and-int/2addr v0, v2

    .line 11
    .line 12
    aget-object v0, v1, v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    :cond_0
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 42
    return-object p1

    .line 43
    :cond_2
    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;->_size:I

    return v0
.end method
