.class public final Landroidx/compose/material/SliderDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final DisabledActiveTrackAlpha:F = 0.32f

.field public static final DisabledInactiveTrackAlpha:F = 0.12f

.field public static final DisabledTickAlpha:F = 0.12f

.field public static final INSTANCE:Landroidx/compose/material/SliderDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final InactiveTrackAlpha:F = 0.24f

.field public static final TickAlpha:F = 0.54f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/SliderDefaults;

    invoke-direct {v0}, Landroidx/compose/material/SliderDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;
    .locals 28
    .param p21    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p21

    .line 3
    .line 4
    move/from16 v1, p24

    .line 5
    .line 6
    .line 7
    const v2, 0x19fd1a17

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 11
    .line 12
    and-int/lit8 v2, v1, 0x1

    .line 13
    const/4 v3, 0x6

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->j()J

    .line 25
    move-result-wide v4

    .line 26
    move-wide v7, v4

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    move-wide/from16 v7, p1

    .line 30
    .line 31
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    .line 43
    move-result-wide v9

    .line 44
    .line 45
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0, v3}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 49
    move-result v11

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    .line 54
    const/16 v15, 0xe

    .line 55
    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    .line 59
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 60
    move-result-wide v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->n()J

    .line 68
    move-result-wide v9

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 72
    move-result-wide v4

    .line 73
    move-wide v9, v4

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_1
    move-wide/from16 v9, p3

    .line 77
    .line 78
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->j()J

    .line 90
    move-result-wide v4

    .line 91
    move-wide v11, v4

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :cond_2
    move-wide/from16 v11, p5

    .line 95
    .line 96
    :goto_2
    and-int/lit8 v2, v1, 0x8

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    .line 101
    const v2, 0x3e75c28f    # 0.24f

    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    .line 106
    const/16 v13, 0xe

    .line 107
    const/4 v14, 0x0

    .line 108
    .line 109
    move-wide/from16 p1, v11

    .line 110
    .line 111
    move/from16 p3, v2

    .line 112
    .line 113
    move/from16 p4, v4

    .line 114
    .line 115
    move/from16 p5, v5

    .line 116
    .line 117
    move/from16 p6, v6

    .line 118
    .line 119
    move/from16 p7, v13

    .line 120
    .line 121
    move-object/from16 p8, v14

    .line 122
    .line 123
    .line 124
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 125
    move-result-wide v4

    .line 126
    move-wide v13, v4

    .line 127
    goto :goto_3

    .line 128
    .line 129
    :cond_3
    move-wide/from16 v13, p7

    .line 130
    .line 131
    :goto_3
    and-int/lit8 v2, v1, 0x10

    .line 132
    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->i()J

    .line 143
    move-result-wide v4

    .line 144
    .line 145
    .line 146
    const v2, 0x3ea3d70a    # 0.32f

    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v15, 0x0

    .line 149
    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    const/16 v17, 0xe

    .line 153
    .line 154
    const/16 v18, 0x0

    .line 155
    .line 156
    move-wide/from16 p1, v4

    .line 157
    .line 158
    move/from16 p3, v2

    .line 159
    .line 160
    move/from16 p4, v6

    .line 161
    .line 162
    move/from16 p5, v15

    .line 163
    .line 164
    move/from16 p6, v16

    .line 165
    .line 166
    move/from16 p7, v17

    .line 167
    .line 168
    move-object/from16 p8, v18

    .line 169
    .line 170
    .line 171
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 172
    move-result-wide v4

    .line 173
    move-wide v15, v4

    .line 174
    goto :goto_4

    .line 175
    .line 176
    :cond_4
    move-wide/from16 v15, p9

    .line 177
    .line 178
    :goto_4
    and-int/lit8 v2, v1, 0x20

    .line 179
    .line 180
    if-eqz v2, :cond_5

    .line 181
    .line 182
    .line 183
    const v2, 0x3df5c28f    # 0.12f

    .line 184
    const/4 v4, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    const/4 v6, 0x0

    .line 187
    .line 188
    const/16 v17, 0xe

    .line 189
    .line 190
    const/16 v18, 0x0

    .line 191
    .line 192
    move-wide/from16 p1, v15

    .line 193
    .line 194
    move/from16 p3, v2

    .line 195
    .line 196
    move/from16 p4, v4

    .line 197
    .line 198
    move/from16 p5, v5

    .line 199
    .line 200
    move/from16 p6, v6

    .line 201
    .line 202
    move/from16 p7, v17

    .line 203
    .line 204
    move-object/from16 p8, v18

    .line 205
    .line 206
    .line 207
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 208
    move-result-wide v4

    .line 209
    .line 210
    move-wide/from16 v17, v4

    .line 211
    goto :goto_5

    .line 212
    .line 213
    :cond_5
    move-wide/from16 v17, p11

    .line 214
    .line 215
    :goto_5
    and-int/lit8 v2, v1, 0x40

    .line 216
    .line 217
    if-eqz v2, :cond_6

    .line 218
    .line 219
    shr-int/lit8 v2, p22, 0x6

    .line 220
    .line 221
    and-int/lit8 v2, v2, 0xe

    .line 222
    .line 223
    .line 224
    invoke-static {v11, v12, v0, v2}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 225
    move-result-wide v2

    .line 226
    .line 227
    .line 228
    const v4, 0x3f0a3d71    # 0.54f

    .line 229
    const/4 v5, 0x0

    .line 230
    const/4 v6, 0x0

    .line 231
    .line 232
    const/16 v19, 0x0

    .line 233
    .line 234
    const/16 v20, 0xe

    .line 235
    .line 236
    const/16 v21, 0x0

    .line 237
    .line 238
    move-wide/from16 p1, v2

    .line 239
    .line 240
    move/from16 p3, v4

    .line 241
    .line 242
    move/from16 p4, v5

    .line 243
    .line 244
    move/from16 p5, v6

    .line 245
    .line 246
    move/from16 p6, v19

    .line 247
    .line 248
    move/from16 p7, v20

    .line 249
    .line 250
    move-object/from16 p8, v21

    .line 251
    .line 252
    .line 253
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 254
    move-result-wide v2

    .line 255
    .line 256
    move-wide/from16 v19, v2

    .line 257
    goto :goto_6

    .line 258
    .line 259
    :cond_6
    move-wide/from16 v19, p13

    .line 260
    .line 261
    :goto_6
    and-int/lit16 v2, v1, 0x80

    .line 262
    .line 263
    if-eqz v2, :cond_7

    .line 264
    .line 265
    .line 266
    const v2, 0x3f0a3d71    # 0.54f

    .line 267
    const/4 v3, 0x0

    .line 268
    const/4 v4, 0x0

    .line 269
    const/4 v5, 0x0

    .line 270
    .line 271
    const/16 v6, 0xe

    .line 272
    .line 273
    const/16 v21, 0x0

    .line 274
    .line 275
    move-wide/from16 p1, v11

    .line 276
    .line 277
    move/from16 p3, v2

    .line 278
    .line 279
    move/from16 p4, v3

    .line 280
    .line 281
    move/from16 p5, v4

    .line 282
    .line 283
    move/from16 p6, v5

    .line 284
    .line 285
    move/from16 p7, v6

    .line 286
    .line 287
    move-object/from16 p8, v21

    .line 288
    .line 289
    .line 290
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 291
    move-result-wide v2

    .line 292
    .line 293
    move-wide/from16 v21, v2

    .line 294
    goto :goto_7

    .line 295
    .line 296
    :cond_7
    move-wide/from16 v21, p15

    .line 297
    .line 298
    :goto_7
    and-int/lit16 v2, v1, 0x100

    .line 299
    .line 300
    if-eqz v2, :cond_8

    .line 301
    .line 302
    .line 303
    const v2, 0x3df5c28f    # 0.12f

    .line 304
    const/4 v3, 0x0

    .line 305
    const/4 v4, 0x0

    .line 306
    const/4 v5, 0x0

    .line 307
    .line 308
    const/16 v6, 0xe

    .line 309
    .line 310
    const/16 v23, 0x0

    .line 311
    .line 312
    move-wide/from16 p1, v19

    .line 313
    .line 314
    move/from16 p3, v2

    .line 315
    .line 316
    move/from16 p4, v3

    .line 317
    .line 318
    move/from16 p5, v4

    .line 319
    .line 320
    move/from16 p6, v5

    .line 321
    .line 322
    move/from16 p7, v6

    .line 323
    .line 324
    move-object/from16 p8, v23

    .line 325
    .line 326
    .line 327
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 328
    move-result-wide v2

    .line 329
    .line 330
    move-wide/from16 v23, v2

    .line 331
    goto :goto_8

    .line 332
    .line 333
    :cond_8
    move-wide/from16 v23, p17

    .line 334
    .line 335
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 336
    .line 337
    if-eqz v1, :cond_9

    .line 338
    .line 339
    .line 340
    const v1, 0x3df5c28f    # 0.12f

    .line 341
    const/4 v2, 0x0

    .line 342
    const/4 v3, 0x0

    .line 343
    const/4 v4, 0x0

    .line 344
    .line 345
    const/16 v5, 0xe

    .line 346
    const/4 v6, 0x0

    .line 347
    .line 348
    move-wide/from16 p1, v17

    .line 349
    .line 350
    move/from16 p3, v1

    .line 351
    .line 352
    move/from16 p4, v2

    .line 353
    .line 354
    move/from16 p5, v3

    .line 355
    .line 356
    move/from16 p6, v4

    .line 357
    .line 358
    move/from16 p7, v5

    .line 359
    .line 360
    move-object/from16 p8, v6

    .line 361
    .line 362
    .line 363
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 364
    move-result-wide v1

    .line 365
    .line 366
    move-wide/from16 v25, v1

    .line 367
    goto :goto_9

    .line 368
    .line 369
    :cond_9
    move-wide/from16 v25, p19

    .line 370
    .line 371
    :goto_9
    new-instance v1, Landroidx/compose/material/DefaultSliderColors;

    .line 372
    move-object v6, v1

    .line 373
    .line 374
    const/16 v27, 0x0

    .line 375
    .line 376
    .line 377
    invoke-direct/range {v6 .. v27}, Landroidx/compose/material/DefaultSliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/k;)V

    .line 378
    .line 379
    .line 380
    invoke-interface/range {p21 .. p21}, Landroidx/compose/runtime/Composer;->Q()V

    .line 381
    return-object v1
.end method
