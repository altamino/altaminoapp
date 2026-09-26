.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, -0xff

    shr-int/lit8 v0, p0, 0x1f

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "att",
            "view",
            "value"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    const-string v2, "\""

    .line 5
    .line 6
    const-string v3, " on View \""

    .line 7
    .line 8
    const-string v4, "CustomSupport"

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v6, "set"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()Ljava/lang/String;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    :try_start_0
    sget-object v6, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->d()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 39
    move-result-object v7

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 43
    move-result v7

    .line 44
    .line 45
    aget v6, v6, v7

    .line 46
    const/4 v7, 0x3

    .line 47
    const/4 v8, 0x2

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v9, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 53
    .line 54
    const/high16 v11, 0x437f0000    # 255.0f

    .line 55
    const/4 v12, 0x1

    .line 56
    const/4 v13, 0x0

    .line 57
    .line 58
    .line 59
    packed-switch v6, :pswitch_data_0

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :pswitch_0
    new-array v6, v12, [Ljava/lang/Class;

    .line 64
    .line 65
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    aput-object v7, v6, v13

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    new-array v6, v12, [Ljava/lang/Object;

    .line 74
    .line 75
    aget v7, p2, v13

    .line 76
    .line 77
    .line 78
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    aput-object v7, v6, v13

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    :catch_2
    move-exception v0

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :pswitch_1
    new-array v6, v12, [Ljava/lang/Class;

    .line 98
    .line 99
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    aput-object v7, v6, v13

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    new-array v6, v12, [Ljava/lang/Object;

    .line 108
    .line 109
    aget v7, p2, v13

    .line 110
    .line 111
    const/high16 v8, 0x3f000000    # 0.5f

    .line 112
    .line 113
    cmpl-float v7, v7, v8

    .line 114
    .line 115
    if-lez v7, :cond_0

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    move v12, v13

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    move-result-object v7

    .line 122
    .line 123
    aput-object v7, v6, v13

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 131
    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    const-string v7, "unable to interpolate strings "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()Ljava/lang/String;

    .line 144
    move-result-object v7

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v6

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v0

    .line 156
    .line 157
    :pswitch_3
    new-array v6, v12, [Ljava/lang/Class;

    .line 158
    .line 159
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 160
    .line 161
    aput-object v14, v6, v13

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    aget v6, p2, v13

    .line 168
    float-to-double v14, v6

    .line 169
    .line 170
    .line 171
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 172
    move-result-wide v14

    .line 173
    double-to-float v6, v14

    .line 174
    mul-float/2addr v6, v11

    .line 175
    float-to-int v6, v6

    .line 176
    .line 177
    .line 178
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 179
    move-result v6

    .line 180
    .line 181
    aget v14, p2, v12

    .line 182
    float-to-double v14, v14

    .line 183
    .line 184
    .line 185
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 186
    move-result-wide v14

    .line 187
    double-to-float v14, v14

    .line 188
    mul-float/2addr v14, v11

    .line 189
    float-to-int v14, v14

    .line 190
    .line 191
    .line 192
    invoke-static {v14}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 193
    move-result v14

    .line 194
    .line 195
    aget v8, p2, v8

    .line 196
    float-to-double v12, v8

    .line 197
    .line 198
    .line 199
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 200
    move-result-wide v8

    .line 201
    double-to-float v8, v8

    .line 202
    mul-float/2addr v8, v11

    .line 203
    float-to-int v8, v8

    .line 204
    .line 205
    .line 206
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 207
    move-result v8

    .line 208
    .line 209
    aget v7, p2, v7

    .line 210
    mul-float/2addr v7, v11

    .line 211
    float-to-int v7, v7

    .line 212
    .line 213
    .line 214
    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 215
    move-result v7

    .line 216
    .line 217
    shl-int/lit8 v7, v7, 0x18

    .line 218
    .line 219
    shl-int/lit8 v6, v6, 0x10

    .line 220
    or-int/2addr v6, v7

    .line 221
    .line 222
    shl-int/lit8 v7, v14, 0x8

    .line 223
    or-int/2addr v6, v7

    .line 224
    or-int/2addr v6, v8

    .line 225
    const/4 v7, 0x1

    .line 226
    .line 227
    new-array v7, v7, [Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object v6

    .line 232
    const/4 v8, 0x0

    .line 233
    .line 234
    aput-object v6, v7, v8

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    goto/16 :goto_4

    .line 240
    :pswitch_4
    move v6, v12

    .line 241
    .line 242
    new-array v12, v6, [Ljava/lang/Class;

    .line 243
    .line 244
    const-class v6, Landroid/graphics/drawable/Drawable;

    .line 245
    const/4 v13, 0x0

    .line 246
    .line 247
    aput-object v6, v12, v13

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    aget v6, p2, v13

    .line 254
    float-to-double v12, v6

    .line 255
    .line 256
    .line 257
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 258
    move-result-wide v12

    .line 259
    double-to-float v6, v12

    .line 260
    mul-float/2addr v6, v11

    .line 261
    float-to-int v6, v6

    .line 262
    .line 263
    .line 264
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 265
    move-result v6

    .line 266
    const/4 v12, 0x1

    .line 267
    .line 268
    aget v13, p2, v12

    .line 269
    float-to-double v12, v13

    .line 270
    .line 271
    .line 272
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 273
    move-result-wide v12

    .line 274
    double-to-float v12, v12

    .line 275
    mul-float/2addr v12, v11

    .line 276
    float-to-int v12, v12

    .line 277
    .line 278
    .line 279
    invoke-static {v12}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 280
    move-result v12

    .line 281
    .line 282
    aget v8, p2, v8

    .line 283
    float-to-double v13, v8

    .line 284
    .line 285
    .line 286
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 287
    move-result-wide v8

    .line 288
    double-to-float v8, v8

    .line 289
    mul-float/2addr v8, v11

    .line 290
    float-to-int v8, v8

    .line 291
    .line 292
    .line 293
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 294
    move-result v8

    .line 295
    .line 296
    aget v7, p2, v7

    .line 297
    mul-float/2addr v7, v11

    .line 298
    float-to-int v7, v7

    .line 299
    .line 300
    .line 301
    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->a(I)I

    .line 302
    move-result v7

    .line 303
    .line 304
    shl-int/lit8 v7, v7, 0x18

    .line 305
    .line 306
    shl-int/lit8 v6, v6, 0x10

    .line 307
    or-int/2addr v6, v7

    .line 308
    .line 309
    shl-int/lit8 v7, v12, 0x8

    .line 310
    or-int/2addr v6, v7

    .line 311
    or-int/2addr v6, v8

    .line 312
    .line 313
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 314
    .line 315
    .line 316
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 320
    const/4 v6, 0x1

    .line 321
    .line 322
    new-array v6, v6, [Ljava/lang/Object;

    .line 323
    const/4 v8, 0x0

    .line 324
    .line 325
    aput-object v7, v6, v8

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    goto/16 :goto_4

    .line 331
    :pswitch_5
    move v6, v12

    .line 332
    .line 333
    new-array v7, v6, [Ljava/lang/Class;

    .line 334
    .line 335
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 336
    const/4 v9, 0x0

    .line 337
    .line 338
    aput-object v8, v7, v9

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    new-array v6, v6, [Ljava/lang/Object;

    .line 345
    .line 346
    aget v7, p2, v9

    .line 347
    .line 348
    .line 349
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 350
    move-result-object v7

    .line 351
    .line 352
    aput-object v7, v6, v9

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    goto :goto_4

    .line 357
    :pswitch_6
    move v6, v12

    .line 358
    .line 359
    new-array v7, v6, [Ljava/lang/Class;

    .line 360
    .line 361
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 362
    const/4 v9, 0x0

    .line 363
    .line 364
    aput-object v8, v7, v9

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    new-array v6, v6, [Ljava/lang/Object;

    .line 371
    .line 372
    aget v7, p2, v9

    .line 373
    float-to-int v7, v7

    .line 374
    .line 375
    .line 376
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    move-result-object v7

    .line 378
    .line 379
    aput-object v7, v6, v9

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_4

    .line 384
    .line 385
    .line 386
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    goto :goto_4

    .line 388
    .line 389
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    const-string v7, "cannot access method "

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->d(Landroid/view/View;)Ljava/lang/String;

    .line 407
    move-result-object v1

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v1

    .line 418
    .line 419
    .line 420
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    goto :goto_4

    .line 425
    .line 426
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    const-string v7, "no method "

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->d(Landroid/view/View;)Ljava/lang/String;

    .line 444
    move-result-object v1

    .line 445
    .line 446
    .line 447
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v1

    .line 455
    .line 456
    .line 457
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 461
    :goto_4
    return-void

    .line 462
    nop

    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
