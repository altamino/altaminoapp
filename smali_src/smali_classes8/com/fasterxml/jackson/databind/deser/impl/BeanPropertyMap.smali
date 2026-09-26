.class public final Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;,
        Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

.field private final _hashMask:I

.field private _nextBucketIndex:I

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 3
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 4
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v3, v4

    .line 8
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    aget-object v5, v0, v3

    iget v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    invoke-direct {v4, v5, v2, v1, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    aput-object v4, v0, v3

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    return-void
.end method

.method private constructor <init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;II)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 10
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    return-void
.end method

.method private _findWithEquals(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 3
    .line 4
    aget-object p2, v0, p2

    .line 5
    .line 6
    :goto_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object v0, p2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    iget-object p2, p2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method private static final findSize(I)I
    .locals 1

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    add-int/2addr p0, p0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr p0, v0

    :goto_0
    const/4 v0, 0x2

    :goto_1
    if-ge v0, p0, :cond_1

    add-int/2addr v0, v0

    goto :goto_1

    :cond_1
    return v0
.end method


# virtual methods
.method public assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v4, v0, v2

    .line 10
    .line 11
    :goto_1
    if-eqz v4, :cond_0

    .line 12
    .line 13
    iget-object v5, v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 14
    .line 15
    add-int/lit8 v6, v3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->assignIndex(I)V

    .line 19
    .line 20
    iget-object v4, v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 21
    move v3, v6

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-object p0
.end method

.method public find(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 10
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 11
    aget-object v2, v2, v1

    :goto_1
    if-eqz v2, :cond_1

    .line 12
    iget v3, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I

    if-ne v3, p1, :cond_0

    .line 13
    iget-object p1, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1

    .line 14
    :cond_0
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 2
    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 4
    iget-object p1, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1

    .line 5
    :cond_1
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 7
    iget-object p1, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1

    .line 8
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findWithEquals(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null property name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    .line 3
    .line 4
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v3, v2, :cond_1

    .line 11
    .line 12
    aget-object v4, v1, v3

    .line 13
    .line 14
    :goto_1
    if-eqz v4, :cond_0

    .line 15
    .line 16
    iget v5, v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I

    .line 17
    .line 18
    iget-object v6, v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 19
    .line 20
    aput-object v6, v0, v5

    .line 21
    .line 22
    iget-object v4, v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;)V

    .line 8
    return-object v0
.end method

.method public remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 11
    array-length v3, v2

    .line 12
    const/4 v4, 0x1

    .line 13
    sub-int/2addr v3, v4

    .line 14
    and-int/2addr v1, v3

    .line 15
    .line 16
    aget-object v2, v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    .line 20
    :goto_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    iget-object v6, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v6

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    move v5, v4

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 35
    .line 36
    iget-object v7, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v8, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 39
    .line 40
    iget v9, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, v3, v7, v8, v9}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 44
    move-object v3, v6

    .line 45
    .line 46
    :goto_1
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 52
    .line 53
    aput-object v3, p1, v1

    .line 54
    return-void

    .line 55
    .line 56
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v2, "No entry \'"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p1, "\' found, can\'t remove"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 82
    throw v0
.end method

.method public renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    if-eq v4, v3, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V

    .line 66
    return-object p1

    .line 67
    :cond_3
    :goto_1
    return-object p0
.end method

.method public replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 11
    array-length v3, v2

    .line 12
    .line 13
    add-int/lit8 v3, v3, -0x1

    .line 14
    and-int/2addr v1, v3

    .line 15
    .line 16
    aget-object v2, v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, -0x1

    .line 19
    .line 20
    :goto_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    iget-object v5, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v5

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iget v4, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 36
    .line 37
    iget-object v6, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v7, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 40
    .line 41
    iget v8, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I

    .line 42
    .line 43
    .line 44
    invoke-direct {v5, v3, v6, v7, v8}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 45
    move-object v3, v5

    .line 46
    .line 47
    :goto_1
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    if-ltz v4, :cond_2

    .line 51
    .line 52
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 53
    .line 54
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 55
    .line 56
    .line 57
    invoke-direct {v5, v3, v0, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 58
    .line 59
    aput-object v5, v2, v1

    .line 60
    return-void

    .line 61
    .line 62
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v2, "No entry \'"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p1, "\' found, can\'t replace"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Properties=["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    aget-object v5, v1, v3

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 27
    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    const-string v4, ", "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const/16 v4, 0x28

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const/16 v4, 0x29

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    move v4, v6

    .line 59
    .line 60
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    const/16 v1, 0x5d

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method

.method public withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 27
    move-result v1

    .line 28
    .line 29
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 30
    and-int/2addr v1, v3

    .line 31
    .line 32
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 33
    .line 34
    aget-object v4, v2, v1

    .line 35
    .line 36
    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    .line 37
    .line 38
    add-int/lit8 v6, v5, 0x1

    .line 39
    .line 40
    iput v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4, v0, p1, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 44
    .line 45
    aput-object v3, v2, v1

    .line 46
    .line 47
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 48
    .line 49
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;II)V

    .line 57
    return-object p1

    .line 58
    .line 59
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 60
    .line 61
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 68
    return-object v0
.end method
