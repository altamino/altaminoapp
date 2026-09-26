.class public Lkotlinx/serialization/json/internal/s0;
.super Lkotlinx/serialization/encoding/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/s0$a;,
        Lkotlinx/serialization/json/internal/s0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 4 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoderKt\n*L\n1#1,389:1\n463#2,3:390\n463#2,3:393\n74#3,11:396\n382#4,5:407\n382#4,5:412\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n*L\n196#1:390,3\n197#1:393,3\n209#1:396,11\n311#1:407,5\n318#1:412,5\n*E\n"
.end annotation


# instance fields
.field private final configuration:Lkotlinx/serialization/json/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentIndex:I

.field private discriminatorHolder:Lkotlinx/serialization/json/internal/s0$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final elementMarker:Lkotlinx/serialization/json/internal/y;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final json:Lkotlinx/serialization/json/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final lexer:Lkotlinx/serialization/json/internal/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mode:Lkotlinx/serialization/json/internal/z0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serializersModule:Lkotlinx/serialization/modules/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/s0$a;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/internal/z0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/json/internal/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlinx/serialization/json/internal/s0$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "json"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "mode"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "lexer"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "descriptor"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lkotlinx/serialization/encoding/a;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 26
    .line 27
    iput-object p2, p0, Lkotlinx/serialization/json/internal/s0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 28
    .line 29
    iput-object p3, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lkotlinx/serialization/modules/c;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    iput-object p2, p0, Lkotlinx/serialization/json/internal/s0;->serializersModule:Lkotlinx/serialization/modules/c;

    .line 36
    const/4 p2, -0x1

    .line 37
    .line 38
    iput p2, p0, Lkotlinx/serialization/json/internal/s0;->currentIndex:I

    .line 39
    .line 40
    iput-object p5, p0, Lkotlinx/serialization/json/internal/s0;->discriminatorHolder:Lkotlinx/serialization/json/internal/s0$a;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lkotlinx/serialization/json/e;->f()Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    const/4 p1, 0x0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/y;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/y;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 60
    .line 61
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/s0;->elementMarker:Lkotlinx/serialization/json/internal/y;

    .line 62
    return-void
.end method

.method private final K()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 13
    .line 14
    const-string v3, "Unexpected leading comma"

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x6

    .line 18
    const/4 v7, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 22
    .line 23
    new-instance v0, Lw7/i;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 27
    throw v0
.end method

.method private final L(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    .line 10
    move-result p2

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/a;->M()Z

    .line 19
    move-result p2

    .line 20
    xor-int/2addr p2, v1

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/i;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    sget-object v2, Lkotlinx/serialization/descriptors/i$b;->INSTANCE:Lkotlinx/serialization/descriptors/i$b;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result p2

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 39
    .line 40
    iget-object v3, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lkotlinx/serialization/json/e;->l()Z

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v3}, Lkotlinx/serialization/json/internal/a;->F(Z)Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    if-nez p2, :cond_2

    .line 51
    :cond_1
    move v1, v2

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {p1, v0, p2}, Lkotlinx/serialization/json/internal/c0;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    .line 56
    move-result p1

    .line 57
    const/4 p2, -0x3

    .line 58
    .line 59
    if-ne p1, p2, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 65
    :goto_0
    return v1
.end method

.method private final M()I
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->L()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->f()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget v1, p0, Lkotlinx/serialization/json/internal/s0;->currentIndex:I

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 25
    .line 26
    const-string v4, "Expected end of the array or comma"

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x6

    .line 30
    const/4 v8, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 34
    .line 35
    new-instance v0, Lw7/i;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 39
    throw v0

    .line 40
    .line 41
    :cond_1
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    iput v2, p0, Lkotlinx/serialization/json/internal/s0;->currentIndex:I

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    if-nez v0, :cond_3

    .line 47
    :goto_1
    return v2

    .line 48
    .line 49
    :cond_3
    iget-object v3, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 50
    .line 51
    const-string v4, "Unexpected trailing comma"

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x6

    .line 55
    const/4 v8, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 59
    .line 60
    new-instance v0, Lw7/i;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 64
    throw v0
.end method

