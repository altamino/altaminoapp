.class public final Landroidx/compose/material/ListItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ListItemKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,429:1\n75#2:430\n76#2,11:432\n89#2:459\n75#2:460\n76#2,11:462\n89#2:489\n76#3:431\n76#3:461\n460#4,16:443\n460#4,16:473\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ListItemKt\n*L\n353#1:430\n353#1:432,11\n353#1:459\n395#1:460\n395#1:462,11\n395#1:489\n353#1:431\n395#1:461\n353#1:443,16\n395#1:473,16\n*E\n"
.end annotation


# direct methods
.method private static final a(Ljava/util/List;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x61395931

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p3

    .line 8
    .line 9
    and-int/lit8 v0, p5, 0x2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 14
    :cond_0
    move-object v2, p1

    .line 15
    .line 16
    new-instance p1, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    shr-int/lit8 v0, p4, 0x6

    .line 22
    .line 23
    and-int/lit8 v0, v0, 0xe

    .line 24
    .line 25
    and-int/lit8 v1, p4, 0x70

    .line 26
    or-int/2addr v0, v1

    .line 27
    .line 28
    .line 29
    const v1, -0x4ee9b9da

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 63
    .line 64
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 72
    move-result-object v7

    .line 73
    .line 74
    shl-int/lit8 v0, v0, 0x9

    .line 75
    .line 76
    and-int/lit16 v0, v0, 0x1c00

    .line 77
    .line 78
    or-int/lit8 v0, v0, 0x6

    .line 79
    .line 80
    .line 81
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 82
    move-result-object v8

    .line 83
    .line 84
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 85
    .line 86
    if-nez v8, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->e()V

    .line 93
    .line 94
    .line 95
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 96
    move-result v8

    .line 97
    .line 98
    if-eqz v8, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->c()V

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->L()V

    .line 109
    .line 110
    .line 111
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 116
    move-result-object v8

    .line 117
    .line 118
    .line 119
    invoke-static {v6, p1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-static {v6, v1, p1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-static {v6, v3, p1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-static {v6, v4, p1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->o()V

    .line 144
    .line 145
    .line 146
    invoke-static {p3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    shr-int/lit8 v1, v0, 0x3

    .line 154
    .line 155
    and-int/lit8 v1, v1, 0x70

    .line 156
    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    invoke-interface {v7, p1, p3, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const p1, 0x7ab4aae9

    .line 166
    .line 167
    .line 168
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 169
    .line 170
    shr-int/lit8 p1, v0, 0x9

    .line 171
    .line 172
    and-int/lit8 p1, p1, 0xe

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, p3, p1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 183
    .line 184
    .line 185
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->d()V

    .line 186
    .line 187
    .line 188
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 189
    .line 190
    .line 191
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    if-nez p1, :cond_3

    .line 195
    goto :goto_1

    .line 196
    .line 197
    :cond_3
    new-instance p3, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$2;

    .line 198
    move-object v0, p3

    .line 199
    move-object v1, p0

    .line 200
    move-object v3, p2

    .line 201
    move v4, p4

    .line 202
    move v5, p5

    .line 203
    .line 204
    .line 205
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$2;-><init>(Ljava/util/List;Landroidx/compose/ui/Modifier;Le8/p;II)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 209
    :goto_1
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Le8/p;Le8/p;ZLe8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;Z",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p6

    .line 3
    .line 4
    move/from16 v8, p8

    .line 5
    .line 6
    const-string/jumbo v0, "text"

    .line 7
    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x1ae08b49

    .line 13
    .line 14
    move-object/from16 v1, p7

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    and-int/lit8 v1, p9, 0x1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    or-int/lit8 v2, v8, 0x6

    .line 25
    move v3, v2

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v2, v8, 0xe

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    move-object/from16 v2, p0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    const/4 v3, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x2

    .line 44
    :goto_0
    or-int/2addr v3, v8

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    move-object/from16 v2, p0

    .line 48
    move v3, v8

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v4, p9, 0x2

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    or-int/lit8 v3, v3, 0x30

    .line 55
    .line 56
    :cond_3
    move-object/from16 v5, p1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    and-int/lit8 v5, v8, 0x70

    .line 60
    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    move-object/from16 v5, p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v6

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    const/16 v6, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    const/16 v6, 0x10

    .line 75
    :goto_2
    or-int/2addr v3, v6

    .line 76
    .line 77
    :goto_3
    and-int/lit8 v6, p9, 0x4

    .line 78
    .line 79
    if-eqz v6, :cond_7

    .line 80
    .line 81
    or-int/lit16 v3, v3, 0x180

    .line 82
    .line 83
    :cond_6
    move-object/from16 v9, p2

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_7
    and-int/lit16 v9, v8, 0x380

    .line 87
    .line 88
    if-nez v9, :cond_6

    .line 89
    .line 90
    move-object/from16 v9, p2

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 94
    move-result v10

    .line 95
    .line 96
    if-eqz v10, :cond_8

    .line 97
    .line 98
    const/16 v10, 0x100

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_8
    const/16 v10, 0x80

    .line 102
    :goto_4
    or-int/2addr v3, v10

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v10, p9, 0x8

    .line 105
    .line 106
    if-eqz v10, :cond_a

    .line 107
    .line 108
    or-int/lit16 v3, v3, 0xc00

    .line 109
    .line 110
    :cond_9
    move/from16 v11, p3

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v11, v8, 0x1c00

    .line 114
    .line 115
    if-nez v11, :cond_9

    .line 116
    .line 117
    move/from16 v11, p3

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 121
    move-result v12

    .line 122
    .line 123
    if-eqz v12, :cond_b

    .line 124
    .line 125
    const/16 v12, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_b
    const/16 v12, 0x400

    .line 129
    :goto_6
    or-int/2addr v3, v12

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v12, p9, 0x10

    .line 132
    .line 133
    if-eqz v12, :cond_d

    .line 134
    .line 135
    or-int/lit16 v3, v3, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v13, p4

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_d
    const v13, 0xe000

    .line 142
    and-int/2addr v13, v8

    .line 143
    .line 144
    if-nez v13, :cond_c

    .line 145
    .line 146
    move-object/from16 v13, p4

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 150
    move-result v14

    .line 151
    .line 152
    if-eqz v14, :cond_e

    .line 153
    .line 154
    const/16 v14, 0x4000

    .line 155
    goto :goto_8

    .line 156
    .line 157
    :cond_e
    const/16 v14, 0x2000

    .line 158
    :goto_8
    or-int/2addr v3, v14

    .line 159
    .line 160
    :goto_9
    and-int/lit8 v14, p9, 0x20

    .line 161
    .line 162
    if-eqz v14, :cond_10

    .line 163
    .line 164
    const/high16 v15, 0x30000

    .line 165
    or-int/2addr v3, v15

    .line 166
    .line 167
    :cond_f
    move-object/from16 v15, p5

    .line 168
    goto :goto_b

    .line 169
    .line 170
    :cond_10
    const/high16 v15, 0x70000

    .line 171
    and-int/2addr v15, v8

    .line 172
    .line 173
    if-nez v15, :cond_f

    .line 174
    .line 175
    move-object/from16 v15, p5

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 179
    move-result v16

    .line 180
    .line 181
    if-eqz v16, :cond_11

    .line 182
    .line 183
    const/high16 v16, 0x20000

    .line 184
    goto :goto_a

    .line 185
    .line 186
    :cond_11
    const/high16 v16, 0x10000

    .line 187
    .line 188
    :goto_a
    or-int v3, v3, v16

    .line 189
    .line 190
    :goto_b
    and-int/lit8 v16, p9, 0x40

    .line 191
    .line 192
    const/high16 v17, 0x180000

    .line 193
    .line 194
    if-eqz v16, :cond_12

    .line 195
    .line 196
    or-int v3, v3, v17

    .line 197
    goto :goto_d

    .line 198
    .line 199
    :cond_12
    const/high16 v16, 0x380000

    .line 200
    .line 201
    and-int v16, v8, v16

    .line 202
    .line 203
    if-nez v16, :cond_14

    .line 204
    .line 205
    .line 206
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 207
    move-result v16

    .line 208
    .line 209
    if-eqz v16, :cond_13

    .line 210
    .line 211
    const/high16 v16, 0x100000

    .line 212
    goto :goto_c

    .line 213
    .line 214
    :cond_13
    const/high16 v16, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v3, v3, v16

    .line 217
    .line 218
    .line 219
    :cond_14
    :goto_d
    const v16, 0x2db6db

    .line 220
    .line 221
    and-int v2, v3, v16

    .line 222
    .line 223
    .line 224
    const v5, 0x92492

    .line 225
    .line 226
    if-ne v2, v5, :cond_16

    .line 227
    .line 228
    .line 229
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 230
    move-result v2

    .line 231
    .line 232
    if-nez v2, :cond_15

    .line 233
    goto :goto_e

    .line 234
    .line 235
    .line 236
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 237
    .line 238
    move-object/from16 v1, p0

    .line 239
    .line 240
    move-object/from16 v2, p1

    .line 241
    move-object v3, v9

    .line 242
    move v4, v11

    .line 243
    move-object v5, v13

    .line 244
    move-object v6, v15

    .line 245
    .line 246
    goto/16 :goto_15

    .line 247
    .line 248
    :cond_16
    :goto_e
    if-eqz v1, :cond_17

    .line 249
    .line 250
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 251
    goto :goto_f

    .line 252
    .line 253
    :cond_17
    move-object/from16 v1, p0

    .line 254
    :goto_f
    const/4 v2, 0x0

    .line 255
    .line 256
    if-eqz v4, :cond_18

    .line 257
    move-object v4, v2

    .line 258
    goto :goto_10

    .line 259
    .line 260
    :cond_18
    move-object/from16 v4, p1

    .line 261
    .line 262
    :goto_10
    if-eqz v6, :cond_19

    .line 263
    move-object v5, v2

    .line 264
    goto :goto_11

    .line 265
    :cond_19
    move-object v5, v9

    .line 266
    .line 267
    :goto_11
    if-eqz v10, :cond_1a

    .line 268
    .line 269
    const/16 v19, 0x1

    .line 270
    goto :goto_12

    .line 271
    .line 272
    :cond_1a
    move/from16 v19, v11

    .line 273
    .line 274
    :goto_12
    if-eqz v12, :cond_1b

    .line 275
    move-object v13, v2

    .line 276
    .line 277
    :cond_1b
    if-eqz v14, :cond_1c

    .line 278
    goto :goto_13

    .line 279
    :cond_1c
    move-object v2, v15

    .line 280
    .line 281
    :goto_13
    sget-object v9, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 282
    const/4 v10, 0x6

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v0, v10}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 286
    move-result-object v9

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->g()Landroidx/compose/ui/text/TextStyle;

    .line 290
    move-result-object v11

    .line 291
    .line 292
    sget-object v12, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    .line 296
    move-result v14

    .line 297
    .line 298
    .line 299
    invoke-static {v11, v14, v7}, Landroidx/compose/material/ListItemKt;->f(Landroidx/compose/ui/text/TextStyle;FLe8/p;)Le8/p;

    .line 300
    move-result-object v14

    .line 301
    .line 302
    .line 303
    invoke-static {v14}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->b()Landroidx/compose/ui/text/TextStyle;

    .line 307
    move-result-object v11

    .line 308
    .line 309
    .line 310
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 311
    move-result v15

    .line 312
    .line 313
    .line 314
    invoke-static {v11, v15, v5}, Landroidx/compose/material/ListItemKt;->f(Landroidx/compose/ui/text/TextStyle;FLe8/p;)Le8/p;

    .line 315
    move-result-object v15

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->f()Landroidx/compose/ui/text/TextStyle;

    .line 319
    move-result-object v11

    .line 320
    .line 321
    .line 322
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    .line 323
    move-result v6

    .line 324
    .line 325
    .line 326
    invoke-static {v11, v6, v13}, Landroidx/compose/material/ListItemKt;->f(Landroidx/compose/ui/text/TextStyle;FLe8/p;)Le8/p;

    .line 327
    move-result-object v6

    .line 328
    .line 329
    .line 330
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->d()Landroidx/compose/ui/text/TextStyle;

    .line 331
    move-result-object v9

    .line 332
    .line 333
    .line 334
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    .line 335
    move-result v10

    .line 336
    .line 337
    .line 338
    invoke-static {v9, v10, v2}, Landroidx/compose/material/ListItemKt;->f(Landroidx/compose/ui/text/TextStyle;FLe8/p;)Le8/p;

    .line 339
    move-result-object v16

    .line 340
    .line 341
    sget-object v9, Landroidx/compose/material/ListItemKt$ListItem$semanticsModifier$1;->INSTANCE:Landroidx/compose/material/ListItemKt$ListItem$semanticsModifier$1;

    .line 342
    const/4 v10, 0x1

    .line 343
    .line 344
    .line 345
    invoke-static {v1, v10, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 346
    move-result-object v10

    .line 347
    .line 348
    if-nez v15, :cond_1d

    .line 349
    .line 350
    if-nez v6, :cond_1d

    .line 351
    .line 352
    .line 353
    const v6, -0xc88a083

    .line 354
    .line 355
    .line 356
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 357
    .line 358
    sget-object v9, Landroidx/compose/material/OneLine;->INSTANCE:Landroidx/compose/material/OneLine;

    .line 359
    .line 360
    and-int/lit8 v3, v3, 0x70

    .line 361
    .line 362
    or-int/lit16 v15, v3, 0x6000

    .line 363
    const/4 v3, 0x0

    .line 364
    move-object v11, v4

    .line 365
    move-object v12, v14

    .line 366
    .line 367
    move-object/from16 v20, v13

    .line 368
    .line 369
    move-object/from16 v13, v16

    .line 370
    move-object v14, v0

    .line 371
    .line 372
    move/from16 v16, v3

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {v9 .. v16}, Landroidx/compose/material/OneLine;->a(Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 379
    goto :goto_14

    .line 380
    .line 381
    :cond_1d
    move-object/from16 v20, v13

    .line 382
    .line 383
    if-nez v6, :cond_1e

    .line 384
    .line 385
    if-nez v19, :cond_1f

    .line 386
    .line 387
    :cond_1e
    if-nez v15, :cond_20

    .line 388
    .line 389
    .line 390
    :cond_1f
    const v9, -0xc889fbe

    .line 391
    .line 392
    .line 393
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 394
    .line 395
    sget-object v9, Landroidx/compose/material/TwoLine;->INSTANCE:Landroidx/compose/material/TwoLine;

    .line 396
    .line 397
    and-int/lit8 v3, v3, 0x70

    .line 398
    .line 399
    or-int v17, v3, v17

    .line 400
    .line 401
    const/16 v18, 0x0

    .line 402
    move-object v11, v4

    .line 403
    move-object v12, v14

    .line 404
    move-object v13, v15

    .line 405
    move-object v14, v6

    .line 406
    .line 407
    move-object/from16 v15, v16

    .line 408
    .line 409
    move-object/from16 v16, v0

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {v9 .. v18}, Landroidx/compose/material/TwoLine;->a(Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 416
    goto :goto_14

    .line 417
    .line 418
    .line 419
    :cond_20
    const v9, -0xc889ee8

    .line 420
    .line 421
    .line 422
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 423
    .line 424
    sget-object v9, Landroidx/compose/material/ThreeLine;->INSTANCE:Landroidx/compose/material/ThreeLine;

    .line 425
    .line 426
    and-int/lit8 v3, v3, 0x70

    .line 427
    .line 428
    or-int v17, v3, v17

    .line 429
    .line 430
    const/16 v18, 0x0

    .line 431
    move-object v11, v4

    .line 432
    move-object v12, v14

    .line 433
    move-object v13, v15

    .line 434
    move-object v14, v6

    .line 435
    .line 436
    move-object/from16 v15, v16

    .line 437
    .line 438
    move-object/from16 v16, v0

    .line 439
    .line 440
    .line 441
    invoke-virtual/range {v9 .. v18}, Landroidx/compose/material/ThreeLine;->a(Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 442
    .line 443
    .line 444
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 445
    :goto_14
    move-object v6, v2

    .line 446
    move-object v2, v4

    .line 447
    move-object v3, v5

    .line 448
    .line 449
    move/from16 v4, v19

    .line 450
    .line 451
    move-object/from16 v5, v20

    .line 452
    .line 453
    .line 454
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 455
    move-result-object v10

    .line 456
    .line 457
    if-nez v10, :cond_21

    .line 458
    goto :goto_16

    .line 459
    .line 460
    :cond_21
    new-instance v11, Landroidx/compose/material/ListItemKt$ListItem$1;

    .line 461
    move-object v0, v11

    .line 462
    .line 463
    move-object/from16 v7, p6

    .line 464
    .line 465
    move/from16 v8, p8

    .line 466
    .line 467
    move/from16 v9, p9

    .line 468
    .line 469
    .line 470
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/ListItemKt$ListItem$1;-><init>(Landroidx/compose/ui/Modifier;Le8/p;Le8/p;ZLe8/p;Le8/p;Le8/p;II)V

    .line 471
    .line 472
    .line 473
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 474
    :goto_16
    return-void
.end method

.method private static final c(FLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x3f57674d

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p3

    .line 8
    .line 9
    and-int/lit8 v0, p5, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    or-int/lit8 v0, p4, 0x6

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    and-int/lit8 v0, p4, 0xe

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, p4

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v0, p4

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v1, p5, 0x2

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    or-int/lit8 v0, v0, 0x30

    .line 37
    goto :goto_3

    .line 38
    .line 39
    :cond_3
    and-int/lit8 v2, p4, 0x70

    .line 40
    .line 41
    if-nez v2, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const/16 v2, 0x20

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_4
    const/16 v2, 0x10

    .line 53
    :goto_2
    or-int/2addr v0, v2

    .line 54
    .line 55
    :cond_5
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 56
    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    or-int/lit16 v0, v0, 0x180

    .line 60
    goto :goto_5

    .line 61
    .line 62
    :cond_6
    and-int/lit16 v2, p4, 0x380

    .line 63
    .line 64
    if-nez v2, :cond_8

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    const/16 v2, 0x100

    .line 73
    goto :goto_4

    .line 74
    .line 75
    :cond_7
    const/16 v2, 0x80

    .line 76
    :goto_4
    or-int/2addr v0, v2

    .line 77
    .line 78
    :cond_8
    :goto_5
    and-int/lit16 v2, v0, 0x2db

    .line 79
    .line 80
    const/16 v3, 0x92

    .line 81
    .line 82
    if-ne v2, v3, :cond_a

    .line 83
    .line 84
    .line 85
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-nez v2, :cond_9

    .line 89
    goto :goto_7

    .line 90
    .line 91
    .line 92
    :cond_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->g()V

    .line 93
    :goto_6
    move-object v3, p1

    .line 94
    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    .line 98
    .line 99
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 100
    .line 101
    :cond_b
    new-instance v1, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, p0}, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;-><init>(F)V

    .line 105
    .line 106
    shr-int/lit8 v2, v0, 0x6

    .line 107
    .line 108
    and-int/lit8 v2, v2, 0xe

    .line 109
    .line 110
    and-int/lit8 v0, v0, 0x70

    .line 111
    or-int/2addr v0, v2

    .line 112
    .line 113
    .line 114
    const v2, -0x4ee9b9da

    .line 115
    .line 116
    .line 117
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    .line 124
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    .line 134
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    .line 144
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 148
    .line 149
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 153
    move-result-object v6

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 157
    move-result-object v7

    .line 158
    .line 159
    shl-int/lit8 v0, v0, 0x9

    .line 160
    .line 161
    and-int/lit16 v0, v0, 0x1c00

    .line 162
    .line 163
    or-int/lit8 v0, v0, 0x6

    .line 164
    .line 165
    .line 166
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 167
    move-result-object v8

    .line 168
    .line 169
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 170
    .line 171
    if-nez v8, :cond_c

    .line 172
    .line 173
    .line 174
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 175
    .line 176
    .line 177
    :cond_c
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->e()V

    .line 178
    .line 179
    .line 180
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 181
    move-result v8

    .line 182
    .line 183
    if-eqz v8, :cond_d

    .line 184
    .line 185
    .line 186
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 187
    goto :goto_8

    .line 188
    .line 189
    .line 190
    :cond_d
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->c()V

    .line 191
    .line 192
    .line 193
    :goto_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->L()V

    .line 194
    .line 195
    .line 196
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 201
    move-result-object v8

    .line 202
    .line 203
    .line 204
    invoke-static {v6, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    .line 211
    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 215
    move-result-object v1

    .line 216
    .line 217
    .line 218
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->o()V

    .line 229
    .line 230
    .line 231
    invoke-static {p3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    .line 235
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    shr-int/lit8 v2, v0, 0x3

    .line 239
    .line 240
    and-int/lit8 v2, v2, 0x70

    .line 241
    .line 242
    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v2

    .line 245
    .line 246
    .line 247
    invoke-interface {v7, v1, p3, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    const v1, 0x7ab4aae9

    .line 251
    .line 252
    .line 253
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 254
    .line 255
    shr-int/lit8 v0, v0, 0x9

    .line 256
    .line 257
    and-int/lit8 v0, v0, 0xe

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    .line 264
    invoke-interface {p2, p3, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 268
    .line 269
    .line 270
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->d()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 274
    .line 275
    goto/16 :goto_6

    .line 276
    .line 277
    .line 278
    :goto_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 279
    move-result-object p1

    .line 280
    .line 281
    if-nez p1, :cond_e

    .line 282
    goto :goto_a

    .line 283
    .line 284
    :cond_e
    new-instance p3, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$2;

    .line 285
    move-object v1, p3

    .line 286
    move v2, p0

    .line 287
    move-object v4, p2

    .line 288
    move v5, p4

    .line 289
    move v6, p5

    .line 290
    .line 291
    .line 292
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$2;-><init>(FLandroidx/compose/ui/Modifier;Le8/p;II)V

    .line 293
    .line 294
    .line 295
    invoke-interface {p1, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 296
    :goto_a
    return-void
.end method

.method public static final synthetic d(Ljava/util/List;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ListItemKt;->a(Ljava/util/List;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 4
    return-void
.end method

.method public static final synthetic e(FLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ListItemKt;->c(FLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 4
    return-void
.end method

.method private static final f(Landroidx/compose/ui/text/TextStyle;FLe8/p;)Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextStyle;",
            "F",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)",
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p0, p2}, Landroidx/compose/material/ListItemKt$applyTextStyle$1;-><init>(FLandroidx/compose/ui/text/TextStyle;Le8/p;)V

    .line 10
    .line 11
    .line 12
    const p0, -0x317b7e5c

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
