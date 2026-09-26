.class public final Lokio/internal/_ByteStringKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-ByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n+ 2 -Util.kt\nokio/_UtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,361:1\n129#1,2:367\n131#1,9:370\n66#2:362\n72#2:363\n72#2:365\n72#2:366\n66#2:394\n72#2:406\n1#3:364\n1#3:369\n212#4,7:379\n122#4:386\n219#4,5:387\n122#4:392\n226#4:393\n228#4:395\n396#4,2:396\n122#4:398\n399#4,6:399\n127#4:405\n405#4:407\n122#4:408\n406#4,13:409\n122#4:422\n421#4:423\n122#4:424\n424#4:425\n230#4,3:426\n439#4,3:429\n122#4:432\n442#4:433\n127#4:434\n445#4,10:435\n127#4:445\n455#4:446\n122#4:447\n456#4,4:448\n127#4:452\n460#4:453\n122#4:454\n461#4,14:455\n122#4:469\n476#4,2:470\n122#4:472\n480#4:473\n122#4:474\n483#4:475\n234#4,3:476\n499#4,3:479\n122#4:482\n502#4:483\n127#4:484\n505#4,2:485\n127#4:487\n509#4,10:488\n127#4:498\n519#4:499\n122#4:500\n520#4,4:501\n127#4:505\n524#4:506\n122#4:507\n525#4,4:508\n127#4:512\n529#4:513\n122#4:514\n530#4,15:515\n122#4:530\n546#4,2:531\n122#4:533\n549#4,2:534\n122#4:536\n553#4:537\n122#4:538\n556#4:539\n241#4:540\n122#4:541\n242#4,5:542\n*S KotlinDebug\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n*L\n327#1:367,2\n327#1:370,9\n65#1:362\n66#1:363\n256#1:365\n257#1:366\n346#1:394\n346#1:406\n327#1:369\n346#1:379,7\n351#1:386\n346#1:387,5\n351#1:392\n346#1:393\n346#1:395\n346#1:396,2\n351#1:398\n346#1:399,6\n346#1:405\n346#1:407\n351#1:408\n346#1:409,13\n351#1:422\n346#1:423\n351#1:424\n346#1:425\n346#1:426,3\n346#1:429,3\n351#1:432\n346#1:433\n346#1:434\n346#1:435,10\n346#1:445\n346#1:446\n351#1:447\n346#1:448,4\n346#1:452\n346#1:453\n351#1:454\n346#1:455,14\n351#1:469\n346#1:470,2\n351#1:472\n346#1:473\n351#1:474\n346#1:475\n346#1:476,3\n346#1:479,3\n351#1:482\n346#1:483\n346#1:484\n346#1:485,2\n346#1:487\n346#1:488,10\n346#1:498\n346#1:499\n351#1:500\n346#1:501,4\n346#1:505\n346#1:506\n351#1:507\n346#1:508,4\n346#1:512\n346#1:513\n351#1:514\n346#1:515,15\n351#1:530\n346#1:531,2\n351#1:533\n346#1:534,2\n351#1:536\n346#1:537\n351#1:538\n346#1:539\n346#1:540\n351#1:541\n346#1:542,5\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lokio/internal/_ByteStringKt;->codePointIndexToCharIndex([BI)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lokio/internal/_ByteStringKt;->decodeHexDigit(C)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    move v5, v4

    .line 9
    .line 10
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_3d

    .line 11
    .line 12
    aget-byte v6, v0, v3

    .line 13
    .line 14
    .line 15
    const v7, 0xfffd

    .line 16
    .line 17
    const/16 v8, 0xa0

    .line 18
    .line 19
    const/16 v9, 0x7f

    .line 20
    .line 21
    const/16 v10, 0x20

    .line 22
    .line 23
    const/16 v11, 0xd

    .line 24
    .line 25
    const/16 v12, 0xa

    .line 26
    .line 27
    const/high16 v13, 0x10000

    .line 28
    .line 29
    const/16 v16, -0x1

    .line 30
    .line 31
    if-ltz v6, :cond_b

    .line 32
    .line 33
    add-int/lit8 v17, v5, 0x1

    .line 34
    .line 35
    if-ne v5, v1, :cond_1

    .line 36
    return v4

    .line 37
    .line 38
    :cond_1
    if-eq v6, v12, :cond_3

    .line 39
    .line 40
    if-eq v6, v11, :cond_3

    .line 41
    .line 42
    if-ltz v6, :cond_2

    .line 43
    .line 44
    if-ge v6, v10, :cond_2

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    if-gt v9, v6, :cond_3

    .line 48
    .line 49
    if-ge v6, v8, :cond_3

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_3
    if-ne v6, v7, :cond_4

    .line 53
    :goto_1
    return v16

    .line 54
    .line 55
    :cond_4
    if-ge v6, v13, :cond_5

    .line 56
    const/4 v5, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    const/4 v5, 0x2

    .line 59
    :goto_2
    add-int/2addr v4, v5

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    :goto_3
    move/from16 v5, v17

    .line 64
    .line 65
    if-ge v3, v2, :cond_0

    .line 66
    .line 67
    aget-byte v6, v0, v3

    .line 68
    .line 69
    if-ltz v6, :cond_0

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    add-int/lit8 v17, v5, 0x1

    .line 74
    .line 75
    if-ne v5, v1, :cond_6

    .line 76
    return v4

    .line 77
    .line 78
    :cond_6
    if-eq v6, v12, :cond_8

    .line 79
    .line 80
    if-eq v6, v11, :cond_8

    .line 81
    .line 82
    if-ltz v6, :cond_7

    .line 83
    .line 84
    if-ge v6, v10, :cond_7

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_7
    if-gt v9, v6, :cond_8

    .line 88
    .line 89
    if-ge v6, v8, :cond_8

    .line 90
    goto :goto_4

    .line 91
    .line 92
    :cond_8
    if-ne v6, v7, :cond_9

    .line 93
    :goto_4
    return v16

    .line 94
    .line 95
    :cond_9
    if-ge v6, v13, :cond_a

    .line 96
    const/4 v5, 0x1

    .line 97
    goto :goto_5

    .line 98
    :cond_a
    const/4 v5, 0x2

    .line 99
    :goto_5
    add-int/2addr v4, v5

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_b
    shr-int/lit8 v14, v6, 0x5

    .line 103
    const/4 v15, -0x2

    .line 104
    .line 105
    const/16 v13, 0x80

    .line 106
    .line 107
    if-ne v14, v15, :cond_17

    .line 108
    .line 109
    add-int/lit8 v14, v3, 0x1

    .line 110
    .line 111
    if-gt v2, v14, :cond_d

    .line 112
    .line 113
    if-ne v5, v1, :cond_c

    .line 114
    return v4

    .line 115
    :cond_c
    return v16

    .line 116
    .line 117
    :cond_d
    aget-byte v14, v0, v14

    .line 118
    .line 119
    and-int/lit16 v15, v14, 0xc0

    .line 120
    .line 121
    if-ne v15, v13, :cond_15

    .line 122
    .line 123
    xor-int/lit16 v14, v14, 0xf80

    .line 124
    .line 125
    shl-int/lit8 v6, v6, 0x6

    .line 126
    xor-int/2addr v6, v14

    .line 127
    .line 128
    if-ge v6, v13, :cond_f

    .line 129
    .line 130
    if-ne v5, v1, :cond_e

    .line 131
    return v4

    .line 132
    :cond_e
    return v16

    .line 133
    .line 134
    :cond_f
    add-int/lit8 v13, v5, 0x1

    .line 135
    .line 136
    if-ne v5, v1, :cond_10

    .line 137
    return v4

    .line 138
    .line 139
    :cond_10
    if-eq v6, v12, :cond_12

    .line 140
    .line 141
    if-eq v6, v11, :cond_12

    .line 142
    .line 143
    if-ltz v6, :cond_11

    .line 144
    .line 145
    if-ge v6, v10, :cond_11

    .line 146
    goto :goto_6

    .line 147
    .line 148
    :cond_11
    if-gt v9, v6, :cond_12

    .line 149
    .line 150
    if-ge v6, v8, :cond_12

    .line 151
    goto :goto_6

    .line 152
    .line 153
    :cond_12
    if-ne v6, v7, :cond_13

    .line 154
    :goto_6
    return v16

    .line 155
    .line 156
    :cond_13
    const/high16 v5, 0x10000

    .line 157
    .line 158
    if-ge v6, v5, :cond_14

    .line 159
    const/4 v14, 0x1

    .line 160
    goto :goto_7

    .line 161
    :cond_14
    const/4 v14, 0x2

    .line 162
    :goto_7
    add-int/2addr v4, v14

    .line 163
    .line 164
    add-int/lit8 v3, v3, 0x2

    .line 165
    move v5, v13

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_15
    if-ne v5, v1, :cond_16

    .line 170
    return v4

    .line 171
    :cond_16
    return v16

    .line 172
    .line 173
    :cond_17
    shr-int/lit8 v14, v6, 0x4

    .line 174
    .line 175
    .line 176
    const v7, 0xe000

    .line 177
    .line 178
    .line 179
    const v8, 0xd800

    .line 180
    .line 181
    if-ne v14, v15, :cond_27

    .line 182
    .line 183
    add-int/lit8 v14, v3, 0x2

    .line 184
    .line 185
    if-gt v2, v14, :cond_19

    .line 186
    .line 187
    if-ne v5, v1, :cond_18

    .line 188
    return v4

    .line 189
    :cond_18
    return v16

    .line 190
    .line 191
    :cond_19
    add-int/lit8 v15, v3, 0x1

    .line 192
    .line 193
    aget-byte v15, v0, v15

    .line 194
    .line 195
    and-int/lit16 v9, v15, 0xc0

    .line 196
    .line 197
    if-ne v9, v13, :cond_25

    .line 198
    .line 199
    aget-byte v9, v0, v14

    .line 200
    .line 201
    and-int/lit16 v14, v9, 0xc0

    .line 202
    .line 203
    if-ne v14, v13, :cond_23

    .line 204
    .line 205
    .line 206
    const v13, -0x1e080

    .line 207
    xor-int/2addr v9, v13

    .line 208
    .line 209
    shl-int/lit8 v13, v15, 0x6

    .line 210
    xor-int/2addr v9, v13

    .line 211
    .line 212
    shl-int/lit8 v6, v6, 0xc

    .line 213
    xor-int/2addr v6, v9

    .line 214
    .line 215
    const/16 v9, 0x800

    .line 216
    .line 217
    if-ge v6, v9, :cond_1b

    .line 218
    .line 219
    if-ne v5, v1, :cond_1a

    .line 220
    return v4

    .line 221
    :cond_1a
    return v16

    .line 222
    .line 223
    :cond_1b
    if-gt v8, v6, :cond_1d

    .line 224
    .line 225
    if-ge v6, v7, :cond_1d

    .line 226
    .line 227
    if-ne v5, v1, :cond_1c

    .line 228
    return v4

    .line 229
    :cond_1c
    return v16

    .line 230
    .line 231
    :cond_1d
    add-int/lit8 v7, v5, 0x1

    .line 232
    .line 233
    if-ne v5, v1, :cond_1e

    .line 234
    return v4

    .line 235
    .line 236
    :cond_1e
    if-eq v6, v12, :cond_20

    .line 237
    .line 238
    if-eq v6, v11, :cond_20

    .line 239
    .line 240
    if-ltz v6, :cond_1f

    .line 241
    .line 242
    if-ge v6, v10, :cond_1f

    .line 243
    goto :goto_8

    .line 244
    .line 245
    :cond_1f
    const/16 v5, 0x7f

    .line 246
    .line 247
    if-gt v5, v6, :cond_20

    .line 248
    .line 249
    const/16 v5, 0xa0

    .line 250
    .line 251
    if-ge v6, v5, :cond_20

    .line 252
    goto :goto_8

    .line 253
    .line 254
    .line 255
    :cond_20
    const v5, 0xfffd

    .line 256
    .line 257
    if-ne v6, v5, :cond_21

    .line 258
    :goto_8
    return v16

    .line 259
    .line 260
    :cond_21
    const/high16 v5, 0x10000

    .line 261
    .line 262
    if-ge v6, v5, :cond_22

    .line 263
    const/4 v14, 0x1

    .line 264
    goto :goto_9

    .line 265
    :cond_22
    const/4 v14, 0x2

    .line 266
    :goto_9
    add-int/2addr v4, v14

    .line 267
    .line 268
    add-int/lit8 v3, v3, 0x3

    .line 269
    :goto_a
    move v5, v7

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_23
    if-ne v5, v1, :cond_24

    .line 274
    return v4

    .line 275
    :cond_24
    return v16

    .line 276
    .line 277
    :cond_25
    if-ne v5, v1, :cond_26

    .line 278
    return v4

    .line 279
    :cond_26
    return v16

    .line 280
    .line 281
    :cond_27
    shr-int/lit8 v9, v6, 0x3

    .line 282
    .line 283
    if-ne v9, v15, :cond_3b

    .line 284
    .line 285
    add-int/lit8 v9, v3, 0x3

    .line 286
    .line 287
    if-gt v2, v9, :cond_29

    .line 288
    .line 289
    if-ne v5, v1, :cond_28

    .line 290
    return v4

    .line 291
    :cond_28
    return v16

    .line 292
    .line 293
    :cond_29
    add-int/lit8 v14, v3, 0x1

    .line 294
    .line 295
    aget-byte v14, v0, v14

    .line 296
    .line 297
    and-int/lit16 v15, v14, 0xc0

    .line 298
    .line 299
    if-ne v15, v13, :cond_39

    .line 300
    .line 301
    add-int/lit8 v15, v3, 0x2

    .line 302
    .line 303
    aget-byte v15, v0, v15

    .line 304
    .line 305
    and-int/lit16 v10, v15, 0xc0

    .line 306
    .line 307
    if-ne v10, v13, :cond_37

    .line 308
    .line 309
    aget-byte v9, v0, v9

    .line 310
    .line 311
    and-int/lit16 v10, v9, 0xc0

    .line 312
    .line 313
    if-ne v10, v13, :cond_35

    .line 314
    .line 315
    .line 316
    const v10, 0x381f80

    .line 317
    xor-int/2addr v9, v10

    .line 318
    .line 319
    shl-int/lit8 v10, v15, 0x6

    .line 320
    xor-int/2addr v9, v10

    .line 321
    .line 322
    shl-int/lit8 v10, v14, 0xc

    .line 323
    xor-int/2addr v9, v10

    .line 324
    .line 325
    shl-int/lit8 v6, v6, 0x12

    .line 326
    xor-int/2addr v6, v9

    .line 327
    .line 328
    .line 329
    const v9, 0x10ffff

    .line 330
    .line 331
    if-le v6, v9, :cond_2b

    .line 332
    .line 333
    if-ne v5, v1, :cond_2a

    .line 334
    return v4

    .line 335
    :cond_2a
    return v16

    .line 336
    .line 337
    :cond_2b
    if-gt v8, v6, :cond_2d

    .line 338
    .line 339
    if-ge v6, v7, :cond_2d

    .line 340
    .line 341
    if-ne v5, v1, :cond_2c

    .line 342
    return v4

    .line 343
    :cond_2c
    return v16

    .line 344
    .line 345
    :cond_2d
    const/high16 v7, 0x10000

    .line 346
    .line 347
    if-ge v6, v7, :cond_2f

    .line 348
    .line 349
    if-ne v5, v1, :cond_2e

    .line 350
    return v4

    .line 351
    :cond_2e
    return v16

    .line 352
    .line 353
    :cond_2f
    add-int/lit8 v7, v5, 0x1

    .line 354
    .line 355
    if-ne v5, v1, :cond_30

    .line 356
    return v4

    .line 357
    .line 358
    :cond_30
    if-eq v6, v12, :cond_32

    .line 359
    .line 360
    if-eq v6, v11, :cond_32

    .line 361
    .line 362
    if-ltz v6, :cond_31

    .line 363
    .line 364
    const/16 v5, 0x20

    .line 365
    .line 366
    if-ge v6, v5, :cond_31

    .line 367
    goto :goto_b

    .line 368
    .line 369
    :cond_31
    const/16 v5, 0x7f

    .line 370
    .line 371
    if-gt v5, v6, :cond_32

    .line 372
    .line 373
    const/16 v5, 0xa0

    .line 374
    .line 375
    if-ge v6, v5, :cond_32

    .line 376
    goto :goto_b

    .line 377
    .line 378
    .line 379
    :cond_32
    const v5, 0xfffd

    .line 380
    .line 381
    if-ne v6, v5, :cond_33

    .line 382
    :goto_b
    return v16

    .line 383
    .line 384
    :cond_33
    const/high16 v5, 0x10000

    .line 385
    .line 386
    if-ge v6, v5, :cond_34

    .line 387
    const/4 v14, 0x1

    .line 388
    goto :goto_c

    .line 389
    :cond_34
    const/4 v14, 0x2

    .line 390
    :goto_c
    add-int/2addr v4, v14

    .line 391
    .line 392
    add-int/lit8 v3, v3, 0x4

    .line 393
    goto :goto_a

    .line 394
    .line 395
    :cond_35
    if-ne v5, v1, :cond_36

    .line 396
    return v4

    .line 397
    :cond_36
    return v16

    .line 398
    .line 399
    :cond_37
    if-ne v5, v1, :cond_38

    .line 400
    return v4

    .line 401
    :cond_38
    return v16

    .line 402
    .line 403
    :cond_39
    if-ne v5, v1, :cond_3a

    .line 404
    return v4

    .line 405
    :cond_3a
    return v16

    .line 406
    .line 407
    :cond_3b
    if-ne v5, v1, :cond_3c

    .line 408
    return v4

    .line 409
    :cond_3c
    return v16

    .line 410
    :cond_3d
    return v4
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .locals 2
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1, v0}, Lokio/_Base64Kt;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lokio/_Base64Kt;->getBASE64_URL_SAFE()[B

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lokio/_Base64Kt;->encodeBase64([B[B)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .locals 9
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "other"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    const/4 v5, -0x1

    .line 26
    const/4 v6, 0x1

    .line 27
    .line 28
    if-ge v4, v2, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    .line 32
    move-result v7

    .line 33
    .line 34
    and-int/lit16 v7, v7, 0xff

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    .line 38
    move-result v8

    .line 39
    .line 40
    and-int/lit16 v8, v8, 0xff

    .line 41
    .line 42
    if-ne v7, v8, :cond_0

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    if-ge v7, v8, :cond_1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v5, v6

    .line 50
    :goto_1
    return v5

    .line 51
    .line 52
    :cond_2
    if-ne v0, v1, :cond_3

    .line 53
    return v3

    .line 54
    .line 55
    :cond_3
    if-ge v0, v1, :cond_4

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move v5, v6

    .line 58
    :goto_2
    return v5
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 14
    move-result-object p0

    .line 15
    add-int/2addr p4, p1

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p2, p3, p1, p4}, Lkotlin/collections/l;->d([B[BIII)[B

    .line 19
    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lokio/_Base64Kt;->decodeBase64ToArray(Ljava/lang/String;)[B

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    .line 11
    rem-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 18
    .line 19
    div-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    new-array v1, v0, [B

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v2, v0, :cond_0

    .line 25
    .line 26
    mul-int/lit8 v3, v2, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v4

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    .line 34
    move-result v4

    .line 35
    .line 36
    shl-int/lit8 v4, v4, 0x4

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 42
    move-result v3

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    .line 46
    move-result v3

    .line 47
    add-int/2addr v4, v3

    .line 48
    int-to-byte v3, v4

    .line 49
    .line 50
    aput-byte v3, v1, v2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    new-instance p0, Lokio/ByteString;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1}, Lokio/ByteString;-><init>([B)V

    .line 59
    return-object p0

    .line 60
    .line 61
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v1, "Unexpected hex string: "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lokio/ByteString;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 18
    return-object v0
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .locals 3
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .locals 3
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .locals 4
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    if-ne p1, p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast p1, Lokio/ByteString;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 24
    move-result-object v3

    .line 25
    array-length v3, v3

    .line 26
    .line 27
    if-ne v1, v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 35
    move-result-object p0

    .line 36
    array-length p0, p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2, v1, v2, p0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v2

    .line 45
    :goto_0
    return v0
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    move-result-object p0

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    return p0
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    move-result-object p0

    .line 10
    array-length p0, p0

    .line 11
    return p0
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lokio/ByteString;->setHashCode$okio(I)V

    .line 24
    return v0
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .locals 8
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    move-result-object v0

    .line 10
    array-length v0, v0

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    new-array v0, v0, [C

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 18
    move-result-object p0

    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    .line 23
    :goto_0
    if-ge v2, v1, :cond_0

    .line 24
    .line 25
    aget-byte v4, p0, v2

    .line 26
    .line 27
    add-int/lit8 v5, v3, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    .line 31
    move-result-object v6

    .line 32
    .line 33
    shr-int/lit8 v7, v4, 0x4

    .line 34
    .line 35
    and-int/lit8 v7, v7, 0xf

    .line 36
    .line 37
    aget-char v6, v6, v7

    .line 38
    .line 39
    aput-char v6, v0, v3

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x2

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    .line 45
    move-result-object v6

    .line 46
    .line 47
    and-int/lit8 v4, v4, 0xf

    .line 48
    .line 49
    aget-char v4, v6, v4

    .line 50
    .line 51
    aput-char v4, v0, v5

    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-static {v0}, Lkotlin/text/k;->q([C)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .locals 4
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "other"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 14
    move-result-object v0

    .line 15
    array-length v0, v0

    .line 16
    array-length v1, p1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p2

    .line 23
    .line 24
    if-gt p2, v0, :cond_1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 28
    move-result-object v2

    .line 29
    array-length v3, p1

    .line 30
    .line 31
    .line 32
    invoke-static {v2, p2, p1, v1, v3}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    return p2

    .line 37
    .line 38
    :cond_0
    if-eq p2, v0, :cond_1

    .line 39
    .line 40
    add-int/lit8 p2, p2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, -0x1

    .line 43
    return p0
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .locals 3
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .locals 2
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "data"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lokio/ByteString;

    .line 8
    array-length v1, p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string v1, "copyOf(this, size)"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 21
    return-object v0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    .line 3
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .locals 2
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .locals 2
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    .line 9
    move-result p2

    .line 10
    .line 11
    if-ltz p1, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 15
    move-result-object v0

    .line 16
    array-length v0, v0

    .line 17
    .line 18
    if-gt p2, v0, :cond_2

    .line 19
    .line 20
    sub-int v0, p2, p1

    .line 21
    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 28
    move-result-object v0

    .line 29
    array-length v0, v0

    .line 30
    .line 31
    if-ne p2, v0, :cond_0

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_0
    new-instance v0, Lokio/ByteString;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, p2}, Lkotlin/collections/l;->n([BII)[B

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p1, "endIndex < beginIndex"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    .line 60
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string p2, "endIndex > length("

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 72
    move-result-object p0

    .line 73
    array-length p0, p0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const/16 p0, 0x29

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1

    .line 96
    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p1, "beginIndex < 0"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    .line 13
    if-ge v0, v1, :cond_5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 17
    move-result-object v1

    .line 18
    .line 19
    aget-byte v1, v1, v0

    .line 20
    .line 21
    const/16 v2, 0x41

    .line 22
    int-to-byte v2, v2

    .line 23
    .line 24
    if-lt v1, v2, :cond_4

    .line 25
    .line 26
    const/16 v3, 0x5a

    .line 27
    int-to-byte v3, v3

    .line 28
    .line 29
    if-le v1, v3, :cond_0

    .line 30
    goto :goto_3

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 34
    move-result-object p0

    .line 35
    array-length v4, p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 39
    move-result-object p0

    .line 40
    .line 41
    const-string v4, "copyOf(this, size)"

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    add-int/lit8 v4, v0, 0x1

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x20

    .line 49
    int-to-byte v1, v1

    .line 50
    .line 51
    aput-byte v1, p0, v0

    .line 52
    :goto_1
    array-length v0, p0

    .line 53
    .line 54
    if-ge v4, v0, :cond_3

    .line 55
    .line 56
    aget-byte v0, p0, v4

    .line 57
    .line 58
    if-lt v0, v2, :cond_2

    .line 59
    .line 60
    if-le v0, v3, :cond_1

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x20

    .line 64
    int-to-byte v0, v0

    .line 65
    .line 66
    aput-byte v0, p0, v4

    .line 67
    .line 68
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    new-instance v0, Lokio/ByteString;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 75
    return-object v0

    .line 76
    .line 77
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 5
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    .line 13
    if-ge v0, v1, :cond_5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 17
    move-result-object v1

    .line 18
    .line 19
    aget-byte v1, v1, v0

    .line 20
    .line 21
    const/16 v2, 0x61

    .line 22
    int-to-byte v2, v2

    .line 23
    .line 24
    if-lt v1, v2, :cond_4

    .line 25
    .line 26
    const/16 v3, 0x7a

    .line 27
    int-to-byte v3, v3

    .line 28
    .line 29
    if-le v1, v3, :cond_0

    .line 30
    goto :goto_3

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 34
    move-result-object p0

    .line 35
    array-length v4, p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 39
    move-result-object p0

    .line 40
    .line 41
    const-string v4, "copyOf(this, size)"

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    add-int/lit8 v4, v0, 0x1

    .line 47
    .line 48
    add-int/lit8 v1, v1, -0x20

    .line 49
    int-to-byte v1, v1

    .line 50
    .line 51
    aput-byte v1, p0, v0

    .line 52
    :goto_1
    array-length v0, p0

    .line 53
    .line 54
    if-ge v4, v0, :cond_3

    .line 55
    .line 56
    aget-byte v0, p0, v4

    .line 57
    .line 58
    if-lt v0, v2, :cond_2

    .line 59
    .line 60
    if-le v0, v3, :cond_1

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v0, v0, -0x20

    .line 64
    int-to-byte v0, v0

    .line 65
    .line 66
    aput-byte v0, p0, v4

    .line 67
    .line 68
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    new-instance v0, Lokio/ByteString;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 75
    return-object v0

    .line 76
    .line 77
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 9
    move-result-object p0

    .line 10
    array-length v0, p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-string v0, "copyOf(this, size)"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-object p0
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .locals 7
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter([BI)I

    .line 9
    move-result p2

    .line 10
    array-length v0, p0

    .line 11
    int-to-long v1, v0

    .line 12
    int-to-long v3, p1

    .line 13
    int-to-long v5, p2

    .line 14
    .line 15
    .line 16
    invoke-static/range {v1 .. v6}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 17
    .line 18
    new-instance v0, Lokio/ByteString;

    .line 19
    add-int/2addr p2, p1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, p2}, Lkotlin/collections/l;->n([BII)[B

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 27
    return-object v0
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .locals 20
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "<this>"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 11
    move-result-object v1

    .line 12
    array-length v1, v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v0, "[size=0]"

    .line 17
    return-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const/16 v2, 0x40

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lokio/internal/_ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    .line 27
    move-result v1

    .line 28
    const/4 v3, -0x1

    .line 29
    .line 30
    const-string v4, "\u2026]"

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    const-string v6, "[size="

    .line 34
    .line 35
    const/16 v7, 0x5d

    .line 36
    .line 37
    if-ne v1, v3, :cond_5

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 41
    move-result-object v1

    .line 42
    array-length v1, v1

    .line 43
    .line 44
    if-gt v1, v2, :cond_1

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v2, "[hex="

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 81
    move-result-object v3

    .line 82
    array-length v3, v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, " hex="

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    .line 94
    move-result v2

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 98
    move-result-object v3

    .line 99
    array-length v3, v3

    .line 100
    .line 101
    if-gt v2, v3, :cond_4

    .line 102
    .line 103
    if-ltz v2, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 107
    move-result-object v3

    .line 108
    array-length v3, v3

    .line 109
    .line 110
    if-ne v2, v3, :cond_2

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_2
    new-instance v3, Lokio/ByteString;

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v5, v2}, Lkotlin/collections/l;->n([BII)[B

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-direct {v3, v0}, Lokio/ByteString;-><init>([B)V

    .line 125
    move-object v0, v3

    .line 126
    .line 127
    .line 128
    :goto_0
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    :goto_1
    return-object v0

    .line 141
    .line 142
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string v1, "endIndex < beginIndex"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    throw v0

    .line 153
    .line 154
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    const-string v2, "endIndex > length("

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 166
    move-result-object v0

    .line 167
    array-length v0, v0

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const/16 v0, 0x29

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    throw v1

    .line 190
    .line 191
    .line 192
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 197
    move-result-object v8

    .line 198
    .line 199
    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 200
    .line 201
    .line 202
    invoke-static {v8, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    const-string v9, "\\"

    .line 205
    .line 206
    const-string v10, "\\\\"

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v12, 0x4

    .line 209
    const/4 v13, 0x0

    .line 210
    .line 211
    .line 212
    invoke-static/range {v8 .. v13}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 213
    move-result-object v14

    .line 214
    .line 215
    const-string v15, "\n"

    .line 216
    .line 217
    const-string v16, "\\n"

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    const/16 v18, 0x4

    .line 222
    .line 223
    const/16 v19, 0x0

    .line 224
    .line 225
    .line 226
    invoke-static/range {v14 .. v19}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 227
    move-result-object v8

    .line 228
    .line 229
    const-string v9, "\r"

    .line 230
    .line 231
    const-string v10, "\\r"

    .line 232
    .line 233
    .line 234
    invoke-static/range {v8 .. v13}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 235
    move-result-object v3

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 239
    move-result v2

    .line 240
    .line 241
    if-ge v1, v2, :cond_6

    .line 242
    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    .line 253
    move-result-object v0

    .line 254
    array-length v0, v0

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v0, " text="

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    goto :goto_2

    .line 274
    .line 275
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    const-string v1, "[text="

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    :goto_2
    return-object v0
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 23
    :cond_0
    return-object v0
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "buffer"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 18
    return-void
.end method

.method private static final decodeHexDigit(C)I
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x30

    .line 3
    .line 4
    if-gt v0, p0, :cond_0

    .line 5
    .line 6
    const/16 v1, 0x3a

    .line 7
    .line 8
    if-ge p0, v1, :cond_0

    .line 9
    sub-int/2addr p0, v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const/16 v0, 0x61

    .line 13
    .line 14
    if-gt v0, p0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x67

    .line 17
    .line 18
    if-ge p0, v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 p0, p0, -0x57

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    const/16 v0, 0x41

    .line 24
    .line 25
    if-gt v0, p0, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x47

    .line 28
    .line 29
    if-ge p0, v0, :cond_2

    .line 30
    .line 31
    add-int/lit8 p0, p0, -0x37

    .line 32
    :goto_0
    return p0

    .line 33
    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v2, "Unexpected hex digit: "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .locals 0

    return-void
.end method
