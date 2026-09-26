.class final Lcom/google/android/gms/internal/play_billing/zzaq;
.super Lcom/google/android/gms/internal/play_billing/zzai;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzai;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaq;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzaq;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzaq;->zza:Lcom/google/android/gms/internal/play_billing/zzai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzai;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzc:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzd:I

    return-void
.end method

.method static zzf(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzah;)Lcom/google/android/gms/internal/play_billing/zzaq;
    .locals 17

    .line 1
    .line 2
    move/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzaq;->zza:Lcom/google/android/gms/internal/play_billing/zzai;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzaq;

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    if-ne v0, v4, :cond_1

    .line 17
    .line 18
    aget-object v0, v1, v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    aget-object v3, v1, v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzaa;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzaq;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzaq;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 35
    return-object v0

    .line 36
    :cond_1
    array-length v5, v1

    .line 37
    shr-int/2addr v5, v4

    .line 38
    .line 39
    const-string v6, "index"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzx;->zzb(IILjava/lang/String;)I

    .line 43
    const/4 v5, 0x2

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 47
    move-result v6

    .line 48
    .line 49
    .line 50
    const v7, 0x2ccccccc

    .line 51
    .line 52
    if-ge v6, v7, :cond_2

    .line 53
    .line 54
    add-int/lit8 v7, v6, -0x1

    .line 55
    .line 56
    .line 57
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 58
    move-result v7

    .line 59
    :goto_0
    add-int/2addr v7, v7

    .line 60
    int-to-double v8, v7

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const-wide v10, 0x3fe6666666666666L    # 0.7

    .line 66
    mul-double/2addr v8, v10

    .line 67
    int-to-double v10, v6

    .line 68
    .line 69
    cmpg-double v8, v8, v10

    .line 70
    .line 71
    if-gez v8, :cond_3

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    .line 75
    .line 76
    if-ge v6, v7, :cond_17

    .line 77
    .line 78
    :cond_3
    if-ne v0, v4, :cond_4

    .line 79
    .line 80
    aget-object v0, v1, v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    aget-object v6, v1, v4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzaa;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    move v0, v4

    .line 93
    .line 94
    goto/16 :goto_d

    .line 95
    .line 96
    :cond_4
    add-int/lit8 v6, v7, -0x1

    .line 97
    .line 98
    const/16 v8, 0x80

    .line 99
    const/4 v9, 0x3

    .line 100
    const/4 v10, -0x1

    .line 101
    .line 102
    if-gt v7, v8, :cond_a

    .line 103
    .line 104
    new-array v7, v7, [B

    .line 105
    .line 106
    .line 107
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 108
    move v8, v3

    .line 109
    move v10, v8

    .line 110
    .line 111
    :goto_1
    if-ge v8, v0, :cond_8

    .line 112
    .line 113
    add-int v11, v10, v10

    .line 114
    .line 115
    add-int v12, v8, v8

    .line 116
    .line 117
    aget-object v13, v1, v12

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    xor-int/2addr v12, v4

    .line 122
    .line 123
    aget-object v12, v1, v12

    .line 124
    .line 125
    .line 126
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/play_billing/zzaa;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 133
    move-result v14

    .line 134
    .line 135
    .line 136
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzab;->zza(I)I

    .line 137
    move-result v14

    .line 138
    :goto_2
    and-int/2addr v14, v6

    .line 139
    .line 140
    aget-byte v15, v7, v14

    .line 141
    .line 142
    const/16 v5, 0xff

    .line 143
    and-int/2addr v15, v5

    .line 144
    .line 145
    if-ne v15, v5, :cond_6

    .line 146
    int-to-byte v5, v11

    .line 147
    .line 148
    aput-byte v5, v7, v14

    .line 149
    .line 150
    if-ge v10, v8, :cond_5

    .line 151
    .line 152
    aput-object v13, v1, v11

    .line 153
    .line 154
    xor-int/lit8 v5, v11, 0x1

    .line 155
    .line 156
    aput-object v12, v1, v5

    .line 157
    .line 158
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 159
    goto :goto_3

    .line 160
    .line 161
    :cond_6
    aget-object v5, v1, v15

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v5

    .line 166
    .line 167
    if-eqz v5, :cond_7

    .line 168
    .line 169
    xor-int/lit8 v2, v15, 0x1

    .line 170
    .line 171
    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzag;

    .line 172
    .line 173
    aget-object v11, v1, v2

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-direct {v5, v13, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzag;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    aput-object v12, v1, v2

    .line 182
    move-object v2, v5

    .line 183
    .line 184
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 185
    const/4 v5, 0x2

    .line 186
    goto :goto_1

    .line 187
    .line 188
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 189
    const/4 v5, 0x2

    .line 190
    goto :goto_2

    .line 191
    .line 192
    :cond_8
    if-ne v10, v0, :cond_9

    .line 193
    move-object v2, v7

    .line 194
    :goto_4
    const/4 v5, 0x2

    .line 195
    .line 196
    goto/16 :goto_d

    .line 197
    .line 198
    :cond_9
    new-array v5, v9, [Ljava/lang/Object;

    .line 199
    .line 200
    aput-object v7, v5, v3

    .line 201
    .line 202
    .line 203
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v6

    .line 205
    .line 206
    aput-object v6, v5, v4

    .line 207
    const/4 v6, 0x2

    .line 208
    .line 209
    aput-object v2, v5, v6

    .line 210
    move-object v2, v5

    .line 211
    move v5, v6

    .line 212
    .line 213
    goto/16 :goto_d

    .line 214
    .line 215
    .line 216
    :cond_a
    const v5, 0x8000

    .line 217
    .line 218
    if-gt v7, v5, :cond_10

    .line 219
    .line 220
    new-array v5, v7, [S

    .line 221
    .line 222
    .line 223
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([SS)V

    .line 224
    move v7, v3

    .line 225
    move v8, v7

    .line 226
    .line 227
    :goto_5
    if-ge v7, v0, :cond_e

    .line 228
    .line 229
    add-int v10, v8, v8

    .line 230
    .line 231
    add-int v11, v7, v7

    .line 232
    .line 233
    aget-object v12, v1, v11

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    xor-int/2addr v11, v4

    .line 238
    .line 239
    aget-object v11, v1, v11

    .line 240
    .line 241
    .line 242
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/play_billing/zzaa;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 249
    move-result v13

    .line 250
    .line 251
    .line 252
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzab;->zza(I)I

    .line 253
    move-result v13

    .line 254
    :goto_6
    and-int/2addr v13, v6

    .line 255
    .line 256
    aget-short v14, v5, v13

    .line 257
    int-to-char v14, v14

    .line 258
    .line 259
    .line 260
    const v15, 0xffff

    .line 261
    .line 262
    if-ne v14, v15, :cond_c

    .line 263
    int-to-short v14, v10

    .line 264
    .line 265
    aput-short v14, v5, v13

    .line 266
    .line 267
    if-ge v8, v7, :cond_b

    .line 268
    .line 269
    aput-object v12, v1, v10

    .line 270
    .line 271
    xor-int/lit8 v10, v10, 0x1

    .line 272
    .line 273
    aput-object v11, v1, v10

    .line 274
    .line 275
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 276
    goto :goto_7

    .line 277
    .line 278
    :cond_c
    aget-object v15, v1, v14

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 282
    move-result v15

    .line 283
    .line 284
    if-eqz v15, :cond_d

    .line 285
    .line 286
    xor-int/lit8 v2, v14, 0x1

    .line 287
    .line 288
    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzag;

    .line 289
    .line 290
    aget-object v13, v1, v2

    .line 291
    .line 292
    .line 293
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/zzag;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    aput-object v11, v1, v2

    .line 299
    move-object v2, v10

    .line 300
    .line 301
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 302
    goto :goto_5

    .line 303
    .line 304
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 305
    goto :goto_6

    .line 306
    .line 307
    :cond_e
    if-ne v8, v0, :cond_f

    .line 308
    :goto_8
    move-object v2, v5

    .line 309
    goto :goto_4

    .line 310
    .line 311
    :cond_f
    new-array v6, v9, [Ljava/lang/Object;

    .line 312
    .line 313
    aput-object v5, v6, v3

    .line 314
    .line 315
    .line 316
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    move-result-object v5

    .line 318
    .line 319
    aput-object v5, v6, v4

    .line 320
    const/4 v5, 0x2

    .line 321
    .line 322
    aput-object v2, v6, v5

    .line 323
    :goto_9
    move-object v2, v6

    .line 324
    goto :goto_d

    .line 325
    .line 326
    :cond_10
    new-array v5, v7, [I

    .line 327
    .line 328
    .line 329
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([II)V

    .line 330
    move v7, v3

    .line 331
    move v8, v7

    .line 332
    .line 333
    :goto_a
    if-ge v7, v0, :cond_14

    .line 334
    .line 335
    add-int v11, v8, v8

    .line 336
    .line 337
    add-int v12, v7, v7

    .line 338
    .line 339
    aget-object v13, v1, v12

    .line 340
    .line 341
    .line 342
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    xor-int/2addr v12, v4

    .line 344
    .line 345
    aget-object v12, v1, v12

    .line 346
    .line 347
    .line 348
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/play_billing/zzaa;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 355
    move-result v14

    .line 356
    .line 357
    .line 358
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzab;->zza(I)I

    .line 359
    move-result v14

    .line 360
    :goto_b
    and-int/2addr v14, v6

    .line 361
    .line 362
    aget v15, v5, v14

    .line 363
    .line 364
    if-ne v15, v10, :cond_12

    .line 365
    .line 366
    aput v11, v5, v14

    .line 367
    .line 368
    if-ge v8, v7, :cond_11

    .line 369
    .line 370
    aput-object v13, v1, v11

    .line 371
    .line 372
    xor-int/lit8 v11, v11, 0x1

    .line 373
    .line 374
    aput-object v12, v1, v11

    .line 375
    .line 376
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 377
    goto :goto_c

    .line 378
    .line 379
    :cond_12
    aget-object v10, v1, v15

    .line 380
    .line 381
    .line 382
    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v10

    .line 384
    .line 385
    if-eqz v10, :cond_13

    .line 386
    .line 387
    xor-int/lit8 v2, v15, 0x1

    .line 388
    .line 389
    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzag;

    .line 390
    .line 391
    aget-object v11, v1, v2

    .line 392
    .line 393
    .line 394
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-direct {v10, v13, v12, v11}, Lcom/google/android/gms/internal/play_billing/zzag;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    aput-object v12, v1, v2

    .line 400
    move-object v2, v10

    .line 401
    .line 402
    :goto_c
    add-int/lit8 v7, v7, 0x1

    .line 403
    const/4 v10, -0x1

    .line 404
    goto :goto_a

    .line 405
    .line 406
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 407
    const/4 v10, -0x1

    .line 408
    goto :goto_b

    .line 409
    .line 410
    :cond_14
    if-ne v8, v0, :cond_15

    .line 411
    goto :goto_8

    .line 412
    .line 413
    :cond_15
    new-array v6, v9, [Ljava/lang/Object;

    .line 414
    .line 415
    aput-object v5, v6, v3

    .line 416
    .line 417
    .line 418
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    move-result-object v5

    .line 420
    .line 421
    aput-object v5, v6, v4

    .line 422
    const/4 v5, 0x2

    .line 423
    .line 424
    aput-object v2, v6, v5

    .line 425
    goto :goto_9

    .line 426
    .line 427
    :goto_d
    instance-of v6, v2, [Ljava/lang/Object;

    .line 428
    .line 429
    if-eqz v6, :cond_16

    .line 430
    .line 431
    check-cast v2, [Ljava/lang/Object;

    .line 432
    .line 433
    aget-object v0, v2, v5

    .line 434
    .line 435
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzag;

    .line 436
    .line 437
    move-object/from16 v5, p2

    .line 438
    .line 439
    iput-object v0, v5, Lcom/google/android/gms/internal/play_billing/zzah;->zzc:Lcom/google/android/gms/internal/play_billing/zzag;

    .line 440
    .line 441
    aget-object v0, v2, v3

    .line 442
    .line 443
    aget-object v2, v2, v4

    .line 444
    .line 445
    check-cast v2, Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 449
    move-result v2

    .line 450
    .line 451
    add-int v3, v2, v2

    .line 452
    .line 453
    .line 454
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 455
    move-result-object v1

    .line 456
    .line 457
    move/from16 v16, v2

    .line 458
    move-object v2, v0

    .line 459
    .line 460
    move/from16 v0, v16

    .line 461
    .line 462
    :cond_16
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzaq;

    .line 463
    .line 464
    .line 465
    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzaq;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 466
    return-object v3

    .line 467
    .line 468
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 469
    .line 470
    const-string v1, "collection too large"

    .line 471
    .line 472
    .line 473
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 474
    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    .line 6
    goto/16 :goto_4

    .line 7
    .line 8
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzd:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzb:[Ljava/lang/Object;

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    aget-object v1, v2, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    aget-object p1, v2, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzc:Ljava/lang/Object;

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_3
    instance-of v4, v1, [B

    .line 40
    const/4 v5, -0x1

    .line 41
    .line 42
    if-eqz v4, :cond_6

    .line 43
    move-object v4, v1

    .line 44
    .line 45
    check-cast v4, [B

    .line 46
    array-length v1, v4

    .line 47
    .line 48
    add-int/lit8 v6, v1, -0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzab;->zza(I)I

    .line 56
    move-result v1

    .line 57
    :goto_1
    and-int/2addr v1, v6

    .line 58
    .line 59
    aget-byte v5, v4, v1

    .line 60
    .line 61
    const/16 v7, 0xff

    .line 62
    and-int/2addr v5, v7

    .line 63
    .line 64
    if-ne v5, v7, :cond_4

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_4
    aget-object v7, v2, v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v7

    .line 72
    .line 73
    if-eqz v7, :cond_5

    .line 74
    .line 75
    xor-int/lit8 p1, v5, 0x1

    .line 76
    .line 77
    aget-object p1, v2, p1

    .line 78
    goto :goto_4

    .line 79
    .line 80
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_6
    instance-of v4, v1, [S

    .line 84
    .line 85
    if-eqz v4, :cond_9

    .line 86
    move-object v4, v1

    .line 87
    .line 88
    check-cast v4, [S

    .line 89
    array-length v1, v4

    .line 90
    .line 91
    add-int/lit8 v6, v1, -0x1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 95
    move-result v1

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzab;->zza(I)I

    .line 99
    move-result v1

    .line 100
    :goto_2
    and-int/2addr v1, v6

    .line 101
    .line 102
    aget-short v5, v4, v1

    .line 103
    int-to-char v5, v5

    .line 104
    .line 105
    .line 106
    const v7, 0xffff

    .line 107
    .line 108
    if-ne v5, v7, :cond_7

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_7
    aget-object v7, v2, v5

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v7

    .line 116
    .line 117
    if-eqz v7, :cond_8

    .line 118
    .line 119
    xor-int/lit8 p1, v5, 0x1

    .line 120
    .line 121
    aget-object p1, v2, p1

    .line 122
    goto :goto_4

    .line 123
    .line 124
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_9
    check-cast v1, [I

    .line 128
    array-length v4, v1

    .line 129
    add-int/2addr v4, v5

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 133
    move-result v6

    .line 134
    .line 135
    .line 136
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzab;->zza(I)I

    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    .line 140
    aget v7, v1, v6

    .line 141
    .line 142
    if-ne v7, v5, :cond_a

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_a
    aget-object v8, v2, v7

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v8

    .line 151
    .line 152
    if-eqz v8, :cond_c

    .line 153
    .line 154
    xor-int/lit8 p1, v7, 0x1

    .line 155
    .line 156
    aget-object p1, v2, p1

    .line 157
    .line 158
    :goto_4
    if-nez p1, :cond_b

    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    .line 162
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 163
    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzd:I

    return v0
.end method

.method final zza()Lcom/google/android/gms/internal/play_billing/zzac;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzd:I

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzap;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzb:[Ljava/lang/Object;

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzap;-><init>([Ljava/lang/Object;II)V

    .line 11
    return-object v1
.end method

.method final zzc()Lcom/google/android/gms/internal/play_billing/zzaj;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzd:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzb:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzan;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzan;-><init>(Lcom/google/android/gms/internal/play_billing/zzai;[Ljava/lang/Object;II)V

    .line 11
    return-object v2
.end method

.method final zzd()Lcom/google/android/gms/internal/play_billing/zzaj;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzd:I

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzap;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzaq;->zzb:[Ljava/lang/Object;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzap;-><init>([Ljava/lang/Object;II)V

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzao;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/zzao;-><init>(Lcom/google/android/gms/internal/play_billing/zzai;Lcom/google/android/gms/internal/play_billing/zzaf;)V

    .line 16
    return-object v0
.end method
