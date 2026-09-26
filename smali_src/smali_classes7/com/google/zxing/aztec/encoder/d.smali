.class public final Lcom/google/zxing/aztec/encoder/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    .line 2
    const-string v0, "MIXED"

    .line 3
    .line 4
    const-string v1, "PUNCT"

    .line 5
    .line 6
    const-string v2, "UPPER"

    .line 7
    .line 8
    const-string v3, "LOWER"

    .line 9
    .line 10
    const-string v4, "DIGIT"

    .line 11
    .line 12
    .line 13
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/google/zxing/aztec/encoder/d;->MODE_NAMES:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x5

    .line 18
    .line 19
    new-array v1, v0, [[I

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    const v3, 0x5001c

    .line 24
    .line 25
    .line 26
    const v4, 0x5001e

    .line 27
    .line 28
    .line 29
    const v5, 0x5001d

    .line 30
    .line 31
    .line 32
    const v6, 0xa03be

    .line 33
    .line 34
    .line 35
    filled-new-array {v2, v3, v4, v5, v6}, [I

    .line 36
    move-result-object v7

    .line 37
    .line 38
    aput-object v7, v1, v2

    .line 39
    .line 40
    .line 41
    const v7, 0x901ee

    .line 42
    .line 43
    .line 44
    filled-new-array {v7, v2, v4, v5, v6}, [I

    .line 45
    move-result-object v7

    .line 46
    const/4 v8, 0x1

    .line 47
    .line 48
    aput-object v7, v1, v8

    .line 49
    .line 50
    .line 51
    const v7, 0x901dd

    .line 52
    .line 53
    .line 54
    const v9, 0xe3bbe

    .line 55
    .line 56
    .line 57
    const v10, 0x4000e

    .line 58
    .line 59
    .line 60
    const v11, 0x901dc

    .line 61
    .line 62
    .line 63
    filled-new-array {v10, v11, v2, v7, v9}, [I

    .line 64
    move-result-object v7

    .line 65
    const/4 v9, 0x2

    .line 66
    .line 67
    aput-object v7, v1, v9

    .line 68
    .line 69
    .line 70
    filled-new-array {v5, v3, v6, v2, v4}, [I

    .line 71
    move-result-object v3

    .line 72
    const/4 v4, 0x3

    .line 73
    .line 74
    aput-object v3, v1, v4

    .line 75
    .line 76
    .line 77
    const v3, 0xa03fe

    .line 78
    .line 79
    .line 80
    const v5, 0xa03fd

    .line 81
    .line 82
    .line 83
    const v6, 0x5001f

    .line 84
    .line 85
    .line 86
    const v7, 0xa03fc

    .line 87
    .line 88
    .line 89
    filled-new-array {v6, v7, v3, v5, v2}, [I

    .line 90
    move-result-object v3

    .line 91
    const/4 v5, 0x4

    .line 92
    .line 93
    aput-object v3, v1, v5

    .line 94
    .line 95
    sput-object v1, Lcom/google/zxing/aztec/encoder/d;->LATCH_TABLE:[[I

    .line 96
    .line 97
    const/16 v1, 0x100

    .line 98
    .line 99
    .line 100
    filled-new-array {v0, v1}, [I

    .line 101
    move-result-object v0

    .line 102
    .line 103
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, [[I

    .line 110
    .line 111
    sput-object v0, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 112
    .line 113
    aget-object v0, v0, v2

    .line 114
    .line 115
    const/16 v1, 0x20

    .line 116
    .line 117
    aput v8, v0, v1

    .line 118
    .line 119
    const/16 v0, 0x41

    .line 120
    .line 121
    :goto_0
    const/16 v3, 0x5a

    .line 122
    .line 123
    if-gt v0, v3, :cond_0

    .line 124
    .line 125
    sget-object v3, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 126
    .line 127
    aget-object v3, v3, v2

    .line 128
    .line 129
    add-int/lit8 v6, v0, -0x3f

    .line 130
    .line 131
    aput v6, v3, v0

    .line 132
    .line 133
    add-int/lit8 v0, v0, 0x1

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 137
    .line 138
    aget-object v0, v0, v8

    .line 139
    .line 140
    aput v8, v0, v1

    .line 141
    .line 142
    const/16 v0, 0x61

    .line 143
    .line 144
    :goto_1
    const/16 v3, 0x7a

    .line 145
    .line 146
    if-gt v0, v3, :cond_1

    .line 147
    .line 148
    sget-object v3, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 149
    .line 150
    aget-object v3, v3, v8

    .line 151
    .line 152
    add-int/lit8 v6, v0, -0x5f

    .line 153
    .line 154
    aput v6, v3, v0

    .line 155
    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    goto :goto_1

    .line 158
    .line 159
    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 160
    .line 161
    aget-object v0, v0, v9

    .line 162
    .line 163
    aput v8, v0, v1

    .line 164
    .line 165
    const/16 v0, 0x30

    .line 166
    .line 167
    :goto_2
    const/16 v1, 0x39

    .line 168
    .line 169
    if-gt v0, v1, :cond_2

    .line 170
    .line 171
    sget-object v1, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 172
    .line 173
    aget-object v1, v1, v9

    .line 174
    .line 175
    add-int/lit8 v3, v0, -0x2e

    .line 176
    .line 177
    aput v3, v1, v0

    .line 178
    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    goto :goto_2

    .line 181
    .line 182
    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 183
    .line 184
    aget-object v0, v0, v9

    .line 185
    .line 186
    const/16 v1, 0x2c

    .line 187
    .line 188
    const/16 v3, 0xc

    .line 189
    .line 190
    aput v3, v0, v1

    .line 191
    .line 192
    const/16 v1, 0xd

    .line 193
    .line 194
    const/16 v3, 0x2e

    .line 195
    .line 196
    aput v1, v0, v3

    .line 197
    .line 198
    const/16 v0, 0x1c

    .line 199
    .line 200
    new-array v1, v0, [I

    .line 201
    .line 202
    .line 203
    fill-array-data v1, :array_0

    .line 204
    move v3, v2

    .line 205
    .line 206
    :goto_3
    if-ge v3, v0, :cond_3

    .line 207
    .line 208
    sget-object v6, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 209
    .line 210
    aget-object v6, v6, v4

    .line 211
    .line 212
    aget v7, v1, v3

    .line 213
    .line 214
    aput v3, v6, v7

    .line 215
    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 217
    goto :goto_3

    .line 218
    .line 219
    :cond_3
    const/16 v1, 0x1f

    .line 220
    .line 221
    new-array v3, v1, [I

    .line 222
    .line 223
    .line 224
    fill-array-data v3, :array_1

    .line 225
    move v6, v2

    .line 226
    .line 227
    :goto_4
    if-ge v6, v1, :cond_5

    .line 228
    .line 229
    aget v7, v3, v6

    .line 230
    .line 231
    if-lez v7, :cond_4

    .line 232
    .line 233
    sget-object v10, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 234
    .line 235
    aget-object v10, v10, v5

    .line 236
    .line 237
    aput v6, v10, v7

    .line 238
    .line 239
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 240
    goto :goto_4

    .line 241
    :cond_5
    const/4 v1, 0x6

    .line 242
    .line 243
    .line 244
    filled-new-array {v1, v1}, [I

    .line 245
    move-result-object v1

    .line 246
    .line 247
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 252
    .line 253
    check-cast v1, [[I

    .line 254
    .line 255
    sput-object v1, Lcom/google/zxing/aztec/encoder/d;->SHIFT_TABLE:[[I

    .line 256
    array-length v3, v1

    .line 257
    move v6, v2

    .line 258
    .line 259
    :goto_5
    if-ge v6, v3, :cond_6

    .line 260
    .line 261
    aget-object v7, v1, v6

    .line 262
    const/4 v10, -0x1

    .line 263
    .line 264
    .line 265
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([II)V

    .line 266
    .line 267
    add-int/lit8 v6, v6, 0x1

    .line 268
    goto :goto_5

    .line 269
    .line 270
    :cond_6
    sget-object v1, Lcom/google/zxing/aztec/encoder/d;->SHIFT_TABLE:[[I

    .line 271
    .line 272
    aget-object v3, v1, v2

    .line 273
    .line 274
    aput v2, v3, v5

    .line 275
    .line 276
    aget-object v3, v1, v8

    .line 277
    .line 278
    aput v2, v3, v5

    .line 279
    .line 280
    aput v0, v3, v2

    .line 281
    .line 282
    aget-object v0, v1, v4

    .line 283
    .line 284
    aput v2, v0, v5

    .line 285
    .line 286
    aget-object v0, v1, v9

    .line 287
    .line 288
    aput v2, v0, v5

    .line 289
    .line 290
    const/16 v1, 0xf

    .line 291
    .line 292
    aput v1, v0, v2

    .line 293
    return-void

    .line 294
    nop

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    :array_0
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    :array_1
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/d;->text:[B

    .line 6
    return-void
.end method

.method private static b(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/google/zxing/aztec/encoder/f;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Lcom/google/zxing/aztec/encoder/f;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/f;->f(Lcom/google/zxing/aztec/encoder/f;)Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/f;->f(Lcom/google/zxing/aztec/encoder/f;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-object v0
.end method

.method private c(Lcom/google/zxing/aztec/encoder/f;ILjava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/f;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/d;->text:[B

    .line 3
    .line 4
    aget-byte v0, v0, p2

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xff

    .line 7
    int-to-char v0, v0

    .line 8
    .line 9
    sget-object v1, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/f;->e()I

    .line 13
    move-result v2

    .line 14
    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    aget v1, v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    const/4 v3, 0x0

    .line 25
    :goto_1
    const/4 v4, 0x4

    .line 26
    .line 27
    if-gt v2, v4, :cond_5

    .line 28
    .line 29
    sget-object v4, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 30
    .line 31
    aget-object v4, v4, v2

    .line 32
    .line 33
    aget v4, v4, v0

    .line 34
    .line 35
    if-lez v4, :cond_4

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/f;->b(I)Lcom/google/zxing/aztec/encoder/f;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/f;->e()I

    .line 47
    move-result v5

    .line 48
    .line 49
    if-eq v2, v5, :cond_2

    .line 50
    const/4 v5, 0x2

    .line 51
    .line 52
    if-ne v2, v5, :cond_3

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/f;->g(II)Lcom/google/zxing/aztec/encoder/f;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    .line 59
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    :cond_3
    if-nez v1, :cond_4

    .line 62
    .line 63
    sget-object v5, Lcom/google/zxing/aztec/encoder/d;->SHIFT_TABLE:[[I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/f;->e()I

    .line 67
    move-result v6

    .line 68
    .line 69
    aget-object v5, v5, v6

    .line 70
    .line 71
    aget v5, v5, v2

    .line 72
    .line 73
    if-ltz v5, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2, v4}, Lcom/google/zxing/aztec/encoder/f;->h(II)Lcom/google/zxing/aztec/encoder/f;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    .line 80
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/f;->c()I

    .line 87
    move-result v1

    .line 88
    .line 89
    if-gtz v1, :cond_6

    .line 90
    .line 91
    sget-object v1, Lcom/google/zxing/aztec/encoder/d;->CHAR_MAP:[[I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/f;->e()I

    .line 95
    move-result v2

    .line 96
    .line 97
    aget-object v1, v1, v2

    .line 98
    .line 99
    aget v0, v1, v0

    .line 100
    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/f;->a(I)Lcom/google/zxing/aztec/encoder/f;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_7
    return-void
.end method

.method private static d(Lcom/google/zxing/aztec/encoder/f;IILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/f;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/f;->b(I)Lcom/google/zxing/aztec/encoder/f;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/f;->g(II)Lcom/google/zxing/aztec/encoder/f;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/f;->e()I

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eq v2, v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/f;->h(II)Lcom/google/zxing/aztec/encoder/f;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    const/4 v2, 0x3

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    if-eq p2, v2, :cond_1

    .line 30
    .line 31
    if-ne p2, v1, :cond_2

    .line 32
    .line 33
    :cond_1
    rsub-int/lit8 p2, p2, 0x10

    .line 34
    const/4 v1, 0x2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/f;->g(II)Lcom/google/zxing/aztec/encoder/f;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1, v3}, Lcom/google/zxing/aztec/encoder/f;->g(II)Lcom/google/zxing/aztec/encoder/f;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/f;->c()I

    .line 49
    move-result p2

    .line 50
    .line 51
    if-lez p2, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/f;->a(I)Lcom/google/zxing/aztec/encoder/f;

    .line 55
    move-result-object p0

    .line 56
    add-int/2addr p1, v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/f;->a(I)Lcom/google/zxing/aztec/encoder/f;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3
    return-void
.end method

.method private e(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/google/zxing/aztec/encoder/f;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/d;->c(Lcom/google/zxing/aztec/encoder/f;ILjava/util/Collection;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/d;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private static f(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/f;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/google/zxing/aztec/encoder/f;

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/d;->d(Lcom/google/zxing/aztec/encoder/f;IILjava/util/Collection;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/d;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public a()Lg5/a;
    .locals 8

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/aztec/encoder/f;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/f;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/d;->text:[B

    .line 11
    array-length v4, v3

    .line 12
    .line 13
    if-ge v2, v4, :cond_7

    .line 14
    .line 15
    add-int/lit8 v4, v2, 0x1

    .line 16
    array-length v5, v3

    .line 17
    .line 18
    if-ge v4, v5, :cond_0

    .line 19
    .line 20
    aget-byte v5, v3, v4

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v5, v1

    .line 23
    .line 24
    :goto_1
    aget-byte v3, v3, v2

    .line 25
    .line 26
    const/16 v6, 0xd

    .line 27
    .line 28
    if-eq v3, v6, :cond_5

    .line 29
    .line 30
    const/16 v6, 0x2c

    .line 31
    .line 32
    const/16 v7, 0x20

    .line 33
    .line 34
    if-eq v3, v6, :cond_4

    .line 35
    .line 36
    const/16 v6, 0x2e

    .line 37
    .line 38
    if-eq v3, v6, :cond_3

    .line 39
    .line 40
    const/16 v6, 0x3a

    .line 41
    .line 42
    if-eq v3, v6, :cond_2

    .line 43
    :cond_1
    move v3, v1

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    if-ne v5, v7, :cond_1

    .line 47
    const/4 v3, 0x5

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_3
    if-ne v5, v7, :cond_1

    .line 51
    const/4 v3, 0x3

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_4
    if-ne v5, v7, :cond_1

    .line 55
    const/4 v3, 0x4

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_5
    const/16 v3, 0xa

    .line 59
    .line 60
    if-ne v5, v3, :cond_1

    .line 61
    const/4 v3, 0x2

    .line 62
    .line 63
    :goto_2
    if-lez v3, :cond_6

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2, v3}, Lcom/google/zxing/aztec/encoder/d;->f(Ljava/lang/Iterable;II)Ljava/util/Collection;

    .line 67
    move-result-object v0

    .line 68
    move v2, v4

    .line 69
    goto :goto_3

    .line 70
    .line 71
    .line 72
    :cond_6
    invoke-direct {p0, v0, v2}, Lcom/google/zxing/aztec/encoder/d;->e(Ljava/lang/Iterable;I)Ljava/util/Collection;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_7
    new-instance v1, Lcom/google/zxing/aztec/encoder/d$a;

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/google/zxing/aztec/encoder/d$a;-><init>(Lcom/google/zxing/aztec/encoder/d;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Lcom/google/zxing/aztec/encoder/f;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/d;->text:[B

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/f;->i([B)Lg5/a;

    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method
