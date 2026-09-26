.class Lkotlinx/serialization/json/internal/i0;
.super Lkotlinx/serialization/json/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n+ 2 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt$tryCoerceValue$1\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,315:1\n68#2,13:316\n81#2,4:330\n72#3:329\n1#4:334\n*S KotlinDebug\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n*L\n196#1:316,13\n196#1:330,4\n196#1:329\n*E\n"
.end annotation


# instance fields
.field private forceNull:Z

.field private final polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final polyDiscriminator:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private position:I

.field private final value:Lkotlinx/serialization/json/JsonObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/c;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/k;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/i0;->value:Lkotlinx/serialization/json/JsonObject;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/i0;->polyDiscriminator:Ljava/lang/String;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/i0;->polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/k;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/i0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method private final x0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->f()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    .line 35
    :goto_0
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/i0;->forceNull:Z

    .line 36
    return p1
.end method

.method private final y0(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 12
    move-result p2

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/i0;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    instance-of p2, p2, Lkotlinx/serialization/json/JsonNull;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    sget-object v2, Lkotlinx/serialization/descriptors/i$b;->INSTANCE:Lkotlinx/serialization/descriptors/i$b;

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result p2

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/i0;->g0(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    instance-of p3, p2, Lkotlinx/serialization/json/JsonPrimitive;

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object p2, v3

    .line 51
    .line 52
    :goto_0
    if-eqz p2, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lkotlinx/serialization/json/h;->f(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    :cond_2
    if-nez v3, :cond_4

    .line 59
    :cond_3
    move v1, v2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-static {p1, v0, v3}, Lkotlinx/serialization/json/internal/c0;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    .line 64
    move-result p1

    .line 65
    const/4 p2, -0x3

    .line 66
    .line 67
    if-ne p1, p2, :cond_3

    .line 68
    :goto_1
    return v1
.end method


# virtual methods
.method public D()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/i0;->forceNull:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lkotlinx/serialization/json/internal/c;->D()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

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
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "descriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/i0;->polyDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    return-object p0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/json/internal/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "descriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/c;->configuration:Lkotlinx/serialization/json/e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->g()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    instance-of v0, v0, Lkotlinx/serialization/descriptors/d;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    goto :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/c;->configuration:Lkotlinx/serialization/json/e;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->j()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlinx/serialization/internal/u0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Lkotlinx/serialization/internal/u0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lkotlinx/serialization/json/u;->a(Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/v;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lkotlinx/serialization/json/internal/c0;->c()Lkotlinx/serialization/json/internal/v$a;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1, v2}, Lkotlinx/serialization/json/internal/v;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/v$a;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Ljava/util/Map;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    .line 67
    :goto_0
    if-nez p1, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lkotlin/collections/w0;->e()Ljava/util/Set;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {v0, p1}, Lkotlin/collections/w0;->k(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/i0;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    check-cast v1, Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    iget-object v2, p0, Lkotlinx/serialization/json/internal/i0;->polyDiscriminator:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    goto :goto_2

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/i0;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {v1, p1}, Lkotlinx/serialization/json/internal/b0;->g(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/x;

    .line 126
    move-result-object p1

    .line 127
    throw p1

    .line 128
    :cond_6
    :goto_3
    return-void
.end method

.method protected c0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 4
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "desc"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lkotlinx/serialization/json/internal/c;->configuration:Lkotlinx/serialization/json/e;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->j()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    return-object v0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/i0;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    return-object v0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/c;->d()Lkotlinx/serialization/json/a;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lkotlinx/serialization/json/u;->a(Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/v;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lkotlinx/serialization/json/internal/c0;->c()Lkotlinx/serialization/json/internal/v$a;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    new-instance v3, Lkotlinx/serialization/json/internal/i0$a;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, p1}, Lkotlinx/serialization/json/internal/i0$a;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1, v2, v3}, Lkotlinx/serialization/json/internal/v;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/v$a;Le8/a;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/i0;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    move-object v3, v2

    .line 80
    .line 81
    check-cast v3, Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    check-cast v3, Ljava/lang/Integer;

    .line 88
    .line 89
    if-nez v3, :cond_3

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result v3

    .line 95
    .line 96
    if-ne v3, p2, :cond_2

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const/4 v2, 0x0

    .line 99
    .line 100
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 101
    .line 102
    if-nez v2, :cond_5

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move-object v0, v2

    .line 105
    :goto_2
    return-object v0
.end method

.method protected g0(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "tag"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/i0;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 16
    return-object p1
.end method

.method public bridge synthetic v0()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/i0;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public w(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "descriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/i0;->position:I

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-ge v0, v1, :cond_3

    .line 14
    .line 15
    iget v0, p0, Lkotlinx/serialization/json/internal/i0;->position:I

    .line 16
    .line 17
    add-int/lit8 v1, v0, 0x1

    .line 18
    .line 19
    iput v1, p0, Lkotlinx/serialization/json/internal/i0;->position:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/internal/h1;->d0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget v1, p0, Lkotlinx/serialization/json/internal/i0;->position:I

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/i0;->forceNull:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/i0;->z0()Lkotlinx/serialization/json/JsonObject;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/i0;->x0(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/c;->configuration:Lkotlinx/serialization/json/e;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lkotlinx/serialization/json/e;->d()Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1, v1, v0}, Lkotlinx/serialization/json/internal/i0;->y0(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    :cond_2
    return v1

    .line 62
    :cond_3
    const/4 p1, -0x1

    .line 63
    return p1
.end method

.method public z0()Lkotlinx/serialization/json/JsonObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/i0;->value:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method
