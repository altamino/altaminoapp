.class public final Landroidx/compose/material/NavigationRailKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,405:1\n25#2:406\n460#2,13:432\n473#2,3:446\n460#2,13:467\n460#2,13:499\n473#2,3:513\n460#2,13:537\n473#2,3:551\n473#2,3:556\n1057#3,6:407\n76#4:413\n76#4:420\n76#4:455\n76#4:487\n76#4:525\n68#5,5:414\n73#5:445\n77#5:450\n67#5,6:480\n73#5:512\n77#5:517\n67#5,6:518\n73#5:550\n77#5:555\n75#6:419\n76#6,11:421\n89#6:449\n72#6,4:451\n76#6,11:456\n75#6:486\n76#6,11:488\n89#6:516\n75#6:524\n76#6,11:526\n89#6:554\n89#6:559\n76#7:560\n155#8:561\n155#8:562\n155#8:563\n155#8:564\n155#8:565\n155#8:566\n*S KotlinDebug\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt\n*L\n155#1:406\n176#1:432,13\n176#1:446,3\n265#1:467,13\n267#1:499,13\n267#1:513,3\n269#1:537,13\n269#1:551,3\n265#1:556,3\n155#1:407,6\n157#1:413\n176#1:420\n265#1:455\n267#1:487\n269#1:525\n176#1:414,5\n176#1:445\n176#1:450\n267#1:480,6\n267#1:512\n267#1:517\n269#1:518,6\n269#1:550\n269#1:555\n176#1:419\n176#1:421,11\n176#1:449\n265#1:451,4\n265#1:456,11\n267#1:486\n267#1:488,11\n267#1:516\n269#1:524\n269#1:526,11\n269#1:554\n265#1:559\n233#1:560\n379#1:561\n384#1:562\n389#1:563\n395#1:564\n400#1:565\n405#1:566\n*E\n"
.end annotation


# static fields
.field private static final HeaderPadding:F

.field private static final ItemIconTopOffset:F

.field private static final ItemLabelBaselineBottomOffset:F

.field private static final NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NavigationRailItemCompactSize:F

.field private static final NavigationRailItemSize:F

