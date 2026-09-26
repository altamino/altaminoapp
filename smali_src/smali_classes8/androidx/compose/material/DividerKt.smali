.class public final Landroidx/compose/material/DividerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDivider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Divider.kt\nandroidx/compose/material/DividerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,69:1\n155#2:70\n155#2:71\n175#2:73\n76#3:72\n*S KotlinDebug\n*F\n+ 1 Divider.kt\nandroidx/compose/material/DividerKt\n*L\n47#1:70\n48#1:71\n56#1:73\n56#1:72\n*E\n"
.end annotation


# static fields
.field private static final DividerAlpha:F = 0.12f


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;JFFLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move/from16 v6, p6

    .line 3
    .line 4
    .line 5
    const v0, -0x4a783646

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    and-int/lit8 v1, p7, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v2, v6, 0x6

    .line 18
    move v3, v2

    .line 19
    .line 20
    move-object/from16 v2, p0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 v2, v6, 0xe

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v6

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    move-object/from16 v2, p0

    .line 41
    move v3, v6

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 44
    .line 45
    if-nez v4, :cond_5

    .line 46
    .line 47
    and-int/lit8 v4, p7, 0x2

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    move-wide/from16 v4, p1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v4, v5}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 55
    move-result v7

    .line 56
    .line 57
    if-eqz v7, :cond_4

    .line 58
    .line 59
    const/16 v7, 0x20

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_3
    move-wide/from16 v4, p1

    .line 63
    .line 64
    :cond_4
    const/16 v7, 0x10

    .line 65
    :goto_2
    or-int/2addr v3, v7

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_5
    move-wide/from16 v4, p1

    .line 69
    .line 70
    :goto_3
    and-int/lit8 v7, p7, 0x4

    .line 71
    .line 72
    if-eqz v7, :cond_7

    .line 73
    .line 74
    or-int/lit16 v3, v3, 0x180

    .line 75
    .line 76
    :cond_6
    move/from16 v8, p3

    .line 77
    goto :goto_5

    .line 78
    .line 79
    :cond_7
    and-int/lit16 v8, v6, 0x380

    .line 80
    .line 81
    if-nez v8, :cond_6

    .line 82
    .line 83
    move/from16 v8, p3

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 87
    move-result v9

    .line 88
    .line 89
    if-eqz v9, :cond_8

    .line 90
    .line 91
    const/16 v9, 0x100

    .line 92
    goto :goto_4

    .line 93
    .line 94
    :cond_8
    const/16 v9, 0x80

    .line 95
    :goto_4
    or-int/2addr v3, v9

    .line 96
    .line 97
    :goto_5
    and-int/lit8 v9, p7, 0x8

    .line 98
    .line 99
    if-eqz v9, :cond_a

    .line 100
    .line 101
    or-int/lit16 v3, v3, 0xc00

    .line 102
    .line 103
    :cond_9
    move/from16 v10, p4

    .line 104
    goto :goto_7

    .line 105
    .line 106
    :cond_a
    and-int/lit16 v10, v6, 0x1c00

    .line 107
    .line 108
    if-nez v10, :cond_9

    .line 109
    .line 110
    move/from16 v10, p4

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 114
    move-result v11

    .line 115
    .line 116
    if-eqz v11, :cond_b

    .line 117
    .line 118
    const/16 v11, 0x800

    .line 119
    goto :goto_6

    .line 120
    .line 121
    :cond_b
    const/16 v11, 0x400

    .line 122
    :goto_6
    or-int/2addr v3, v11

    .line 123
    .line 124
    :goto_7
    and-int/lit16 v3, v3, 0x16db

    .line 125
    .line 126
    const/16 v11, 0x492

    .line 127
    .line 128
    if-ne v3, v11, :cond_d

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 132
    move-result v3

    .line 133
    .line 134
    if-nez v3, :cond_c

    .line 135
    goto :goto_9

    .line 136
    .line 137
    .line 138
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 139
    move-object v1, v2

    .line 140
    move-wide v2, v4

    .line 141
    :goto_8
    move v4, v8

    .line 142
    move v5, v10

    .line 143
    .line 144
    goto/16 :goto_10

    .line 145
    .line 146
    .line 147
    :cond_d
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 148
    .line 149
    and-int/lit8 v3, v6, 0x1

    .line 150
    const/4 v11, 0x0

    .line 151
    const/4 v12, 0x1

    .line 152
    .line 153
    if-eqz v3, :cond_f

    .line 154
    .line 155
    .line 156
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 157
    move-result v3

    .line 158
    .line 159
    if-eqz v3, :cond_e

    .line 160
    goto :goto_a

    .line 161
    .line 162
    .line 163
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 164
    move-object v1, v2

    .line 165
    move-wide v2, v4

    .line 166
    goto :goto_d

    .line 167
    .line 168
    :cond_f
    :goto_a
    if-eqz v1, :cond_10

    .line 169
    .line 170
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 171
    goto :goto_b

    .line 172
    :cond_10
    move-object v1, v2

    .line 173
    .line 174
    :goto_b
    and-int/lit8 v2, p7, 0x2

    .line 175
    .line 176
    if-eqz v2, :cond_11

    .line 177
    .line 178
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 179
    const/4 v3, 0x6

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 183
    move-result-object v2

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->i()J

    .line 187
    move-result-wide v13

    .line 188
    .line 189
    .line 190
    const v15, 0x3df5c28f    # 0.12f

    .line 191
    .line 192
    const/16 v16, 0x0

    .line 193
    .line 194
    const/16 v17, 0x0

    .line 195
    .line 196
    const/16 v18, 0x0

    .line 197
    .line 198
    const/16 v19, 0xe

    .line 199
    .line 200
    const/16 v20, 0x0

    .line 201
    .line 202
    .line 203
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 204
    move-result-wide v2

    .line 205
    goto :goto_c

    .line 206
    :cond_11
    move-wide v2, v4

    .line 207
    .line 208
    :goto_c
    if-eqz v7, :cond_12

    .line 209
    int-to-float v4, v12

    .line 210
    .line 211
    .line 212
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 213
    move-result v4

    .line 214
    move v8, v4

    .line 215
    .line 216
    :cond_12
    if-eqz v9, :cond_13

    .line 217
    int-to-float v4, v11

    .line 218
    .line 219
    .line 220
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 221
    move-result v4

    .line 222
    move v10, v4

    .line 223
    .line 224
    .line 225
    :cond_13
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 226
    const/4 v4, 0x0

    .line 227
    .line 228
    cmpg-float v5, v10, v4

    .line 229
    .line 230
    if-nez v5, :cond_14

    .line 231
    .line 232
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 233
    goto :goto_e

    .line 234
    .line 235
    :cond_14
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 236
    const/4 v15, 0x0

    .line 237
    .line 238
    const/16 v16, 0x0

    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    const/16 v18, 0xe

    .line 243
    .line 244
    const/16 v19, 0x0

    .line 245
    move v14, v10

    .line 246
    .line 247
    .line 248
    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 249
    move-result-object v5

    .line 250
    .line 251
    .line 252
    :goto_e
    const v7, 0x493fbe0d

    .line 253
    .line 254
    .line 255
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 256
    .line 257
    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Landroidx/compose/ui/unit/Dp$Companion;->a()F

    .line 261
    move-result v7

    .line 262
    .line 263
    .line 264
    invoke-static {v8, v7}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 265
    move-result v7

    .line 266
    .line 267
    if-eqz v7, :cond_15

    .line 268
    .line 269
    .line 270
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 271
    move-result-object v7

    .line 272
    .line 273
    .line 274
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 275
    move-result-object v7

    .line 276
    .line 277
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 278
    .line 279
    .line 280
    invoke-interface {v7}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 281
    move-result v7

    .line 282
    .line 283
    const/high16 v9, 0x3f800000    # 1.0f

    .line 284
    div-float/2addr v9, v7

    .line 285
    .line 286
    .line 287
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 288
    move-result v7

    .line 289
    goto :goto_f

    .line 290
    :cond_15
    move v7, v8

    .line 291
    .line 292
    .line 293
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 294
    .line 295
    .line 296
    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 297
    move-result-object v5

    .line 298
    const/4 v9, 0x0

    .line 299
    .line 300
    .line 301
    invoke-static {v5, v4, v12, v9}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 302
    move-result-object v4

    .line 303
    .line 304
    .line 305
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 306
    move-result-object v4

    .line 307
    const/4 v5, 0x0

    .line 308
    const/4 v7, 0x2

    .line 309
    .line 310
    move-object/from16 p0, v4

    .line 311
    .line 312
    move-wide/from16 p1, v2

    .line 313
    .line 314
    move-object/from16 p3, v5

    .line 315
    .line 316
    move/from16 p4, v7

    .line 317
    .line 318
    move-object/from16 p5, v9

    .line 319
    .line 320
    .line 321
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 322
    move-result-object v4

    .line 323
    .line 324
    .line 325
    invoke-static {v4, v0, v11}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 326
    .line 327
    goto/16 :goto_8

    .line 328
    .line 329
    .line 330
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 331
    move-result-object v8

    .line 332
    .line 333
    if-nez v8, :cond_16

    .line 334
    goto :goto_11

    .line 335
    .line 336
    :cond_16
    new-instance v9, Landroidx/compose/material/DividerKt$Divider$1;

    .line 337
    move-object v0, v9

    .line 338
    .line 339
    move/from16 v6, p6

    .line 340
    .line 341
    move/from16 v7, p7

    .line 342
    .line 343
    .line 344
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/DividerKt$Divider$1;-><init>(Landroidx/compose/ui/Modifier;JFFII)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 348
    :goto_11
    return-void
.end method
