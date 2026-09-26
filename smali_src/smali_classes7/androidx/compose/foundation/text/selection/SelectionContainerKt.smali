.class public final Landroidx/compose/foundation/text/selection/SelectionContainerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionContainer.kt\nandroidx/compose/foundation/text/selection/SelectionContainerKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,144:1\n25#2:145\n36#2:152\n25#2:159\n25#2:166\n1057#3,6:146\n1057#3,6:153\n1057#3,6:160\n1057#3,6:167\n76#4:173\n76#4:174\n76#4:175\n76#5:176\n102#5,2:177\n*S KotlinDebug\n*F\n+ 1 SelectionContainer.kt\nandroidx/compose/foundation/text/selection/SelectionContainerKt\n*L\n43#1:145\n47#1:152\n85#1:159\n86#1:166\n43#1:146,6\n47#1:153,6\n85#1:160,6\n86#1:167,6\n88#1:173\n89#1:174\n90#1:175\n43#1:176\n43#1:177,2\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
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
    const-string v0, "content"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x1407ec36

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    and-int/lit8 v0, p2, 0xe

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    or-int/2addr v0, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, p2

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v2, v0, 0xb

    .line 32
    .line 33
    if-ne v2, v1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 46
    .line 47
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    .line 59
    aput-object v2, v1, v3

    .line 60
    .line 61
    shl-int/lit8 v0, v0, 0x3

    .line 62
    .line 63
    and-int/lit8 v0, v0, 0x70

    .line 64
    .line 65
    or-int/lit8 v0, v0, 0x8

    .line 66
    .line 67
    .line 68
    invoke-static {v1, p0, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    if-nez p1, :cond_4

    .line 75
    goto :goto_4

    .line 76
    .line 77
    :cond_4
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$DisableSelection$1;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$DisableSelection$1;-><init>(Le8/p;I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 84
    :goto_4
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Le8/l;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 14
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/text/selection/Selection;",
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
    move-object v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move/from16 v11, p5

    .line 8
    .line 9
    const-string v0, "onSelectionChange"

    .line 10
    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v0, "children"

    .line 15
    .line 16
    .line 17
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7bdde603

    .line 21
    .line 22
    move-object/from16 v1, p4

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    and-int/lit8 v1, p6, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    or-int/lit8 v4, v11, 0x6

    .line 33
    move v5, v4

    .line 34
    move-object v4, p0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    and-int/lit8 v4, v11, 0xe

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    move-object v4, p0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 44
    move-result v5

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    const/4 v5, 0x4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v5, 0x2

    .line 50
    :goto_0
    or-int/2addr v5, v11

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v4, p0

    .line 53
    move v5, v11

    .line 54
    .line 55
    :goto_1
    and-int/lit8 v6, p6, 0x2

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    or-int/lit8 v5, v5, 0x30

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_3
    and-int/lit8 v6, v11, 0x70

    .line 63
    .line 64
    if-nez v6, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    const/16 v6, 0x20

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_4
    const/16 v6, 0x10

    .line 76
    :goto_2
    or-int/2addr v5, v6

    .line 77
    .line 78
    :cond_5
    :goto_3
    and-int/lit8 v6, p6, 0x4

    .line 79
    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    or-int/lit16 v5, v5, 0x180

    .line 83
    goto :goto_5

    .line 84
    .line 85
    :cond_6
    and-int/lit16 v6, v11, 0x380

    .line 86
    .line 87
    if-nez v6, :cond_8

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 91
    move-result v6

    .line 92
    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    const/16 v6, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_7
    const/16 v6, 0x80

    .line 99
    :goto_4
    or-int/2addr v5, v6

    .line 100
    .line 101
    :cond_8
    :goto_5
    and-int/lit8 v6, p6, 0x8

    .line 102
    .line 103
    if-eqz v6, :cond_a

    .line 104
    .line 105
    or-int/lit16 v5, v5, 0xc00

    .line 106
    :cond_9
    :goto_6
    move v9, v5

    .line 107
    goto :goto_8

    .line 108
    .line 109
    :cond_a
    and-int/lit16 v6, v11, 0x1c00

    .line 110
    .line 111
    if-nez v6, :cond_9

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 115
    move-result v6

    .line 116
    .line 117
    if-eqz v6, :cond_b

    .line 118
    .line 119
    const/16 v6, 0x800

    .line 120
    goto :goto_7

    .line 121
    .line 122
    :cond_b
    const/16 v6, 0x400

    .line 123
    :goto_7
    or-int/2addr v5, v6

    .line 124
    goto :goto_6

    .line 125
    .line 126
    :goto_8
    and-int/lit16 v5, v9, 0x16db

    .line 127
    .line 128
    const/16 v6, 0x492

    .line 129
    .line 130
    if-ne v5, v6, :cond_d

    .line 131
    .line 132
    .line 133
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 134
    move-result v5

    .line 135
    .line 136
    if-nez v5, :cond_c

    .line 137
    goto :goto_9

    .line 138
    .line 139
    .line 140
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 141
    move-object v1, v4

    .line 142
    .line 143
    goto/16 :goto_b

    .line 144
    .line 145
    :cond_d
    :goto_9
    if-eqz v1, :cond_e

    .line 146
    .line 147
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 148
    goto :goto_a

    .line 149
    :cond_e
    move-object v1, v4

    .line 150
    .line 151
    .line 152
    :goto_a
    const v4, -0x1d58f75c

    .line 153
    .line 154
    .line 155
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 165
    move-result-object v7

    .line 166
    .line 167
    if-ne v5, v7, :cond_f

    .line 168
    .line 169
    new-instance v5, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 170
    .line 171
    .line 172
    invoke-direct {v5}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 179
    .line 180
    check-cast v5, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 187
    move-result-object v4

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 191
    move-result-object v6

    .line 192
    .line 193
    if-ne v4, v6, :cond_10

    .line 194
    .line 195
    new-instance v4, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 196
    .line 197
    .line 198
    invoke-direct {v4, v5}, Landroidx/compose/foundation/text/selection/SelectionManager;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 205
    move-object v12, v4

    .line 206
    .line 207
    check-cast v12, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 208
    .line 209
    .line 210
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->h()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 211
    move-result-object v4

    .line 212
    .line 213
    .line 214
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 215
    move-result-object v4

    .line 216
    .line 217
    check-cast v4, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v12, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->S(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 224
    move-result-object v4

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 228
    move-result-object v4

    .line 229
    .line 230
    check-cast v4, Landroidx/compose/ui/platform/ClipboardManager;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->L(Landroidx/compose/ui/platform/ClipboardManager;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->m()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 237
    move-result-object v4

    .line 238
    .line 239
    .line 240
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 241
    move-result-object v4

    .line 242
    .line 243
    check-cast v4, Landroidx/compose/ui/platform/TextToolbar;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v12, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->X(Landroidx/compose/ui/platform/TextToolbar;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v12, v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->U(Le8/l;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v12, p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->V(Landroidx/compose/foundation/text/selection/Selection;)V

    .line 253
    .line 254
    .line 255
    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->a()Z

    .line 256
    move-result v4

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->Y(Z)V

    .line 260
    .line 261
    new-instance v13, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;

    .line 262
    move-object v4, v13

    .line 263
    move-object v6, v1

    .line 264
    move-object v7, v12

    .line 265
    .line 266
    move-object/from16 v8, p3

    .line 267
    .line 268
    .line 269
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/SelectionManager;Le8/p;I)V

    .line 270
    .line 271
    .line 272
    const v4, -0x761226c

    .line 273
    const/4 v5, 0x1

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v4, v5, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 277
    move-result-object v4

    .line 278
    .line 279
    const/16 v5, 0x38

    .line 280
    .line 281
    .line 282
    invoke-static {v12, v4, v0, v5}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->a(Landroidx/compose/foundation/text/selection/SelectionManager;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 283
    .line 284
    new-instance v4, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$4;

    .line 285
    .line 286
    .line 287
    invoke-direct {v4, v12}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$4;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    .line 288
    .line 289
    const/16 v5, 0x8

    .line 290
    .line 291
    .line 292
    invoke-static {v12, v4, v0, v5}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 293
    .line 294
    .line 295
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 296
    move-result-object v7

    .line 297
    .line 298
    if-nez v7, :cond_11

    .line 299
    goto :goto_c

    .line 300
    .line 301
    :cond_11
    new-instance v8, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$5;

    .line 302
    move-object v0, v8

    .line 303
    move-object v2, p1

    .line 304
    .line 305
    move-object/from16 v3, p2

    .line 306
    .line 307
    move-object/from16 v4, p3

    .line 308
    .line 309
    move/from16 v5, p5

    .line 310
    .line 311
    move/from16 v6, p6

    .line 312
    .line 313
    .line 314
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Le8/l;Le8/p;II)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 318
    :goto_c
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "content"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x401acd50

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    and-int/lit8 v0, p4, 0x1

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    or-int/lit8 v2, p3, 0x6

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    and-int/lit8 v2, p3, 0xe

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    const/4 v2, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v1

    .line 34
    :goto_0
    or-int/2addr v2, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v2, p3

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v3, p4, 0x2

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    or-int/lit8 v2, v2, 0x30

    .line 43
    goto :goto_3

    .line 44
    .line 45
    :cond_3
    and-int/lit8 v3, p3, 0x70

    .line 46
    .line 47
    if-nez v3, :cond_5

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    const/16 v3, 0x20

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_4
    const/16 v3, 0x10

    .line 59
    :goto_2
    or-int/2addr v2, v3

    .line 60
    .line 61
    :cond_5
    :goto_3
    and-int/lit8 v3, v2, 0x5b

    .line 62
    .line 63
    const/16 v4, 0x12

    .line 64
    .line 65
    if-ne v3, v4, :cond_7

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-nez v3, :cond_6

    .line 72
    goto :goto_4

    .line 73
    .line 74
    .line 75
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 76
    goto :goto_5

    .line 77
    .line 78
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 79
    .line 80
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    .line 83
    :cond_8
    const v0, -0x1d58f75c

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    if-ne v0, v4, :cond_9

    .line 99
    const/4 v0, 0x0

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 110
    .line 111
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->d(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/text/selection/Selection;

    .line 115
    move-result-object v4

    .line 116
    .line 117
    .line 118
    const v1, 0x44faf204

    .line 119
    .line 120
    .line 121
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 125
    move-result v1

    .line 126
    .line 127
    .line 128
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    if-nez v1, :cond_a

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    if-ne v5, v1, :cond_b

    .line 138
    .line 139
    :cond_a
    new-instance v5, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$1$1;

    .line 140
    .line 141
    .line 142
    invoke-direct {v5, v0}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_b
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 149
    move-object v3, v5

    .line 150
    .line 151
    check-cast v3, Le8/l;

    .line 152
    .line 153
    and-int/lit8 v0, v2, 0xe

    .line 154
    .line 155
    shl-int/lit8 v1, v2, 0x6

    .line 156
    .line 157
    and-int/lit16 v1, v1, 0x1c00

    .line 158
    .line 159
    or-int v6, v0, v1

    .line 160
    const/4 v7, 0x0

    .line 161
    move-object v1, p0

    .line 162
    move-object v2, v4

    .line 163
    move-object v4, p1

    .line 164
    move-object v5, p2

    .line 165
    .line 166
    .line 167
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Le8/l;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 168
    .line 169
    .line 170
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    if-nez p2, :cond_c

    .line 174
    goto :goto_6

    .line 175
    .line 176
    :cond_c
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$2;

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;II)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 183
    :goto_6
    return-void
.end method

.method private static final d(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;)",
            "Landroidx/compose/foundation/text/selection/Selection;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/foundation/text/selection/Selection;

    .line 7
    return-object p0
.end method

.method private static final e(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ">;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionContainerKt;->e(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/text/selection/Selection;)V

    .line 4
    return-void
.end method
