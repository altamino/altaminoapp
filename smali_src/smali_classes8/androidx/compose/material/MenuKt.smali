.class public final Landroidx/compose/material/MenuKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuKt\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,298:1\n923#2,4:299\n844#2,5:303\n923#2,4:308\n844#2,5:312\n67#3,3:317\n66#3:320\n25#3:327\n460#3,13:353\n473#3,3:367\n1057#4,6:321\n1057#4,6:328\n75#5,6:334\n81#5:366\n85#5:371\n75#6:340\n76#6,11:342\n89#6:370\n76#7:341\n76#8:372\n76#8:373\n155#9:374\n155#9:375\n155#9:376\n155#9:377\n155#9:378\n155#9:379\n155#9:380\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuKt\n*L\n71#1:299,4\n71#1:303,5\n97#1:308,4\n97#1:312,5\n117#1:317,3\n117#1:320\n141#1:327\n145#1:353,13\n145#1:367,3\n117#1:321,6\n141#1:328,6\n145#1:334,6\n145#1:366\n145#1:371\n145#1:340\n145#1:342,11\n145#1:370\n145#1:341\n71#1:372\n97#1:373\n187#1:374\n188#1:375\n189#1:376\n190#1:377\n191#1:378\n192#1:379\n193#1:380\n*E\n"
.end annotation


# static fields
.field private static final DropdownMenuItemDefaultMaxWidth:F

.field private static final DropdownMenuItemDefaultMinHeight:F

.field private static final DropdownMenuItemDefaultMinWidth:F

.field private static final DropdownMenuItemHorizontalPadding:F

.field private static final DropdownMenuVerticalPadding:F

.field public static final InTransitionDuration:I = 0x78

.field private static final MenuElevation:F

.field private static final MenuVerticalMargin:F

.field public static final OutTransitionDuration:I = 0x4b


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v1

    .line 8
    .line 9
    sput v1, Landroidx/compose/material/MenuKt;->MenuElevation:F

    .line 10
    .line 11
    const/16 v1, 0x30

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v2

    .line 17
    .line 18
    sput v2, Landroidx/compose/material/MenuKt;->MenuVerticalMargin:F

    .line 19
    .line 20
    const/16 v2, 0x10

    .line 21
    int-to-float v2, v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 25
    move-result v2

    .line 26
    .line 27
    sput v2, Landroidx/compose/material/MenuKt;->DropdownMenuItemHorizontalPadding:F

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 31
    move-result v0

    .line 32
    .line 33
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuVerticalPadding:F

    .line 34
    .line 35
    const/16 v0, 0x70

    .line 36
    int-to-float v0, v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 40
    move-result v0

    .line 41
    .line 42
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinWidth:F

    .line 43
    .line 44
    const/16 v0, 0x118

    .line 45
    int-to-float v0, v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 49
    move-result v0

    .line 50
    .line 51
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMaxWidth:F

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 55
    move-result v0

    .line 56
    .line 57
    sput v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinHeight:F

    .line 58
    return-void
.end method

