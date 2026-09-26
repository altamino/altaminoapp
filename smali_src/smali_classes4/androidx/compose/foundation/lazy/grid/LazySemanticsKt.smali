.class public final Landroidx/compose/foundation/lazy/grid/LazySemanticsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazySemantics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazySemantics.kt\nandroidx/compose/foundation/lazy/grid/LazySemanticsKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,144:1\n83#2,3:145\n1057#3,6:148\n*S KotlinDebug\n*F\n+ 1 LazySemantics.kt\nandroidx/compose/foundation/lazy/grid/LazySemanticsKt\n*L\n48#1:145,3\n48#1:148,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/o0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p7

    .line 11
    .line 12
    const-string v5, "<this>"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v5, "itemProvider"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v5, "state"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v5, "coroutineScope"

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const v5, 0x51537861

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 37
    const/4 v5, 0x5

    .line 38
    .line 39
    new-array v6, v5, [Ljava/lang/Object;

    .line 40
    const/4 v7, 0x0

    .line 41
    .line 42
    aput-object v1, v6, v7

    .line 43
    const/4 v8, 0x1

    .line 44
    .line 45
    aput-object v2, v6, v8

    .line 46
    const/4 v9, 0x2

    .line 47
    .line 48
    .line 49
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v10

    .line 51
    .line 52
    aput-object v10, v6, v9

    .line 53
    const/4 v9, 0x3

    .line 54
    .line 55
    .line 56
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object v10

    .line 58
    .line 59
    aput-object v10, v6, v9

    .line 60
    const/4 v9, 0x4

    .line 61
    .line 62
    .line 63
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object v10

    .line 65
    .line 66
    aput-object v10, v6, v9

    .line 67
    .line 68
    .line 69
    const v9, -0x21de6e89

    .line 70
    .line 71
    .line 72
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 73
    move v9, v7

    .line 74
    move v10, v9

    .line 75
    .line 76
    :goto_0
    if-ge v9, v5, :cond_0

    .line 77
    .line 78
    aget-object v11, v6, v9

    .line 79
    .line 80
    .line 81
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 82
    move-result v11

    .line 83
    or-int/2addr v10, v11

    .line 84
    .line 85
    add-int/lit8 v9, v9, 0x1

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    if-nez v10, :cond_1

    .line 93
    .line 94
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 98
    move-result-object v6

    .line 99
    .line 100
    if-ne v5, v6, :cond_4

    .line 101
    .line 102
    :cond_1
    new-instance v10, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$indexForKeyMapping$1;

    .line 103
    .line 104
    .line 105
    invoke-direct {v10, v1}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$indexForKeyMapping$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    .line 106
    .line 107
    new-instance v12, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 108
    .line 109
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$1;

    .line 110
    .line 111
    .line 112
    invoke-direct {v5, v2}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 113
    .line 114
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$2;

    .line 115
    .line 116
    .line 117
    invoke-direct {v6, v2, v1}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    .line 118
    .line 119
    move/from16 v1, p5

    .line 120
    .line 121
    .line 122
    invoke-direct {v12, v5, v6, v1}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Le8/a;Le8/a;Z)V

    .line 123
    const/4 v1, 0x0

    .line 124
    .line 125
    if-eqz p6, :cond_2

    .line 126
    .line 127
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;

    .line 128
    .line 129
    move/from16 v6, p4

    .line 130
    .line 131
    .line 132
    invoke-direct {v5, v6, v3, v2}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;-><init>(ZLkotlinx/coroutines/o0;Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 133
    move-object v13, v5

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_2
    move/from16 v6, p4

    .line 137
    move-object v13, v1

    .line 138
    .line 139
    :goto_1
    if-eqz p6, :cond_3

    .line 140
    .line 141
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1;

    .line 142
    .line 143
    .line 144
    invoke-direct {v5, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/o0;)V

    .line 145
    move-object v14, v5

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    move-object v14, v1

    .line 148
    .line 149
    :goto_2
    new-instance v15, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 150
    const/4 v2, -0x1

    .line 151
    .line 152
    .line 153
    invoke-direct {v15, v2, v2}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    .line 154
    .line 155
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 156
    .line 157
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$1;

    .line 158
    move-object v9, v3

    .line 159
    .line 160
    move/from16 v11, p4

    .line 161
    .line 162
    .line 163
    invoke-direct/range {v9 .. v15}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$1;-><init>(Le8/l;ZLandroidx/compose/ui/semantics/ScrollAxisRange;Le8/p;Le8/l;Landroidx/compose/ui/semantics/CollectionInfo;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v2, v7, v3, v8, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 167
    move-result-object v5

    .line 168
    .line 169
    .line 170
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 174
    .line 175
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 183
    return-object v0
.end method
