.class public final Landroidx/compose/runtime/CompositionLocalKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompositionLocal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocalKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,255:1\n125#2:256\n152#2,3:257\n37#3:260\n36#3,3:261\n*S KotlinDebug\n*F\n+ 1 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocalKt\n*L\n250#1:256\n250#1:257,3\n251#1:260\n251#1:261,3\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/CompositionLocalContext;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 5
    .param p0    # Landroidx/compose/runtime/CompositionLocalContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionLocalContext;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x6e803c08

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    and-int/lit8 v0, p3, 0xe

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, p3

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v1, p3, 0x70

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    const/16 v1, 0x10

    .line 49
    :goto_2
    or-int/2addr v0, v1

    .line 50
    .line 51
    :cond_3
    and-int/lit8 v1, v0, 0x5b

    .line 52
    .line 53
    const/16 v2, 0x12

    .line 54
    .line 55
    if-ne v1, v2, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-nez v1, :cond_4

    .line 62
    goto :goto_3

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 66
    goto :goto_5

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionLocalContext;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 76
    move-result v3

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    check-cast v3, Ljava/util/Map$Entry;

    .line 100
    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    check-cast v4, Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 106
    .line 107
    .line 108
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    check-cast v3, Landroidx/compose/runtime/State;

    .line 112
    .line 113
    .line 114
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    const/4 v1, 0x0

    .line 125
    .line 126
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 127
    .line 128
    .line 129
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    check-cast v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 135
    array-length v2, v1

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    check-cast v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 142
    .line 143
    and-int/lit8 v0, v0, 0x70

    .line 144
    .line 145
    or-int/lit8 v0, v0, 0x8

    .line 146
    .line 147
    .line 148
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 149
    .line 150
    .line 151
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    if-nez p2, :cond_7

    .line 155
    goto :goto_6

    .line 156
    .line 157
    :cond_7
    new-instance v0, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$3;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$3;-><init>(Landroidx/compose/runtime/CompositionLocalContext;Le8/p;I)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 164
    :goto_6
    return-void

    .line 165
    .line 166
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    .line 167
    .line 168
    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p0
.end method

.method public static final b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .param p0    # [Landroidx/compose/runtime/ProvidedValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/ProvidedValue<",
            "*>;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "values"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, -0x52e5dee3

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->l([Landroidx/compose/runtime/ProvidedValue;)V

    .line 21
    .line 22
    shr-int/lit8 v0, p3, 0x3

    .line 23
    .line 24
    and-int/lit8 v0, v0, 0xe

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->N()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    if-nez p2, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance v0, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$1;-><init>([Landroidx/compose/runtime/ProvidedValue;Le8/p;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 50
    :goto_0
    return-void
.end method

.method public static final c(Landroidx/compose/runtime/SnapshotMutationPolicy;Le8/a;)Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .param p0    # Landroidx/compose/runtime/SnapshotMutationPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;",
            "Le8/a<",
            "+TT;>;)",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "policy"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "defaultFactory"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Le8/a;)V

    .line 16
    return-object v0
.end method

.method public static synthetic d(Landroidx/compose/runtime/SnapshotMutationPolicy;Le8/a;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->p()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalKt;->c(Landroidx/compose/runtime/SnapshotMutationPolicy;Le8/a;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final e(Le8/a;)Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/a<",
            "+TT;>;)",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "defaultFactory"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Le8/a;)V

    .line 11
    return-object v0
.end method