.method public static final a(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 20
    .param p0    # Landroidx/compose/animation/core/MutableTransitionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/MutableState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/q;
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
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v4, p3

    .line 7
    .line 8
    move/from16 v5, p5

    .line 9
    .line 10
    const-string v0, "expandedStates"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "transformOriginState"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "content"

    .line 21
    .line 22
    .line 23
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x45658ecd

    .line 27
    .line 28
    move-object/from16 v3, p4

    .line 29
    .line 30
    .line 31
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    and-int/lit8 v3, p6, 0x1

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    or-int/lit8 v3, v5, 0x6

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    and-int/lit8 v3, v5, 0xe

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    const/4 v3, 0x4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x2

    .line 53
    :goto_0
    or-int/2addr v3, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v3, v5

    .line 56
    .line 57
    :goto_1
    and-int/lit8 v6, p6, 0x2

    .line 58
    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    or-int/lit8 v3, v3, 0x30

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_3
    and-int/lit8 v6, v5, 0x70

    .line 65
    .line 66
    if-nez v6, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 70
    move-result v6

    .line 71
    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    const/16 v6, 0x20

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_4
    const/16 v6, 0x10

    .line 78
    :goto_2
    or-int/2addr v3, v6

    .line 79
    .line 80
    :cond_5
    :goto_3
    and-int/lit8 v6, p6, 0x4

    .line 81
    .line 82
    if-eqz v6, :cond_7

    .line 83
    .line 84
    or-int/lit16 v3, v3, 0x180

    .line 85
    .line 86
    :cond_6
    move-object/from16 v7, p2

    .line 87
    goto :goto_5

    .line 88
    .line 89
    :cond_7
    and-int/lit16 v7, v5, 0x380

    .line 90
    .line 91
    if-nez v7, :cond_6

    .line 92
    .line 93
    move-object/from16 v7, p2

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 97
    move-result v8

    .line 98
    .line 99
    if-eqz v8, :cond_8

    .line 100
    .line 101
    const/16 v8, 0x100

    .line 102
    goto :goto_4

    .line 103
    .line 104
    :cond_8
    const/16 v8, 0x80

    .line 105
    :goto_4
    or-int/2addr v3, v8

    .line 106
    .line 107
    :goto_5
    and-int/lit8 v8, p6, 0x8

    .line 108
    .line 109
    if-eqz v8, :cond_9

    .line 110
    .line 111
    or-int/lit16 v3, v3, 0xc00

    .line 112
    goto :goto_7

    .line 113
    .line 114
    :cond_9
    and-int/lit16 v8, v5, 0x1c00

    .line 115
    .line 116
    if-nez v8, :cond_b

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 120
    move-result v8

    .line 121
    .line 122
    if-eqz v8, :cond_a

    .line 123
    .line 124
    const/16 v8, 0x800

    .line 125
    goto :goto_6

    .line 126
    .line 127
    :cond_a
    const/16 v8, 0x400

    .line 128
    :goto_6
    or-int/2addr v3, v8

    .line 129
    .line 130
    :cond_b
    :goto_7
    and-int/lit16 v8, v3, 0x16db

    .line 131
    .line 132
    const/16 v9, 0x492

    .line 133
    .line 134
    if-ne v8, v9, :cond_d

    .line 135
    .line 136
    .line 137
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 138
    move-result v8

    .line 139
    .line 140
    if-nez v8, :cond_c

    .line 141
    goto :goto_8

    .line 142
    .line 143
    .line 144
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 145
    move-object v3, v7

    .line 146
    .line 147
    goto/16 :goto_d

    .line 148
    .line 149
    :cond_d
    :goto_8
    if-eqz v6, :cond_e

    .line 150
    .line 151
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 152
    move-object v15, v6

    .line 153
    goto :goto_9

    .line 154
    :cond_e
    move-object v15, v7

    .line 155
    .line 156
    :goto_9
    sget v6, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    .line 157
    .line 158
    or-int/lit8 v6, v6, 0x30

    .line 159
    .line 160
    and-int/lit8 v7, v3, 0xe

    .line 161
    or-int/2addr v6, v7

    .line 162
    .line 163
    const-string v7, "DropDownMenu"

    .line 164
    const/4 v14, 0x0

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v7, v0, v6, v14}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 168
    move-result-object v16

    .line 169
    .line 170
    sget-object v6, Landroidx/compose/material/MenuKt$DropdownMenuContent$scale$2;->INSTANCE:Landroidx/compose/material/MenuKt$DropdownMenuContent$scale$2;

    .line 171
    .line 172
    .line 173
    const v13, 0x5370a61d

    .line 174
    .line 175
    .line 176
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 177
    .line 178
    const-string v11, "FloatAnimation"

    .line 179
    .line 180
    sget-object v17, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 181
    .line 182
    .line 183
    invoke-static/range {v17 .. v17}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 184
    move-result-object v10

    .line 185
    .line 186
    .line 187
    const v12, 0x6e220c08

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 194
    move-result-object v7

    .line 195
    .line 196
    check-cast v7, Ljava/lang/Boolean;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    move-result v7

    .line 201
    .line 202
    .line 203
    const v8, -0x74c14e17

    .line 204
    .line 205
    .line 206
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 207
    .line 208
    .line 209
    const v9, 0x3f4ccccd    # 0.8f

    .line 210
    .line 211
    const/high16 v18, 0x3f800000    # 1.0f

    .line 212
    .line 213
    if-eqz v7, :cond_f

    .line 214
    .line 215
    move/from16 v7, v18

    .line 216
    goto :goto_a

    .line 217
    :cond_f
    move v7, v9

    .line 218
    .line 219
    .line 220
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 221
    .line 222
    .line 223
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 224
    move-result-object v7

    .line 225
    .line 226
    .line 227
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 228
    move-result-object v19

    .line 229
    .line 230
    check-cast v19, Ljava/lang/Boolean;

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    move-result v19

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 238
    .line 239
    if-eqz v19, :cond_10

    .line 240
    .line 241
    move/from16 v9, v18

    .line 242
    .line 243
    .line 244
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 245
    .line 246
    .line 247
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 248
    move-result-object v8

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 252
    move-result-object v9

    .line 253
    .line 254
    .line 255
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    move-result-object v12

    .line 257
    .line 258
    .line 259
    invoke-interface {v6, v9, v0, v12}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-result-object v6

    .line 261
    move-object v9, v6

    .line 262
    .line 263
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 264
    .line 265
    const/16 v19, 0x0

    .line 266
    .line 267
    move-object/from16 v6, v16

    .line 268
    .line 269
    .line 270
    const v14, 0x6e220c08

    .line 271
    move-object v12, v0

    .line 272
    move v14, v13

    .line 273
    .line 274
    move/from16 v13, v19

    .line 275
    .line 276
    .line 277
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 278
    move-result-object v13

    .line 279
    .line 280
    .line 281
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 282
    .line 283
    .line 284
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 285
    .line 286
    sget-object v6, Landroidx/compose/material/MenuKt$DropdownMenuContent$alpha$2;->INSTANCE:Landroidx/compose/material/MenuKt$DropdownMenuContent$alpha$2;

    .line 287
    .line 288
    .line 289
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 290
    .line 291
    const-string v11, "FloatAnimation"

    .line 292
    .line 293
    .line 294
    invoke-static/range {v17 .. v17}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 295
    move-result-object v10

    .line 296
    .line 297
    .line 298
    const v7, 0x6e220c08

    .line 299
    .line 300
    .line 301
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 305
    move-result-object v7

    .line 306
    .line 307
    check-cast v7, Ljava/lang/Boolean;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    move-result v7

    .line 312
    .line 313
    .line 314
    const v8, -0x5bdf3a03

    .line 315
    .line 316
    .line 317
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 318
    const/4 v9, 0x0

    .line 319
    .line 320
    if-eqz v7, :cond_11

    .line 321
    .line 322
    move/from16 v7, v18

    .line 323
    goto :goto_b

    .line 324
    :cond_11
    move v7, v9

    .line 325
    .line 326
    .line 327
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 328
    .line 329
    .line 330
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 331
    move-result-object v7

    .line 332
    .line 333
    .line 334
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 335
    move-result-object v12

    .line 336
    .line 337
    check-cast v12, Ljava/lang/Boolean;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 341
    move-result v12

    .line 342
    .line 343
    .line 344
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 345
    .line 346
    if-eqz v12, :cond_12

    .line 347
    goto :goto_c

    .line 348
    .line 349
    :cond_12
    move/from16 v18, v9

    .line 350
    .line 351
    .line 352
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 353
    .line 354
    .line 355
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 356
    move-result-object v8

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 360
    move-result-object v9

    .line 361
    const/4 v12, 0x0

    .line 362
    .line 363
    .line 364
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    move-result-object v12

    .line 366
    .line 367
    .line 368
    invoke-interface {v6, v9, v0, v12}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    move-result-object v6

    .line 370
    move-object v9, v6

    .line 371
    .line 372
    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 373
    .line 374
    move-object/from16 v6, v16

    .line 375
    move-object v12, v0

    .line 376
    move-object v14, v13

    .line 377
    .line 378
    move/from16 v13, v19

    .line 379
    .line 380
    .line 381
    invoke-static/range {v6 .. v13}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 382
    move-result-object v6

    .line 383
    .line 384
    .line 385
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 386
    .line 387
    .line 388
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 389
    .line 390
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 391
    .line 392
    .line 393
    const v8, 0x607fb4c4

    .line 394
    .line 395
    .line 396
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 400
    move-result v8

    .line 401
    .line 402
    .line 403
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 404
    move-result v9

    .line 405
    or-int/2addr v8, v9

    .line 406
    .line 407
    .line 408
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 409
    move-result v9

    .line 410
    or-int/2addr v8, v9

    .line 411
    .line 412
    .line 413
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 414
    move-result-object v9

    .line 415
    .line 416
    if-nez v8, :cond_13

    .line 417
    .line 418
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 422
    move-result-object v8

    .line 423
    .line 424
    if-ne v9, v8, :cond_14

    .line 425
    .line 426
    :cond_13
    new-instance v9, Landroidx/compose/material/MenuKt$DropdownMenuContent$1$1;

    .line 427
    .line 428
    .line 429
    invoke-direct {v9, v2, v14, v6}, Landroidx/compose/material/MenuKt$DropdownMenuContent$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 430
    .line 431
    .line 432
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 436
    .line 437
    check-cast v9, Le8/l;

    .line 438
    .line 439
    .line 440
    invoke-static {v7, v9}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 441
    move-result-object v6

    .line 442
    const/4 v7, 0x0

    .line 443
    .line 444
    const-wide/16 v8, 0x0

    .line 445
    .line 446
    const-wide/16 v10, 0x0

    .line 447
    .line 448
    sget v13, Landroidx/compose/material/MenuKt;->MenuElevation:F

    .line 449
    .line 450
    new-instance v14, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;

    .line 451
    .line 452
    .line 453
    invoke-direct {v14, v15, v4, v3}, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;-><init>(Landroidx/compose/ui/Modifier;Le8/q;I)V

    .line 454
    .line 455
    .line 456
    const v3, -0xe73c6b6

    .line 457
    const/4 v12, 0x1

    .line 458
    .line 459
    .line 460
    invoke-static {v0, v3, v12, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 461
    move-result-object v14

    .line 462
    .line 463
    const/high16 v16, 0x1b0000

    .line 464
    .line 465
    const/16 v17, 0x1e

    .line 466
    const/4 v3, 0x0

    .line 467
    move-object v12, v3

    .line 468
    move-object v3, v15

    .line 469
    move-object v15, v0

    .line 470
    .line 471
    .line 472
    invoke-static/range {v6 .. v17}, Landroidx/compose/material/CardKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 473
    .line 474
    .line 475
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 476
    move-result-object v7

    .line 477
    .line 478
    if-nez v7, :cond_15

    .line 479
    goto :goto_e

    .line 480
    .line 481
    :cond_15
    new-instance v8, Landroidx/compose/material/MenuKt$DropdownMenuContent$3;

    .line 482
    move-object v0, v8

    .line 483
    .line 484
    move-object/from16 v1, p0

    .line 485
    .line 486
    move-object/from16 v2, p1

    .line 487
    .line 488
    move-object/from16 v4, p3

    .line 489
    .line 490
    move/from16 v5, p5

    .line 491
    .line 492
    move/from16 v6, p6

    .line 493
    .line 494
    .line 495
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/MenuKt$DropdownMenuContent$3;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Le8/q;II)V

    .line 496
    .line 497
    .line 498
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 499
    :goto_e
    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final c(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
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
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final d(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
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
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
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
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v10, p5

    .line 5
    .line 6
    move/from16 v11, p7

    .line 7
    .line 8
    const-string v0, "onClick"

    .line 9
    .line 10
    .line 11
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x5319143

    .line 20
    .line 21
    move-object/from16 v1, p6

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v12

    .line 26
    .line 27
    and-int/lit8 v0, p8, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v11, 0x6

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    and-int/lit8 v0, v11, 0xe

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    :goto_0
    or-int/2addr v0, v11

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v11

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    or-int/lit8 v0, v0, 0x30

    .line 55
    .line 56
    :cond_3
    move-object/from16 v2, p1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    and-int/lit8 v2, v11, 0x70

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    move-object/from16 v2, p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    const/16 v3, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    const/16 v3, 0x10

    .line 75
    :goto_2
    or-int/2addr v0, v3

    .line 76
    .line 77
    :goto_3
    and-int/lit8 v3, p8, 0x4

    .line 78
    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x180

    .line 82
    .line 83
    :cond_6
    move/from16 v4, p2

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_7
    and-int/lit16 v4, v11, 0x380

    .line 87
    .line 88
    if-nez v4, :cond_6

    .line 89
    .line 90
    move/from16 v4, p2

    .line 91
    .line 92
    .line 93
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 94
    move-result v5

    .line 95
    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    const/16 v5, 0x100

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_8
    const/16 v5, 0x80

    .line 102
    :goto_4
    or-int/2addr v0, v5

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v5, p8, 0x8

    .line 105
    .line 106
    if-eqz v5, :cond_a

    .line 107
    .line 108
    or-int/lit16 v0, v0, 0xc00

    .line 109
    .line 110
    :cond_9
    move-object/from16 v6, p3

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v6, v11, 0x1c00

    .line 114
    .line 115
    if-nez v6, :cond_9

    .line 116
    .line 117
    move-object/from16 v6, p3

    .line 118
    .line 119
    .line 120
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 121
    move-result v7

    .line 122
    .line 123
    if-eqz v7, :cond_b

    .line 124
    .line 125
    const/16 v7, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_b
    const/16 v7, 0x400

    .line 129
    :goto_6
    or-int/2addr v0, v7

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v7, p8, 0x10

    .line 132
    .line 133
    if-eqz v7, :cond_d

    .line 134
    .line 135
    or-int/lit16 v0, v0, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v8, p4

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_d
    const v8, 0xe000

    .line 142
    and-int/2addr v8, v11

    .line 143
    .line 144
    if-nez v8, :cond_c

    .line 145
    .line 146
    move-object/from16 v8, p4

    .line 147
    .line 148
    .line 149
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 150
    move-result v13

    .line 151
    .line 152
    if-eqz v13, :cond_e

    .line 153
    .line 154
    const/16 v13, 0x4000

    .line 155
    goto :goto_8

    .line 156
    .line 157
    :cond_e
    const/16 v13, 0x2000

    .line 158
    :goto_8
    or-int/2addr v0, v13

    .line 159
    .line 160
    :goto_9
    and-int/lit8 v13, p8, 0x20

    .line 161
    .line 162
    if-eqz v13, :cond_10

    .line 163
    .line 164
    const/high16 v13, 0x30000

    .line 165
    :goto_a
    or-int/2addr v0, v13

    .line 166
    :cond_f
    move v13, v0

    .line 167
    goto :goto_b

    .line 168
    .line 169
    :cond_10
    const/high16 v13, 0x70000

    .line 170
    and-int/2addr v13, v11

    .line 171
    .line 172
    if-nez v13, :cond_f

    .line 173
    .line 174
    .line 175
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v13

    .line 177
    .line 178
    if-eqz v13, :cond_11

    .line 179
    .line 180
    const/high16 v13, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_11
    const/high16 v13, 0x10000

    .line 184
    goto :goto_a

    .line 185
    .line 186
    .line 187
    :goto_b
    const v0, 0x5b6db

    .line 188
    and-int/2addr v0, v13

    .line 189
    .line 190
    .line 191
    const v14, 0x12492

    .line 192
    .line 193
    if-ne v0, v14, :cond_13

    .line 194
    .line 195
    .line 196
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 197
    move-result v0

    .line 198
    .line 199
    if-nez v0, :cond_12

    .line 200
    goto :goto_c

    .line 201
    .line 202
    .line 203
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 204
    move v3, v4

    .line 205
    move-object v4, v6

    .line 206
    move-object v5, v8

    .line 207
    .line 208
    goto/16 :goto_12

    .line 209
    .line 210
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 211
    .line 212
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 213
    move-object v14, v0

    .line 214
    goto :goto_d

    .line 215
    :cond_14
    move-object v14, v2

    .line 216
    :goto_d
    const/4 v15, 0x1

    .line 217
    .line 218
    if-eqz v3, :cond_15

    .line 219
    .line 220
    move/from16 v16, v15

    .line 221
    goto :goto_e

    .line 222
    .line 223
    :cond_15
    move/from16 v16, v4

    .line 224
    .line 225
    :goto_e
    if-eqz v5, :cond_16

    .line 226
    .line 227
    sget-object v0, Landroidx/compose/material/MenuDefaults;->INSTANCE:Landroidx/compose/material/MenuDefaults;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Landroidx/compose/material/MenuDefaults;->a()Landroidx/compose/foundation/layout/PaddingValues;

    .line 231
    move-result-object v0

    .line 232
    goto :goto_f

    .line 233
    :cond_16
    move-object v0, v6

    .line 234
    .line 235
    :goto_f
    if-eqz v7, :cond_18

    .line 236
    .line 237
    .line 238
    const v1, -0x1d58f75c

    .line 239
    .line 240
    .line 241
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 251
    move-result-object v2

    .line 252
    .line 253
    if-ne v1, v2, :cond_17

    .line 254
    .line 255
    .line 256
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 257
    move-result-object v1

    .line 258
    .line 259
    .line 260
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 264
    .line 265
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 266
    .line 267
    move-object/from16 v17, v1

    .line 268
    goto :goto_10

    .line 269
    .line 270
    :cond_18
    move-object/from16 v17, v8

    .line 271
    :goto_10
    const/4 v1, 0x1

    .line 272
    const/4 v2, 0x0

    .line 273
    .line 274
    const-wide/16 v3, 0x0

    .line 275
    const/4 v6, 0x6

    .line 276
    const/4 v7, 0x6

    .line 277
    move-object v5, v12

    .line 278
    .line 279
    .line 280
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 281
    move-result-object v2

    .line 282
    const/4 v4, 0x0

    .line 283
    const/4 v5, 0x0

    .line 284
    .line 285
    const/16 v7, 0x18

    .line 286
    const/4 v8, 0x0

    .line 287
    move-object v6, v0

    .line 288
    move-object v0, v14

    .line 289
    .line 290
    move-object/from16 v1, v17

    .line 291
    .line 292
    move/from16 v3, v16

    .line 293
    .line 294
    move-object/from16 v18, v6

    .line 295
    .line 296
    move-object/from16 v6, p0

    .line 297
    .line 298
    .line 299
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 300
    move-result-object v0

    .line 301
    const/4 v1, 0x0

    .line 302
    const/4 v2, 0x0

    .line 303
    .line 304
    .line 305
    invoke-static {v0, v1, v15, v2}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 306
    move-result-object v19

    .line 307
    .line 308
    sget v20, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinWidth:F

    .line 309
    .line 310
    sget v22, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMaxWidth:F

    .line 311
    .line 312
    sget v21, Landroidx/compose/material/MenuKt;->DropdownMenuItemDefaultMinHeight:F

    .line 313
    .line 314
    const/16 v23, 0x0

    .line 315
    .line 316
    const/16 v24, 0x8

    .line 317
    .line 318
    const/16 v25, 0x0

    .line 319
    .line 320
    .line 321
    invoke-static/range {v19 .. v25}, Landroidx/compose/foundation/layout/SizeKt;->C(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 322
    move-result-object v0

    .line 323
    .line 324
    move-object/from16 v6, v18

    .line 325
    .line 326
    .line 327
    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 328
    move-result-object v0

    .line 329
    .line 330
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 334
    move-result-object v1

    .line 335
    .line 336
    .line 337
    const v2, 0x2952b718

    .line 338
    .line 339
    .line 340
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 341
    .line 342
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 346
    move-result-object v2

    .line 347
    .line 348
    const/16 v7, 0x30

    .line 349
    .line 350
    .line 351
    invoke-static {v2, v1, v12, v7}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 352
    move-result-object v1

    .line 353
    .line 354
    .line 355
    const v2, -0x4ee9b9da

    .line 356
    .line 357
    .line 358
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 359
    .line 360
    .line 361
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 362
    move-result-object v2

    .line 363
    .line 364
    .line 365
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 366
    move-result-object v2

    .line 367
    .line 368
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 369
    .line 370
    .line 371
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 372
    move-result-object v3

    .line 373
    .line 374
    .line 375
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 376
    move-result-object v3

    .line 377
    .line 378
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 379
    .line 380
    .line 381
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 382
    move-result-object v4

    .line 383
    .line 384
    .line 385
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 386
    move-result-object v4

    .line 387
    .line 388
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 389
    .line 390
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 394
    move-result-object v8

    .line 395
    .line 396
    .line 397
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 398
    move-result-object v0

    .line 399
    .line 400
    .line 401
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 402
    move-result-object v7

    .line 403
    .line 404
    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    .line 405
    .line 406
    if-nez v7, :cond_19

    .line 407
    .line 408
    .line 409
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 410
    .line 411
    .line 412
    :cond_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->e()V

    .line 413
    .line 414
    .line 415
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->r()Z

    .line 416
    move-result v7

    .line 417
    .line 418
    if-eqz v7, :cond_1a

    .line 419
    .line 420
    .line 421
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 422
    goto :goto_11

    .line 423
    .line 424
    .line 425
    :cond_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->c()V

    .line 426
    .line 427
    .line 428
    :goto_11
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->L()V

    .line 429
    .line 430
    .line 431
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 432
    move-result-object v7

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 436
    move-result-object v8

    .line 437
    .line 438
    .line 439
    invoke-static {v7, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 443
    move-result-object v1

    .line 444
    .line 445
    .line 446
    invoke-static {v7, v2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 450
    move-result-object v1

    .line 451
    .line 452
    .line 453
    invoke-static {v7, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 457
    move-result-object v1

    .line 458
    .line 459
    .line 460
    invoke-static {v7, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 461
    .line 462
    .line 463
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->o()V

    .line 464
    .line 465
    .line 466
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 467
    move-result-object v1

    .line 468
    .line 469
    .line 470
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 471
    move-result-object v1

    .line 472
    const/4 v2, 0x0

    .line 473
    .line 474
    .line 475
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    move-result-object v2

    .line 477
    .line 478
    .line 479
    invoke-interface {v0, v1, v12, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    const v0, 0x7ab4aae9

    .line 483
    .line 484
    .line 485
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 486
    .line 487
    .line 488
    const v0, -0x286e2e7f

    .line 489
    .line 490
    .line 491
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 492
    .line 493
    sget-object v3, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 494
    .line 495
    .line 496
    const v0, 0x633d42a7

    .line 497
    .line 498
    .line 499
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 500
    const/4 v4, 0x6

    .line 501
    .line 502
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 503
    const/4 v1, 0x6

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v12, v1}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 507
    move-result-object v0

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Landroidx/compose/material/Typography;->g()Landroidx/compose/ui/text/TextStyle;

    .line 511
    move-result-object v7

    .line 512
    .line 513
    new-instance v8, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;

    .line 514
    move-object v0, v8

    .line 515
    .line 516
    move/from16 v1, v16

    .line 517
    .line 518
    move-object/from16 v2, p5

    .line 519
    move v5, v13

    .line 520
    .line 521
    .line 522
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;-><init>(ZLe8/q;Landroidx/compose/foundation/layout/RowScope;II)V

    .line 523
    .line 524
    .line 525
    const v0, 0x46f56d98

    .line 526
    .line 527
    .line 528
    invoke-static {v12, v0, v15, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 529
    move-result-object v0

    .line 530
    .line 531
    const/16 v1, 0x30

    .line 532
    .line 533
    .line 534
    invoke-static {v7, v0, v12, v1}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 535
    .line 536
    .line 537
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 538
    .line 539
    .line 540
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 541
    .line 542
    .line 543
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 544
    .line 545
    .line 546
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->d()V

    .line 547
    .line 548
    .line 549
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 550
    .line 551
    .line 552
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 553
    move-object v4, v6

    .line 554
    move-object v2, v14

    .line 555
    .line 556
    move/from16 v3, v16

    .line 557
    .line 558
    move-object/from16 v5, v17

    .line 559
    .line 560
    .line 561
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 562
    move-result-object v12

    .line 563
    .line 564
    if-nez v12, :cond_1b

    .line 565
    goto :goto_13

    .line 566
    .line 567
    :cond_1b
    new-instance v13, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$3;

    .line 568
    move-object v0, v13

    .line 569
    .line 570
    move-object/from16 v1, p0

    .line 571
    .line 572
    move-object/from16 v6, p5

    .line 573
    .line 574
    move/from16 v7, p7

    .line 575
    .line 576
    move/from16 v8, p8

    .line 577
    .line 578
    .line 579
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$3;-><init>(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/q;II)V

    .line 580
    .line 581
    .line 582
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 583
    :goto_13
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/MenuKt;->b(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/MenuKt;->c(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/MenuKt;->DropdownMenuItemHorizontalPadding:F

    return v0
.end method

.method public static final h(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)J
    .locals 5
    .param p0    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "parentBounds"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "menuBounds"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->d()I

    .line 18
    move-result v1

    .line 19
    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    :goto_0
    move v0, v3

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->d()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 33
    move-result v1

    .line 34
    .line 35
    if-gt v0, v1, :cond_1

    .line 36
    move v0, v2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->f()I

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->d()I

    .line 60
    move-result v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->d()I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    .line 71
    div-int/lit8 v0, v0, 0x2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 75
    move-result v1

    .line 76
    sub-int/2addr v0, v1

    .line 77
    int-to-float v0, v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->f()I

    .line 81
    move-result v1

    .line 82
    int-to-float v1, v1

    .line 83
    div-float/2addr v0, v1

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 91
    move-result v4

    .line 92
    .line 93
    if-lt v1, v4, :cond_3

    .line 94
    :goto_2
    move v2, v3

    .line 95
    goto :goto_3

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 99
    move-result v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 103
    move-result v4

    .line 104
    .line 105
    if-gt v1, v4, :cond_4

    .line 106
    goto :goto_3

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->b()I

    .line 110
    move-result v1

    .line 111
    .line 112
    if-nez v1, :cond_5

    .line 113
    goto :goto_2

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 117
    move-result v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 121
    move-result v2

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 125
    move-result v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 129
    move-result p0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 133
    move-result v2

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    .line 137
    move-result p0

    .line 138
    add-int/2addr v1, p0

    .line 139
    .line 140
    div-int/lit8 v1, v1, 0x2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 144
    move-result p0

    .line 145
    sub-int/2addr v1, p0

    .line 146
    int-to-float p0, v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->b()I

    .line 150
    move-result p1

    .line 151
    int-to-float p1, p1

    .line 152
    .line 153
    div-float v2, p0, p1

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/TransformOriginKt;->a(FF)J

    .line 157
    move-result-wide p0

    .line 158
    return-wide p0
.end method

.method public static final i()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/MenuKt;->DropdownMenuVerticalPadding:F

    return v0
.end method

.method public static final j()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/MenuKt;->MenuVerticalMargin:F

    return v0
.end method
