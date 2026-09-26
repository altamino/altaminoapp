.class public final Lkotlinx/serialization/descriptors/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSerialDescriptors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerialDescriptors.kt\nkotlinx/serialization/descriptors/SerialDescriptorsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,345:1\n1#2:346\n24#3:347\n24#3:349\n24#3:351\n24#3:353\n24#3:355\n80#4:348\n80#4:350\n80#4:352\n80#4:354\n80#4:356\n*S KotlinDebug\n*F\n+ 1 SerialDescriptors.kt\nkotlinx/serialization/descriptors/SerialDescriptorsKt\n*L\n153#1:347\n173#1:349\n193#1:351\n209#1:353\n299#1:355\n153#1:348\n173#1:350\n193#1:352\n209#1:354\n299#1:356\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/descriptors/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "serialName"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "kind"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Lkotlinx/serialization/internal/y1;->a(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string p1, "Blank serial names are prohibited"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
.end method

.method public static final b(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "Le8/l<",
            "-",
            "Lkotlinx/serialization/descriptors/a;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "serialName"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "typeParameters"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "builderAction"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v6, Lkotlinx/serialization/descriptors/a;

    .line 26
    .line 27
    .line 28
    invoke-direct {v6, p0}, Lkotlinx/serialization/descriptors/a;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v6}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    new-instance p2, Lkotlinx/serialization/descriptors/f;

    .line 34
    .line 35
    sget-object v3, Lkotlinx/serialization/descriptors/j$a;->INSTANCE:Lkotlinx/serialization/descriptors/j$a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lkotlinx/serialization/descriptors/a;->f()Ljava/util/List;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/collections/l;->t0([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    move-result-object v5

    .line 48
    move-object v1, p2

    .line 49
    move-object v2, p0

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/descriptors/f;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;ILjava/util/List;Lkotlinx/serialization/descriptors/a;)V

    .line 53
    return-object p2

    .line 54
    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p1, "Blank serial names are prohibited"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0
.end method

.method public static final c(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/descriptors/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/descriptors/i;",
            "[",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "Le8/l<",
            "-",
            "Lkotlinx/serialization/descriptors/a;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "serialName"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "kind"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "typeParameters"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "builder"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget-object v0, Lkotlinx/serialization/descriptors/j$a;->INSTANCE:Lkotlinx/serialization/descriptors/j$a;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    new-instance v6, Lkotlinx/serialization/descriptors/a;

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, p0}, Lkotlinx/serialization/descriptors/a;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p3, v6}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    new-instance p3, Lkotlinx/serialization/descriptors/f;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Lkotlinx/serialization/descriptors/a;->f()Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    move-result v4

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lkotlin/collections/l;->t0([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    move-result-object v5

    .line 61
    move-object v1, p3

    .line 62
    move-object v2, p0

    .line 63
    move-object v3, p1

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/descriptors/f;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;ILjava/util/List;Lkotlinx/serialization/descriptors/a;)V

    .line 67
    return-object p3

    .line 68
    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p1, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0

    .line 80
    .line 81
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p1, "Blank serial names are prohibited"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p0
.end method

.method public static synthetic d(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x8

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    sget-object p3, Lkotlinx/serialization/descriptors/h$a;->INSTANCE:Lkotlinx/serialization/descriptors/h$a;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/descriptors/h;->c(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
