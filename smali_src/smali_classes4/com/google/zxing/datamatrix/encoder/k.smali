.class public Lcom/google/zxing/datamatrix/encoder/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/k;

.field private static symbols:[Lcom/google/zxing/datamatrix/encoder/k;


# instance fields
.field private final dataCapacity:I

.field private final dataRegions:I

.field private final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field private final rectangular:Z

.field private final rsBlockData:I

.field private final rsBlockError:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    const/16 v0, 0x1e

    .line 3
    .line 4
    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/k;

    .line 5
    .line 6
    new-instance v8, Lcom/google/zxing/datamatrix/encoder/k;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x5

    .line 10
    .line 11
    const/16 v5, 0x8

    .line 12
    .line 13
    const/16 v6, 0x8

    .line 14
    const/4 v7, 0x1

    .line 15
    move-object v1, v8

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    aput-object v8, v0, v1

    .line 22
    .line 23
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x5

    .line 26
    const/4 v12, 0x7

    .line 27
    .line 28
    const/16 v13, 0xa

    .line 29
    .line 30
    const/16 v14, 0xa

    .line 31
    const/4 v15, 0x1

    .line 32
    move-object v9, v1

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v9 .. v15}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 36
    const/4 v2, 0x1

    .line 37
    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 41
    const/4 v4, 0x1

    .line 42
    const/4 v5, 0x5

    .line 43
    const/4 v6, 0x7

    .line 44
    .line 45
    const/16 v7, 0x10

    .line 46
    const/4 v8, 0x6

    .line 47
    const/4 v9, 0x1

    .line 48
    move-object v3, v1

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 52
    const/4 v2, 0x2

    .line 53
    .line 54
    aput-object v1, v0, v2

    .line 55
    .line 56
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 57
    const/4 v4, 0x0

    .line 58
    .line 59
    const/16 v5, 0x8

    .line 60
    .line 61
    const/16 v6, 0xa

    .line 62
    .line 63
    const/16 v7, 0xc

    .line 64
    .line 65
    const/16 v8, 0xc

    .line 66
    move-object v3, v1

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 70
    const/4 v2, 0x3

    .line 71
    .line 72
    aput-object v1, v0, v2

    .line 73
    .line 74
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 75
    const/4 v4, 0x1

    .line 76
    .line 77
    const/16 v5, 0xa

    .line 78
    .line 79
    const/16 v6, 0xb

    .line 80
    .line 81
    const/16 v7, 0xe

    .line 82
    const/4 v8, 0x6

    .line 83
    const/4 v9, 0x2

    .line 84
    move-object v3, v1

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 88
    const/4 v2, 0x4

    .line 89
    .line 90
    aput-object v1, v0, v2

    .line 91
    .line 92
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 93
    const/4 v4, 0x0

    .line 94
    .line 95
    const/16 v5, 0xc

    .line 96
    .line 97
    const/16 v6, 0xc

    .line 98
    .line 99
    const/16 v8, 0xe

    .line 100
    const/4 v9, 0x1

    .line 101
    move-object v3, v1

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 105
    const/4 v2, 0x5

    .line 106
    .line 107
    aput-object v1, v0, v2

    .line 108
    .line 109
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 110
    const/4 v4, 0x1

    .line 111
    .line 112
    const/16 v5, 0x10

    .line 113
    .line 114
    const/16 v6, 0xe

    .line 115
    .line 116
    const/16 v7, 0x18

    .line 117
    .line 118
    const/16 v8, 0xa

    .line 119
    move-object v3, v1

    .line 120
    .line 121
    .line 122
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 123
    const/4 v2, 0x6

    .line 124
    .line 125
    aput-object v1, v0, v2

    .line 126
    .line 127
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 128
    const/4 v4, 0x0

    .line 129
    .line 130
    const/16 v5, 0x12

    .line 131
    .line 132
    const/16 v7, 0x10

    .line 133
    .line 134
    const/16 v8, 0x10

    .line 135
    move-object v3, v1

    .line 136
    .line 137
    .line 138
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 139
    const/4 v2, 0x7

    .line 140
    .line 141
    aput-object v1, v0, v2

    .line 142
    .line 143
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 144
    .line 145
    const/16 v5, 0x16

    .line 146
    .line 147
    const/16 v6, 0x12

    .line 148
    .line 149
    const/16 v7, 0x12

    .line 150
    .line 151
    const/16 v8, 0x12

    .line 152
    move-object v3, v1

    .line 153
    .line 154
    .line 155
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 156
    .line 157
    const/16 v2, 0x8

    .line 158
    .line 159
    aput-object v1, v0, v2

    .line 160
    .line 161
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 162
    const/4 v4, 0x1

    .line 163
    .line 164
    const/16 v7, 0x10

    .line 165
    .line 166
    const/16 v8, 0xa

    .line 167
    const/4 v9, 0x2

    .line 168
    move-object v3, v1

    .line 169
    .line 170
    .line 171
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 172
    .line 173
    const/16 v2, 0x9

    .line 174
    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 178
    const/4 v4, 0x0

    .line 179
    .line 180
    const/16 v5, 0x1e

    .line 181
    .line 182
    const/16 v6, 0x14

    .line 183
    .line 184
    const/16 v7, 0x14

    .line 185
    .line 186
    const/16 v8, 0x14

    .line 187
    const/4 v9, 0x1

    .line 188
    move-object v3, v1

    .line 189
    .line 190
    .line 191
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 192
    .line 193
    const/16 v2, 0xa

    .line 194
    .line 195
    aput-object v1, v0, v2

    .line 196
    .line 197
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 198
    const/4 v4, 0x1

    .line 199
    .line 200
    const/16 v5, 0x20

    .line 201
    .line 202
    const/16 v6, 0x18

    .line 203
    .line 204
    const/16 v7, 0x10

    .line 205
    .line 206
    const/16 v8, 0xe

    .line 207
    const/4 v9, 0x2

    .line 208
    move-object v3, v1

    .line 209
    .line 210
    .line 211
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 212
    .line 213
    const/16 v2, 0xb

    .line 214
    .line 215
    aput-object v1, v0, v2

    .line 216
    .line 217
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 218
    const/4 v4, 0x0

    .line 219
    .line 220
    const/16 v5, 0x24

    .line 221
    .line 222
    const/16 v7, 0x16

    .line 223
    .line 224
    const/16 v8, 0x16

    .line 225
    const/4 v9, 0x1

    .line 226
    move-object v3, v1

    .line 227
    .line 228
    .line 229
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 230
    .line 231
    const/16 v2, 0xc

    .line 232
    .line 233
    aput-object v1, v0, v2

    .line 234
    .line 235
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 236
    .line 237
    const/16 v5, 0x2c

    .line 238
    .line 239
    const/16 v6, 0x1c

    .line 240
    .line 241
    const/16 v7, 0x18

    .line 242
    .line 243
    const/16 v8, 0x18

    .line 244
    move-object v3, v1

    .line 245
    .line 246
    .line 247
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 248
    .line 249
    const/16 v2, 0xd

    .line 250
    .line 251
    aput-object v1, v0, v2

    .line 252
    .line 253
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 254
    const/4 v4, 0x1

    .line 255
    .line 256
    const/16 v5, 0x31

    .line 257
    .line 258
    const/16 v7, 0x16

    .line 259
    .line 260
    const/16 v8, 0xe

    .line 261
    const/4 v9, 0x2

    .line 262
    move-object v3, v1

    .line 263
    .line 264
    .line 265
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 266
    .line 267
    const/16 v2, 0xe

    .line 268
    .line 269
    aput-object v1, v0, v2

    .line 270
    .line 271
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 272
    const/4 v4, 0x0

    .line 273
    .line 274
    const/16 v5, 0x3e

    .line 275
    .line 276
    const/16 v6, 0x24

    .line 277
    .line 278
    const/16 v7, 0xe

    .line 279
    const/4 v9, 0x4

    .line 280
    move-object v3, v1

    .line 281
    .line 282
    .line 283
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 284
    .line 285
    const/16 v2, 0xf

    .line 286
    .line 287
    aput-object v1, v0, v2

    .line 288
    .line 289
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 290
    .line 291
    const/16 v5, 0x56

    .line 292
    .line 293
    const/16 v6, 0x2a

    .line 294
    .line 295
    const/16 v7, 0x10

    .line 296
    .line 297
    const/16 v8, 0x10

    .line 298
    move-object v3, v1

    .line 299
    .line 300
    .line 301
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 302
    .line 303
    const/16 v2, 0x10

    .line 304
    .line 305
    aput-object v1, v0, v2

    .line 306
    .line 307
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 308
    .line 309
    const/16 v5, 0x72

    .line 310
    .line 311
    const/16 v6, 0x30

    .line 312
    .line 313
    const/16 v7, 0x12

    .line 314
    .line 315
    const/16 v8, 0x12

    .line 316
    move-object v3, v1

    .line 317
    .line 318
    .line 319
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 320
    .line 321
    const/16 v2, 0x11

    .line 322
    .line 323
    aput-object v1, v0, v2

    .line 324
    .line 325
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 326
    .line 327
    const/16 v5, 0x90

    .line 328
    .line 329
    const/16 v6, 0x38

    .line 330
    .line 331
    const/16 v7, 0x14

    .line 332
    .line 333
    const/16 v8, 0x14

    .line 334
    move-object v3, v1

    .line 335
    .line 336
    .line 337
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 338
    .line 339
    const/16 v2, 0x12

    .line 340
    .line 341
    aput-object v1, v0, v2

    .line 342
    .line 343
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 344
    .line 345
    const/16 v5, 0xae

    .line 346
    .line 347
    const/16 v6, 0x44

    .line 348
    .line 349
    const/16 v7, 0x16

    .line 350
    .line 351
    const/16 v8, 0x16

    .line 352
    move-object v3, v1

    .line 353
    .line 354
    .line 355
    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIII)V

    .line 356
    .line 357
    const/16 v2, 0x13

    .line 358
    .line 359
    aput-object v1, v0, v2

    .line 360
    .line 361
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 362
    .line 363
    const/16 v5, 0xcc

    .line 364
    .line 365
    const/16 v6, 0x54

    .line 366
    .line 367
    const/16 v7, 0x18

    .line 368
    .line 369
    const/16 v8, 0x18

    .line 370
    .line 371
    const/16 v10, 0x66

    .line 372
    .line 373
    const/16 v11, 0x2a

    .line 374
    move-object v3, v1

    .line 375
    .line 376
    .line 377
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 378
    .line 379
    const/16 v2, 0x14

    .line 380
    .line 381
    aput-object v1, v0, v2

    .line 382
    .line 383
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 384
    .line 385
    const/16 v5, 0x118

    .line 386
    .line 387
    const/16 v6, 0x70

    .line 388
    .line 389
    const/16 v7, 0xe

    .line 390
    .line 391
    const/16 v8, 0xe

    .line 392
    .line 393
    const/16 v9, 0x10

    .line 394
    .line 395
    const/16 v10, 0x8c

    .line 396
    .line 397
    const/16 v11, 0x38

    .line 398
    move-object v3, v1

    .line 399
    .line 400
    .line 401
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 402
    .line 403
    const/16 v2, 0x15

    .line 404
    .line 405
    aput-object v1, v0, v2

    .line 406
    .line 407
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 408
    .line 409
    const/16 v5, 0x170

    .line 410
    .line 411
    const/16 v6, 0x90

    .line 412
    .line 413
    const/16 v7, 0x10

    .line 414
    .line 415
    const/16 v8, 0x10

    .line 416
    .line 417
    const/16 v10, 0x5c

    .line 418
    .line 419
    const/16 v11, 0x24

    .line 420
    move-object v3, v1

    .line 421
    .line 422
    .line 423
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 424
    .line 425
    const/16 v2, 0x16

    .line 426
    .line 427
    aput-object v1, v0, v2

    .line 428
    .line 429
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 430
    .line 431
    const/16 v5, 0x1c8

    .line 432
    .line 433
    const/16 v6, 0xc0

    .line 434
    .line 435
    const/16 v7, 0x12

    .line 436
    .line 437
    const/16 v8, 0x12

    .line 438
    .line 439
    const/16 v10, 0x72

    .line 440
    .line 441
    const/16 v11, 0x30

    .line 442
    move-object v3, v1

    .line 443
    .line 444
    .line 445
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 446
    .line 447
    const/16 v2, 0x17

    .line 448
    .line 449
    aput-object v1, v0, v2

    .line 450
    .line 451
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 452
    .line 453
    const/16 v5, 0x240

    .line 454
    .line 455
    const/16 v6, 0xe0

    .line 456
    .line 457
    const/16 v7, 0x14

    .line 458
    .line 459
    const/16 v8, 0x14

    .line 460
    .line 461
    const/16 v10, 0x90

    .line 462
    .line 463
    const/16 v11, 0x38

    .line 464
    move-object v3, v1

    .line 465
    .line 466
    .line 467
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 468
    .line 469
    const/16 v2, 0x18

    .line 470
    .line 471
    aput-object v1, v0, v2

    .line 472
    .line 473
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 474
    .line 475
    const/16 v5, 0x2b8

    .line 476
    .line 477
    const/16 v6, 0x110

    .line 478
    .line 479
    const/16 v7, 0x16

    .line 480
    .line 481
    const/16 v8, 0x16

    .line 482
    .line 483
    const/16 v10, 0xae

    .line 484
    .line 485
    const/16 v11, 0x44

    .line 486
    move-object v3, v1

    .line 487
    .line 488
    .line 489
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 490
    .line 491
    const/16 v2, 0x19

    .line 492
    .line 493
    aput-object v1, v0, v2

    .line 494
    .line 495
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 496
    .line 497
    const/16 v5, 0x330

    .line 498
    .line 499
    const/16 v6, 0x150

    .line 500
    .line 501
    const/16 v7, 0x18

    .line 502
    .line 503
    const/16 v8, 0x18

    .line 504
    .line 505
    const/16 v10, 0x88

    .line 506
    .line 507
    const/16 v11, 0x38

    .line 508
    move-object v3, v1

    .line 509
    .line 510
    .line 511
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 512
    .line 513
    const/16 v2, 0x1a

    .line 514
    .line 515
    aput-object v1, v0, v2

    .line 516
    .line 517
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 518
    .line 519
    const/16 v5, 0x41a

    .line 520
    .line 521
    const/16 v6, 0x198

    .line 522
    .line 523
    const/16 v7, 0x12

    .line 524
    .line 525
    const/16 v8, 0x12

    .line 526
    .line 527
    const/16 v9, 0x24

    .line 528
    .line 529
    const/16 v10, 0xaf

    .line 530
    .line 531
    const/16 v11, 0x44

    .line 532
    move-object v3, v1

    .line 533
    .line 534
    .line 535
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 536
    .line 537
    const/16 v2, 0x1b

    .line 538
    .line 539
    aput-object v1, v0, v2

    .line 540
    .line 541
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/k;

    .line 542
    .line 543
    const/16 v5, 0x518

    .line 544
    .line 545
    const/16 v6, 0x1f0

    .line 546
    .line 547
    const/16 v7, 0x14

    .line 548
    .line 549
    const/16 v8, 0x14

    .line 550
    .line 551
    const/16 v10, 0xa3

    .line 552
    .line 553
    const/16 v11, 0x3e

    .line 554
    move-object v3, v1

    .line 555
    .line 556
    .line 557
    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    .line 558
    .line 559
    const/16 v2, 0x1c

    .line 560
    .line 561
    aput-object v1, v0, v2

    .line 562
    .line 563
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/d;

    .line 564
    .line 565
    .line 566
    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/d;-><init>()V

    .line 567
    .line 568
    const/16 v2, 0x1d

    .line 569
    .line 570
    aput-object v1, v0, v2

    .line 571
    .line 572
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/k;->PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/k;

    .line 573
    .line 574
    sput-object v0, Lcom/google/zxing/datamatrix/encoder/k;->symbols:[Lcom/google/zxing/datamatrix/encoder/k;

    .line 575
    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    move v8, p3

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/k;-><init>(ZIIIIIII)V

    return-void
.end method

.method constructor <init>(ZIIIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/datamatrix/encoder/k;->rectangular:Z

    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/k;->dataCapacity:I

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/k;->errorCodewords:I

    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/k;->matrixWidth:I

    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/k;->matrixHeight:I

    iput p6, p0, Lcom/google/zxing/datamatrix/encoder/k;->dataRegions:I

    iput p7, p0, Lcom/google/zxing/datamatrix/encoder/k;->rsBlockData:I

    iput p8, p0, Lcom/google/zxing/datamatrix/encoder/k;->rsBlockError:I

    return-void
.end method

.method private e()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/k;->dataRegions:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    const/4 v2, 0x4

    .line 10
    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x10

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x24

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    const/4 v0, 0x6

    .line 21
    return v0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "Cannot handle this number of data regions"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 30
    :cond_1
    return v2

    .line 31
    :cond_2
    return v1
.end method

.method private k()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/k;->dataRegions:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-eq v0, v2, :cond_3

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x24

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    const/4 v0, 0x6

    .line 21
    return v0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "Cannot handle this number of data regions"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    return v2

    .line 32
    :cond_3
    return v1
.end method

.method public static l(ILcom/google/zxing/datamatrix/encoder/l;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Lcom/google/zxing/datamatrix/encoder/k;
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/k;->symbols:[Lcom/google/zxing/datamatrix/encoder/k;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_5

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/l;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/l;

    .line 11
    .line 12
    if-ne p1, v4, :cond_0

    .line 13
    .line 14
    iget-boolean v4, v3, Lcom/google/zxing/datamatrix/encoder/k;->rectangular:Z

    .line 15
    .line 16
    if-nez v4, :cond_4

    .line 17
    .line 18
    :cond_0
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/l;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/l;

    .line 19
    .line 20
    if-ne p1, v4, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/google/zxing/datamatrix/encoder/k;->rectangular:Z

    .line 23
    .line 24
    if-eqz v4, :cond_4

    .line 25
    .line 26
    :cond_1
    if-eqz p2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/k;->j()I

    .line 30
    move-result v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/zxing/b;->b()I

    .line 34
    move-result v5

    .line 35
    .line 36
    if-lt v4, v5, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/k;->i()I

    .line 40
    move-result v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/google/zxing/b;->a()I

    .line 44
    move-result v5

    .line 45
    .line 46
    if-lt v4, v5, :cond_4

    .line 47
    .line 48
    :cond_2
    if-eqz p3, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/k;->j()I

    .line 52
    move-result v4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/google/zxing/b;->b()I

    .line 56
    move-result v5

    .line 57
    .line 58
    if-gt v4, v5, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/k;->i()I

    .line 62
    move-result v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/google/zxing/b;->a()I

    .line 66
    move-result v5

    .line 67
    .line 68
    if-gt v4, v5, :cond_4

    .line 69
    .line 70
    :cond_3
    iget v4, v3, Lcom/google/zxing/datamatrix/encoder/k;->dataCapacity:I

    .line 71
    .line 72
    if-gt p0, v4, :cond_4

    .line 73
    return-object v3

    .line 74
    .line 75
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_5
    if-nez p4, :cond_6

    .line 79
    const/4 p0, 0x0

    .line 80
    return-object p0

    .line 81
    .line 82
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "Can\'t find a symbol arrangement that matches the message. Data codewords: "

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/k;->dataCapacity:I

    return v0
.end method

.method public b(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/zxing/datamatrix/encoder/k;->rsBlockData:I

    return p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/k;->errorCodewords:I

    return v0
.end method

.method public final d(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/zxing/datamatrix/encoder/k;->rsBlockError:I

    return p1
.end method

.method public f()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/k;->dataCapacity:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/k;->rsBlockData:I

    .line 5
    div-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final g()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/k;->k()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/k;->matrixHeight:I

    .line 7
    mul-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public final h()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/k;->e()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/k;->matrixWidth:I

    .line 7
    mul-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public final i()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/k;->g()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/k;->k()I

    .line 8
    move-result v1

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x1

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final j()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/k;->h()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/k;->e()I

    .line 8
    move-result v1

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x1

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/zxing/datamatrix/encoder/k;->rectangular:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "Rectangular Symbol:"

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-string v1, "Square Symbol:"

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, " data region "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/k;->matrixWidth:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v1, 0x78

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/k;->matrixHeight:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, ", symbol size "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/k;->j()I

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/k;->i()I

    .line 56
    move-result v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, ", symbol data size "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/k;->h()I

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/k;->g()I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v1, ", codewords "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/k;->dataCapacity:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const/16 v1, 0x2b

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/k;->errorCodewords:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method
