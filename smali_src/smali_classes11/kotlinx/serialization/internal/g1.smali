.class public abstract Lkotlinx/serialization/internal/g1;
.super Lkotlinx/serialization/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        "Collection:",
        "Ljava/lang/Object;",
        "Builder::",
        "Ljava/util/Map<",
        "TKey;TValue;>;>",
        "Lkotlinx/serialization/internal/a<",
        "Ljava/util/Map$Entry<",
        "+TKey;+TValue;>;TCollection;TBuilder;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/MapLikeSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Encoding.kt\nkotlinx/serialization/encoding/EncodingKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,283:1\n1#2:284\n488#3,2:285\n490#3,2:289\n32#4,2:287\n*S KotlinDebug\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/MapLikeSerializer\n*L\n118#1:285,2\n118#1:289,2\n121#1:287,2\n*E\n"
.end annotation


# instance fields
.field private final keySerializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TKey;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final valueSerializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TValue;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TKey;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TValue;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/a;-><init>(Lkotlin/jvm/internal/k;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/g1;->keySerializer:Lkotlinx/serialization/KSerializer;

    iput-object p2, p0, Lkotlinx/serialization/internal/g1;->valueSerializer:Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/g1;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Lkotlinx/serialization/encoding/c;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/g1;->o(Lkotlinx/serialization/encoding/c;Ljava/util/Map;II)V

    .line 6
    return-void
.end method

.method public abstract getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public bridge synthetic h(Lkotlinx/serialization/encoding/c;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    .line 2
    check-cast p3, Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/g1;->p(Lkotlinx/serialization/encoding/c;ILjava/util/Map;Z)V

    .line 6
    return-void
.end method

.method public final m()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "TKey;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/g1;->keySerializer:Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public final n()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "TValue;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/g1;->valueSerializer:Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method protected final o(Lkotlinx/serialization/encoding/c;Ljava/util/Map;II)V
    .locals 4
    .param p1    # Lkotlinx/serialization/encoding/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/c;",
            "TBuilder;II)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "decoder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "builder"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-ltz p4, :cond_3

    .line 13
    const/4 v0, 0x2

    .line 14
    mul-int/2addr p4, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p4}, Lj8/m;->v(II)Lj8/i;

    .line 19
    move-result-object p4

    .line 20
    .line 21
    .line 22
    invoke-static {p4, v0}, Lj8/m;->u(Lj8/g;I)Lj8/g;

    .line 23
    move-result-object p4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4}, Lj8/g;->e()I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Lj8/g;->f()I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Lj8/g;->g()I

    .line 35
    move-result p4

    .line 36
    .line 37
    if-lez p4, :cond_0

    .line 38
    .line 39
    if-le v0, v2, :cond_1

    .line 40
    .line 41
    :cond_0
    if-gez p4, :cond_2

    .line 42
    .line 43
    if-gt v2, v0, :cond_2

    .line 44
    .line 45
    :cond_1
    :goto_0
    add-int v3, p3, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v3, p2, v1}, Lkotlinx/serialization/internal/g1;->p(Lkotlinx/serialization/encoding/c;ILjava/util/Map;Z)V

    .line 49
    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    add-int/2addr v0, p4

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-void

    .line 54
    .line 55
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "Size must be known in advance when using READ_ALL"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method protected final p(Lkotlinx/serialization/encoding/c;ILjava/util/Map;Z)V
    .locals 8
    .param p1    # Lkotlinx/serialization/encoding/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/c;",
            "ITBuilder;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "decoder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "builder"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    iget-object v4, p0, Lkotlinx/serialization/internal/g1;->keySerializer:Lkotlinx/serialization/KSerializer;

    .line 17
    const/4 v5, 0x0

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, p1

    .line 22
    move v3, p2

    .line 23
    .line 24
    .line 25
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 32
    move-result-object p4

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p4}, Lkotlinx/serialization/encoding/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 36
    move-result p4

    .line 37
    .line 38
    add-int/lit8 v1, p2, 0x1

    .line 39
    .line 40
    if-ne p4, v1, :cond_0

    .line 41
    :goto_0
    move v3, p4

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string p3, "Value must follow key in a map, index for key: "

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p2, ", returned index for value: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p2

    .line 78
    .line 79
    :cond_1
    add-int/lit8 p4, p2, 0x1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 84
    move-result p2

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    iget-object p2, p0, Lkotlinx/serialization/internal/g1;->valueSerializer:Lkotlinx/serialization/KSerializer;

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    instance-of p2, p2, Lkotlinx/serialization/descriptors/e;

    .line 99
    .line 100
    if-nez p2, :cond_2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    iget-object p4, p0, Lkotlinx/serialization/internal/g1;->valueSerializer:Lkotlinx/serialization/KSerializer;

    .line 107
    .line 108
    .line 109
    invoke-static {p3, v0}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, p2, v3, p4, v1}, Lkotlinx/serialization/encoding/c;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 115
    goto :goto_2

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    iget-object v4, p0, Lkotlinx/serialization/internal/g1;->valueSerializer:Lkotlinx/serialization/KSerializer;

    .line 122
    const/4 v5, 0x0

    .line 123
    .line 124
    const/16 v6, 0x8

    .line 125
    const/4 v7, 0x0

    .line 126
    move-object v1, p1

    .line 127
    .line 128
    .line 129
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TCollection;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "encoder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->e(Ljava/lang/Object;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/Encoder;->z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/d;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->d(Ljava/lang/Object;)Ljava/util/Iterator;

    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    add-int/lit8 v5, v0, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->m()Lkotlinx/serialization/KSerializer;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v4, v0, v6, v3}, Lkotlinx/serialization/encoding/d;->F(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lkotlinx/serialization/internal/g1;->n()Lkotlinx/serialization/KSerializer;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v3, v5, v4, v2}, Lkotlinx/serialization/encoding/d;->F(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/d;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 73
    return-void
.end method
