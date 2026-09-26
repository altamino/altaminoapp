.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 -Util.kt\nokio/_UtilKt\n*L\n1#1,236:1\n11328#2:237\n11663#2,3:238\n13601#2,3:245\n37#3:241\n36#3,3:242\n1#4:248\n72#5:249\n72#5:250\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:237\n43#1:238,3\n44#1:245,3\n43#1:241\n43#1:242,3\n151#1:249\n208#1:250\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v10, p3

    .line 5
    .line 6
    move/from16 v11, p4

    .line 7
    .line 8
    move-object/from16 v12, p5

    .line 9
    .line 10
    move/from16 v0, p6

    .line 11
    .line 12
    move/from16 v13, p7

    .line 13
    .line 14
    move-object/from16 v14, p8

    .line 15
    .line 16
    const-string v1, "Failed requirement."

    .line 17
    .line 18
    if-ge v0, v13, :cond_11

    .line 19
    move v2, v0

    .line 20
    .line 21
    :goto_0
    if-ge v2, v13, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Lokio/ByteString;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 31
    move-result v3

    .line 32
    .line 33
    if-lt v3, v11, :cond_0

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    check-cast v1, Lokio/ByteString;

    .line 53
    .line 54
    add-int/lit8 v2, v13, -0x1

    .line 55
    .line 56
    .line 57
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Lokio/ByteString;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 64
    move-result v3

    .line 65
    const/4 v15, -0x1

    .line 66
    .line 67
    if-ne v11, v3, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Number;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 77
    move-result v1

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    .line 82
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    check-cast v3, Lokio/ByteString;

    .line 86
    move v6, v0

    .line 87
    move v0, v1

    .line 88
    move-object v1, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v6, v0

    .line 91
    move v0, v15

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    .line 95
    move-result v3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    .line 99
    move-result v4

    .line 100
    const/4 v5, 0x2

    .line 101
    .line 102
    if-eq v3, v4, :cond_c

    .line 103
    .line 104
    add-int/lit8 v1, v6, 0x1

    .line 105
    const/4 v2, 0x1

    .line 106
    .line 107
    :goto_2
    if-ge v1, v13, :cond_4

    .line 108
    .line 109
    add-int/lit8 v3, v1, -0x1

    .line 110
    .line 111
    .line 112
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    check-cast v3, Lokio/ByteString;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    .line 119
    move-result v3

    .line 120
    .line 121
    .line 122
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    check-cast v4, Lokio/ByteString;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    .line 129
    move-result v4

    .line 130
    .line 131
    if-eq v3, v4, :cond_3

    .line 132
    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 136
    goto :goto_2

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 140
    move-result-wide v3

    .line 141
    .line 142
    add-long v3, p1, v3

    .line 143
    int-to-long v7, v5

    .line 144
    add-long/2addr v3, v7

    .line 145
    .line 146
    mul-int/lit8 v1, v2, 0x2

    .line 147
    int-to-long v7, v1

    .line 148
    .line 149
    add-long v16, v3, v7

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 156
    move v0, v6

    .line 157
    .line 158
    :goto_3
    if-ge v0, v13, :cond_7

    .line 159
    .line 160
    .line 161
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    check-cast v1, Lokio/ByteString;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    .line 168
    move-result v1

    .line 169
    .line 170
    if-eq v0, v6, :cond_5

    .line 171
    .line 172
    add-int/lit8 v2, v0, -0x1

    .line 173
    .line 174
    .line 175
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v2

    .line 177
    .line 178
    check-cast v2, Lokio/ByteString;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    .line 182
    move-result v2

    .line 183
    .line 184
    if-eq v1, v2, :cond_6

    .line 185
    .line 186
    :cond_5
    and-int/lit16 v1, v1, 0xff

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 190
    .line 191
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 192
    goto :goto_3

    .line 193
    .line 194
    :cond_7
    new-instance v8, Lokio/Buffer;

    .line 195
    .line 196
    .line 197
    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    .line 198
    .line 199
    :goto_4
    if-ge v6, v13, :cond_b

    .line 200
    .line 201
    .line 202
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    check-cast v0, Lokio/ByteString;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    .line 209
    move-result v0

    .line 210
    .line 211
    add-int/lit8 v1, v6, 0x1

    .line 212
    move v2, v1

    .line 213
    .line 214
    :goto_5
    if-ge v2, v13, :cond_9

    .line 215
    .line 216
    .line 217
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object v3

    .line 219
    .line 220
    check-cast v3, Lokio/ByteString;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    .line 224
    move-result v3

    .line 225
    .line 226
    if-eq v0, v3, :cond_8

    .line 227
    move v7, v2

    .line 228
    goto :goto_6

    .line 229
    .line 230
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 231
    goto :goto_5

    .line 232
    :cond_9
    move v7, v13

    .line 233
    .line 234
    :goto_6
    if-ne v1, v7, :cond_a

    .line 235
    .line 236
    add-int/lit8 v0, v11, 0x1

    .line 237
    .line 238
    .line 239
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    move-result-object v1

    .line 241
    .line 242
    check-cast v1, Lokio/ByteString;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 246
    move-result v1

    .line 247
    .line 248
    if-ne v0, v1, :cond_a

    .line 249
    .line 250
    .line 251
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    check-cast v0, Ljava/lang/Number;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 258
    move-result v0

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 262
    .line 263
    move/from16 v18, v7

    .line 264
    move-object v15, v8

    .line 265
    goto :goto_7

    .line 266
    .line 267
    .line 268
    :cond_a
    invoke-direct {v9, v8}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 269
    move-result-wide v0

    .line 270
    .line 271
    add-long v0, v16, v0

    .line 272
    long-to-int v0, v0

    .line 273
    mul-int/2addr v0, v15

    .line 274
    .line 275
    .line 276
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 277
    .line 278
    add-int/lit8 v4, v11, 0x1

    .line 279
    .line 280
    move-object/from16 v0, p0

    .line 281
    .line 282
    move-wide/from16 v1, v16

    .line 283
    move-object v3, v8

    .line 284
    .line 285
    move-object/from16 v5, p5

    .line 286
    .line 287
    move/from16 v18, v7

    .line 288
    move-object v15, v8

    .line 289
    .line 290
    move-object/from16 v8, p8

    .line 291
    .line 292
    .line 293
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 294
    :goto_7
    move-object v8, v15

    .line 295
    .line 296
    move/from16 v6, v18

    .line 297
    const/4 v15, -0x1

    .line 298
    goto :goto_4

    .line 299
    :cond_b
    move-object v15, v8

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10, v15}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 303
    .line 304
    goto/16 :goto_a

    .line 305
    .line 306
    .line 307
    :cond_c
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 308
    move-result v3

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    .line 312
    move-result v4

    .line 313
    .line 314
    .line 315
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 316
    move-result v3

    .line 317
    const/4 v4, 0x0

    .line 318
    move v7, v11

    .line 319
    .line 320
    :goto_8
    if-ge v7, v3, :cond_d

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v7}, Lokio/ByteString;->getByte(I)B

    .line 324
    move-result v8

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v7}, Lokio/ByteString;->getByte(I)B

    .line 328
    move-result v15

    .line 329
    .line 330
    if-ne v8, v15, :cond_d

    .line 331
    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 333
    .line 334
    add-int/lit8 v7, v7, 0x1

    .line 335
    goto :goto_8

    .line 336
    .line 337
    .line 338
    :cond_d
    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 339
    move-result-wide v2

    .line 340
    .line 341
    add-long v2, p1, v2

    .line 342
    int-to-long v7, v5

    .line 343
    add-long/2addr v2, v7

    .line 344
    int-to-long v7, v4

    .line 345
    add-long/2addr v2, v7

    .line 346
    .line 347
    const-wide/16 v7, 0x1

    .line 348
    add-long/2addr v2, v7

    .line 349
    neg-int v5, v4

    .line 350
    .line 351
    .line 352
    invoke-virtual {v10, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 356
    add-int/2addr v4, v11

    .line 357
    .line 358
    :goto_9
    if-ge v11, v4, :cond_e

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    .line 362
    move-result v0

    .line 363
    .line 364
    and-int/lit16 v0, v0, 0xff

    .line 365
    .line 366
    .line 367
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 368
    .line 369
    add-int/lit8 v11, v11, 0x1

    .line 370
    goto :goto_9

    .line 371
    .line 372
    :cond_e
    add-int/lit8 v0, v6, 0x1

    .line 373
    .line 374
    if-ne v0, v13, :cond_10

    .line 375
    .line 376
    .line 377
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 378
    move-result-object v0

    .line 379
    .line 380
    check-cast v0, Lokio/ByteString;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    .line 384
    move-result v0

    .line 385
    .line 386
    if-ne v4, v0, :cond_f

    .line 387
    .line 388
    .line 389
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    check-cast v0, Ljava/lang/Number;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 396
    move-result v0

    .line 397
    .line 398
    .line 399
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 400
    goto :goto_a

    .line 401
    .line 402
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 403
    .line 404
    const-string v1, "Check failed."

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 408
    move-result-object v1

    .line 409
    .line 410
    .line 411
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 412
    throw v0

    .line 413
    .line 414
    :cond_10
    new-instance v11, Lokio/Buffer;

    .line 415
    .line 416
    .line 417
    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-direct {v9, v11}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 421
    move-result-wide v0

    .line 422
    add-long/2addr v0, v2

    .line 423
    long-to-int v0, v0

    .line 424
    const/4 v1, -0x1

    .line 425
    mul-int/2addr v0, v1

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 429
    .line 430
    move-object/from16 v0, p0

    .line 431
    move-wide v1, v2

    .line 432
    move-object v3, v11

    .line 433
    .line 434
    move-object/from16 v5, p5

    .line 435
    .line 436
    move/from16 v7, p7

    .line 437
    .line 438
    move-object/from16 v8, p8

    .line 439
    .line 440
    .line 441
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v10, v11}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 445
    :goto_a
    return-void

    .line 446
    .line 447
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 451
    move-result-object v1

    .line 452
    .line 453
    .line 454
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 455
    throw v0
