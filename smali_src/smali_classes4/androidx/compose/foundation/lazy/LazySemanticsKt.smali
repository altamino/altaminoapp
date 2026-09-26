.class public final Landroidx/compose/foundation/lazy/LazySemanticsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazySemantics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazySemantics.kt\nandroidx/compose/foundation/lazy/LazySemanticsKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,145:1\n83#2,3:146\n1057#3,6:149\n*S KotlinDebug\n*F\n+ 1 LazySemantics.kt\nandroidx/compose/foundation/lazy/LazySemanticsKt\n*L\n48#1:146,3\n48#1:149,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/o0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyListItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListState;
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
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

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
    move/from16 v4, p4

    .line 11
    .line 12
    move-object/from16 v8, p7

    .line 13
    .line 14
    const-string v5, "<this>"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v5, "itemProvider"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    const-string v5, "state"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    const-string v5, "coroutineScope"

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const v5, -0x67003725

    .line 36
    .line 37
    .line 38
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 39
    const/4 v5, 0x5

    .line 40
    .line 41
    new-array v6, v5, [Ljava/lang/Object;

    .line 42
    const/4 v9, 0x0

    .line 43
    .line 44
    aput-object v1, v6, v9

    .line 45
    const/4 v10, 0x1

    .line 46
    .line 47
    aput-object v2, v6, v10

    .line 48
    const/4 v7, 0x2

    .line 49
    .line 50
    .line 51
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v11

    .line 53
    .line 54
    aput-object v11, v6, v7

    .line 55
    const/4 v7, 0x3

    .line 56
    .line 57
    .line 58
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    move-result-object v11

    .line 60
    .line 61
    aput-object v11, v6, v7

    .line 62
    const/4 v7, 0x4

    .line 63
    .line 64
    .line 65
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    move-result-object v11

    .line 67
    .line 68
    aput-object v11, v6, v7

    .line 69
    .line 70
    .line 71
    const v7, -0x21de6e89

    .line 72
    .line 73
    .line 74
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 75
    move v7, v9

    .line 76
    move v11, v7

    .line 77
    .line 78
    :goto_0
    if-ge v7, v5, :cond_0

    .line 79
    .line 80
    aget-object v12, v6, v7

    .line 81
    .line 82
    .line 83
    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 84
    move-result v12

    .line 85
    or-int/2addr v11, v12

    .line 86
    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    if-nez v11, :cond_1

    .line 95
    .line 96
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    if-ne v5, v6, :cond_6

    .line 103
    .line 104
    :cond_1
    new-instance v5, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1;

    .line 105
    .line 106
    .line 107
    invoke-direct {v5, v1}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    .line 108
    .line 109
    new-instance v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 110
    .line 111
    new-instance v7, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1;

    .line 112
    .line 113
    .line 114
    invoke-direct {v7, v2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 115
    .line 116
    new-instance v11, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2;

    .line 117
    .line 118
    .line 119
    invoke-direct {v11, v2, v1}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    .line 120
    .line 121
    move/from16 v1, p5

    .line 122
    .line 123
    .line 124
    invoke-direct {v6, v7, v11, v1}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Le8/a;Le8/a;Z)V

    .line 125
    const/4 v11, 0x0

    .line 126
    .line 127
    if-eqz p6, :cond_2

    .line 128
    .line 129
    new-instance v1, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollByAction$1;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v4, v3, v2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollByAction$1;-><init>(ZLkotlinx/coroutines/o0;Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 133
    move-object v7, v1

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move-object v7, v11

    .line 136
    .line 137
    :goto_1
    if-eqz p6, :cond_3

    .line 138
    .line 139
    new-instance v1, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/o0;)V

    .line 143
    move-object v12, v1

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move-object v12, v11

    .line 146
    .line 147
    :goto_2
    new-instance v13, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 148
    const/4 v1, -0x1

    .line 149
    .line 150
    if-eqz v4, :cond_4

    .line 151
    move v2, v1

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    move v2, v10

    .line 154
    .line 155
    :goto_3
    if-eqz v4, :cond_5

    .line 156
    move v1, v10

    .line 157
    .line 158
    .line 159
    :cond_5
    invoke-direct {v13, v2, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    .line 160
    .line 161
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 162
    .line 163
    new-instance v15, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$1;

    .line 164
    move-object v1, v15

    .line 165
    move-object v2, v5

    .line 166
    .line 167
    move/from16 v3, p4

    .line 168
    move-object v4, v6

    .line 169
    move-object v5, v7

    .line 170
    move-object v6, v12

    .line 171
    move-object v7, v13

    .line 172
    .line 173
    .line 174
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$1;-><init>(Le8/l;ZLandroidx/compose/ui/semantics/ScrollAxisRange;Le8/p;Le8/l;Landroidx/compose/ui/semantics/CollectionInfo;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v14, v9, v15, v10, v11}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 178
    move-result-object v5

    .line 179
    .line 180
    .line 181
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_6
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 185
    .line 186
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 187
    .line 188
    .line 189
    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    .line 193
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 194
    return-object v0
.end method
