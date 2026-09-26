.class public final Lkotlinx/serialization/json/internal/t0;
.super Lkotlinx/serialization/encoding/b;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/t0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n*L\n1#1,222:1\n20#2,12:223\n*S KotlinDebug\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n*L\n63#1:223,12\n*E\n"
.end annotation


# instance fields
.field private final composer:Lkotlinx/serialization/json/internal/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configuration:Lkotlinx/serialization/json/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private forceQuoting:Z

.field private final json:Lkotlinx/serialization/json/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mode:Lkotlinx/serialization/json/internal/z0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modeReuseCache:[Lkotlinx/serialization/json/k;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private polymorphicDiscriminator:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serializersModule:Lkotlinx/serialization/modules/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;[Lkotlinx/serialization/json/k;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/internal/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/internal/z0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Lkotlinx/serialization/json/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/encoding/b;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/t0;->json:Lkotlinx/serialization/json/a;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/t0;->mode:Lkotlinx/serialization/json/internal/z0;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/t0;->modeReuseCache:[Lkotlinx/serialization/json/k;

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/t0;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lkotlinx/serialization/modules/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t0;->serializersModule:Lkotlinx/serialization/modules/c;

    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/t0;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/t0;->configuration:Lkotlinx/serialization/json/e;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    .line 5
    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    .line 6
    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/internal/p0;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;[Lkotlinx/serialization/json/k;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/internal/p0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/internal/z0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Lkotlinx/serialization/json/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/t;->a(Lkotlinx/serialization/json/internal/p0;Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/k;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/t0;-><init>(Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;[Lkotlinx/serialization/json/k;)V

    return-void
.end method

.method private final K()Lkotlinx/serialization/json/internal/k;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 3
    .line 4
    instance-of v1, v0, Lkotlinx/serialization/json/internal/r;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/r;

    .line 10
    .line 11
    iget-object v0, v0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 12
    .line 13
    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/json/internal/r;-><init>(Lkotlinx/serialization/json/internal/p0;Z)V

    .line 17
    move-object v0, v1

    .line 18
    :goto_0
    return-object v0
.end method

.method private final L(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/k;->c()V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->polymorphicDiscriminator:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 16
    .line 17
    const/16 v1, 0x3a

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 21
    .line 22
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/k;->o()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/k;->i(J)V

    .line 18
    :goto_0
    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 3
    .line 4
    const-string v1, "null"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/k;->j(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public D(C)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public H(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 6
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
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/serialization/json/internal/t0$a;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v0

    .line 14
    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    const/16 v1, 0x2c

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    if-eq v0, v2, :cond_6

    .line 21
    .line 22
    const/16 v3, 0x3a

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x2

    .line 25
    .line 26
    if-eq v0, v5, :cond_3

    .line 27
    const/4 v5, 0x3

    .line 28
    .line 29
    if-eq v0, v5, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/k;->a()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/k;->c()V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 55
    .line 56
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 60
    .line 61
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->o()V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    if-nez p2, :cond_2

    .line 68
    .line 69
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 70
    .line 71
    :cond_2
    if-ne p2, v2, :cond_8

    .line 72
    .line 73
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 77
    .line 78
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->o()V

    .line 82
    .line 83
    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_3
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->a()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-nez p1, :cond_5

    .line 93
    rem-int/2addr p2, v5

    .line 94
    .line 95
    if-nez p2, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 101
    .line 102
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->c()V

    .line 106
    move v4, v2

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v3}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 113
    .line 114
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->o()V

    .line 118
    .line 119
    :goto_0
    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :cond_5
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 123
    .line 124
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->c()V

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_6
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->a()Z

    .line 134
    move-result p1

    .line 135
    .line 136
    if-nez p1, :cond_7

    .line 137
    .line 138
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 142
    .line 143
    :cond_7
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->c()V

    .line 147
    :cond_8
    :goto_1
    return v2
.end method

.method public a()Lkotlinx/serialization/modules/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->serializersModule:Lkotlinx/serialization/modules/c;

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/d;
    .locals 4
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
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/t0;->d()Lkotlinx/serialization/json/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/a1;->b(Lkotlinx/serialization/json/a;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/z0;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-char v1, v0, Lkotlinx/serialization/json/internal/z0;->begin:C

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 23
    .line 24
    iget-object v1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/k;->b()V

    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/t0;->polymorphicDiscriminator:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/t0;->L(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    iput-object p1, p0, Lkotlinx/serialization/json/internal/t0;->polymorphicDiscriminator:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->modeReuseCache:[Lkotlinx/serialization/json/k;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result v1

    .line 51
    .line 52
    aget-object p1, p1, v1

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/t0;

    .line 58
    .line 59
    iget-object v1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/t0;->d()Lkotlinx/serialization/json/a;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    iget-object v3, p0, Lkotlinx/serialization/json/internal/t0;->modeReuseCache:[Lkotlinx/serialization/json/k;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v1, v2, v0, v3}, Lkotlinx/serialization/json/internal/t0;-><init>(Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;[Lkotlinx/serialization/json/k;)V

    .line 69
    :goto_0
    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
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
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 8
    .line 9
    iget-char p1, p1, Lkotlinx/serialization/json/internal/z0;->end:C

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->p()V

    .line 17
    .line 18
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/k;->c()V

    .line 22
    .line 23
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 24
    .line 25
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 26
    .line 27
    iget-char v0, v0, Lkotlinx/serialization/json/internal/z0;->end:C

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/k;->e(C)V

    .line 31
    :cond_0
    return-void
.end method

.method public d()Lkotlinx/serialization/json/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->json:Lkotlinx/serialization/json/a;

    return-object v0
.end method

.method public e(Lkotlinx/serialization/k;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lkotlinx/serialization/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/k<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "serializer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lkotlinx/serialization/internal/b;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lkotlinx/serialization/json/k;->d()Lkotlinx/serialization/json/a;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->k()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, p1

    .line 26
    .line 27
    check-cast v0, Lkotlinx/serialization/internal/b;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lkotlinx/serialization/k;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Lkotlinx/serialization/json/k;->d()Lkotlinx/serialization/json/a;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lkotlinx/serialization/json/internal/q0;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p0, p2}, Lkotlinx/serialization/f;->b(Lkotlinx/serialization/internal/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/k;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Lkotlinx/serialization/json/internal/q0;->a(Lkotlinx/serialization/k;Lkotlinx/serialization/k;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Lkotlinx/serialization/k;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lkotlinx/serialization/json/internal/q0;->b(Lkotlinx/serialization/descriptors/i;)V

    .line 63
    .line 64
    iput-object p1, p0, Lkotlinx/serialization/json/internal/t0;->polymorphicDiscriminator:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, p0, p2}, Lkotlinx/serialization/k;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/k;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 72
    :goto_1
    return-void
.end method

.method public f(B)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/k;->d(B)V

    .line 18
    :goto_0
    return-void
.end method

.method public g(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "enumDescriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public h(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 4
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
    .line 8
    invoke-static {p1}, Lkotlinx/serialization/json/internal/u0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lkotlinx/serialization/json/internal/t0;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/t0;->K()Lkotlinx/serialization/json/internal/k;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/t0;->d()Lkotlinx/serialization/json/a;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iget-object v2, p0, Lkotlinx/serialization/json/internal/t0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/t0;-><init>(Lkotlinx/serialization/json/internal/k;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;[Lkotlinx/serialization/json/k;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/encoding/b;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 32
    move-result-object p1

    .line 33
    :goto_0
    return-object p1
.end method

.method public k(S)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/k;->k(S)V

    .line 18
    :goto_0
    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/k;->l(Z)V

    .line 18
    :goto_0
    return-void
.end method

.method public m(F)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/k;->g(F)V

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->configuration:Lkotlinx/serialization/json/e;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->a()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 45
    .line 46
    iget-object v0, v0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/b0;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/z;

    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "descriptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lkotlinx/serialization/json/internal/t0;->configuration:Lkotlinx/serialization/json/e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lkotlinx/serialization/json/e;->e()Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public r(Lkotlinx/serialization/json/JsonElement;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "element"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lkotlinx/serialization/json/i;->INSTANCE:Lkotlinx/serialization/json/i;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/t0;->e(Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/k;->h(I)V

    .line 18
    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/k;->m(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public x(D)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/t0;->forceQuoting:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/t0;->v(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/k;->f(D)V

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->configuration:Lkotlinx/serialization/json/e;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->a()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget-object p2, p0, Lkotlinx/serialization/json/internal/t0;->composer:Lkotlinx/serialization/json/internal/k;

    .line 45
    .line 46
    iget-object p2, p2, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/b0;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/z;

    .line 54
    move-result-object p1

    .line 55
    throw p1

    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/k;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/k<",
            "-TT;>;TT;)V"
        }
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
    const-string v0, "serializer"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lkotlinx/serialization/json/internal/t0;->configuration:Lkotlinx/serialization/json/e;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->f()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lkotlinx/serialization/encoding/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 24
    :cond_1
    return-void
.end method
