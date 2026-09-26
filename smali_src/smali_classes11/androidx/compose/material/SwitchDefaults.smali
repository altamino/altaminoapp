.class public final Landroidx/compose/material/SwitchDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/SwitchDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/SwitchDefaults;

    invoke-direct {v0}, Landroidx/compose/material/SwitchDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/SwitchDefaults;->INSTANCE:Landroidx/compose/material/SwitchDefaults;

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
.method public final a(JJFJJFJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SwitchColors;
    .locals 25
    .param p19    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p19

    .line 3
    .line 4
    move/from16 v1, p22

    .line 5
    .line 6
    .line 7
    const v2, -0x3d85042e

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
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->m()J

    .line 25
    move-result-wide v4

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    move-wide/from16 v4, p1

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    move-wide v6, v4

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    move-wide/from16 v6, p3

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    const v2, 0x3f0a3d71    # 0.54f

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    move/from16 v2, p5

    .line 47
    .line 48
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 49
    .line 50
    if-eqz v8, :cond_3

    .line 51
    .line 52
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 56
    move-result-object v8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Landroidx/compose/material/Colors;->n()J

    .line 60
    move-result-wide v8

    .line 61
    goto :goto_3

    .line 62
    .line 63
    :cond_3
    move-wide/from16 v8, p6

    .line 64
    .line 65
    :goto_3
    and-int/lit8 v10, v1, 0x10

    .line 66
    .line 67
    if-eqz v10, :cond_4

    .line 68
    .line 69
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 73
    move-result-object v10

    .line 74
    .line 75
    .line 76
    invoke-virtual {v10}, Landroidx/compose/material/Colors;->i()J

    .line 77
    move-result-wide v10

    .line 78
    goto :goto_4

    .line 79
    .line 80
    :cond_4
    move-wide/from16 v10, p8

    .line 81
    .line 82
    :goto_4
    and-int/lit8 v12, v1, 0x20

    .line 83
    .line 84
    if-eqz v12, :cond_5

    .line 85
    .line 86
    .line 87
    const v12, 0x3ec28f5c    # 0.38f

    .line 88
    move v15, v12

    .line 89
    goto :goto_5

    .line 90
    .line 91
    :cond_5
    move/from16 v15, p10

    .line 92
    .line 93
    :goto_5
    and-int/lit8 v12, v1, 0x40

    .line 94
    .line 95
    if-eqz v12, :cond_6

    .line 96
    .line 97
    sget-object v12, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12, v0, v3}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 101
    move-result v12

    .line 102
    const/4 v13, 0x0

    .line 103
    const/4 v14, 0x0

    .line 104
    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const/16 v17, 0xe

    .line 108
    .line 109
    const/16 v18, 0x0

    .line 110
    .line 111
    move-wide/from16 p1, v4

    .line 112
    .line 113
    move/from16 p3, v12

    .line 114
    .line 115
    move/from16 p4, v13

    .line 116
    .line 117
    move/from16 p5, v14

    .line 118
    .line 119
    move/from16 p6, v16

    .line 120
    .line 121
    move/from16 p7, v17

    .line 122
    .line 123
    move-object/from16 p8, v18

    .line 124
    .line 125
    .line 126
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 127
    move-result-wide v12

    .line 128
    .line 129
    sget-object v14, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 133
    move-result-object v14

    .line 134
    .line 135
    move-wide/from16 v21, v4

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14}, Landroidx/compose/material/Colors;->n()J

    .line 139
    move-result-wide v3

    .line 140
    .line 141
    .line 142
    invoke-static {v12, v13, v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 143
    move-result-wide v3

    .line 144
    goto :goto_6

    .line 145
    .line 146
    :cond_6
    move-wide/from16 v21, v4

    .line 147
    .line 148
    move-wide/from16 v3, p11

    .line 149
    .line 150
    :goto_6
    and-int/lit16 v5, v1, 0x80

    .line 151
    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    sget-object v5, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 155
    const/4 v12, 0x6

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 159
    move-result v5

    .line 160
    const/4 v12, 0x0

    .line 161
    const/4 v13, 0x0

    .line 162
    const/4 v14, 0x0

    .line 163
    .line 164
    const/16 v16, 0xe

    .line 165
    .line 166
    const/16 v17, 0x0

    .line 167
    .line 168
    move-wide/from16 p1, v6

    .line 169
    .line 170
    move/from16 p3, v5

    .line 171
    .line 172
    move/from16 p4, v12

    .line 173
    .line 174
    move/from16 p5, v13

    .line 175
    .line 176
    move/from16 p6, v14

    .line 177
    .line 178
    move/from16 p7, v16

    .line 179
    .line 180
    move-object/from16 p8, v17

    .line 181
    .line 182
    .line 183
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 184
    move-result-wide v12

    .line 185
    .line 186
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 187
    const/4 v14, 0x6

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v0, v14}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 191
    move-result-object v5

    .line 192
    .line 193
    move/from16 p21, v15

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->n()J

    .line 197
    move-result-wide v14

    .line 198
    .line 199
    .line 200
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 201
    move-result-wide v12

    .line 202
    goto :goto_7

    .line 203
    .line 204
    :cond_7
    move/from16 p21, v15

    .line 205
    .line 206
    move-wide/from16 v12, p13

    .line 207
    .line 208
    :goto_7
    and-int/lit16 v5, v1, 0x100

    .line 209
    .line 210
    if-eqz v5, :cond_8

    .line 211
    .line 212
    sget-object v5, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 213
    const/4 v14, 0x6

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5, v0, v14}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 217
    move-result v5

    .line 218
    const/4 v14, 0x0

    .line 219
    const/4 v15, 0x0

    .line 220
    .line 221
    const/16 v16, 0x0

    .line 222
    .line 223
    const/16 v17, 0xe

    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    move-wide/from16 p1, v8

    .line 228
    .line 229
    move/from16 p3, v5

    .line 230
    .line 231
    move/from16 p4, v14

    .line 232
    .line 233
    move/from16 p5, v15

    .line 234
    .line 235
    move/from16 p6, v16

    .line 236
    .line 237
    move/from16 p7, v17

    .line 238
    .line 239
    move-object/from16 p8, v18

    .line 240
    .line 241
    .line 242
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 243
    move-result-wide v14

    .line 244
    .line 245
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 246
    .line 247
    move-wide/from16 v23, v3

    .line 248
    const/4 v3, 0x6

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 252
    move-result-object v4

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->n()J

    .line 256
    move-result-wide v4

    .line 257
    .line 258
    .line 259
    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 260
    move-result-wide v4

    .line 261
    goto :goto_8

    .line 262
    .line 263
    :cond_8
    move-wide/from16 v23, v3

    .line 264
    const/4 v3, 0x6

    .line 265
    .line 266
    move-wide/from16 v4, p15

    .line 267
    .line 268
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 269
    .line 270
    if-eqz v1, :cond_9

    .line 271
    .line 272
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v0, v3}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 276
    move-result v1

    .line 277
    const/4 v3, 0x0

    .line 278
    const/4 v14, 0x0

    .line 279
    const/4 v15, 0x0

    .line 280
    .line 281
    const/16 v16, 0xe

    .line 282
    .line 283
    const/16 v17, 0x0

    .line 284
    .line 285
    move-wide/from16 p1, v10

    .line 286
    .line 287
    move/from16 p3, v1

    .line 288
    .line 289
    move/from16 p4, v3

    .line 290
    .line 291
    move/from16 p5, v14

    .line 292
    .line 293
    move/from16 p6, v15

    .line 294
    .line 295
    move/from16 p7, v16

    .line 296
    .line 297
    move-object/from16 p8, v17

    .line 298
    .line 299
    .line 300
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 301
    move-result-wide v14

    .line 302
    .line 303
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 304
    const/4 v3, 0x6

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v0, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 308
    move-result-object v1

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->n()J

    .line 312
    move-result-wide v0

    .line 313
    .line 314
    .line 315
    invoke-static {v14, v15, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 316
    move-result-wide v0

    .line 317
    goto :goto_9

    .line 318
    .line 319
    :cond_9
    move-wide/from16 v0, p17

    .line 320
    .line 321
    :goto_9
    new-instance v3, Landroidx/compose/material/DefaultSwitchColors;

    .line 322
    .line 323
    move-object/from16 p1, v3

    .line 324
    const/4 v14, 0x0

    .line 325
    const/4 v15, 0x0

    .line 326
    .line 327
    const/16 v16, 0x0

    .line 328
    .line 329
    const/16 v17, 0xe

    .line 330
    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    move-wide/from16 p2, v6

    .line 334
    .line 335
    move/from16 p4, v2

    .line 336
    .line 337
    move/from16 p5, v14

    .line 338
    .line 339
    move/from16 p6, v15

    .line 340
    .line 341
    move/from16 p7, v16

    .line 342
    .line 343
    move/from16 p8, v17

    .line 344
    .line 345
    move-object/from16 p9, v18

    .line 346
    .line 347
    .line 348
    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 349
    move-result-wide v6

    .line 350
    .line 351
    move-wide/from16 p4, v6

    .line 352
    const/4 v6, 0x0

    .line 353
    const/4 v7, 0x0

    .line 354
    .line 355
    const/16 v15, 0xe

    .line 356
    .line 357
    const/16 v16, 0x0

    .line 358
    .line 359
    move-wide/from16 p6, v10

    .line 360
    .line 361
    move/from16 p8, p21

    .line 362
    .line 363
    move/from16 p9, v6

    .line 364
    .line 365
    move/from16 p10, v7

    .line 366
    .line 367
    move/from16 p11, v14

    .line 368
    .line 369
    move/from16 p12, v15

    .line 370
    .line 371
    move-object/from16 p13, v16

    .line 372
    .line 373
    .line 374
    invoke-static/range {p6 .. p13}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 375
    move-result-wide v6

    .line 376
    .line 377
    move-wide/from16 p8, v6

    .line 378
    const/4 v6, 0x0

    .line 379
    const/4 v7, 0x0

    .line 380
    const/4 v10, 0x0

    .line 381
    .line 382
    const/16 v11, 0xe

    .line 383
    const/4 v14, 0x0

    .line 384
    .line 385
    move-wide/from16 p10, v12

    .line 386
    .line 387
    move/from16 p12, v2

    .line 388
    .line 389
    move/from16 p13, v6

    .line 390
    .line 391
    move/from16 p14, v7

    .line 392
    .line 393
    move/from16 p15, v10

    .line 394
    .line 395
    move/from16 p16, v11

    .line 396
    .line 397
    move-object/from16 p17, v14

    .line 398
    .line 399
    .line 400
    invoke-static/range {p10 .. p17}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 401
    move-result-wide v6

    .line 402
    .line 403
    move-wide/from16 p12, v6

    .line 404
    .line 405
    const/16 v16, 0x0

    .line 406
    .line 407
    const/16 v17, 0x0

    .line 408
    .line 409
    const/16 v18, 0x0

    .line 410
    .line 411
    const/16 v19, 0xe

    .line 412
    .line 413
    const/16 v20, 0x0

    .line 414
    move-wide v13, v0

    .line 415
    .line 416
    move/from16 v15, p21

    .line 417
    .line 418
    .line 419
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 420
    move-result-wide v0

    .line 421
    .line 422
    move-wide/from16 p16, v0

    .line 423
    const/4 v0, 0x0

    .line 424
    .line 425
    move-object/from16 p18, v0

    .line 426
    .line 427
    move-wide/from16 p2, v21

    .line 428
    .line 429
    move-wide/from16 p6, v8

    .line 430
    .line 431
    move-wide/from16 p10, v23

    .line 432
    .line 433
    move-wide/from16 p14, v4

    .line 434
    .line 435
    .line 436
    invoke-direct/range {p1 .. p18}, Landroidx/compose/material/DefaultSwitchColors;-><init>(JJJJJJJJLkotlin/jvm/internal/k;)V

    .line 437
    .line 438
    .line 439
    invoke-interface/range {p19 .. p19}, Landroidx/compose/runtime/Composer;->Q()V

    .line 440
    return-object v3
.end method
