.class public abstract Lkotlinx/serialization/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractPolymorphicSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractPolymorphicSerializer.kt\nkotlinx/serialization/internal/AbstractPolymorphicSerializer\n+ 2 Encoding.kt\nkotlinx/serialization/encoding/EncodingKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 4 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,114:1\n475#2,2:115\n477#2,2:118\n84#3:117\n565#4,2:120\n567#4,2:123\n1#5:122\n*S KotlinDebug\n*F\n+ 1 AbstractPolymorphicSerializer.kt\nkotlinx/serialization/internal/AbstractPolymorphicSerializer\n*L\n33#1:115,2\n33#1:118,2\n35#1:117\n39#1:120,2\n39#1:123,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic a(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/b;->b(Lkotlinx/serialization/encoding/c;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Lkotlinx/serialization/encoding/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/c;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/encoding/c;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, v0}, Lkotlinx/serialization/f;->a(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/c;Ljava/lang/String;)Lkotlinx/serialization/b;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    const/16 v6, 0x8

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method


# virtual methods
.method public c(Lkotlinx/serialization/encoding/c;Ljava/lang/String;)Lkotlinx/serialization/b;
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/c;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/b<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-interface {p1}, Lkotlinx/serialization/encoding/c;->a()Lkotlinx/serialization/modules/c;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlinx/serialization/internal/b;->e()Lkotlin/reflect/KClass;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Lkotlinx/serialization/modules/c;->d(Lkotlin/reflect/KClass;Ljava/lang/String;)Lkotlinx/serialization/b;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public d(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/k;
    .locals 1
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)",
            "Lkotlinx/serialization/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->a()Lkotlinx/serialization/modules/c;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lkotlinx/serialization/internal/b;->e()Lkotlin/reflect/KClass;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Lkotlinx/serialization/modules/c;->e(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/k;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .line 8
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance v8, Lkotlin/jvm/internal/p0;

    .line 16
    .line 17
    .line 18
    invoke-direct {v8}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lkotlinx/serialization/encoding/c;->k()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lkotlinx/serialization/internal/b;->a(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/c;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v2}, Lkotlinx/serialization/encoding/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 38
    move-result v3

    .line 39
    const/4 v2, -0x1

    .line 40
    .line 41
    if-eq v3, v2, :cond_5

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    const/4 v1, 0x1

    .line 45
    .line 46
    if-eq v3, v1, :cond_2

    .line 47
    .line 48
    new-instance p1, Lkotlinx/serialization/j;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v1, "Invalid index in polymorphic deserialization of "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-object v1, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    const-string v1, "unknown class"

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "\n Expected 0, 1 or DECODE_DONE(-1), but found "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v0}, Lkotlinx/serialization/j;-><init>(Ljava/lang/String;)V

    .line 85
    throw p1

    .line 86
    .line 87
    :cond_2
    iget-object v1, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iput-object v1, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p1, v1}, Lkotlinx/serialization/f;->a(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/c;Ljava/lang/String;)Lkotlinx/serialization/b;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    .line 100
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 101
    move-result-object v2

    .line 102
    const/4 v5, 0x0

    .line 103
    .line 104
    const/16 v6, 0x8

    .line 105
    const/4 v7, 0x0

    .line 106
    move-object v1, p1

    .line 107
    .line 108
    .line 109
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    const-string v0, "Cannot read polymorphic value before its type token"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v2, v3}, Lkotlinx/serialization/encoding/c;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    iput-object v2, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_5
    if-eqz v1, :cond_6

    .line 137
    .line 138
    const-string v2, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer.deserialize$lambda$3"

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/c;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 145
    return-object v1

    .line 146
    .line 147
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    const-string v0, "Polymorphic value has not been read for class "

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    iget-object v0, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    throw v0
.end method

.method public abstract e()Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)V"
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
    const-string v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/f;->b(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/k;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lkotlinx/serialization/k;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v2, v4, v3}, Lkotlinx/serialization/encoding/d;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v2, v3, v0, p2}, Lkotlinx/serialization/encoding/d;->F(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/d;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 55
    return-void
.end method