.end method

.method static synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 11

    .line 1
    .line 2
    and-int/lit8 v0, p9, 0x1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    move-wide v3, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v3, p1

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p9, 0x4

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    move v6, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, p4

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v0, p9, 0x10

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    move v8, v1

    .line 23
    goto :goto_2

    .line 24
    .line 25
    :cond_2
    move/from16 v8, p6

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v0, p9, 0x20

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 33
    move-result v0

    .line 34
    move v9, v0

    .line 35
    goto :goto_3

    .line 36
    .line 37
    :cond_3
    move/from16 v9, p7

    .line 38
    :goto_3
    move-object v2, p0

    .line 39
    move-object v5, p3

    .line 40
    .line 41
    move-object/from16 v7, p5

    .line 42
    .line 43
    move-object/from16 v10, p8

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v2 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 47
    return-void
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 p1, 0x4

    .line 6
    int-to-long v2, p1

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 16
    .param p1    # [Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "byteStrings"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lokio/Options;

    .line 16
    .line 17
    new-array v1, v4, [Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    filled-new-array {v4, v3}, [I

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v3, v2}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/k;)V

    .line 25
    return-object v0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/l;->v0([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/collections/t;->B(Ljava/util/List;)V

    .line 33
    .line 34
    new-instance v5, Ljava/util/ArrayList;

    .line 35
    array-length v6, v0

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    array-length v6, v0

    .line 40
    move v7, v4

    .line 41
    .line 42
    :goto_0
    if-ge v7, v6, :cond_1

    .line 43
    .line 44
    aget-object v8, v0, v7

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v8

    .line 49
    .line 50
    .line 51
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    new-array v3, v4, [Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    if-eqz v3, :cond_9

    .line 63
    .line 64
    check-cast v3, [Ljava/lang/Integer;

    .line 65
    array-length v5, v3

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    move-result-object v13

    .line 74
    array-length v3, v0

    .line 75
    move v11, v4

    .line 76
    move v12, v11

    .line 77
    .line 78
    :goto_1
    if-ge v11, v3, :cond_2

    .line 79
    .line 80
    aget-object v6, v0, v11

    .line 81
    .line 82
    add-int/lit8 v14, v12, 0x1

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v9, 0x6

    .line 86
    const/4 v10, 0x0

    .line 87
    move-object v5, v1

    .line 88
    .line 89
    .line 90
    invoke-static/range {v5 .. v10}, Lkotlin/collections/t;->l(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    .line 91
    move-result v5

    .line 92
    .line 93
    .line 94
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    .line 98
    invoke-interface {v13, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    add-int/lit8 v11, v11, 0x1

    .line 101
    move v12, v14

    .line 102
    goto :goto_1

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    check-cast v3, Lokio/ByteString;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    .line 112
    move-result v3

    .line 113
    .line 114
    if-lez v3, :cond_8

    .line 115
    move v3, v4

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 119
    move-result v5

    .line 120
    .line 121
    if-ge v3, v5, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v5

    .line 126
    .line 127
    check-cast v5, Lokio/ByteString;

    .line 128
    .line 129
    add-int/lit8 v6, v3, 0x1

    .line 130
    move v7, v6

    .line 131
    .line 132
    .line 133
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 134
    move-result v8

    .line 135
    .line 136
    if-ge v7, v8, :cond_5

    .line 137
    .line 138
    .line 139
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v8

    .line 141
    .line 142
    check-cast v8, Lokio/ByteString;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v5}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 146
    move-result v9

    .line 147
    .line 148
    if-eqz v9, :cond_5

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Lokio/ByteString;->size()I

    .line 152
    move-result v9

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    .line 156
    move-result v10

    .line 157
    .line 158
    if-eq v9, v10, :cond_4

    .line 159
    .line 160
    .line 161
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v8

    .line 163
    .line 164
    check-cast v8, Ljava/lang/Number;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 168
    move-result v8

    .line 169
    .line 170
    .line 171
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    move-result-object v9

    .line 173
    .line 174
    check-cast v9, Ljava/lang/Number;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 178
    move-result v9

    .line 179
    .line 180
    if-le v8, v9, :cond_3

    .line 181
    .line 182
    .line 183
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    invoke-interface {v13, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    goto :goto_3

    .line 188
    .line 189
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 190
    goto :goto_3

    .line 191
    .line 192
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    const-string v1, "duplicate option: "

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    .line 216
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    throw v1

    .line 218
    :cond_5
    move v3, v6

    .line 219
    goto :goto_2

    .line 220
    .line 221
    :cond_6
    new-instance v3, Lokio/Buffer;

    .line 222
    .line 223
    .line 224
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 225
    .line 226
    const-wide/16 v6, 0x0

    .line 227
    const/4 v9, 0x0

    .line 228
    const/4 v11, 0x0

    .line 229
    const/4 v12, 0x0

    .line 230
    .line 231
    const/16 v14, 0x35

    .line 232
    const/4 v15, 0x0

    .line 233
    .line 234
    move-object/from16 v5, p0

    .line 235
    move-object v8, v3

    .line 236
    move-object v10, v1

    .line 237
    .line 238
    .line 239
    invoke-static/range {v5 .. v15}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 240
    .line 241
    move-object/from16 v1, p0

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, v3}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    .line 245
    move-result-wide v5

    .line 246
    long-to-int v5, v5

    .line 247
    .line 248
    new-array v5, v5, [I

    .line 249
    .line 250
    .line 251
    :goto_4
    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    .line 252
    move-result v6

    .line 253
    .line 254
    if-nez v6, :cond_7

    .line 255
    .line 256
    add-int/lit8 v6, v4, 0x1

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Lokio/Buffer;->readInt()I

    .line 260
    move-result v7

    .line 261
    .line 262
    aput v7, v5, v4

    .line 263
    move v4, v6

    .line 264
    goto :goto_4

    .line 265
    .line 266
    :cond_7
    new-instance v3, Lokio/Options;

    .line 267
    array-length v4, v0

    .line 268
    .line 269
    .line 270
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 271
    move-result-object v0

    .line 272
    .line 273
    const-string v4, "copyOf(this, size)"

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    check-cast v0, [Lokio/ByteString;

    .line 279
    .line 280
    .line 281
    invoke-direct {v3, v0, v5, v2}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/k;)V

    .line 282
    return-object v3

    .line 283
    .line 284
    :cond_8
    move-object/from16 v1, p0

    .line 285
    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 287
    .line 288
    const-string v2, "the empty byte string is not a supported option"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 292
    move-result-object v2

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0

    .line 297
    .line 298
    :cond_9
    move-object/from16 v1, p0

    .line 299
    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    .line 301
    .line 302
    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 303
    .line 304
    .line 305
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 306
    throw v0
.end method
