.class public final Lcom/google/zxing/datamatrix/encoder/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALOG:[I

.field private static final FACTORS:[[I

.field private static final FACTOR_SETS:[I

.field private static final LOG:[I

.field private static final MODULO_VALUE:I = 0x12d


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v1, v0, [I

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    sput-object v1, Lcom/google/zxing/datamatrix/encoder/i;->FACTOR_SETS:[I

    .line 10
    .line 11
    new-array v0, v0, [[I

    .line 12
    .line 13
    const/16 v1, 0xe4

    .line 14
    .line 15
    const/16 v2, 0x30

    .line 16
    .line 17
    const/16 v3, 0xf

    .line 18
    .line 19
    const/16 v4, 0x6f

    .line 20
    .line 21
    const/16 v5, 0x3e

    .line 22
    .line 23
    .line 24
    filled-new-array {v1, v2, v3, v4, v5}, [I

    .line 25
    move-result-object v1

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    aput-object v1, v0, v4

    .line 29
    const/4 v1, 0x7

    .line 30
    .line 31
    new-array v6, v1, [I

    .line 32
    .line 33
    .line 34
    fill-array-data v6, :array_1

    .line 35
    const/4 v7, 0x1

    .line 36
    .line 37
    aput-object v6, v0, v7

    .line 38
    .line 39
    const/16 v6, 0xa

    .line 40
    .line 41
    new-array v8, v6, [I

    .line 42
    .line 43
    .line 44
    fill-array-data v8, :array_2

    .line 45
    const/4 v9, 0x2

    .line 46
    .line 47
    aput-object v8, v0, v9

    .line 48
    .line 49
    const/16 v8, 0xb

    .line 50
    .line 51
    new-array v9, v8, [I

    .line 52
    .line 53
    .line 54
    fill-array-data v9, :array_3

    .line 55
    const/4 v10, 0x3

    .line 56
    .line 57
    aput-object v9, v0, v10

    .line 58
    .line 59
    const/16 v9, 0xc

    .line 60
    .line 61
    new-array v10, v9, [I

    .line 62
    .line 63
    .line 64
    fill-array-data v10, :array_4

    .line 65
    const/4 v11, 0x4

    .line 66
    .line 67
    aput-object v10, v0, v11

    .line 68
    .line 69
    const/16 v10, 0xe

    .line 70
    .line 71
    new-array v11, v10, [I

    .line 72
    .line 73
    .line 74
    fill-array-data v11, :array_5

    .line 75
    const/4 v12, 0x5

    .line 76
    .line 77
    aput-object v11, v0, v12

    .line 78
    .line 79
    const/16 v11, 0x12

    .line 80
    .line 81
    new-array v11, v11, [I

    .line 82
    .line 83
    .line 84
    fill-array-data v11, :array_6

    .line 85
    const/4 v12, 0x6

    .line 86
    .line 87
    aput-object v11, v0, v12

    .line 88
    .line 89
    const/16 v11, 0x14

    .line 90
    .line 91
    new-array v11, v11, [I

    .line 92
    .line 93
    .line 94
    fill-array-data v11, :array_7

    .line 95
    .line 96
    aput-object v11, v0, v1

    .line 97
    .line 98
    const/16 v1, 0x18

    .line 99
    .line 100
    new-array v1, v1, [I

    .line 101
    .line 102
    .line 103
    fill-array-data v1, :array_8

    .line 104
    .line 105
    const/16 v11, 0x8

    .line 106
    .line 107
    aput-object v1, v0, v11

    .line 108
    .line 109
    const/16 v1, 0x1c

    .line 110
    .line 111
    new-array v1, v1, [I

    .line 112
    .line 113
    .line 114
    fill-array-data v1, :array_9

    .line 115
    .line 116
    const/16 v11, 0x9

    .line 117
    .line 118
    aput-object v1, v0, v11

    .line 119
    .line 120
    const/16 v1, 0x24

    .line 121
    .line 122
    new-array v1, v1, [I

    .line 123
    .line 124
    .line 125
    fill-array-data v1, :array_a

    .line 126
    .line 127
    aput-object v1, v0, v6

    .line 128
    .line 129
    const/16 v1, 0x2a

    .line 130
    .line 131
    new-array v1, v1, [I

    .line 132
    .line 133
    .line 134
    fill-array-data v1, :array_b

    .line 135
    .line 136
    aput-object v1, v0, v8

    .line 137
    .line 138
    new-array v1, v2, [I

    .line 139
    .line 140
    .line 141
    fill-array-data v1, :array_c

    .line 142
    .line 143
    aput-object v1, v0, v9

    .line 144
    .line 145
    const/16 v1, 0x38

    .line 146
    .line 147
    new-array v1, v1, [I

    .line 148
    .line 149
    .line 150
    fill-array-data v1, :array_d

    .line 151
    .line 152
    const/16 v2, 0xd

    .line 153
    .line 154
    aput-object v1, v0, v2

    .line 155
    .line 156
    new-array v1, v5, [I

    .line 157
    .line 158
    .line 159
    fill-array-data v1, :array_e

    .line 160
    .line 161
    aput-object v1, v0, v10

    .line 162
    .line 163
    const/16 v1, 0x44

    .line 164
    .line 165
    new-array v1, v1, [I

    .line 166
    .line 167
    .line 168
    fill-array-data v1, :array_f

    .line 169
    .line 170
    aput-object v1, v0, v3

    .line 171
    .line 172
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/i;->FACTORS:[[I

    .line 173
    .line 174
    const/16 v0, 0x100

    .line 175
    .line 176
    new-array v1, v0, [I

    .line 177
    .line 178
    sput-object v1, Lcom/google/zxing/datamatrix/encoder/i;->LOG:[I

    .line 179
    .line 180
    const/16 v1, 0xff

    .line 181
    .line 182
    new-array v2, v1, [I

    .line 183
    .line 184
    sput-object v2, Lcom/google/zxing/datamatrix/encoder/i;->ALOG:[I

    .line 185
    move v2, v7

    .line 186
    .line 187
    :goto_0
    if-ge v4, v1, :cond_1

    .line 188
    .line 189
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/i;->ALOG:[I

    .line 190
    .line 191
    aput v2, v3, v4

    .line 192
    .line 193
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/i;->LOG:[I

    .line 194
    .line 195
    aput v4, v3, v2

    .line 196
    shl-int/2addr v2, v7

    .line 197
    .line 198
    if-lt v2, v0, :cond_0

    .line 199
    .line 200
    xor-int/lit16 v2, v2, 0x12d

    .line 201
    .line 202
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 203
    goto :goto_0

    .line 204
    :cond_1
    return-void

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    :array_0
    .array-data 4
        0x5
        0x7
        0xa
        0xb
        0xc
        0xe
        0x12
        0x14
        0x18
        0x1c
        0x24
        0x2a
        0x30
        0x38
        0x3e
        0x44
    .end array-data

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    :array_1
    .array-data 4
        0x17
        0x44
        0x90
        0x86
        0xf0
        0x5c
        0xfe
    .end array-data

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    :array_2
    .array-data 4
        0x1c
        0x18
        0xb9
        0xa6
        0xdf
        0xf8
        0x74
        0xff
        0x6e
        0x3d
    .end array-data

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
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
    :array_3
    .array-data 4
        0xaf
        0x8a
        0xcd
        0xc
        0xc2
        0xa8
        0x27
        0xf5
        0x3c
        0x61
        0x78
    .end array-data

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
    :array_4
    .array-data 4
        0x29
        0x99
        0x9e
        0x5b
        0x3d
        0x2a
        0x8e
        0xd5
        0x61
        0xb2
        0x64
        0xf2
    .end array-data

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
    :array_5
    .array-data 4
        0x9c
        0x61
        0xc0
        0xfc
        0x5f
        0x9
        0x9d
        0x77
        0x8a
        0x2d
        0x12
        0xba
        0x53
        0xb9
    .end array-data

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
    :array_6
    .array-data 4
        0x53
        0xc3
        0x64
        0x27
        0xbc
        0x4b
        0x42
        0x3d
        0xf1
        0xd5
        0x6d
        0x81
        0x5e
        0xfe
        0xe1
        0x30
        0x5a
        0xbc
    .end array-data

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
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    :array_7
    .array-data 4
        0xf
        0xc3
        0xf4
        0x9
        0xe9
        0x47
        0xa8
        0x2
        0xbc
        0xa0
        0x99
        0x91
        0xfd
        0x4f
        0x6c
        0x52
        0x1b
        0xae
        0xba
        0xac
    .end array-data

    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
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
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    :array_8
    .array-data 4
        0x34
        0xbe
        0x58
        0xcd
        0x6d
        0x27
        0xb0
        0x15
        0x9b
        0xc5
        0xfb
        0xdf
        0x9b
        0x15
        0x5
        0xac
        0xfe
        0x7c
        0xc
        0xb5
        0xb8
        0x60
        0x32
        0xc1
    .end array-data

    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    :array_9
    .array-data 4
        0xd3
        0xe7
        0x2b
        0x61
        0x47
        0x60
        0x67
        0xae
        0x25
        0x97
        0xaa
        0x35
        0x4b
        0x22
        0xf9
        0x79
        0x11
        0x8a
        0x6e
        0xd5
        0x8d
        0x88
        0x78
        0x97
        0xe9
        0xa8
        0x5d
        0xff
    .end array-data

    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_a
    .array-data 4
        0xf5
        0x7f
        0xf2
        0xda
        0x82
        0xfa
        0xa2
        0xb5
        0x66
        0x78
        0x54
        0xb3
        0xdc
        0xfb
        0x50
        0xb6
        0xe5
        0x12
        0x2
        0x4
        0x44
        0x21
        0x65
        0x89
        0x5f
        0x77
        0x73
        0x2c
        0xaf
        0xb8
        0x3b
        0x19
        0xe1
        0x62
        0x51
        0x70
    .end array-data

    :array_b
    .array-data 4
        0x4d
        0xc1
        0x89
        0x1f
        0x13
        0x26
        0x16
        0x99
        0xf7
        0x69
        0x7a
        0x2
        0xf5
        0x85
        0xf2
        0x8
        0xaf
        0x5f
        0x64
        0x9
        0xa7
        0x69
        0xd6
        0x6f
        0x39
        0x79
        0x15
        0x1
        0xfd
        0x39
        0x36
        0x65
        0xf8
        0xca
        0x45
        0x32
        0x96
        0xb1
        0xe2
        0x5
        0x9
        0x5
    .end array-data

    :array_c
    .array-data 4
        0xf5
        0x84
        0xac
        0xdf
        0x60
        0x20
        0x75
        0x16
        0xee
        0x85
        0xee
        0xe7
        0xcd
        0xbc
        0xed
        0x57
        0xbf
        0x6a
        0x10
        0x93
        0x76
        0x17
        0x25
        0x5a
        0xaa
        0xcd
        0x83
        0x58
        0x78
        0x64
        0x42
        0x8a
        0xba
        0xf0
        0x52
        0x2c
        0xb0
        0x57
        0xbb
        0x93
        0xa0
        0xaf
        0x45
        0xd5
        0x5c
        0xfd
        0xe1
        0x13
    .end array-data

    :array_d
    .array-data 4
        0xaf
        0x9
        0xdf
        0xee
        0xc
        0x11
        0xdc
        0xd0
        0x64
        0x1d
        0xaf
        0xaa
        0xe6
        0xc0
        0xd7
        0xeb
        0x96
        0x9f
        0x24
        0xdf
        0x26
        0xc8
        0x84
        0x36
        0xe4
        0x92
        0xda
        0xea
        0x75
        0xcb
        0x1d
        0xe8
        0x90
        0xee
        0x16
        0x96
        0xc9
        0x75
        0x3e
        0xcf
        0xa4
        0xd
        0x89
        0xf5
        0x7f
        0x43
        0xf7
        0x1c
        0x9b
        0x2b
        0xcb
        0x6b
        0xe9
        0x35
        0x8f
        0x2e
    .end array-data

    :array_e
    .array-data 4
        0xf2
        0x5d
        0xa9
        0x32
        0x90
        0xd2
        0x27
        0x76
        0xca
        0xbc
        0xc9
        0xbd
        0x8f
        0x6c
        0xc4
        0x25
        0xb9
        0x70
        0x86
        0xe6
        0xf5
        0x3f
        0xc5
        0xbe
        0xfa
        0x6a
        0xb9
        0xdd
        0xaf
        0x40
        0x72
        0x47
        0xa1
        0x2c
        0x93
        0x6
        0x1b
        0xda
        0x33
        0x3f
        0x57
        0xa
        0x28
        0x82
        0xbc
        0x11
        0xa3
        0x1f
        0xb0
        0xaa
        0x4
        0x6b
        0xe8
        0x7
        0x5e
        0xa6
        0xe0
        0x7c
        0x56
        0x2f
        0xb
        0xcc
    .end array-data

    :array_f
    .array-data 4
        0xdc
        0xe4
        0xad
        0x59
        0xfb
        0x95
        0x9f
        0x38
        0x59
        0x21
        0x93
        0xf4
        0x9a
        0x24
        0x49
        0x7f
        0xd5
        0x88
        0xf8
        0xb4
        0xea
        0xc5
        0x9e
        0xb1
        0x44
        0x7a
        0x5d
        0xd5
        0xf
        0xa0
        0xe3
        0xec
        0x42
        0x8b
        0x99
        0xb9
        0xca
        0xa7
        0xb3
        0x19
        0xdc
        0xe8
        0x60
        0xd2
        0xe7
        0x88
        0xdf
        0xef
        0xb5
        0xf1
        0x3b
        0x34
        0xac
        0x19
        0x31
        0xe8
        0xd3
        0xbd
        0x40
        0x36
        0x6c
        0x99
        0x84
        0x3f
        0x60
        0x67
        0x52
        0xba
    .end array-data
.end method

.method private static a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v1, v0, p1}, Lcom/google/zxing/datamatrix/encoder/i;->b(Ljava/lang/CharSequence;III)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static b(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/i;->FACTOR_SETS:[I

    .line 5
    array-length v3, v2

    .line 6
    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    if-ne v2, p3, :cond_0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, -0x1

    .line 17
    .line 18
    :goto_1
    if-ltz v1, :cond_8

    .line 19
    .line 20
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/i;->FACTORS:[[I

    .line 21
    .line 22
    aget-object v1, v2, v1

    .line 23
    .line 24
    new-array v2, p3, [C

    .line 25
    move v3, v0

    .line 26
    .line 27
    :goto_2
    if-ge v3, p3, :cond_2

    .line 28
    .line 29
    aput-char v0, v2, v3

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v3, p1

    .line 34
    .line 35
    :goto_3
    add-int v4, p1, p2

    .line 36
    .line 37
    if-ge v3, v4, :cond_6

    .line 38
    .line 39
    add-int/lit8 v4, p3, -0x1

    .line 40
    .line 41
    aget-char v5, v2, v4

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 45
    move-result v6

    .line 46
    xor-int/2addr v5, v6

    .line 47
    .line 48
    :goto_4
    if-lez v4, :cond_4

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    aget v6, v1, v4

    .line 53
    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    add-int/lit8 v7, v4, -0x1

    .line 57
    .line 58
    aget-char v7, v2, v7

    .line 59
    .line 60
    sget-object v8, Lcom/google/zxing/datamatrix/encoder/i;->ALOG:[I

    .line 61
    .line 62
    sget-object v9, Lcom/google/zxing/datamatrix/encoder/i;->LOG:[I

    .line 63
    .line 64
    aget v10, v9, v5

    .line 65
    .line 66
    aget v6, v9, v6

    .line 67
    add-int/2addr v10, v6

    .line 68
    .line 69
    rem-int/lit16 v10, v10, 0xff

    .line 70
    .line 71
    aget v6, v8, v10

    .line 72
    xor-int/2addr v6, v7

    .line 73
    int-to-char v6, v6

    .line 74
    .line 75
    aput-char v6, v2, v4

    .line 76
    goto :goto_5

    .line 77
    .line 78
    :cond_3
    add-int/lit8 v6, v4, -0x1

    .line 79
    .line 80
    aget-char v6, v2, v6

    .line 81
    .line 82
    aput-char v6, v2, v4

    .line 83
    .line 84
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_4
    if-eqz v5, :cond_5

    .line 88
    .line 89
    aget v4, v1, v0

    .line 90
    .line 91
    if-eqz v4, :cond_5

    .line 92
    .line 93
    sget-object v6, Lcom/google/zxing/datamatrix/encoder/i;->ALOG:[I

    .line 94
    .line 95
    sget-object v7, Lcom/google/zxing/datamatrix/encoder/i;->LOG:[I

    .line 96
    .line 97
    aget v5, v7, v5

    .line 98
    .line 99
    aget v4, v7, v4

    .line 100
    add-int/2addr v5, v4

    .line 101
    .line 102
    rem-int/lit16 v5, v5, 0xff

    .line 103
    .line 104
    aget v4, v6, v5

    .line 105
    int-to-char v4, v4

    .line 106
    .line 107
    aput-char v4, v2, v0

    .line 108
    goto :goto_6

    .line 109
    .line 110
    :cond_5
    aput-char v0, v2, v0

    .line 111
    .line 112
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 113
    goto :goto_3

    .line 114
    .line 115
    :cond_6
    new-array p0, p3, [C

    .line 116
    .line 117
    :goto_7
    if-ge v0, p3, :cond_7

    .line 118
    .line 119
    sub-int p1, p3, v0

    .line 120
    .line 121
    add-int/lit8 p1, p1, -0x1

    .line 122
    .line 123
    aget-char p1, v2, p1

    .line 124
    .line 125
    aput-char p1, p0, v0

    .line 126
    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    goto :goto_7

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    .line 135
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string p1, "Illegal number of error correction codewords specified: "

    .line 138
    .line 139
    .line 140
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0
.end method

.method public static c(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/k;)Ljava/lang/String;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->a()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ne v0, v1, :cond_6

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->a()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->c()I

    .line 20
    move-result v2

    .line 21
    add-int/2addr v1, v2

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->f()I

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->c()I

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/i;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->capacity()I

    .line 51
    move-result v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 55
    .line 56
    new-array v2, v1, [I

    .line 57
    .line 58
    new-array v3, v1, [I

    .line 59
    .line 60
    new-array v4, v1, [I

    .line 61
    const/4 v5, 0x0

    .line 62
    move v6, v5

    .line 63
    .line 64
    :goto_0
    if-ge v6, v1, :cond_2

    .line 65
    .line 66
    add-int/lit8 v7, v6, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/k;->b(I)I

    .line 70
    move-result v8

    .line 71
    .line 72
    aput v8, v2, v6

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v7}, Lcom/google/zxing/datamatrix/encoder/k;->d(I)I

    .line 76
    move-result v8

    .line 77
    .line 78
    aput v8, v3, v6

    .line 79
    .line 80
    aput v5, v4, v6

    .line 81
    .line 82
    if-lez v6, :cond_1

    .line 83
    .line 84
    add-int/lit8 v8, v6, -0x1

    .line 85
    .line 86
    aget v8, v4, v8

    .line 87
    .line 88
    aget v9, v2, v6

    .line 89
    add-int/2addr v8, v9

    .line 90
    .line 91
    aput v8, v4, v6

    .line 92
    :cond_1
    move v6, v7

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move v4, v5

    .line 95
    .line 96
    :goto_1
    if-ge v4, v1, :cond_5

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    aget v7, v2, v4

    .line 101
    .line 102
    .line 103
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    move v7, v4

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->a()I

    .line 108
    move-result v8

    .line 109
    .line 110
    if-ge v7, v8, :cond_3

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 114
    move-result v8

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    add-int/2addr v7, v1

    .line 119
    goto :goto_2

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 124
    .line 125
    aget v7, v3, v4

    .line 126
    .line 127
    .line 128
    invoke-static {v6, v7}, Lcom/google/zxing/datamatrix/encoder/i;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 129
    move-result-object v6

    .line 130
    move v7, v4

    .line 131
    move v8, v5

    .line 132
    .line 133
    :goto_3
    aget v9, v3, v4

    .line 134
    mul-int/2addr v9, v1

    .line 135
    .line 136
    if-ge v7, v9, :cond_4

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->a()I

    .line 140
    move-result v9

    .line 141
    add-int/2addr v9, v7

    .line 142
    .line 143
    add-int/lit8 v10, v8, 0x1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 147
    move-result v8

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 151
    add-int/2addr v7, v1

    .line 152
    move v8, v10

    .line 153
    goto :goto_3

    .line 154
    .line 155
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 156
    goto :goto_1

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    .line 163
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string p1, "The number of codewords does not match the selected symbol"

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0
.end method
