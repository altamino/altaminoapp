.class Lcom/github/mmin18/widget/FlexLayout$o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o0"
.end annotation


# static fields
.field public static final PROP_BOTTOM:I = 0x3

.field public static final PROP_CENTER_X:I = 0x4

.field public static final PROP_CENTER_Y:I = 0x5

.field public static final PROP_GONE:I = 0xb

.field public static final PROP_HEIGHT:I = 0x7

.field public static final PROP_LEFT:I = 0x0

.field public static final PROP_RIGHT:I = 0x2

.field public static final PROP_TAG:I = 0xf

.field public static final PROP_TOP:I = 0x1

.field public static final PROP_VISIBLE:I = 0xa

.field public static final PROP_WIDTH:I = 0x6

.field public static final TARGET_NEXT:I = 0x2

.field public static final TARGET_PARENT:I = 0x3

.field public static final TARGET_PREV:I = 0x1

.field public static final TARGET_SCREEN:I = 0x4

.field public static final TARGET_THIS:I


# instance fields
.field public final property:I

.field public final target:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 6
    .line 7
    iput p2, p0, Lcom/github/mmin18/widget/FlexLayout$o0;->property:I

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F
    .locals 18

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
    move-object/from16 v3, p4

    .line 9
    .line 10
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 11
    const/4 v5, 0x5

    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x7

    .line 14
    .line 15
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 16
    const/4 v9, 0x6

    .line 17
    const/4 v10, 0x3

    .line 18
    const/4 v11, 0x2

    .line 19
    const/4 v12, 0x1

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    move-object v13, v1

    .line 27
    .line 28
    goto/16 :goto_d

    .line 29
    .line 30
    :cond_1
    if-ne v4, v12, :cond_3

    .line 31
    .line 32
    if-lez v2, :cond_2

    .line 33
    sub-int/2addr v2, v12

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v13, 0x0

    .line 40
    .line 41
    goto/16 :goto_d

    .line 42
    .line 43
    :cond_3
    if-ne v4, v11, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    move-result v3

    .line 48
    sub-int/2addr v3, v12

    .line 49
    .line 50
    if-ge v2, v3, :cond_2

    .line 51
    add-int/2addr v2, v12

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_4
    const-string v2, " is not supported"

    .line 59
    .line 60
    const-string v14, ")"

    .line 61
    .line 62
    const-string v15, " ("

    .line 63
    .line 64
    const-string v16, ""

    .line 65
    .line 66
    if-ne v4, v10, :cond_b

    .line 67
    .line 68
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->property:I

    .line 69
    const/4 v13, -0x1

    .line 70
    .line 71
    if-ne v4, v9, :cond_6

    .line 72
    .line 73
    iget v1, v1, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 74
    .line 75
    if-ne v1, v13, :cond_5

    .line 76
    return v8

    .line 77
    :cond_5
    int-to-float v1, v1

    .line 78
    return v1

    .line 79
    .line 80
    :cond_6
    if-ne v4, v7, :cond_8

    .line 81
    .line 82
    iget v1, v1, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 83
    .line 84
    if-ne v1, v13, :cond_7

    .line 85
    return v8

    .line 86
    :cond_7
    int-to-float v1, v1

    .line 87
    return v1

    .line 88
    .line 89
    :cond_8
    if-eqz v4, :cond_9

    .line 90
    .line 91
    if-eq v4, v12, :cond_9

    .line 92
    .line 93
    if-eq v4, v11, :cond_9

    .line 94
    .line 95
    if-eq v4, v10, :cond_9

    .line 96
    .line 97
    if-eq v4, v6, :cond_9

    .line 98
    .line 99
    if-ne v4, v5, :cond_0

    .line 100
    .line 101
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/github/mmin18/widget/FlexLayout$o0;->toString()Ljava/lang/String;

    .line 110
    move-result-object v5

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    if-nez v3, :cond_a

    .line 119
    .line 120
    :goto_1
    move-object/from16 v2, v16

    .line 121
    goto :goto_2

    .line 122
    .line 123
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v16

    .line 140
    goto :goto_1

    .line 141
    .line 142
    .line 143
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v1

    .line 152
    .line 153
    :cond_b
    if-ne v4, v6, :cond_f

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->property:I

    .line 164
    .line 165
    if-ne v4, v9, :cond_c

    .line 166
    .line 167
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 168
    int-to-float v1, v1

    .line 169
    return v1

    .line 170
    .line 171
    :cond_c
    if-ne v4, v7, :cond_d

    .line 172
    .line 173
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 174
    int-to-float v1, v1

    .line 175
    return v1

    .line 176
    .line 177
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/github/mmin18/widget/FlexLayout$o0;->toString()Ljava/lang/String;

    .line 186
    move-result-object v5

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    if-nez v3, :cond_e

    .line 195
    .line 196
    :goto_3
    move-object/from16 v2, v16

    .line 197
    goto :goto_4

    .line 198
    .line 199
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v16

    .line 216
    goto :goto_3

    .line 217
    .line 218
    .line 219
    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 224
    .line 225
    .line 226
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    throw v1

    .line 228
    .line 229
    .line 230
    :cond_f
    invoke-static {v4}, Lcom/github/mmin18/widget/FlexLayout;->isEditModeId(I)Z

    .line 231
    move-result v2

    .line 232
    .line 233
    const-string v4, " not found"

    .line 234
    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    if-eqz v2, :cond_14

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 241
    move-result v2

    .line 242
    .line 243
    move/from16 v13, v17

    .line 244
    .line 245
    :goto_5
    if-ge v13, v2, :cond_11

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 249
    move-result-object v17

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 253
    move-result-object v8

    .line 254
    .line 255
    instance-of v8, v8, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 256
    .line 257
    if-eqz v8, :cond_10

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 261
    move-result-object v8

    .line 262
    .line 263
    check-cast v8, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 264
    .line 265
    iget v8, v8, Lcom/github/mmin18/widget/FlexLayout$l0;->editModeId:I

    .line 266
    .line 267
    iget v7, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 268
    .line 269
    if-ne v8, v7, :cond_10

    .line 270
    goto :goto_6

    .line 271
    .line 272
    :cond_10
    add-int/lit8 v13, v13, 0x1

    .line 273
    const/4 v7, 0x7

    .line 274
    .line 275
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 276
    goto :goto_5

    .line 277
    .line 278
    :cond_11
    const/16 v17, 0x0

    .line 279
    .line 280
    :goto_6
    if-nez v17, :cond_13

    .line 281
    .line 282
    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 283
    .line 284
    .line 285
    invoke-static {v1}, Lcom/github/mmin18/widget/FlexLayout;->getEditModeIdName(I)Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    .line 288
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    if-nez v3, :cond_12

    .line 302
    .line 303
    :goto_7
    move-object/from16 v1, v16

    .line 304
    goto :goto_8

    .line 305
    .line 306
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v16

    .line 323
    goto :goto_7

    .line 324
    .line 325
    .line 326
    :goto_8
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    .line 333
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    throw v2

    .line 335
    .line 336
    :cond_13
    move-object/from16 v13, v17

    .line 337
    goto :goto_d

    .line 338
    .line 339
    .line 340
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 341
    move-result v2

    .line 342
    .line 343
    move/from16 v7, v17

    .line 344
    .line 345
    :goto_9
    if-ge v7, v2, :cond_16

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 349
    move-result-object v8

    .line 350
    .line 351
    .line 352
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 353
    move-result v13

    .line 354
    .line 355
    iget v9, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 356
    .line 357
    if-ne v13, v9, :cond_15

    .line 358
    move-object v13, v8

    .line 359
    goto :goto_a

    .line 360
    .line 361
    :cond_15
    add-int/lit8 v7, v7, 0x1

    .line 362
    const/4 v9, 0x6

    .line 363
    goto :goto_9

    .line 364
    :cond_16
    const/4 v13, 0x0

    .line 365
    .line 366
    :goto_a
    if-nez v13, :cond_19

    .line 367
    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 370
    move-result-object v1

    .line 371
    .line 372
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 376
    move-result-object v1

    .line 377
    .line 378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 379
    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    if-nez v1, :cond_17

    .line 386
    .line 387
    const-string v1, "view"

    .line 388
    .line 389
    .line 390
    :cond_17
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    if-nez v3, :cond_18

    .line 396
    .line 397
    :goto_b
    move-object/from16 v1, v16

    .line 398
    goto :goto_c

    .line 399
    .line 400
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object v16

    .line 417
    goto :goto_b

    .line 418
    .line 419
    .line 420
    :goto_c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    move-result-object v1

    .line 425
    .line 426
    .line 427
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 428
    throw v2

    .line 429
    :cond_19
    :goto_d
    const/4 v1, 0x0

    .line 430
    .line 431
    if-nez v13, :cond_1a

    .line 432
    return v1

    .line 433
    .line 434
    :cond_1a
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout$o0;->property:I

    .line 435
    .line 436
    if-nez v2, :cond_1b

    .line 437
    .line 438
    .line 439
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->e()F

    .line 446
    move-result v1

    .line 447
    return v1

    .line 448
    .line 449
    :cond_1b
    if-ne v2, v12, :cond_1c

    .line 450
    .line 451
    .line 452
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 453
    move-result-object v1

    .line 454
    .line 455
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->g()F

    .line 459
    move-result v1

    .line 460
    return v1

    .line 461
    .line 462
    :cond_1c
    if-ne v2, v11, :cond_1d

    .line 463
    .line 464
    .line 465
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 466
    move-result-object v1

    .line 467
    .line 468
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->f()F

    .line 472
    move-result v1

    .line 473
    return v1

    .line 474
    .line 475
    :cond_1d
    if-ne v2, v10, :cond_1e

    .line 476
    .line 477
    .line 478
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 479
    move-result-object v1

    .line 480
    .line 481
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->a()F

    .line 485
    move-result v1

    .line 486
    return v1

    .line 487
    .line 488
    :cond_1e
    if-ne v2, v6, :cond_1f

    .line 489
    .line 490
    .line 491
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 492
    move-result-object v1

    .line 493
    .line 494
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->b()F

    .line 498
    move-result v1

    .line 499
    return v1

    .line 500
    .line 501
    :cond_1f
    if-ne v2, v5, :cond_20

    .line 502
    .line 503
    .line 504
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 505
    move-result-object v1

    .line 506
    .line 507
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->c()F

    .line 511
    move-result v1

    .line 512
    return v1

    .line 513
    :cond_20
    const/4 v3, 0x6

    .line 514
    .line 515
    if-ne v2, v3, :cond_21

    .line 516
    .line 517
    .line 518
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 519
    move-result-object v1

    .line 520
    .line 521
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->h()F

    .line 525
    move-result v1

    .line 526
    return v1

    .line 527
    :cond_21
    const/4 v3, 0x7

    .line 528
    .line 529
    if-ne v2, v3, :cond_22

    .line 530
    .line 531
    .line 532
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 533
    move-result-object v1

    .line 534
    .line 535
    check-cast v1, Lcom/github/mmin18/widget/FlexLayout$l0;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1}, Lcom/github/mmin18/widget/FlexLayout$l0;->d()F

    .line 539
    move-result v1

    .line 540
    return v1

    .line 541
    .line 542
    :cond_22
    const/16 v3, 0xa

    .line 543
    .line 544
    const/high16 v4, 0x3f800000    # 1.0f

    .line 545
    .line 546
    if-ne v2, v3, :cond_24

    .line 547
    .line 548
    .line 549
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 550
    move-result v2

    .line 551
    .line 552
    if-nez v2, :cond_23

    .line 553
    move v1, v4

    .line 554
    :cond_23
    return v1

    .line 555
    .line 556
    :cond_24
    const/16 v3, 0xb

    .line 557
    .line 558
    if-ne v2, v3, :cond_26

    .line 559
    .line 560
    .line 561
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 562
    move-result v2

    .line 563
    .line 564
    const/16 v3, 0x8

    .line 565
    .line 566
    if-ne v2, v3, :cond_25

    .line 567
    move v1, v4

    .line 568
    :cond_25
    return v1

    .line 569
    .line 570
    :cond_26
    const/16 v3, 0xf

    .line 571
    .line 572
    if-ne v2, v3, :cond_29

    .line 573
    .line 574
    .line 575
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 576
    move-result-object v2

    .line 577
    .line 578
    instance-of v3, v2, Ljava/lang/Number;

    .line 579
    .line 580
    if-eqz v3, :cond_27

    .line 581
    .line 582
    check-cast v2, Ljava/lang/Number;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 586
    move-result v1

    .line 587
    return v1

    .line 588
    .line 589
    :cond_27
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 590
    .line 591
    if-eqz v3, :cond_28

    .line 592
    .line 593
    check-cast v2, Ljava/lang/Boolean;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 597
    move-result v2

    .line 598
    .line 599
    if-eqz v2, :cond_28

    .line 600
    move v1, v4

    .line 601
    :cond_28
    return v1

    .line 602
    .line 603
    :cond_29
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 604
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$o0;->target:I

    .line 8
    .line 9
    const-string v2, "?"

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-eq v1, v3, :cond_3

    .line 15
    const/4 v3, 0x2

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    const/4 v3, 0x3

    .line 19
    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    const/4 v3, 0x4

    .line 22
    .line 23
    if-eq v1, v3, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const-string v1, "screen"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    const-string v1, "parent"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    const-string v1, "next"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    const-string v1, "prev"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_4
    const-string v1, "this"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    :goto_0
    const/16 v1, 0x2e

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$o0;->property:I

    .line 64
    .line 65
    const/16 v3, 0xa

    .line 66
    .line 67
    if-eq v1, v3, :cond_7

    .line 68
    .line 69
    const/16 v3, 0xb

    .line 70
    .line 71
    if-eq v1, v3, :cond_6

    .line 72
    .line 73
    const/16 v3, 0xf

    .line 74
    .line 75
    if-eq v1, v3, :cond_5

    .line 76
    .line 77
    .line 78
    packed-switch v1, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :pswitch_0
    const-string v1, "height"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :pswitch_1
    const-string/jumbo v1, "width"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :pswitch_2
    const-string v1, "centerY"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :pswitch_3
    const-string v1, "centerX"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :pswitch_4
    const-string v1, "bottom"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :pswitch_5
    const-string v1, "right"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :pswitch_6
    const-string v1, "top"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :pswitch_7
    const-string v1, "left"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_5
    const-string v1, "tag"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_6
    const-string v1, "gone"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    goto :goto_1

    .line 143
    .line 144
    :cond_7
    const-string v1, "visible"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    return-object v0

    nop

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
