.class public abstract Lkotlinx/serialization/internal/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final keySerializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final valueSerializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/v0;->keySerializer:Lkotlinx/serialization/KSerializer;

    iput-object p2, p0, Lkotlinx/serialization/internal/v0;->valueSerializer:Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TK;"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TV;"
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TR;"
        }
    .end annotation
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lkotlinx/serialization/encoding/Decoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")TR;"
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
    .line 16
    invoke-interface {p1}, Lkotlinx/serialization/encoding/c;->k()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    iget-object v4, p0, Lkotlinx/serialization/internal/v0;->keySerializer:Lkotlinx/serialization/KSerializer;

    .line 27
    const/4 v5, 0x0

    .line 28
    .line 29
    const/16 v6, 0x8

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v1, p1

    .line 32
    .line 33
    .line 34
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x1

    .line 41
    .line 42
    iget-object v4, p0, Lkotlinx/serialization/internal/v0;->valueSerializer:Lkotlinx/serialization/KSerializer;

    .line 43
    .line 44
    .line 45
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/v0;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lkotlinx/serialization/internal/k2;->a()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lkotlinx/serialization/internal/k2;->a()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    move-object v8, v1

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 68
    move-result v1

    .line 69
    const/4 v2, -0x1

    .line 70
    .line 71
    if-eq v1, v2, :cond_3

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    const/4 v2, 0x1

    .line 75
    .line 76
    if-ne v1, v2, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x1

    .line 82
    .line 83
    iget-object v4, p0, Lkotlinx/serialization/internal/v0;->valueSerializer:Lkotlinx/serialization/KSerializer;

    .line 84
    const/4 v5, 0x0

    .line 85
    .line 86
    const/16 v6, 0x8

    .line 87
    const/4 v7, 0x0

    .line 88
    move-object v1, p1

    .line 89
    .line 90
    .line 91
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v8

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_1
    new-instance p1, Lkotlinx/serialization/j;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    const-string v2, "Invalid index: "

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, v0}, Lkotlinx/serialization/j;-><init>(Ljava/lang/String;)V

    .line 116
    throw p1

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 120
    move-result-object v2

    .line 121
    const/4 v3, 0x0

    .line 122
    .line 123
    iget-object v4, p0, Lkotlinx/serialization/internal/v0;->keySerializer:Lkotlinx/serialization/KSerializer;

    .line 124
    const/4 v5, 0x0

    .line 125
    .line 126
    const/16 v6, 0x8

    .line 127
    const/4 v7, 0x0

    .line 128
    move-object v1, p1

    .line 129
    .line 130
    .line 131
    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/encoding/c$b;->c(Lkotlinx/serialization/encoding/c;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/c;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lkotlinx/serialization/internal/k2;->a()Ljava/lang/Object;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    if-eq v0, p1, :cond_5

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lkotlinx/serialization/internal/k2;->a()Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    if-eq v8, p1, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0, v8}, Lkotlinx/serialization/internal/v0;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object p1

    .line 157
    return-object p1

    .line 158
    .line 159
    :cond_4
    new-instance p1, Lkotlinx/serialization/j;

    .line 160
    .line 161
    const-string v0, "Element \'value\' is missing"

    .line 162
    .line 163
    .line 164
    invoke-direct {p1, v0}, Lkotlinx/serialization/j;-><init>(Ljava/lang/String;)V

    .line 165
    throw p1

    .line 166
    .line 167
    :cond_5
    new-instance p1, Lkotlinx/serialization/j;

    .line 168
    .line 169
    const-string v0, "Element \'key\' is missing"

    .line 170
    .line 171
    .line 172
    invoke-direct {p1, v0}, Lkotlinx/serialization/j;-><init>(Ljava/lang/String;)V

    .line 173
    throw p1
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lkotlinx/serialization/encoding/Encoder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TR;)V"
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
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lkotlinx/serialization/internal/v0;->keySerializer:Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/v0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0, v3, v1, v2}, Lkotlinx/serialization/encoding/d;->F(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lkotlinx/serialization/internal/v0;->valueSerializer:Lkotlinx/serialization/KSerializer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/v0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    const/4 v2, 0x1

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0, v2, v1, p2}, Lkotlinx/serialization/encoding/d;->F(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/d;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 49
    return-void
.end method