.method private final N()I
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lkotlinx/serialization/json/internal/s0;->currentIndex:I

    .line 3
    .line 4
    rem-int/lit8 v1, v0, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    const/4 v4, -0x1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eq v0, v4, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->L()Z

    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 26
    .line 27
    const/16 v5, 0x3a

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/internal/a;->o(C)V

    .line 31
    .line 32
    :cond_2
    :goto_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->f()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    if-eqz v1, :cond_6

    .line 41
    .line 42
    iget v0, p0, Lkotlinx/serialization/json/internal/s0;->currentIndex:I

    .line 43
    .line 44
    if-ne v0, v4, :cond_4

    .line 45
    .line 46
    iget-object v5, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 47
    .line 48
    xor-int/lit8 v0, v3, 0x1

    .line 49
    .line 50
    .line 51
    invoke-static {v5}, Lkotlinx/serialization/json/internal/a;->a(Lkotlinx/serialization/json/internal/a;)I

    .line 52
    move-result v7

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_3
    const-string v6, "Unexpected trailing comma"

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x4

    .line 60
    const/4 v10, 0x0

    .line 61
    .line 62
    .line 63
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 64
    .line 65
    new-instance v0, Lw7/i;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 69
    throw v0

    .line 70
    .line 71
    :cond_4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lkotlinx/serialization/json/internal/a;->a(Lkotlinx/serialization/json/internal/a;)I

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_5
    const-string v2, "Expected comma after the key-value pair"

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v5, 0x4

    .line 83
    const/4 v6, 0x0

    .line 84
    move v3, v0

    .line 85
    .line 86
    .line 87
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 88
    .line 89
    new-instance v0, Lw7/i;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 93
    throw v0

    .line 94
    .line 95
    :cond_6
    :goto_2
    iget v0, p0, Lkotlinx/serialization/json/internal/s0;->currentIndex:I

    .line 96
    .line 97
    add-int/lit8 v4, v0, 0x1

    .line 98
    .line 99
    iput v4, p0, Lkotlinx/serialization/json/internal/s0;->currentIndex:I

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_7
    if-nez v3, :cond_8

    .line 103
    :goto_3
    return v4

    .line 104
    .line 105
    :cond_8
    iget-object v5, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 106
    .line 107
    const-string v6, "Expected \'}\', but had \',\' instead"

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v9, 0x6

    .line 111
    const/4 v10, 0x0

    .line 112
    .line 113
    .line 114
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 115
    .line 116
    new-instance v0, Lw7/i;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 120
    throw v0
.end method

