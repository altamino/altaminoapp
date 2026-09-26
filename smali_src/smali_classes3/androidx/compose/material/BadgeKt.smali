.class public final Landroidx/compose/material/BadgeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBadge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Badge.kt\nandroidx/compose/material/BadgeKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,187:1\n75#2:188\n76#2,11:190\n75#2:219\n76#2,11:221\n89#2:249\n75#2:257\n76#2,11:259\n89#2:287\n89#2:292\n75#2:296\n76#2,11:298\n89#2:326\n76#3:189\n76#3:220\n76#3:258\n76#3:297\n460#4,13:201\n460#4,13:232\n473#4,3:246\n460#4,13:270\n473#4,3:284\n473#4,3:289\n460#4,13:309\n473#4,3:323\n68#5,5:214\n73#5:245\n77#5:250\n67#5,6:251\n73#5:283\n77#5:288\n93#6:293\n65#6:332\n65#6:334\n79#7,2:294\n81#7:322\n85#7:327\n155#8:328\n155#8:329\n155#8:330\n155#8:331\n155#8:333\n*S KotlinDebug\n*F\n+ 1 Badge.kt\nandroidx/compose/material/BadgeKt\n*L\n64#1:188\n64#1:190,11\n66#1:219\n66#1:221,11\n66#1:249\n71#1:257\n71#1:259,11\n71#1:287\n64#1:292\n140#1:296\n140#1:298,11\n140#1:326\n64#1:189\n66#1:220\n71#1:258\n140#1:297\n64#1:201,13\n66#1:232,13\n66#1:246,3\n71#1:270,13\n71#1:284,3\n64#1:289,3\n140#1:309,13\n140#1:323,3\n66#1:214,5\n66#1:245\n66#1:250\n71#1:251,6\n71#1:283\n71#1:288\n142#1:293\n182#1:332\n186#1:334\n140#1:294,2\n140#1:322\n140#1:327\n169#1:328\n172#1:329\n178#1:330\n182#1:331\n186#1:333\n*E\n"
.end annotation


# static fields
.field private static final BadgeContentFontSize:J

.field private static final BadgeHorizontalOffset:F

.field private static final BadgeRadius:F

.field private static final BadgeWithContentHorizontalOffset:F

.field private static final BadgeWithContentHorizontalPadding:F