.field private static final NavigationRailPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    .line 3
    .line 4
    const/16 v1, 0x12c

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->a()Landroidx/compose/animation/core/Easing;

    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, v6

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V

    .line 16
    .line 17
    sput-object v6, Landroidx/compose/material/NavigationRailKt;->NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 18
    .line 19
    const/16 v0, 0x48

    .line 20
    int-to-float v0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 24
    move-result v0

    .line 25
    .line 26
    sput v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemSize:F

    .line 27
    .line 28
    const/16 v0, 0x38

    .line 29
    int-to-float v0, v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 33
    move-result v0

    .line 34
    .line 35
    sput v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemCompactSize:F

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    int-to-float v0, v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 42
    move-result v1

    .line 43
    .line 44
    sput v1, Landroidx/compose/material/NavigationRailKt;->NavigationRailPadding:F

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 48
    move-result v0

    .line 49
    .line 50
    sput v0, Landroidx/compose/material/NavigationRailKt;->HeaderPadding:F

    .line 51
    .line 52
    const/16 v0, 0x10

    .line 53
    int-to-float v0, v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 57
    move-result v0

    .line 58
    .line 59
    sput v0, Landroidx/compose/material/NavigationRailKt;->ItemLabelBaselineBottomOffset:F

    .line 60
    .line 61
    const/16 v0, 0xe

    .line 62
    int-to-float v0, v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 66
    move-result v0

    .line 67
    .line 68
    sput v0, Landroidx/compose/material/NavigationRailKt;->ItemIconTopOffset:F

    .line 69
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;JJFLe8/q;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
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
            "JJF",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
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
    move-object/from16 v8, p7

    .line 3
    .line 4
    move/from16 v9, p9

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x6ac00e83

    .line 13
    .line 14
    move-object/from16 v1, p8

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    and-int/lit8 v1, p10, 0x1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    or-int/lit8 v2, v9, 0x6

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
    and-int/lit8 v2, v9, 0xe

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
    or-int/2addr v3, v9

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    move-object/from16 v2, p0

    .line 48
    move v3, v9

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v4, v9, 0x70

    .line 51
    .line 52
    if-nez v4, :cond_5

    .line 53
    .line 54
    and-int/lit8 v4, p10, 0x2

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    move-wide/from16 v4, p1

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v4, v5}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 62
    move-result v6

    .line 63
    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    const/16 v6, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_3
    move-wide/from16 v4, p1

    .line 70
    .line 71
    :cond_4
    const/16 v6, 0x10

    .line 72
    :goto_2
    or-int/2addr v3, v6

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_5
    move-wide/from16 v4, p1

    .line 76
    .line 77
    :goto_3
    and-int/lit16 v6, v9, 0x380

    .line 78
    .line 79
    if-nez v6, :cond_8

    .line 80
    .line 81
    and-int/lit8 v6, p10, 0x4

    .line 82
    .line 83
    if-nez v6, :cond_6

    .line 84
    .line 85
    move-wide/from16 v6, p3

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 89
    move-result v10

    .line 90
    .line 91
    if-eqz v10, :cond_7

    .line 92
    .line 93
    const/16 v10, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_6
    move-wide/from16 v6, p3

    .line 97
    .line 98
    :cond_7
    const/16 v10, 0x80

    .line 99
    :goto_4
    or-int/2addr v3, v10

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_8
    move-wide/from16 v6, p3

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v10, p10, 0x8

    .line 105
    .line 106
    if-eqz v10, :cond_a

    .line 107
    .line 108
    or-int/lit16 v3, v3, 0xc00

    .line 109
    .line 110
    :cond_9
    move/from16 v11, p5

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v11, v9, 0x1c00

    .line 114
    .line 115
    if-nez v11, :cond_9

    .line 116
    .line 117
    move/from16 v11, p5

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->n(F)Z

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
    and-int/lit8 v12, p10, 0x10

    .line 132
    .line 133
    if-eqz v12, :cond_d

    .line 134
    .line 135
    or-int/lit16 v3, v3, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v13, p6

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_d
    const v13, 0xe000

    .line 142
    and-int/2addr v13, v9

    .line 143
    .line 144
    if-nez v13, :cond_c

    .line 145
    .line 146
    move-object/from16 v13, p6

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
    and-int/lit8 v14, p10, 0x20

    .line 161
    .line 162
    const/high16 v15, 0x70000

    .line 163
    .line 164
    if-eqz v14, :cond_f

    .line 165
    .line 166
    const/high16 v14, 0x30000

    .line 167
    :goto_a
    or-int/2addr v3, v14

    .line 168
    goto :goto_b

    .line 169
    .line 170
    :cond_f
    and-int v14, v9, v15

    .line 171
    .line 172
    if-nez v14, :cond_11

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v14

    .line 177
    .line 178
    if-eqz v14, :cond_10

    .line 179
    .line 180
    const/high16 v14, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_10
    const/high16 v14, 0x10000

    .line 184
    goto :goto_a

    .line 185
    .line 186
    .line 187
    :cond_11
    :goto_b
    const v14, 0x5b6db

    .line 188
    and-int/2addr v14, v3

    .line 189
    .line 190
    .line 191
    const v15, 0x12492

    .line 192
    .line 193
    if-ne v14, v15, :cond_13

    .line 194
    .line 195
    .line 196
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 197
    move-result v14

    .line 198
    .line 199
    if-nez v14, :cond_12

    .line 200
    goto :goto_c

    .line 201
    .line 202
    .line 203
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 204
    move-object v1, v2

    .line 205
    move-wide v2, v4

    .line 206
    move-wide v4, v6

    .line 207
    move v6, v11

    .line 208
    move-object v7, v13

    .line 209
    .line 210
    goto/16 :goto_10

    .line 211
    .line 212
    .line 213
    :cond_13
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 214
    .line 215
    and-int/lit8 v14, v9, 0x1

    .line 216
    const/4 v15, 0x6

    .line 217
    .line 218
    if-eqz v14, :cond_18

    .line 219
    .line 220
    .line 221
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 222
    move-result v14

    .line 223
    .line 224
    if-eqz v14, :cond_14

    .line 225
    goto :goto_d

    .line 226
    .line 227
    .line 228
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 229
    .line 230
    and-int/lit8 v1, p10, 0x2

    .line 231
    .line 232
    if-eqz v1, :cond_15

    .line 233
    .line 234
    and-int/lit8 v3, v3, -0x71

    .line 235
    .line 236
    :cond_15
    and-int/lit8 v1, p10, 0x4

    .line 237
    .line 238
    if-eqz v1, :cond_16

    .line 239
    .line 240
    and-int/lit16 v3, v3, -0x381

    .line 241
    :cond_16
    move-object v1, v2

    .line 242
    :cond_17
    move v10, v3

    .line 243
    move v2, v11

    .line 244
    move-object v3, v13

    .line 245
    goto :goto_f

    .line 246
    .line 247
    :cond_18
    :goto_d
    if-eqz v1, :cond_19

    .line 248
    .line 249
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 250
    goto :goto_e

    .line 251
    :cond_19
    move-object v1, v2

    .line 252
    .line 253
    :goto_e
    and-int/lit8 v2, p10, 0x2

    .line 254
    .line 255
    if-eqz v2, :cond_1a

    .line 256
    .line 257
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v0, v15}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 261
    move-result-object v2

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->n()J

    .line 265
    move-result-wide v4

    .line 266
    .line 267
    and-int/lit8 v3, v3, -0x71

    .line 268
    .line 269
    :cond_1a
    and-int/lit8 v2, p10, 0x4

    .line 270
    .line 271
    if-eqz v2, :cond_1b

    .line 272
    .line 273
    shr-int/lit8 v2, v3, 0x3

    .line 274
    .line 275
    and-int/lit8 v2, v2, 0xe

    .line 276
    .line 277
    .line 278
    invoke-static {v4, v5, v0, v2}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 279
    move-result-wide v6

    .line 280
    .line 281
    and-int/lit16 v2, v3, -0x381

    .line 282
    move v3, v2

    .line 283
    .line 284
    :cond_1b
    if-eqz v10, :cond_1c

    .line 285
    .line 286
    sget-object v2, Landroidx/compose/material/NavigationRailDefaults;->INSTANCE:Landroidx/compose/material/NavigationRailDefaults;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Landroidx/compose/material/NavigationRailDefaults;->a()F

    .line 290
    move-result v2

    .line 291
    move v11, v2

    .line 292
    .line 293
    :cond_1c
    if-eqz v12, :cond_17

    .line 294
    const/4 v2, 0x0

    .line 295
    move v10, v3

    .line 296
    move-object v3, v2

    .line 297
    move v2, v11

    .line 298
    .line 299
    .line 300
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 301
    const/4 v11, 0x0

    .line 302
    .line 303
    const/16 v16, 0x0

    .line 304
    .line 305
    new-instance v12, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;

    .line 306
    .line 307
    .line 308
    invoke-direct {v12, v3, v10, v8}, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;-><init>(Le8/q;ILe8/q;)V

    .line 309
    .line 310
    .line 311
    const v13, -0x5dab4939

    .line 312
    const/4 v14, 0x1

    .line 313
    .line 314
    .line 315
    invoke-static {v0, v13, v14, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 316
    move-result-object v18

    .line 317
    .line 318
    and-int/lit8 v12, v10, 0xe

    .line 319
    .line 320
    const/high16 v13, 0x180000

    .line 321
    or-int/2addr v12, v13

    .line 322
    .line 323
    shl-int/lit8 v13, v10, 0x3

    .line 324
    .line 325
    and-int/lit16 v14, v13, 0x380

    .line 326
    or-int/2addr v12, v14

    .line 327
    .line 328
    and-int/lit16 v13, v13, 0x1c00

    .line 329
    or-int/2addr v12, v13

    .line 330
    shl-int/2addr v10, v15

    .line 331
    .line 332
    const/high16 v13, 0x70000

    .line 333
    and-int/2addr v10, v13

    .line 334
    .line 335
    or-int v20, v12, v10

    .line 336
    .line 337
    const/16 v21, 0x12

    .line 338
    move-object v10, v1

    .line 339
    move-wide v12, v4

    .line 340
    move-wide v14, v6

    .line 341
    .line 342
    move/from16 v17, v2

    .line 343
    .line 344
    move-object/from16 v19, v0

    .line 345
    .line 346
    .line 347
    invoke-static/range {v10 .. v21}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 348
    .line 349
    move-wide/from16 v22, v6

    .line 350
    move v6, v2

    .line 351
    move-object v7, v3

    .line 352
    move-wide v2, v4

    .line 353
    .line 354
    move-wide/from16 v4, v22

    .line 355
    .line 356
    .line 357
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 358
    move-result-object v11

    .line 359
    .line 360
    if-nez v11, :cond_1d

    .line 361
    goto :goto_11

    .line 362
    .line 363
    :cond_1d
    new-instance v12, Landroidx/compose/material/NavigationRailKt$NavigationRail$2;

    .line 364
    move-object v0, v12

    .line 365
    .line 366
    move-object/from16 v8, p7

    .line 367
    .line 368
    move/from16 v9, p9

    .line 369
    .line 370
    move/from16 v10, p10

    .line 371
    .line 372
    .line 373
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/NavigationRailKt$NavigationRail$2;-><init>(Landroidx/compose/ui/Modifier;JJFLe8/q;Le8/q;II)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 377
    :goto_11
    return-void
.end method

.method public static final b(ZLe8/a;Le8/p;Landroidx/compose/ui/Modifier;ZLe8/p;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move-object/from16 v3, p2

    .line 5
    .line 6
    move/from16 v13, p13

    .line 7
    .line 8
    move/from16 v14, p14

    .line 9
    .line 10
    const-string v0, "onClick"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "icon"

    .line 16
    .line 17
    .line 18
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, -0x6c188d9d

    .line 22
    .line 23
    move-object/from16 v1, p12

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    and-int/lit8 v1, v14, 0x1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    or-int/lit8 v1, v13, 0x6

    .line 34
    move v4, v1

    .line 35
    .line 36
    move/from16 v1, p0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    and-int/lit8 v1, v13, 0xe

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    move/from16 v1, p0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 47
    move-result v4

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    const/4 v4, 0x4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v4, 0x2

    .line 53
    :goto_0
    or-int/2addr v4, v13

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    move/from16 v1, p0

    .line 57
    move v4, v13

    .line 58
    .line 59
    :goto_1
    and-int/lit8 v5, v14, 0x2

    .line 60
    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    or-int/lit8 v4, v4, 0x30

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_3
    and-int/lit8 v5, v13, 0x70

    .line 67
    .line 68
    if-nez v5, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 72
    move-result v5

    .line 73
    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    const/16 v5, 0x20

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_4
    const/16 v5, 0x10

    .line 80
    :goto_2
    or-int/2addr v4, v5

    .line 81
    .line 82
    :cond_5
    :goto_3
    and-int/lit8 v5, v14, 0x4

    .line 83
    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    or-int/lit16 v4, v4, 0x180

    .line 87
    goto :goto_5

    .line 88
    .line 89
    :cond_6
    and-int/lit16 v5, v13, 0x380

    .line 90
    .line 91
    if-nez v5, :cond_8

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 95
    move-result v5

    .line 96
    .line 97
    if-eqz v5, :cond_7

    .line 98
    .line 99
    const/16 v5, 0x100

    .line 100
    goto :goto_4

    .line 101
    .line 102
    :cond_7
    const/16 v5, 0x80

    .line 103
    :goto_4
    or-int/2addr v4, v5

    .line 104
    .line 105
    :cond_8
    :goto_5
    and-int/lit8 v5, v14, 0x8

    .line 106
    .line 107
    if-eqz v5, :cond_a

    .line 108
    .line 109
    or-int/lit16 v4, v4, 0xc00

    .line 110
    .line 111
    :cond_9
    move-object/from16 v6, p3

    .line 112
    goto :goto_7

    .line 113
    .line 114
    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    .line 115
    .line 116
    if-nez v6, :cond_9

    .line 117
    .line 118
    move-object/from16 v6, p3

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 122
    move-result v7

    .line 123
    .line 124
    if-eqz v7, :cond_b

    .line 125
    .line 126
    const/16 v7, 0x800

    .line 127
    goto :goto_6

    .line 128
    .line 129
    :cond_b
    const/16 v7, 0x400

    .line 130
    :goto_6
    or-int/2addr v4, v7

    .line 131
    .line 132
    :goto_7
    and-int/lit8 v7, v14, 0x10

    .line 133
    .line 134
    if-eqz v7, :cond_d

    .line 135
    .line 136
    or-int/lit16 v4, v4, 0x6000

    .line 137
    .line 138
    :cond_c
    move/from16 v8, p4

    .line 139
    goto :goto_9

    .line 140
    .line 141
    .line 142
    :cond_d
    const v8, 0xe000

    .line 143
    and-int/2addr v8, v13

    .line 144
    .line 145
    if-nez v8, :cond_c

    .line 146
    .line 147
    move/from16 v8, p4

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 151
    move-result v9

    .line 152
    .line 153
    if-eqz v9, :cond_e

    .line 154
    .line 155
    const/16 v9, 0x4000

    .line 156
    goto :goto_8

    .line 157
    .line 158
    :cond_e
    const/16 v9, 0x2000

    .line 159
    :goto_8
    or-int/2addr v4, v9

    .line 160
    .line 161
    :goto_9
    and-int/lit8 v9, v14, 0x20

    .line 162
    .line 163
    if-eqz v9, :cond_10

    .line 164
    .line 165
    const/high16 v10, 0x30000

    .line 166
    or-int/2addr v4, v10

    .line 167
    .line 168
    :cond_f
    move-object/from16 v10, p5

    .line 169
    goto :goto_b

    .line 170
    .line 171
    :cond_10
    const/high16 v10, 0x70000

    .line 172
    and-int/2addr v10, v13

    .line 173
    .line 174
    if-nez v10, :cond_f

    .line 175
    .line 176
    move-object/from16 v10, p5

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 180
    move-result v11

    .line 181
    .line 182
    if-eqz v11, :cond_11

    .line 183
    .line 184
    const/high16 v11, 0x20000

    .line 185
    goto :goto_a

    .line 186
    .line 187
    :cond_11
    const/high16 v11, 0x10000

    .line 188
    :goto_a
    or-int/2addr v4, v11

    .line 189
    .line 190
    :goto_b
    and-int/lit8 v11, v14, 0x40

    .line 191
    .line 192
    if-eqz v11, :cond_13

    .line 193
    .line 194
    const/high16 v12, 0x180000

    .line 195
    or-int/2addr v4, v12

    .line 196
    .line 197
    :cond_12
    move/from16 v12, p6

    .line 198
    goto :goto_d

    .line 199
    .line 200
    :cond_13
    const/high16 v12, 0x380000

    .line 201
    and-int/2addr v12, v13

    .line 202
    .line 203
    if-nez v12, :cond_12

    .line 204
    .line 205
    move/from16 v12, p6

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 209
    move-result v15

    .line 210
    .line 211
    if-eqz v15, :cond_14

    .line 212
    .line 213
    const/high16 v15, 0x100000

    .line 214
    goto :goto_c

    .line 215
    .line 216
    :cond_14
    const/high16 v15, 0x80000

    .line 217
    :goto_c
    or-int/2addr v4, v15

    .line 218
    .line 219
    :goto_d
    and-int/lit16 v15, v14, 0x80

    .line 220
    .line 221
    if-eqz v15, :cond_15

    .line 222
    .line 223
    const/high16 v16, 0xc00000

    .line 224
    .line 225
    or-int v4, v4, v16

    .line 226
    .line 227
    move-object/from16 v1, p7

    .line 228
    goto :goto_f

    .line 229
    .line 230
    :cond_15
    const/high16 v16, 0x1c00000

    .line 231
    .line 232
    and-int v16, v13, v16

    .line 233
    .line 234
    move-object/from16 v1, p7

    .line 235
    .line 236
    if-nez v16, :cond_17

    .line 237
    .line 238
    .line 239
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 240
    move-result v16

    .line 241
    .line 242
    if-eqz v16, :cond_16

    .line 243
    .line 244
    const/high16 v16, 0x800000

    .line 245
    goto :goto_e

    .line 246
    .line 247
    :cond_16
    const/high16 v16, 0x400000

    .line 248
    .line 249
    :goto_e
    or-int v4, v4, v16

    .line 250
    .line 251
    :cond_17
    :goto_f
    const/high16 v16, 0xe000000

    .line 252
    .line 253
    and-int v16, v13, v16

    .line 254
    .line 255
    if-nez v16, :cond_1a

    .line 256
    .line 257
    and-int/lit16 v1, v14, 0x100

    .line 258
    .line 259
    if-nez v1, :cond_18

    .line 260
    .line 261
    move-wide/from16 v1, p8

    .line 262
    .line 263
    .line 264
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 265
    move-result v16

    .line 266
    .line 267
    if-eqz v16, :cond_19

    .line 268
    .line 269
    const/high16 v16, 0x4000000

    .line 270
    goto :goto_10

    .line 271
    .line 272
    :cond_18
    move-wide/from16 v1, p8

    .line 273
    .line 274
    :cond_19
    const/high16 v16, 0x2000000

    .line 275
    .line 276
    :goto_10
    or-int v4, v4, v16

    .line 277
    goto :goto_11

    .line 278
    .line 279
    :cond_1a
    move-wide/from16 v1, p8

    .line 280
    .line 281
    :goto_11
    const/high16 v16, 0x70000000

    .line 282
    .line 283
    and-int v16, v13, v16

    .line 284
    .line 285
    if-nez v16, :cond_1d

    .line 286
    .line 287
    and-int/lit16 v1, v14, 0x200

    .line 288
    .line 289
    if-nez v1, :cond_1b

    .line 290
    .line 291
    move-wide/from16 v1, p10

    .line 292
    .line 293
    .line 294
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 295
    move-result v16

    .line 296
    .line 297
    if-eqz v16, :cond_1c

    .line 298
    .line 299
    const/high16 v16, 0x20000000

    .line 300
    goto :goto_12

    .line 301
    .line 302
    :cond_1b
    move-wide/from16 v1, p10

    .line 303
    .line 304
    :cond_1c
    const/high16 v16, 0x10000000

    .line 305
    .line 306
    :goto_12
    or-int v4, v4, v16

    .line 307
    goto :goto_13

    .line 308
    .line 309
    :cond_1d
    move-wide/from16 v1, p10

    .line 310
    .line 311
    .line 312
    :goto_13
    const v16, 0x5b6db6db

    .line 313
    .line 314
    and-int v1, v4, v16

    .line 315
    .line 316
    .line 317
    const v2, 0x12492492

    .line 318
    .line 319
    if-ne v1, v2, :cond_1f

    .line 320
    .line 321
    .line 322
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 323
    move-result v1

    .line 324
    .line 325
    if-nez v1, :cond_1e

    .line 326
    goto :goto_14

    .line 327
    .line 328
    .line 329
    :cond_1e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 330
    move-object v4, v6

    .line 331
    move v5, v8

    .line 332
    move-object v6, v10

    .line 333
    move v7, v12

    .line 334
    .line 335
    move-object/from16 v8, p7

    .line 336
    .line 337
    move-wide/from16 v9, p8

    .line 338
    .line 339
    move-wide/from16 v11, p10

    .line 340
    .line 341
    goto/16 :goto_1d

    .line 342
    .line 343
    .line 344
    :cond_1f
    :goto_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 345
    .line 346
    and-int/lit8 v1, v13, 0x1

    .line 347
    .line 348
    .line 349
    const v16, -0x70000001

    .line 350
    .line 351
    .line 352
    const v17, -0xe000001

    .line 353
    const/4 v2, 0x1

    .line 354
    .line 355
    if-eqz v1, :cond_23

    .line 356
    .line 357
    .line 358
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 359
    move-result v1

    .line 360
    .line 361
    if-eqz v1, :cond_20

    .line 362
    goto :goto_15

    .line 363
    .line 364
    .line 365
    :cond_20
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 366
    .line 367
    and-int/lit16 v1, v14, 0x100

    .line 368
    .line 369
    if-eqz v1, :cond_21

    .line 370
    .line 371
    and-int v4, v4, v17

    .line 372
    .line 373
    :cond_21
    and-int/lit16 v1, v14, 0x200

    .line 374
    .line 375
    if-eqz v1, :cond_22

    .line 376
    .line 377
    and-int v4, v4, v16

    .line 378
    .line 379
    :cond_22
    move-object/from16 v5, p7

    .line 380
    .line 381
    move-wide/from16 v18, p10

    .line 382
    move-object v1, v6

    .line 383
    .line 384
    move-wide/from16 v6, p8

    .line 385
    .line 386
    goto/16 :goto_19

    .line 387
    .line 388
    :cond_23
    :goto_15
    if-eqz v5, :cond_24

    .line 389
    .line 390
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 391
    goto :goto_16

    .line 392
    :cond_24
    move-object v1, v6

    .line 393
    .line 394
    :goto_16
    if-eqz v7, :cond_25

    .line 395
    move v8, v2

    .line 396
    .line 397
    :cond_25
    if-eqz v9, :cond_26

    .line 398
    const/4 v10, 0x0

    .line 399
    .line 400
    :cond_26
    if-eqz v11, :cond_27

    .line 401
    move v12, v2

    .line 402
    .line 403
    :cond_27
    if-eqz v15, :cond_29

    .line 404
    .line 405
    .line 406
    const v5, -0x1d58f75c

    .line 407
    .line 408
    .line 409
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 413
    move-result-object v5

    .line 414
    .line 415
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 419
    move-result-object v6

    .line 420
    .line 421
    if-ne v5, v6, :cond_28

    .line 422
    .line 423
    .line 424
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 425
    move-result-object v5

    .line 426
    .line 427
    .line 428
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_28
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 432
    .line 433
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 434
    goto :goto_17

    .line 435
    .line 436
    :cond_29
    move-object/from16 v5, p7

    .line 437
    .line 438
    :goto_17
    and-int/lit16 v6, v14, 0x100

    .line 439
    .line 440
    if-eqz v6, :cond_2a

    .line 441
    .line 442
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 443
    const/4 v7, 0x6

    .line 444
    .line 445
    .line 446
    invoke-virtual {v6, v0, v7}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 447
    move-result-object v6

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6}, Landroidx/compose/material/Colors;->j()J

    .line 451
    move-result-wide v6

    .line 452
    .line 453
    and-int v4, v4, v17

    .line 454
    goto :goto_18

    .line 455
    .line 456
    :cond_2a
    move-wide/from16 v6, p8

    .line 457
    .line 458
    :goto_18
    and-int/lit16 v9, v14, 0x200

    .line 459
    .line 460
    if-eqz v9, :cond_2b

    .line 461
    .line 462
    .line 463
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 464
    move-result-object v9

    .line 465
    .line 466
    .line 467
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 468
    move-result-object v9

    .line 469
    .line 470
    check-cast v9, Landroidx/compose/ui/graphics/Color;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 474
    move-result-wide v18

    .line 475
    .line 476
    sget-object v9, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 477
    const/4 v11, 0x6

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v0, v11}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 481
    move-result v9

    .line 482
    const/4 v11, 0x0

    .line 483
    const/4 v15, 0x0

    .line 484
    .line 485
    const/16 v17, 0x0

    .line 486
    .line 487
    const/16 v20, 0xe

    .line 488
    .line 489
    const/16 v21, 0x0

    .line 490
    .line 491
    move-wide/from16 p3, v18

    .line 492
    .line 493
    move/from16 p5, v9

    .line 494
    .line 495
    move/from16 p6, v11

    .line 496
    .line 497
    move/from16 p7, v15

    .line 498
    .line 499
    move/from16 p8, v17

    .line 500
    .line 501
    move/from16 p9, v20

    .line 502
    .line 503
    move-object/from16 p10, v21

    .line 504
    .line 505
    .line 506
    invoke-static/range {p3 .. p10}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 507
    move-result-wide v18

    .line 508
    .line 509
    and-int v4, v4, v16

    .line 510
    goto :goto_19

    .line 511
    .line 512
    :cond_2b
    move-wide/from16 v18, p10

    .line 513
    .line 514
    .line 515
    :goto_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 516
    .line 517
    if-eqz v10, :cond_2c

    .line 518
    .line 519
    new-instance v9, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$styledLabel$1$1;

    .line 520
    .line 521
    .line 522
    invoke-direct {v9, v10, v4}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$styledLabel$1$1;-><init>(Le8/p;I)V

    .line 523
    .line 524
    .line 525
    const v11, -0xac0aa17

    .line 526
    .line 527
    .line 528
    invoke-static {v0, v11, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 529
    move-result-object v9

    .line 530
    goto :goto_1a

    .line 531
    :cond_2c
    const/4 v9, 0x0

    .line 532
    .line 533
    :goto_1a
    if-nez v10, :cond_2d

    .line 534
    .line 535
    sget v11, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemCompactSize:F

    .line 536
    goto :goto_1b

    .line 537
    .line 538
    :cond_2d
    sget v11, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemSize:F

    .line 539
    :goto_1b
    const/4 v15, 0x0

    .line 540
    .line 541
    const/16 v16, 0x0

    .line 542
    .line 543
    shr-int/lit8 v2, v4, 0x12

    .line 544
    .line 545
    and-int/lit16 v2, v2, 0x380

    .line 546
    .line 547
    const/16 v17, 0x6

    .line 548
    .line 549
    or-int/lit8 v2, v2, 0x6

    .line 550
    .line 551
    const/16 v17, 0x2

    .line 552
    .line 553
    move/from16 p3, v15

    .line 554
    .line 555
    move/from16 p4, v16

    .line 556
    .line 557
    move-wide/from16 p5, v6

    .line 558
    .line 559
    move-object/from16 p7, v0

    .line 560
    .line 561
    move/from16 p8, v2

    .line 562
    .line 563
    move/from16 p9, v17

    .line 564
    .line 565
    .line 566
    invoke-static/range {p3 .. p9}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 567
    move-result-object v2

    .line 568
    .line 569
    sget-object v15, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v15}, Landroidx/compose/ui/semantics/Role$Companion;->f()I

    .line 573
    move-result v15

    .line 574
    .line 575
    .line 576
    invoke-static {v15}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 577
    move-result-object v15

    .line 578
    .line 579
    move-object/from16 p3, v1

    .line 580
    .line 581
    move/from16 p4, p0

    .line 582
    .line 583
    move-object/from16 p5, v5

    .line 584
    .line 585
    move-object/from16 p6, v2

    .line 586
    .line 587
    move/from16 p7, v8

    .line 588
    .line 589
    move-object/from16 p8, v15

    .line 590
    .line 591
    move-object/from16 p9, p1

    .line 592
    .line 593
    .line 594
    invoke-static/range {p3 .. p9}, Landroidx/compose/foundation/selection/SelectableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 595
    move-result-object v2

    .line 596
    .line 597
    .line 598
    invoke-static {v2, v11}, Landroidx/compose/foundation/layout/SizeKt;->y(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 599
    move-result-object v2

    .line 600
    .line 601
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 605
    move-result-object v11

    .line 606
    .line 607
    .line 608
    const v15, 0x2bb5b5d7

    .line 609
    .line 610
    .line 611
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 612
    const/4 v15, 0x0

    .line 613
    .line 614
    move-object/from16 p11, v1

    .line 615
    const/4 v1, 0x6

    .line 616
    .line 617
    .line 618
    invoke-static {v11, v15, v0, v1}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 619
    move-result-object v11

    .line 620
    .line 621
    .line 622
    const v1, -0x4ee9b9da

    .line 623
    .line 624
    .line 625
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 626
    .line 627
    .line 628
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 629
    move-result-object v1

    .line 630
    .line 631
    .line 632
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 633
    move-result-object v1

    .line 634
    .line 635
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 636
    .line 637
    .line 638
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 639
    move-result-object v15

    .line 640
    .line 641
    .line 642
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 643
    move-result-object v15

    .line 644
    .line 645
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 646
    .line 647
    move-object/from16 v16, v5

    .line 648
    .line 649
    .line 650
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 651
    move-result-object v5

    .line 652
    .line 653
    .line 654
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 655
    move-result-object v5

    .line 656
    .line 657
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 658
    .line 659
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 660
    .line 661
    move/from16 v20, v8

    .line 662
    .line 663
    .line 664
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 665
    move-result-object v8

    .line 666
    .line 667
    .line 668
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 669
    move-result-object v2

    .line 670
    .line 671
    move-object/from16 v21, v10

    .line 672
    .line 673
    .line 674
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 675
    move-result-object v10

    .line 676
    .line 677
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 678
    .line 679
    if-nez v10, :cond_2e

    .line 680
    .line 681
    .line 682
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 683
    .line 684
    .line 685
    :cond_2e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 686
    .line 687
    .line 688
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 689
    move-result v10

    .line 690
    .line 691
    if-eqz v10, :cond_2f

    .line 692
    .line 693
    .line 694
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 695
    goto :goto_1c

    .line 696
    .line 697
    .line 698
    :cond_2f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 699
    .line 700
    .line 701
    :goto_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 702
    .line 703
    .line 704
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 705
    move-result-object v8

    .line 706
    .line 707
    .line 708
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 709
    move-result-object v10

    .line 710
    .line 711
    .line 712
    invoke-static {v8, v11, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 716
    move-result-object v10

    .line 717
    .line 718
    .line 719
    invoke-static {v8, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 723
    move-result-object v1

    .line 724
    .line 725
    .line 726
    invoke-static {v8, v15, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 730
    move-result-object v1

    .line 731
    .line 732
    .line 733
    invoke-static {v8, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 734
    .line 735
    .line 736
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 737
    .line 738
    .line 739
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 740
    move-result-object v1

    .line 741
    .line 742
    .line 743
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 744
    move-result-object v1

    .line 745
    const/4 v5, 0x0

    .line 746
    .line 747
    .line 748
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    move-result-object v5

    .line 750
    .line 751
    .line 752
    invoke-interface {v2, v1, v0, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    const v1, 0x7ab4aae9

    .line 756
    .line 757
    .line 758
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 759
    .line 760
    .line 761
    const v1, -0x7f65a980

    .line 762
    .line 763
    .line 764
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 765
    .line 766
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 767
    .line 768
    .line 769
    const v1, -0xa4dce63

    .line 770
    .line 771
    .line 772
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 773
    .line 774
    new-instance v1, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;

    .line 775
    .line 776
    .line 777
    invoke-direct {v1, v12, v3, v9, v4}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;-><init>(ZLe8/p;Le8/p;I)V

    .line 778
    .line 779
    .line 780
    const v2, 0x27f83098

    .line 781
    const/4 v5, 0x1

    .line 782
    .line 783
    .line 784
    invoke-static {v0, v2, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 785
    move-result-object v1

    .line 786
    .line 787
    shr-int/lit8 v2, v4, 0x18

    .line 788
    .line 789
    and-int/lit8 v5, v2, 0xe

    .line 790
    .line 791
    or-int/lit16 v5, v5, 0xc00

    .line 792
    .line 793
    and-int/lit8 v2, v2, 0x70

    .line 794
    or-int/2addr v2, v5

    .line 795
    const/4 v5, 0x6

    .line 796
    shl-int/2addr v4, v5

    .line 797
    .line 798
    and-int/lit16 v4, v4, 0x380

    .line 799
    or-int/2addr v2, v4

    .line 800
    .line 801
    move-wide/from16 p3, v6

    .line 802
    .line 803
    move-wide/from16 p5, v18

    .line 804
    .line 805
    move/from16 p7, p0

    .line 806
    .line 807
    move-object/from16 p8, v1

    .line 808
    .line 809
    move-object/from16 p9, v0

    .line 810
    .line 811
    move/from16 p10, v2

    .line 812
    .line 813
    .line 814
    invoke-static/range {p3 .. p10}, Landroidx/compose/material/NavigationRailKt;->d(JJZLe8/q;Landroidx/compose/runtime/Composer;I)V

    .line 815
    .line 816
    .line 817
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 818
    .line 819
    .line 820
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 821
    .line 822
    .line 823
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 824
    .line 825
    .line 826
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 827
    .line 828
    .line 829
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 830
    .line 831
    .line 832
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 833
    .line 834
    move-object/from16 v4, p11

    .line 835
    move-wide v9, v6

    .line 836
    move v7, v12

    .line 837
    .line 838
    move-object/from16 v8, v16

    .line 839
    .line 840
    move-wide/from16 v11, v18

    .line 841
    .line 842
    move/from16 v5, v20

    .line 843
    .line 844
    move-object/from16 v6, v21

    .line 845
    .line 846
    .line 847
    :goto_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 848
    move-result-object v15

    .line 849
    .line 850
    if-nez v15, :cond_30

    .line 851
    goto :goto_1e

    .line 852
    .line 853
    :cond_30
    new-instance v2, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$3;

    .line 854
    move-object v0, v2

    .line 855
    .line 856
    move/from16 v1, p0

    .line 857
    .line 858
    move-object/from16 v22, v2

    .line 859
    .line 860
    move-object/from16 v2, p1

    .line 861
    .line 862
    move-object/from16 v3, p2

    .line 863
    .line 864
    move/from16 v13, p13

    .line 865
    .line 866
    move/from16 v14, p14

    .line 867
    .line 868
    .line 869
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$3;-><init>(ZLe8/a;Le8/p;Landroidx/compose/ui/Modifier;ZLe8/p;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJII)V

    .line 870
    .line 871
    move-object/from16 v0, v22

    .line 872
    .line 873
    .line 874
    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 875
    :goto_1e
    return-void
.end method

.method private static final c(Le8/p;Le8/p;FLandroidx/compose/runtime/Composer;I)V
    .locals 16
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
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;F",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    move/from16 v3, p4

    .line 9
    .line 10
    .line 11
    const v4, -0x717a9fb4

    .line 12
    .line 13
    move-object/from16 v5, p3

    .line 14
    .line 15
    .line 16
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    and-int/lit8 v5, v3, 0xe

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result v5

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    const/4 v5, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x2

    .line 31
    :goto_0
    or-int/2addr v5, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v3

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v6, v3, 0x70

    .line 36
    .line 37
    if-nez v6, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 41
    move-result v6

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    const/16 v6, 0x20

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    const/16 v6, 0x10

    .line 49
    :goto_2
    or-int/2addr v5, v6

    .line 50
    .line 51
    :cond_3
    and-int/lit16 v6, v3, 0x380

    .line 52
    .line 53
    if-nez v6, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    const/16 v6, 0x100

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_4
    const/16 v6, 0x80

    .line 65
    :goto_3
    or-int/2addr v5, v6

    .line 66
    .line 67
    :cond_5
    and-int/lit16 v6, v5, 0x2db

    .line 68
    .line 69
    const/16 v7, 0x92

    .line 70
    .line 71
    if-ne v6, v7, :cond_7

    .line 72
    .line 73
    .line 74
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->b()Z

    .line 75
    move-result v6

    .line 76
    .line 77
    if-nez v6, :cond_6

    .line 78
    goto :goto_4

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->g()V

    .line 82
    .line 83
    goto/16 :goto_8

    .line 84
    .line 85
    :cond_7
    :goto_4
    new-instance v6, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2;

    .line 86
    .line 87
    .line 88
    invoke-direct {v6, v1, v2}, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2;-><init>(Le8/p;F)V

    .line 89
    .line 90
    .line 91
    const v7, -0x4ee9b9da

    .line 92
    .line 93
    .line 94
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 95
    .line 96
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 100
    move-result-object v9

    .line 101
    .line 102
    .line 103
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 104
    move-result-object v9

    .line 105
    .line 106
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 110
    move-result-object v10

    .line 111
    .line 112
    .line 113
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 114
    move-result-object v10

    .line 115
    .line 116
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 120
    move-result-object v11

    .line 121
    .line 122
    .line 123
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 124
    move-result-object v11

    .line 125
    .line 126
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 127
    .line 128
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 132
    move-result-object v13

    .line 133
    .line 134
    .line 135
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 136
    move-result-object v14

    .line 137
    .line 138
    .line 139
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 140
    move-result-object v15

    .line 141
    .line 142
    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    .line 143
    .line 144
    if-nez v15, :cond_8

    .line 145
    .line 146
    .line 147
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 148
    .line 149
    .line 150
    :cond_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->e()V

    .line 151
    .line 152
    .line 153
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()Z

    .line 154
    move-result v15

    .line 155
    .line 156
    if-eqz v15, :cond_9

    .line 157
    .line 158
    .line 159
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 160
    goto :goto_5

    .line 161
    .line 162
    .line 163
    :cond_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->c()V

    .line 164
    .line 165
    .line 166
    :goto_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->L()V

    .line 167
    .line 168
    .line 169
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 170
    move-result-object v13

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 174
    move-result-object v15

    .line 175
    .line 176
    .line 177
    invoke-static {v13, v6, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 181
    move-result-object v6

    .line 182
    .line 183
    .line 184
    invoke-static {v13, v9, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 188
    move-result-object v6

    .line 189
    .line 190
    .line 191
    invoke-static {v13, v10, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 195
    move-result-object v6

    .line 196
    .line 197
    .line 198
    invoke-static {v13, v11, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    .line 202
    .line 203
    .line 204
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 205
    move-result-object v6

    .line 206
    .line 207
    .line 208
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 209
    move-result-object v6

    .line 210
    const/4 v9, 0x0

    .line 211
    .line 212
    .line 213
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object v10

    .line 215
    .line 216
    .line 217
    invoke-interface {v14, v6, v4, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const v6, 0x7ab4aae9

    .line 221
    .line 222
    .line 223
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 224
    .line 225
    .line 226
    const v10, 0x73d41275

    .line 227
    .line 228
    .line 229
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 230
    .line 231
    const-string v10, "icon"

    .line 232
    .line 233
    .line 234
    invoke-static {v8, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 235
    move-result-object v10

    .line 236
    .line 237
    .line 238
    const v11, 0x2bb5b5d7

    .line 239
    .line 240
    .line 241
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 242
    .line 243
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 247
    move-result-object v14

    .line 248
    .line 249
    .line 250
    invoke-static {v14, v9, v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 251
    move-result-object v14

    .line 252
    .line 253
    .line 254
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 255
    .line 256
    .line 257
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 258
    move-result-object v15

    .line 259
    .line 260
    .line 261
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 262
    move-result-object v15

    .line 263
    .line 264
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 265
    .line 266
    .line 267
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 268
    move-result-object v7

    .line 269
    .line 270
    .line 271
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 272
    move-result-object v7

    .line 273
    .line 274
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 275
    .line 276
    .line 277
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 278
    move-result-object v11

    .line 279
    .line 280
    .line 281
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 282
    move-result-object v11

    .line 283
    .line 284
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 288
    move-result-object v6

    .line 289
    .line 290
    .line 291
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 292
    move-result-object v10

    .line 293
    .line 294
    .line 295
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 296
    move-result-object v9

    .line 297
    .line 298
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 299
    .line 300
    if-nez v9, :cond_a

    .line 301
    .line 302
    .line 303
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 304
    .line 305
    .line 306
    :cond_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->e()V

    .line 307
    .line 308
    .line 309
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()Z

    .line 310
    move-result v9

    .line 311
    .line 312
    if-eqz v9, :cond_b

    .line 313
    .line 314
    .line 315
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 316
    goto :goto_6

    .line 317
    .line 318
    .line 319
    :cond_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->c()V

    .line 320
    .line 321
    .line 322
    :goto_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->L()V

    .line 323
    .line 324
    .line 325
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 326
    move-result-object v6

    .line 327
    .line 328
    .line 329
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 330
    move-result-object v9

    .line 331
    .line 332
    .line 333
    invoke-static {v6, v14, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 337
    move-result-object v9

    .line 338
    .line 339
    .line 340
    invoke-static {v6, v15, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 344
    move-result-object v9

    .line 345
    .line 346
    .line 347
    invoke-static {v6, v7, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 351
    move-result-object v7

    .line 352
    .line 353
    .line 354
    invoke-static {v6, v11, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 355
    .line 356
    .line 357
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    .line 358
    .line 359
    .line 360
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 361
    move-result-object v6

    .line 362
    .line 363
    .line 364
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 365
    move-result-object v6

    .line 366
    const/4 v7, 0x0

    .line 367
    .line 368
    .line 369
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    move-result-object v9

    .line 371
    .line 372
    .line 373
    invoke-interface {v10, v6, v4, v9}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    const v6, 0x7ab4aae9

    .line 377
    .line 378
    .line 379
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 380
    .line 381
    .line 382
    const v6, -0x7f65a980

    .line 383
    .line 384
    .line 385
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 386
    .line 387
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 388
    .line 389
    .line 390
    const v7, 0x53c732af

    .line 391
    .line 392
    .line 393
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 394
    .line 395
    and-int/lit8 v7, v5, 0xe

    .line 396
    .line 397
    .line 398
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    move-result-object v7

    .line 400
    .line 401
    .line 402
    invoke-interface {v0, v4, v7}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 406
    .line 407
    .line 408
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 409
    .line 410
    .line 411
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 412
    .line 413
    .line 414
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->d()V

    .line 415
    .line 416
    .line 417
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 418
    .line 419
    .line 420
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 421
    .line 422
    if-eqz v1, :cond_e

    .line 423
    .line 424
    const-string v7, "label"

    .line 425
    .line 426
    .line 427
    invoke-static {v8, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 428
    move-result-object v7

    .line 429
    .line 430
    .line 431
    invoke-static {v7, v2}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 432
    move-result-object v7

    .line 433
    .line 434
    .line 435
    const v8, 0x2bb5b5d7

    .line 436
    .line 437
    .line 438
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 442
    move-result-object v8

    .line 443
    const/4 v9, 0x0

    .line 444
    .line 445
    .line 446
    invoke-static {v8, v9, v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 447
    move-result-object v8

    .line 448
    .line 449
    .line 450
    const v9, -0x4ee9b9da

    .line 451
    .line 452
    .line 453
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 454
    .line 455
    .line 456
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 457
    move-result-object v9

    .line 458
    .line 459
    .line 460
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 461
    move-result-object v9

    .line 462
    .line 463
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 464
    .line 465
    .line 466
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 467
    move-result-object v10

    .line 468
    .line 469
    .line 470
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 471
    move-result-object v10

    .line 472
    .line 473
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 474
    .line 475
    .line 476
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 477
    move-result-object v11

    .line 478
    .line 479
    .line 480
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 481
    move-result-object v11

    .line 482
    .line 483
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 487
    move-result-object v13

    .line 488
    .line 489
    .line 490
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 491
    move-result-object v7

    .line 492
    .line 493
    .line 494
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 495
    move-result-object v14

    .line 496
    .line 497
    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    .line 498
    .line 499
    if-nez v14, :cond_c

    .line 500
    .line 501
    .line 502
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 503
    .line 504
    .line 505
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->e()V

    .line 506
    .line 507
    .line 508
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()Z

    .line 509
    move-result v14

    .line 510
    .line 511
    if-eqz v14, :cond_d

    .line 512
    .line 513
    .line 514
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 515
    goto :goto_7

    .line 516
    .line 517
    .line 518
    :cond_d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->c()V

    .line 519
    .line 520
    .line 521
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->L()V

    .line 522
    .line 523
    .line 524
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 525
    move-result-object v13

    .line 526
    .line 527
    .line 528
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 529
    move-result-object v14

    .line 530
    .line 531
    .line 532
    invoke-static {v13, v8, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 536
    move-result-object v8

    .line 537
    .line 538
    .line 539
    invoke-static {v13, v9, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 543
    move-result-object v8

    .line 544
    .line 545
    .line 546
    invoke-static {v13, v10, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 550
    move-result-object v8

    .line 551
    .line 552
    .line 553
    invoke-static {v13, v11, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 554
    .line 555
    .line 556
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    .line 557
    .line 558
    .line 559
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 560
    move-result-object v8

    .line 561
    .line 562
    .line 563
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 564
    move-result-object v8

    .line 565
    const/4 v9, 0x0

    .line 566
    .line 567
    .line 568
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    move-result-object v9

    .line 570
    .line 571
    .line 572
    invoke-interface {v7, v8, v4, v9}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    const v7, 0x7ab4aae9

    .line 576
    .line 577
    .line 578
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 579
    .line 580
    .line 581
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 582
    .line 583
    .line 584
    const v6, 0x7d9886f4

    .line 585
    .line 586
    .line 587
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 588
    .line 589
    shr-int/lit8 v5, v5, 0x3

    .line 590
    .line 591
    and-int/lit8 v5, v5, 0xe

    .line 592
    .line 593
    .line 594
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 595
    move-result-object v5

    .line 596
    .line 597
    .line 598
    invoke-interface {v1, v4, v5}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 602
    .line 603
    .line 604
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 605
    .line 606
    .line 607
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 608
    .line 609
    .line 610
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->d()V

    .line 611
    .line 612
    .line 613
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 614
    .line 615
    .line 616
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 617
    .line 618
    .line 619
    :cond_e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 620
    .line 621
    .line 622
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 623
    .line 624
    .line 625
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->d()V

    .line 626
    .line 627
    .line 628
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 629
    .line 630
    .line 631
    :goto_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 632
    move-result-object v4

    .line 633
    .line 634
    if-nez v4, :cond_f

    .line 635
    goto :goto_9

    .line 636
    .line 637
    :cond_f
    new-instance v5, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$3;

    .line 638
    .line 639
    .line 640
    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$3;-><init>(Le8/p;Le8/p;FI)V

    .line 641
    .line 642
    .line 643
    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 644
    :goto_9
    return-void
.end method

.method private static final d(JJZLe8/q;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Le8/q<",
            "-",
            "Ljava/lang/Float;",
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
    move-wide/from16 v1, p0

    .line 3
    .line 4
    move-wide/from16 v3, p2

    .line 5
    .line 6
    move/from16 v5, p4

    .line 7
    .line 8
    move-object/from16 v6, p5

    .line 9
    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    .line 13
    const v0, -0xc590a32

    .line 14
    .line 15
    move-object/from16 v8, p6

    .line 16
    .line 17
    .line 18
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    and-int/lit8 v8, v7, 0xe

    .line 22
    const/4 v15, 0x2

    .line 23
    .line 24
    if-nez v8, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 28
    move-result v8

    .line 29
    .line 30
    if-eqz v8, :cond_0

    .line 31
    const/4 v8, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v8, v15

    .line 34
    :goto_0
    or-int/2addr v8, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v8, v7

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v9, v7, 0x70

    .line 39
    .line 40
    if-nez v9, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v3, v4}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 44
    move-result v9

    .line 45
    .line 46
    if-eqz v9, :cond_2

    .line 47
    .line 48
    const/16 v9, 0x20

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_2
    const/16 v9, 0x10

    .line 52
    :goto_2
    or-int/2addr v8, v9

    .line 53
    .line 54
    :cond_3
    and-int/lit16 v9, v7, 0x380

    .line 55
    .line 56
    if-nez v9, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 60
    move-result v9

    .line 61
    .line 62
    if-eqz v9, :cond_4

    .line 63
    .line 64
    const/16 v9, 0x100

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    const/16 v9, 0x80

    .line 68
    :goto_3
    or-int/2addr v8, v9

    .line 69
    .line 70
    :cond_5
    and-int/lit16 v9, v7, 0x1c00

    .line 71
    .line 72
    if-nez v9, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 76
    move-result v9

    .line 77
    .line 78
    if-eqz v9, :cond_6

    .line 79
    .line 80
    const/16 v9, 0x800

    .line 81
    goto :goto_4

    .line 82
    .line 83
    :cond_6
    const/16 v9, 0x400

    .line 84
    :goto_4
    or-int/2addr v8, v9

    .line 85
    :cond_7
    move v14, v8

    .line 86
    .line 87
    and-int/lit16 v8, v14, 0x16db

    .line 88
    .line 89
    const/16 v9, 0x492

    .line 90
    .line 91
    if-ne v8, v9, :cond_9

    .line 92
    .line 93
    .line 94
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 95
    move-result v8

    .line 96
    .line 97
    if-nez v8, :cond_8

    .line 98
    goto :goto_5

    .line 99
    .line 100
    .line 101
    :cond_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 102
    goto :goto_7

    .line 103
    .line 104
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 105
    .line 106
    const/high16 v8, 0x3f800000    # 1.0f

    .line 107
    goto :goto_6

    .line 108
    :cond_a
    const/4 v8, 0x0

    .line 109
    .line 110
    :goto_6
    sget-object v9, Landroidx/compose/material/NavigationRailKt;->NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    .line 114
    const/16 v13, 0x30

    .line 115
    .line 116
    const/16 v16, 0xc

    .line 117
    move-object v12, v0

    .line 118
    .line 119
    move/from16 v17, v14

    .line 120
    .line 121
    move/from16 v14, v16

    .line 122
    .line 123
    .line 124
    invoke-static/range {v8 .. v14}, Landroidx/compose/animation/core/AnimateAsStateKt;->d(FLandroidx/compose/animation/core/AnimationSpec;FLe8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 125
    move-result-object v8

    .line 126
    .line 127
    .line 128
    invoke-static {v8}, Landroidx/compose/material/NavigationRailKt;->e(Landroidx/compose/runtime/State;)F

    .line 129
    move-result v9

    .line 130
    .line 131
    .line 132
    invoke-static {v3, v4, v1, v2, v9}, Landroidx/compose/ui/graphics/ColorKt;->i(JJF)J

    .line 133
    move-result-wide v9

    .line 134
    .line 135
    new-array v11, v15, [Landroidx/compose/runtime/ProvidedValue;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 139
    move-result-object v12

    .line 140
    .line 141
    const/high16 v20, 0x3f800000    # 1.0f

    .line 142
    .line 143
    const/16 v21, 0x0

    .line 144
    .line 145
    const/16 v22, 0x0

    .line 146
    .line 147
    const/16 v23, 0x0

    .line 148
    .line 149
    const/16 v24, 0xe

    .line 150
    .line 151
    const/16 v25, 0x0

    .line 152
    .line 153
    move-wide/from16 v18, v9

    .line 154
    .line 155
    .line 156
    invoke-static/range {v18 .. v25}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 157
    move-result-wide v13

    .line 158
    .line 159
    .line 160
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 161
    move-result-object v13

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 165
    move-result-object v12

    .line 166
    const/4 v13, 0x0

    .line 167
    .line 168
    aput-object v12, v11, v13

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 172
    move-result-object v12

    .line 173
    .line 174
    .line 175
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 176
    move-result v9

    .line 177
    .line 178
    .line 179
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    move-result-object v9

    .line 181
    .line 182
    .line 183
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 184
    move-result-object v9

    .line 185
    const/4 v10, 0x1

    .line 186
    .line 187
    aput-object v9, v11, v10

    .line 188
    .line 189
    new-instance v9, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$1;

    .line 190
    .line 191
    move/from16 v12, v17

    .line 192
    .line 193
    .line 194
    invoke-direct {v9, v6, v12, v8}, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$1;-><init>(Le8/q;ILandroidx/compose/runtime/State;)V

    .line 195
    .line 196
    .line 197
    const v8, -0x649ff6f2

    .line 198
    .line 199
    .line 200
    invoke-static {v0, v8, v10, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 201
    move-result-object v8

    .line 202
    .line 203
    const/16 v9, 0x38

    .line 204
    .line 205
    .line 206
    invoke-static {v11, v8, v0, v9}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 207
    .line 208
    .line 209
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 210
    move-result-object v8

    .line 211
    .line 212
    if-nez v8, :cond_b

    .line 213
    goto :goto_8

    .line 214
    .line 215
    :cond_b
    new-instance v9, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$2;

    .line 216
    move-object v0, v9

    .line 217
    .line 218
    move-wide/from16 v1, p0

    .line 219
    .line 220
    move-wide/from16 v3, p2

    .line 221
    .line 222
    move/from16 v5, p4

    .line 223
    .line 224
    move-object/from16 v6, p5

    .line 225
    .line 226
    move/from16 v7, p7

    .line 227
    .line 228
    .line 229
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$2;-><init>(JJZLe8/q;I)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 233
    :goto_8
    return-void
.end method

.method private static final e(Landroidx/compose/runtime/State;)F
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

.method public static final synthetic f(Le8/p;Le8/p;FLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/NavigationRailKt;->c(Le8/p;Le8/p;FLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic g(JJZLe8/q;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/NavigationRailKt;->d(JJZLe8/q;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/NavigationRailKt;->e(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic i()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/NavigationRailKt;->HeaderPadding:F

    return v0
.end method

.method public static final synthetic j()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailPadding:F

    return v0
.end method

.method public static final synthetic k(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/NavigationRailKt;->m(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/NavigationRailKt;->n(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    .line 27
    div-int/lit8 v2, v2, 0x2

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 35
    move-result v3

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    new-instance v6, Landroidx/compose/material/NavigationRailKt$placeIcon$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v6, p1, v0, v1}, Landroidx/compose/material/NavigationRailKt$placeIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;II)V

    .line 46
    const/4 v7, 0x4

    .line 47
    const/4 v8, 0x0

    .line 48
    move-object v2, p0

    .line 49
    .line 50
    .line 51
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static final n(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 5
    move-result-object v1

    .line 6
    move-object v4, p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 10
    move-result v1

    .line 11
    .line 12
    sget v2, Landroidx/compose/material/NavigationRailKt;->ItemLabelBaselineBottomOffset:F

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 20
    move-result v3

    .line 21
    sub-int/2addr v3, v1

    .line 22
    .line 23
    sub-int v6, v3, v2

    .line 24
    .line 25
    .line 26
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    .line 34
    div-int/lit8 v5, v1, 0x2

    .line 35
    .line 36
    sget v1, Landroidx/compose/material/NavigationRailKt;->ItemIconTopOffset:F

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 40
    move-result v10

    .line 41
    .line 42
    .line 43
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 48
    move-result v2

    .line 49
    sub-int/2addr v1, v2

    .line 50
    .line 51
    div-int/lit8 v1, v1, 0x2

    .line 52
    .line 53
    .line 54
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 55
    move-result v2

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 59
    move-result v3

    .line 60
    sub-int/2addr v2, v3

    .line 61
    .line 62
    div-int/lit8 v9, v2, 0x2

    .line 63
    sub-int/2addr v1, v10

    .line 64
    int-to-float v1, v1

    .line 65
    const/4 v2, 0x1

    .line 66
    int-to-float v2, v2

    .line 67
    .line 68
    sub-float v2, v2, p5

    .line 69
    mul-float/2addr v1, v2

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 73
    move-result v7

    .line 74
    .line 75
    .line 76
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 77
    move-result v1

    .line 78
    .line 79
    .line 80
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 81
    move-result v11

    .line 82
    const/4 v12, 0x0

    .line 83
    .line 84
    new-instance v13, Landroidx/compose/material/NavigationRailKt$placeLabelAndIcon$1;

    .line 85
    move-object v2, v13

    .line 86
    .line 87
    move/from16 v3, p5

    .line 88
    .line 89
    move-object/from16 v8, p2

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v2 .. v10}, Landroidx/compose/material/NavigationRailKt$placeLabelAndIcon$1;-><init>(FLandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/Placeable;II)V

    .line 93
    const/4 v5, 0x4

    .line 94
    const/4 v6, 0x0

    .line 95
    move v2, v11

    .line 96
    move-object v3, v12

    .line 97
    move-object v4, v13

    .line 98
    .line 99
    .line 100
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 101
    move-result-object v0

    .line 102
    return-object v0
.end method