.method private final O(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->L()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->f()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/s0;->P()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 21
    .line 22
    const/16 v2, 0x3a

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/a;->o(C)V

    .line 26
    .line 27
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/c0;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;Ljava/lang/String;)I

    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x3

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    if-eq v1, v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lkotlinx/serialization/json/e;->d()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/s0;->L(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->L()Z

    .line 55
    move-result v1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/s0;->elementMarker:Lkotlinx/serialization/json/internal/y;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/y;->c(I)V

    .line 64
    :cond_1
    return v1

    .line 65
    :cond_2
    const/4 v1, 0x1

    .line 66
    move v6, v3

    .line 67
    move v3, v1

    .line 68
    move v1, v6

    .line 69
    .line 70
    :goto_1
    if-eqz v3, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/s0;->Q(Ljava/lang/String;)Z

    .line 74
    move-result v0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move v0, v1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_4
    if-nez v0, :cond_6

    .line 80
    .line 81
    iget-object p1, p0, Lkotlinx/serialization/json/internal/s0;->elementMarker:Lkotlinx/serialization/json/internal/y;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/y;->d()I

    .line 87
    move-result p1

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    const/4 p1, -0x1

    .line 90
    :goto_2
    return p1

    .line 91
    .line 92
    :cond_6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 93
    .line 94
    const-string v1, "Unexpected trailing comma"

    .line 95
    const/4 v2, 0x0

    .line 96
    const/4 v3, 0x0

    .line 97
    const/4 v4, 0x6

    .line 98
    const/4 v5, 0x0

    .line 99
    .line 100
    .line 101
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 102
    .line 103
    new-instance p1, Lw7/i;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 107
    throw p1
.end method

.method private final P()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->l()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->k()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    :goto_0
    return-object v0
.end method

.method private final Q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->g()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->discriminatorHolder:Lkotlinx/serialization/json/internal/s0$a;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/internal/s0;->S(Lkotlinx/serialization/json/internal/s0$a;Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/a;->A(Ljava/lang/String;)V

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 26
    .line 27
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->l()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/a;->H(Z)V

    .line 35
    .line 36
    :goto_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/a;->L()Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method private final R(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/s0;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return-void
.end method

.method private final S(Lkotlinx/serialization/json/internal/s0$a;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p1, Lkotlinx/serialization/json/internal/s0$a;->discriminatorToSkip:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    iput-object p2, p1, Lkotlinx/serialization/json/internal/s0$a;->discriminatorToSkip:Ljava/lang/String;

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_1
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->l()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->i()Z

    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->g()Z

    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->elementMarker:Lkotlinx/serialization/json/internal/y;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/y;->b()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->M()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public G(Lkotlinx/serialization/b;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlinx/serialization/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "deserializer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :try_start_0
    instance-of v0, p1, Lkotlinx/serialization/internal/b;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->k()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/q0;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 35
    .line 36
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lkotlinx/serialization/json/e;->l()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/json/internal/a;->l(Ljava/lang/String;Z)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    move-object v2, p1

    .line 48
    .line 49
    check-cast v2, Lkotlinx/serialization/internal/b;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p0, v1}, Lkotlinx/serialization/internal/b;->c(Lkotlinx/serialization/encoding/c;Ljava/lang/String;)Lkotlinx/serialization/b;

    .line 53
    move-result-object v1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    .line 59
    :goto_0
    if-nez v1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/q0;->d(Lkotlinx/serialization/json/f;Lkotlinx/serialization/b;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    .line 66
    :cond_2
    new-instance p1, Lkotlinx/serialization/json/internal/s0$a;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Lkotlinx/serialization/json/internal/s0$a;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    iput-object p1, p0, Lkotlinx/serialization/json/internal/s0;->discriminatorHolder:Lkotlinx/serialization/json/internal/s0$a;

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, p0}, Lkotlinx/serialization/b;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/b;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 80
    move-result-object p1
    :try_end_0
    .catch Lkotlinx/serialization/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object p1

    .line 82
    .line 83
    :goto_2
    new-instance v0, Lkotlinx/serialization/c;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lkotlinx/serialization/c;->a()Ljava/util/List;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, " at path: "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    iget-object v3, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 107
    .line 108
    iget-object v3, v3, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/d0;->a()Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v1, v2, p1}, Lkotlinx/serialization/c;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    throw v0
.end method

.method public H()B
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-byte v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    .line 11
    cmp-long v3, v0, v3

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    return v2

    .line 15
    .line 16
    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v3, "Failed to parse byte for input \'"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const/16 v0, 0x27

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x6

    .line 42
    const/4 v9, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 46
    .line 47
    new-instance v0, Lw7/i;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 51
    throw v0
.end method

.method public a()Lkotlinx/serialization/modules/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->serializersModule:Lkotlinx/serialization/modules/c;

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/c;
    .locals 7
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
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/a1;->b(Lkotlinx/serialization/json/a;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/z0;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 14
    .line 15
    iget-object v0, v0, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/d0;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 19
    .line 20
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 21
    .line 22
    iget-char v1, v3, Lkotlinx/serialization/json/internal/z0;->begin:C

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/a;->o(C)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/s0;->K()V

    .line 29
    .line 30
    sget-object v0, Lkotlinx/serialization/json/internal/s0$b;->$EnumSwitchMapping$0:[I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 34
    move-result v1

    .line 35
    .line 36
    aget v0, v0, v1

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    const/4 v1, 0x2

    .line 41
    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    const/4 v1, 0x3

    .line 44
    .line 45
    if-eq v0, v1, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 48
    .line 49
    if-ne v0, v3, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->f()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/s0;

    .line 66
    .line 67
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 68
    .line 69
    iget-object v4, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 70
    .line 71
    iget-object v6, p0, Lkotlinx/serialization/json/internal/s0;->discriminatorHolder:Lkotlinx/serialization/json/internal/s0$a;

    .line 72
    move-object v1, v0

    .line 73
    move-object v5, p1

    .line 74
    .line 75
    .line 76
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/s0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/s0$a;)V

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_1
    new-instance v0, Lkotlinx/serialization/json/internal/s0;

    .line 80
    .line 81
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 82
    .line 83
    iget-object v4, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 84
    .line 85
    iget-object v6, p0, Lkotlinx/serialization/json/internal/s0;->discriminatorHolder:Lkotlinx/serialization/json/internal/s0$a;

    .line 86
    move-object v1, v0

    .line 87
    move-object v5, p1

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/s0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/s0$a;)V

    .line 91
    :goto_0
    return-object v0
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
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->g()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/s0;->R(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 29
    .line 30
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 31
    .line 32
    iget-char v0, v0, Lkotlinx/serialization/json/internal/z0;->end:C

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/a;->o(C)V

    .line 36
    .line 37
    iget-object p1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 38
    .line 39
    iget-object p1, p1, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/d0;->b()V

    .line 43
    return-void
.end method

.method public final d()Lkotlinx/serialization/json/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    return-object v0
.end method

.method public g()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public m()S
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-short v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    .line 11
    cmp-long v3, v0, v3

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    return v2

    .line 15
    .line 16
    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v3, "Failed to parse short for input \'"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const/16 v0, 0x27

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x6

    .line 42
    const/4 v9, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 46
    .line 47
    new-instance v0, Lw7/i;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 51
    throw v0
.end method

.method public n()D
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lkotlinx/serialization/json/e;->a()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/b0;->j(Lkotlinx/serialization/json/internal/a;Ljava/lang/Number;)Ljava/lang/Void;

    .line 45
    .line 46
    new-instance v0, Lw7/i;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    return-wide v0

    .line 52
    .line 53
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "Failed to parse type \'"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "double"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "\' for input \'"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const/16 v1, 0x27

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    const/4 v4, 0x6

    .line 87
    const/4 v5, 0x0

    .line 88
    .line 89
    .line 90
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 91
    .line 92
    new-instance v0, Lw7/i;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 96
    throw v0
.end method

.method public o()C
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, "Expected single char, but got \'"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const/16 v0, 0x27

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x6

    .line 47
    const/4 v6, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 51
    .line 52
    new-instance v0, Lw7/i;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 56
    throw v0
.end method

.method public p(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/b;
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
            "Lkotlinx/serialization/b<",
            "TT;>;TT;)TT;"
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
    const-string v0, "deserializer"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 13
    .line 14
    sget-object v1, Lkotlinx/serialization/json/internal/z0;->MAP:Lkotlinx/serialization/json/internal/z0;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    and-int/lit8 v0, p2, 0x1

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 28
    .line 29
    iget-object v1, v1, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/d0;->d()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lkotlinx/serialization/encoding/a;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p2, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 41
    .line 42
    iget-object p2, p2, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/d0;->f(Ljava/lang/Object;)V

    .line 46
    :cond_2
    return-object p1
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->configuration:Lkotlinx/serialization/json/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->l()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    :goto_0
    return-object v0
.end method

.method public s(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 4
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
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/s0;->q()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v3, " at path "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v3, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 24
    .line 25
    iget-object v3, v3, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/d0;->a()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v1, v2}, Lkotlinx/serialization/json/internal/c0;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/a;Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public t()Lkotlinx/serialization/json/JsonElement;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/serialization/json/internal/o0;

    .line 3
    .line 4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/o0;-><init>(Lkotlinx/serialization/json/e;Lkotlinx/serialization/json/internal/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/o0;->e()Lkotlinx/serialization/json/JsonElement;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public u()I
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->p()J

    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-long v3, v2

    .line 9
    .line 10
    cmp-long v3, v0, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    return v2

    .line 14
    .line 15
    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v3, "Failed to parse int for input \'"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const/16 v0, 0x27

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x6

    .line 41
    const/4 v9, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 45
    .line 46
    new-instance v0, Lw7/i;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 50
    throw v0
.end method

.method public w(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 2
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
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 8
    .line 9
    sget-object v1, Lkotlinx/serialization/json/internal/s0$b;->$EnumSwitchMapping$0:[I

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
    const/4 v1, 0x2

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x4

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/s0;->M()I

    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/s0;->O(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 30
    move-result p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/s0;->N()I

    .line 35
    move-result p1

    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->mode:Lkotlinx/serialization/json/internal/z0;

    .line 38
    .line 39
    sget-object v1, Lkotlinx/serialization/json/internal/z0;->MAP:Lkotlinx/serialization/json/internal/z0;

    .line 40
    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 44
    .line 45
    iget-object v0, v0, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/d0;->g(I)V

    .line 49
    :cond_2
    return p1
.end method

.method public x(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 2
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
    new-instance p1, Lkotlinx/serialization/json/internal/w;

    .line 14
    .line 15
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 16
    .line 17
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0, v1}, Lkotlinx/serialization/json/internal/w;-><init>(Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/json/a;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/serialization/encoding/a;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    .line 25
    move-result-object p1

    .line 26
    :goto_0
    return-object p1
.end method

.method public y()F
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->json:Lkotlinx/serialization/json/a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlinx/serialization/json/e;->a()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/s0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/b0;->j(Lkotlinx/serialization/json/internal/a;Ljava/lang/Number;)Ljava/lang/Void;

    .line 45
    .line 46
    new-instance v0, Lw7/i;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    return v0

    .line 52
    .line 53
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "Failed to parse type \'"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "float"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "\' for input \'"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const/16 v1, 0x27

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    const/4 v4, 0x6

    .line 87
    const/4 v5, 0x0

    .line 88
    .line 89
    .line 90
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 91
    .line 92
    new-instance v0, Lw7/i;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 96
    throw v0
.end method