.field private static final BadgeWithContentRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    int-to-float v0, v0

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 6
    move-result v1

    .line 7
    .line 8
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeRadius:F

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    int-to-float v1, v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 15
    move-result v1

    .line 16
    .line 17
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeWithContentRadius:F

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->e(I)J

    .line 23
    move-result-wide v1

    .line 24
    .line 25
    sput-wide v1, Landroidx/compose/material/BadgeKt;->BadgeContentFontSize:J

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 29
    move-result v1

    .line 30
    .line 31
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalPadding:F

    .line 32
    const/4 v1, 0x6

    .line 33
    int-to-float v1, v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 37
    move-result v1

    .line 38
    neg-float v1, v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 42
    move-result v1

    .line 43
    .line 44
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalOffset:F

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 48
    move-result v0

    .line 49
    neg-float v0, v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 53
    move-result v0

    .line 54
    .line 55
    sput v0, Landroidx/compose/material/BadgeKt;->BadgeHorizontalOffset:F

    .line 56
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;JJLe8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Landroidx/compose/ui/Modifier;",
            "JJ",
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
    move/from16 v7, p7

    .line 3
    .line 4
    .line 5
    const v0, 0x438f99d6

    .line 6
    .line 7
    move-object/from16 v1, p6

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    and-int/lit8 v1, p8, 0x1

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    or-int/lit8 v3, v7, 0x6

    .line 19
    move v4, v3

    .line 20
    .line 21
    move-object/from16 v3, p0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    and-int/lit8 v3, v7, 0xe

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    const/4 v4, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :goto_0
    or-int/2addr v4, v7

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    move-object/from16 v3, p0

    .line 42
    move v4, v7

    .line 43
    .line 44
    :goto_1
    and-int/lit8 v5, v7, 0x70

    .line 45
    .line 46
    if-nez v5, :cond_5

    .line 47
    .line 48
    and-int/lit8 v5, p8, 0x2

    .line 49
    .line 50
    if-nez v5, :cond_3

    .line 51
    .line 52
    move-wide/from16 v5, p1

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 56
    move-result v8

    .line 57
    .line 58
    if-eqz v8, :cond_4

    .line 59
    .line 60
    const/16 v8, 0x20

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_3
    move-wide/from16 v5, p1

    .line 64
    .line 65
    :cond_4
    const/16 v8, 0x10

    .line 66
    :goto_2
    or-int/2addr v4, v8

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_5
    move-wide/from16 v5, p1

    .line 70
    .line 71
    :goto_3
    and-int/lit16 v8, v7, 0x380

    .line 72
    .line 73
    if-nez v8, :cond_8

    .line 74
    .line 75
    and-int/lit8 v8, p8, 0x4

    .line 76
    .line 77
    if-nez v8, :cond_6

    .line 78
    .line 79
    move-wide/from16 v8, p3

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v8, v9}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 83
    move-result v10

    .line 84
    .line 85
    if-eqz v10, :cond_7

    .line 86
    .line 87
    const/16 v10, 0x100

    .line 88
    goto :goto_4

    .line 89
    .line 90
    :cond_6
    move-wide/from16 v8, p3

    .line 91
    .line 92
    :cond_7
    const/16 v10, 0x80

    .line 93
    :goto_4
    or-int/2addr v4, v10

    .line 94
    goto :goto_5

    .line 95
    .line 96
    :cond_8
    move-wide/from16 v8, p3

    .line 97
    .line 98
    :goto_5
    and-int/lit8 v10, p8, 0x8

    .line 99
    .line 100
    if-eqz v10, :cond_a

    .line 101
    .line 102
    or-int/lit16 v4, v4, 0xc00

    .line 103
    .line 104
    :cond_9
    move-object/from16 v11, p5

    .line 105
    goto :goto_7

    .line 106
    .line 107
    :cond_a
    and-int/lit16 v11, v7, 0x1c00

    .line 108
    .line 109
    if-nez v11, :cond_9

    .line 110
    .line 111
    move-object/from16 v11, p5

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 115
    move-result v12

    .line 116
    .line 117
    if-eqz v12, :cond_b

    .line 118
    .line 119
    const/16 v12, 0x800

    .line 120
    goto :goto_6

    .line 121
    .line 122
    :cond_b
    const/16 v12, 0x400

    .line 123
    :goto_6
    or-int/2addr v4, v12

    .line 124
    .line 125
    :goto_7
    and-int/lit16 v12, v4, 0x16db

    .line 126
    .line 127
    const/16 v13, 0x492

    .line 128
    .line 129
    if-ne v12, v13, :cond_d

    .line 130
    .line 131
    .line 132
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 133
    move-result v12

    .line 134
    .line 135
    if-nez v12, :cond_c

    .line 136
    goto :goto_9

    .line 137
    .line 138
    .line 139
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 140
    move-object v1, v3

    .line 141
    :goto_8
    move-wide v2, v5

    .line 142
    move-wide v4, v8

    .line 143
    move-object v6, v11

    .line 144
    .line 145
    goto/16 :goto_f

    .line 146
    .line 147
    .line 148
    :cond_d
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 149
    .line 150
    and-int/lit8 v12, v7, 0x1

    .line 151
    const/4 v13, 0x0

    .line 152
    const/4 v14, 0x6

    .line 153
    .line 154
    if-eqz v12, :cond_11

    .line 155
    .line 156
    .line 157
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 158
    move-result v12

    .line 159
    .line 160
    if-eqz v12, :cond_e

    .line 161
    goto :goto_a

    .line 162
    .line 163
    .line 164
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 165
    .line 166
    and-int/lit8 v1, p8, 0x2

    .line 167
    .line 168
    if-eqz v1, :cond_f

    .line 169
    .line 170
    and-int/lit8 v4, v4, -0x71

    .line 171
    .line 172
    :cond_f
    and-int/lit8 v1, p8, 0x4

    .line 173
    .line 174
    if-eqz v1, :cond_10

    .line 175
    .line 176
    and-int/lit16 v4, v4, -0x381

    .line 177
    :cond_10
    move-object v1, v3

    .line 178
    goto :goto_c

    .line 179
    .line 180
    :cond_11
    :goto_a
    if-eqz v1, :cond_12

    .line 181
    .line 182
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 183
    goto :goto_b

    .line 184
    :cond_12
    move-object v1, v3

    .line 185
    .line 186
    :goto_b
    and-int/lit8 v3, p8, 0x2

    .line 187
    .line 188
    if-eqz v3, :cond_13

    .line 189
    .line 190
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v0, v14}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->d()J

    .line 198
    move-result-wide v5

    .line 199
    .line 200
    and-int/lit8 v4, v4, -0x71

    .line 201
    .line 202
    :cond_13
    and-int/lit8 v3, p8, 0x4

    .line 203
    .line 204
    if-eqz v3, :cond_14

    .line 205
    .line 206
    shr-int/lit8 v3, v4, 0x3

    .line 207
    .line 208
    and-int/lit8 v3, v3, 0xe

    .line 209
    .line 210
    .line 211
    invoke-static {v5, v6, v0, v3}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 212
    move-result-wide v8

    .line 213
    .line 214
    and-int/lit16 v3, v4, -0x381

    .line 215
    move v4, v3

    .line 216
    .line 217
    :cond_14
    if-eqz v10, :cond_15

    .line 218
    move-object v11, v13

    .line 219
    .line 220
    .line 221
    :cond_15
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 222
    .line 223
    if-eqz v11, :cond_16

    .line 224
    .line 225
    sget v3, Landroidx/compose/material/BadgeKt;->BadgeWithContentRadius:F

    .line 226
    goto :goto_d

    .line 227
    .line 228
    :cond_16
    sget v3, Landroidx/compose/material/BadgeKt;->BadgeRadius:F

    .line 229
    .line 230
    .line 231
    :goto_d
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->c(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 232
    move-result-object v10

    .line 233
    int-to-float v12, v2

    .line 234
    mul-float/2addr v3, v12

    .line 235
    .line 236
    .line 237
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 238
    move-result v12

    .line 239
    .line 240
    .line 241
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 242
    move-result v3

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v12, v3}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 246
    move-result-object v3

    .line 247
    .line 248
    .line 249
    invoke-static {v3, v5, v6, v10}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 250
    move-result-object v3

    .line 251
    .line 252
    .line 253
    invoke-static {v3, v10}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 254
    move-result-object v3

    .line 255
    .line 256
    sget v10, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalPadding:F

    .line 257
    const/4 v12, 0x0

    .line 258
    .line 259
    .line 260
    invoke-static {v3, v10, v12, v2, v13}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 261
    move-result-object v2

    .line 262
    .line 263
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 267
    move-result-object v3

    .line 268
    .line 269
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v10}, Landroidx/compose/foundation/layout/Arrangement;->b()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 273
    move-result-object v10

    .line 274
    .line 275
    .line 276
    const v12, 0x2952b718

    .line 277
    .line 278
    .line 279
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 280
    .line 281
    const/16 v12, 0x36

    .line 282
    .line 283
    .line 284
    invoke-static {v10, v3, v0, v12}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 285
    move-result-object v3

    .line 286
    .line 287
    .line 288
    const v10, -0x4ee9b9da

    .line 289
    .line 290
    .line 291
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 295
    move-result-object v10

    .line 296
    .line 297
    .line 298
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 299
    move-result-object v10

    .line 300
    .line 301
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 302
    .line 303
    .line 304
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 305
    move-result-object v12

    .line 306
    .line 307
    .line 308
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 309
    move-result-object v12

    .line 310
    .line 311
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 312
    .line 313
    .line 314
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 315
    move-result-object v13

    .line 316
    .line 317
    .line 318
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 319
    move-result-object v13

    .line 320
    .line 321
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 322
    .line 323
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 327
    move-result-object v14

    .line 328
    .line 329
    .line 330
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 331
    move-result-object v2

    .line 332
    .line 333
    move-object/from16 p0, v1

    .line 334
    .line 335
    .line 336
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 337
    move-result-object v1

    .line 338
    .line 339
    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    .line 340
    .line 341
    if-nez v1, :cond_17

    .line 342
    .line 343
    .line 344
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 345
    .line 346
    .line 347
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 348
    .line 349
    .line 350
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 351
    move-result v1

    .line 352
    .line 353
    if-eqz v1, :cond_18

    .line 354
    .line 355
    .line 356
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 357
    goto :goto_e

    .line 358
    .line 359
    .line 360
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 361
    .line 362
    .line 363
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 364
    .line 365
    .line 366
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 367
    move-result-object v1

    .line 368
    .line 369
    .line 370
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 371
    move-result-object v14

    .line 372
    .line 373
    .line 374
    invoke-static {v1, v3, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 378
    move-result-object v3

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 385
    move-result-object v3

    .line 386
    .line 387
    .line 388
    invoke-static {v1, v12, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 392
    move-result-object v3

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v13, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 396
    .line 397
    .line 398
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 399
    .line 400
    .line 401
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 402
    move-result-object v1

    .line 403
    .line 404
    .line 405
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 406
    move-result-object v1

    .line 407
    const/4 v3, 0x0

    .line 408
    .line 409
    .line 410
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    move-result-object v10

    .line 412
    .line 413
    .line 414
    invoke-interface {v2, v1, v0, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    const v1, 0x7ab4aae9

    .line 418
    .line 419
    .line 420
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 421
    .line 422
    .line 423
    const v1, -0x286e2e7f

    .line 424
    .line 425
    .line 426
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 427
    .line 428
    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 429
    .line 430
    .line 431
    const v2, -0x3d165dc6

    .line 432
    .line 433
    .line 434
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 435
    .line 436
    if-eqz v11, :cond_19

    .line 437
    const/4 v2, 0x1

    .line 438
    .line 439
    new-array v10, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 440
    .line 441
    .line 442
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 443
    move-result-object v12

    .line 444
    .line 445
    .line 446
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 447
    move-result-object v13

    .line 448
    .line 449
    .line 450
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 451
    move-result-object v12

    .line 452
    .line 453
    aput-object v12, v10, v3

    .line 454
    .line 455
    new-instance v3, Landroidx/compose/material/BadgeKt$Badge$1$1;

    .line 456
    const/4 v12, 0x6

    .line 457
    .line 458
    .line 459
    invoke-direct {v3, v11, v1, v12, v4}, Landroidx/compose/material/BadgeKt$Badge$1$1;-><init>(Le8/q;Landroidx/compose/foundation/layout/RowScope;II)V

    .line 460
    .line 461
    .line 462
    const v1, 0x6a5db695

    .line 463
    .line 464
    .line 465
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 466
    move-result-object v1

    .line 467
    .line 468
    const/16 v2, 0x38

    .line 469
    .line 470
    .line 471
    invoke-static {v10, v1, v0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 472
    .line 473
    .line 474
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 475
    .line 476
    .line 477
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 478
    .line 479
    .line 480
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 481
    .line 482
    .line 483
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 484
    .line 485
    .line 486
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 487
    .line 488
    .line 489
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 490
    .line 491
    move-object/from16 v1, p0

    .line 492
    .line 493
    goto/16 :goto_8

    .line 494
    .line 495
    .line 496
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 497
    move-result-object v9

    .line 498
    .line 499
    if-nez v9, :cond_1a

    .line 500
    goto :goto_10

    .line 501
    .line 502
    :cond_1a
    new-instance v10, Landroidx/compose/material/BadgeKt$Badge$2;

    .line 503
    move-object v0, v10

    .line 504
    .line 505
    move/from16 v7, p7

    .line 506
    .line 507
    move/from16 v8, p8

    .line 508
    .line 509
    .line 510
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/BadgeKt$Badge$2;-><init>(Landroidx/compose/ui/Modifier;JJLe8/q;II)V

    .line 511
    .line 512
    .line 513
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 514
    :goto_10
    return-void
.end method

.method public static final b(Le8/q;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
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
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
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

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    const-string v0, "badge"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x333f9658

    move-object/from16 v5, p3

    .line 1
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v4, 0xe

    if-nez v5, :cond_2

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v4

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    and-int/lit8 v7, p5, 0x2

    if-eqz v7, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v8, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v4, 0x70

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x20

    goto :goto_2

    :cond_5
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    :goto_3
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v4, 0x380

    if-nez v9, :cond_8

    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v5, v9

    :cond_8
    :goto_5
    and-int/lit16 v9, v5, 0x2db

    const/16 v10, 0x92

    if-ne v9, v10, :cond_a

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_6

    .line 2
    :cond_9
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->g()V

    move-object v4, v1

    move-object/from16 v17, v8

    goto/16 :goto_11

    :cond_a
    :goto_6
    if-eqz v7, :cond_b

    .line 3
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_7

    :cond_b
    move-object v7, v8

    .line 4
    :goto_7
    sget-object v8, Landroidx/compose/material/BadgeKt$BadgedBox$2;->INSTANCE:Landroidx/compose/material/BadgeKt$BadgedBox$2;

    and-int/lit8 v9, v5, 0x70

    const v10, -0x4ee9b9da

    .line 5
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 6
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    .line 7
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    .line 8
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 10
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 11
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 12
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 13
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    .line 14
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 15
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v15

    .line 16
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v10

    shl-int/lit8 v9, v9, 0x9

    and-int/lit16 v9, v9, 0x1c00

    or-int/lit8 v9, v9, 0x6

    .line 17
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 18
    :cond_c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->e()V

    .line 19
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 20
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_8

    .line 21
    :cond_d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->c()V

    .line 22
    :goto_8
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->L()V

    .line 23
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 24
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v15

    invoke-static {v6, v8, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 25
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v8

    invoke-static {v6, v11, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 26
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v8

    invoke-static {v6, v12, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 27
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v8

    invoke-static {v6, v13, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 28
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    .line 29
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v6

    shr-int/lit8 v8, v9, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v6, v2, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x7ab4aae9

    .line 30
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v8, v9, 0x9

    const v9, 0x6b48e38f

    .line 31
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    and-int/lit8 v8, v8, 0xa

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    .line 32
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_9

    .line 33
    :cond_e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->g()V

    move-object v4, v1

    move-object/from16 v17, v7

    goto/16 :goto_10

    .line 34
    :cond_f
    :goto_9
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v9, "anchor"

    invoke-static {v8, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 35
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    move-result-object v11

    shl-int/lit8 v12, v5, 0x3

    and-int/lit16 v12, v12, 0x1c00

    or-int/lit8 v12, v12, 0x36

    const v13, 0x2bb5b5d7

    .line 36
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v15, v12, 0x3

    and-int/lit8 v16, v15, 0xe

    and-int/lit8 v15, v15, 0x70

    or-int v15, v16, v15

    const/4 v13, 0x0

    .line 37
    invoke-static {v11, v13, v2, v15}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    shl-int/lit8 v15, v12, 0x3

    and-int/lit8 v15, v15, 0x70

    const v13, -0x4ee9b9da

    .line 38
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 39
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 40
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    .line 41
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 42
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    .line 43
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 44
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 45
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    .line 46
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 47
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    move-object/from16 v17, v7

    .line 48
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v7

    .line 49
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v9

    shl-int/lit8 v15, v15, 0x9

    and-int/lit16 v15, v15, 0x1c00

    or-int/lit8 v15, v15, 0x6

    .line 50
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_10

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 51
    :cond_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->e()V

    .line 52
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 53
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_a

    .line 54
    :cond_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->c()V

    .line 55
    :goto_a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->L()V

    .line 56
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .line 57
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v7

    invoke-static {v1, v11, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 58
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v7

    invoke-static {v1, v13, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 59
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v7

    invoke-static {v1, v6, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 60
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v6

    invoke-static {v1, v4, v6}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 61
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    .line 62
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v4, v15, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v1, v2, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 63
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v1, v15, 0x9

    const v4, -0x7f65a980

    .line 64
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    and-int/lit8 v1, v1, 0xa

    const/4 v6, 0x2

    if-ne v1, v6, :cond_13

    .line 65
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->g()V

    goto :goto_c

    :cond_13
    :goto_b
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v12, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v1, v2, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 66
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 67
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->d()V

    .line 68
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 69
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 70
    invoke-static {v8, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    shl-int/lit8 v1, v5, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    const v5, 0x2bb5b5d7

    .line 71
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 72
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x3

    and-int/lit8 v7, v6, 0xe

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v7

    const/4 v7, 0x0

    .line 73
    invoke-static {v5, v7, v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    shl-int/lit8 v6, v1, 0x3

    and-int/lit8 v6, v6, 0x70

    const v7, -0x4ee9b9da

    .line 74
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 75
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    .line 76
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 77
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 78
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    .line 79
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 80
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 81
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 82
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 83
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 84
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v10

    .line 85
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v0

    shl-int/lit8 v6, v6, 0x9

    and-int/lit16 v6, v6, 0x1c00

    or-int/lit8 v6, v6, 0x6

    .line 86
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v11

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-nez v11, :cond_14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 87
    :cond_14
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->e()V

    .line 88
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 89
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_d

    .line 90
    :cond_15
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->c()V

    .line 91
    :goto_d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->L()V

    .line 92
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .line 93
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v11

    invoke-static {v10, v5, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 94
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v5

    invoke-static {v10, v7, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 95
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v5

    invoke-static {v10, v8, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 96
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v5

    invoke-static {v10, v9, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 97
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    .line 98
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v5

    shr-int/lit8 v7, v6, 0x3

    and-int/lit8 v7, v7, 0x70

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v2, v7}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 99
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v0, v6, 0x9

    .line 100
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    and-int/lit8 v0, v0, 0xa

    const/4 v4, 0x2

    if-ne v0, v4, :cond_17

    .line 101
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_e

    :cond_16
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v4, p0

    goto :goto_f

    :cond_17
    :goto_e
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v4, p0

    invoke-interface {v4, v0, v2, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 102
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 103
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->d()V

    .line 104
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 105
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 106
    :goto_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 107
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 108
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->d()V

    .line 109
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 110
    :goto_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-nez v6, :cond_18

    goto :goto_12

    :cond_18
    new-instance v7, Landroidx/compose/material/BadgeKt$BadgedBox$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/BadgeKt$BadgedBox$3;-><init>(Le8/q;Landroidx/compose/ui/Modifier;Le8/q;II)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_12
    return-void
.end method

.method public static final synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/material/BadgeKt;->BadgeContentFontSize:J

    return-wide v0
.end method

.method public static final d()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeHorizontalOffset:F

    return v0
.end method

.method public static final e()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeRadius:F

    return v0
.end method

.method public static final f()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalOffset:F

    return v0
.end method
