.class public final Lkotlinx/serialization/internal/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,167:1\n1#2:168\n3133#3,11:169\n3133#3,11:181\n3133#3,11:192\n26#4:180\n*S KotlinDebug\n*F\n+ 1 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n*L\n57#1:169,11\n140#1:181,11\n145#1:192,11\n111#1:180\n*E\n"
.end annotation


# direct methods
.method private static final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "Companion"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    move-result-object p0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    return-object v0
.end method

.method public static final b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlinx/serialization/internal/p1;->d(Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final varargs c(Ljava/lang/Class;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 8
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "args"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lkotlinx/serialization/internal/p1;->j(Ljava/lang/Class;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lkotlinx/serialization/internal/p1;->e(Ljava/lang/Class;)Lkotlinx/serialization/KSerializer;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lkotlinx/serialization/internal/p1;->g(Ljava/lang/Class;)Lkotlinx/serialization/KSerializer;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    return-object v0

    .line 41
    :cond_1
    array-length v0, p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, [Lkotlinx/serialization/KSerializer;

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lkotlinx/serialization/internal/p1;->h(Ljava/lang/Class;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    return-object p1

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-static {p0}, Lkotlinx/serialization/internal/p1;->f(Ljava/lang/Class;)Lkotlinx/serialization/KSerializer;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    return-object p1

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const-string v1, "declaredClasses"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    array-length v1, v0

    .line 73
    const/4 v2, 0x0

    .line 74
    move-object v4, p1

    .line 75
    move v3, v2

    .line 76
    .line 77
    :goto_0
    if-ge v2, v1, :cond_6

    .line 78
    .line 79
    aget-object v5, v0, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    const-string v7, "$serializer"

    .line 86
    .line 87
    .line 88
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v6

    .line 90
    .line 91
    if-eqz v6, :cond_5

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    :goto_1
    move-object v4, p1

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    const/4 v3, 0x1

    .line 97
    move-object v4, v5

    .line 98
    .line 99
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_6
    if-nez v3, :cond_7

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 106
    .line 107
    const-string v0, "INSTANCE"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    goto :goto_3

    .line 119
    :cond_8
    move-object v0, p1

    .line 120
    .line 121
    :goto_3
    instance-of v1, v0, Lkotlinx/serialization/KSerializer;

    .line 122
    .line 123
    if-eqz v1, :cond_9

    .line 124
    .line 125
    check-cast v0, Lkotlinx/serialization/KSerializer;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_4

    .line 127
    :catch_0
    :cond_9
    move-object v0, p1

    .line 128
    .line 129
    :goto_4
    if-eqz v0, :cond_a

    .line 130
    return-object v0

    .line 131
    .line 132
    .line 133
    :cond_a
    invoke-static {p0}, Lkotlinx/serialization/internal/p1;->k(Ljava/lang/Class;)Z

    .line 134
    move-result v0

    .line 135
    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    new-instance p1, Lkotlinx/serialization/e;

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Ld8/a;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 142
    move-result-object p0

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p0}, Lkotlinx/serialization/e;-><init>(Lkotlin/reflect/KClass;)V

    .line 146
    :cond_b
    return-object p1
.end method

.method public static final varargs d(Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "args"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ld8/a;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 14
    move-result-object p0

    .line 15
    array-length v0, p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, [Lkotlinx/serialization/KSerializer;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlinx/serialization/internal/p1;->c(Ljava/lang/Class;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private static final e(Ljava/lang/Class;)Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lkotlinx/serialization/internal/g0;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    const-string v2, "canonicalName"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v2, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast v0, [Ljava/lang/Enum;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/internal/g0;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    .line 26
    return-object v1
.end method

.method private static final f(Ljava/lang/Class;)Lkotlinx/serialization/KSerializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "declaredFields"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v6, v2

    .line 14
    move v4, v3

    .line 15
    move v5, v4

    .line 16
    :goto_0
    const/4 v7, 0x1

    .line 17
    .line 18
    if-ge v4, v1, :cond_2

    .line 19
    .line 20
    aget-object v8, v0, v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 24
    move-result-object v9

    .line 25
    .line 26
    const-string v10, "INSTANCE"

    .line 27
    .line 28
    .line 29
    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v9

    .line 31
    .line 32
    if-eqz v9, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 36
    move-result-object v9

    .line 37
    .line 38
    .line 39
    invoke-static {v9, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v9

    .line 41
    .line 42
    if-eqz v9, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 46
    move-result v9

    .line 47
    .line 48
    .line 49
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 50
    move-result v9

    .line 51
    .line 52
    if-eqz v9, :cond_1

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    :goto_1
    move-object v6, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    move v5, v7

    .line 58
    move-object v6, v8

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    if-nez v5, :cond_3

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 67
    return-object v2

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    const-string v1, "methods"

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    array-length v1, p0

    .line 82
    move-object v6, v2

    .line 83
    move v4, v3

    .line 84
    move v5, v4

    .line 85
    .line 86
    :goto_3
    if-ge v4, v1, :cond_7

    .line 87
    .line 88
    aget-object v8, p0, v4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 92
    move-result-object v9

    .line 93
    .line 94
    const-string v10, "serializer"

    .line 95
    .line 96
    .line 97
    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    move-result v9

    .line 99
    .line 100
    if-eqz v9, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 104
    move-result-object v9

    .line 105
    .line 106
    const-string v10, "it.parameterTypes"

    .line 107
    .line 108
    .line 109
    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    array-length v9, v9

    .line 111
    .line 112
    if-nez v9, :cond_6

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 116
    move-result-object v9

    .line 117
    .line 118
    const-class v10, Lkotlinx/serialization/KSerializer;

    .line 119
    .line 120
    .line 121
    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v9

    .line 123
    .line 124
    if-eqz v9, :cond_6

    .line 125
    .line 126
    if-eqz v5, :cond_5

    .line 127
    :goto_4
    move-object v6, v2

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    move v5, v7

    .line 130
    move-object v6, v8

    .line 131
    .line 132
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 133
    goto :goto_3

    .line 134
    .line 135
    :cond_7
    if-nez v5, :cond_8

    .line 136
    goto :goto_4

    .line 137
    .line 138
    :cond_8
    :goto_5
    if-nez v6, :cond_9

    .line 139
    return-object v2

    .line 140
    .line 141
    :cond_9
    new-array p0, v3, [Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object p0

    .line 146
    .line 147
    instance-of v0, p0, Lkotlinx/serialization/KSerializer;

    .line 148
    .line 149
    if-eqz v0, :cond_a

    .line 150
    move-object v2, p0

    .line 151
    .line 152
    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 153
    :cond_a
    return-object v2
.end method

.method private static final g(Ljava/lang/Class;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lkotlinx/serialization/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/serialization/i;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lkotlinx/serialization/i;->with()Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-class v1, Lkotlinx/serialization/e;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_1
    :goto_0
    new-instance v0, Lkotlinx/serialization/e;

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Ld8/a;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lkotlinx/serialization/e;-><init>(Lkotlin/reflect/KClass;)V

    .line 43
    return-object v0
.end method

.method private static final varargs h(Ljava/lang/Class;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/serialization/internal/p1;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    new-array v1, v2, [Ljava/lang/Class;

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    array-length v1, p1

    .line 19
    .line 20
    new-array v3, v1, [Ljava/lang/Class;

    .line 21
    .line 22
    :goto_0
    if-ge v2, v1, :cond_2

    .line 23
    .line 24
    const-class v4, Lkotlinx/serialization/KSerializer;

    .line 25
    .line 26
    aput-object v4, v3, v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move-object v1, v3

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    const-string v3, "serializer"

    .line 37
    array-length v4, v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, [Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    move-result-object v1

    .line 48
    array-length v2, p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    instance-of p1, p0, Lkotlinx/serialization/KSerializer;

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    check-cast p0, Lkotlinx/serialization/KSerializer;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    move-object v0, p0

    .line 64
    goto :goto_3

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    new-instance v0, Ljava/lang/reflect/InvocationTargetException;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-direct {v0, p1, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 86
    throw v0

    .line 87
    :cond_4
    throw p0

    .line 88
    :catch_1
    :cond_5
    :goto_3
    return-object v0
.end method

.method public static final i(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KClass<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "kclass"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ld8/a;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private static final j(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lkotlinx/serialization/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-class v0, Lkotlinx/serialization/d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private static final k(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lkotlinx/serialization/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    const-class v0, Lkotlinx/serialization/i;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    check-cast p0, Lkotlinx/serialization/i;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lkotlinx/serialization/i;->with()Ljava/lang/Class;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    const-class v0, Lkotlinx/serialization/e;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    return v1

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public static final l(Lkotlin/reflect/KClass;)Z
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "rootClass"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ld8/a;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static final m(Lkotlin/reflect/KClass;)Ljava/lang/Void;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lkotlinx/serialization/internal/q1;->d(Lkotlin/reflect/KClass;)Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p0, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 14
    throw p0
.end method

.method public static final n(Ljava/util/ArrayList;Lkotlin/reflect/KClass;)[Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::TT;>(",
            "Ljava/util/ArrayList<",
            "TE;>;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)[TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "eClass"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ld8/a;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast p1, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    const-string p1, "toArray(java.lang.reflec\u2026.java, size) as Array<E>)"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    return-object p0
.end method
