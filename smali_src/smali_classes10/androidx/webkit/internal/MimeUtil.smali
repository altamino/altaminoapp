.class Landroidx/webkit/internal/MimeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0}, Landroidx/webkit/internal/MimeUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x2e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    return-object v2

    .line 12
    :cond_0
    const/4 v4, 0x1

    .line 13
    add-int/2addr v1, v4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    sparse-switch v1, :sswitch_data_0

    .line 32
    :goto_0
    move v0, v3

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    .line 37
    :sswitch_0
    const-string/jumbo v0, "xhtml"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    const/16 v0, 0x31

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    .line 51
    :sswitch_1
    const-string/jumbo v0, "shtml"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 56
    .line 57
    if-nez p0, :cond_2

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    const/16 v0, 0x30

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    .line 65
    :sswitch_2
    const-string/jumbo v0, "pjpeg"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 70
    .line 71
    if-nez p0, :cond_3

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_3
    const/16 v0, 0x2f

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :sswitch_3
    const-string v1, "mhtml"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p0

    .line 83
    .line 84
    if-nez p0, :cond_32

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :sswitch_4
    const-string v0, "ehtml"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p0

    .line 92
    .line 93
    if-nez p0, :cond_4

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_4
    const/16 v0, 0x2d

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    .line 101
    :sswitch_5
    const-string/jumbo v0, "xhtm"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p0

    .line 106
    .line 107
    if-nez p0, :cond_5

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_5
    const/16 v0, 0x2c

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    .line 115
    :sswitch_6
    const-string/jumbo v0, "woff"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p0

    .line 120
    .line 121
    if-nez p0, :cond_6

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :cond_6
    const/16 v0, 0x2b

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    .line 129
    :sswitch_7
    const-string/jumbo v0, "webp"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result p0

    .line 134
    .line 135
    if-nez p0, :cond_7

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_7
    const/16 v0, 0x2a

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    .line 143
    :sswitch_8
    const-string/jumbo v0, "webm"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result p0

    .line 148
    .line 149
    if-nez p0, :cond_8

    .line 150
    goto :goto_0

    .line 151
    .line 152
    :cond_8
    const/16 v0, 0x29

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    .line 157
    :sswitch_9
    const-string/jumbo v0, "wasm"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p0

    .line 162
    .line 163
    if-nez p0, :cond_9

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_9
    const/16 v0, 0x28

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    .line 172
    :sswitch_a
    const-string/jumbo v0, "tiff"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result p0

    .line 177
    .line 178
    if-nez p0, :cond_a

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_a
    const/16 v0, 0x27

    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    .line 187
    :sswitch_b
    const-string/jumbo v0, "svgz"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result p0

    .line 192
    .line 193
    if-nez p0, :cond_b

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_b
    const/16 v0, 0x26

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    .line 202
    :sswitch_c
    const-string/jumbo v0, "shtm"

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result p0

    .line 207
    .line 208
    if-nez p0, :cond_c

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_c
    const/16 v0, 0x25

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    .line 217
    :sswitch_d
    const-string/jumbo v0, "opus"

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result p0

    .line 222
    .line 223
    if-nez p0, :cond_d

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_d
    const/16 v0, 0x24

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :sswitch_e
    const-string v0, "mpeg"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    move-result p0

    .line 236
    .line 237
    if-nez p0, :cond_e

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_e
    const/16 v0, 0x23

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :sswitch_f
    const-string v0, "json"

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    move-result p0

    .line 250
    .line 251
    if-nez p0, :cond_f

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_f
    const/16 v0, 0x22

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :sswitch_10
    const-string v0, "jpeg"

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result p0

    .line 264
    .line 265
    if-nez p0, :cond_10

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_10
    const/16 v0, 0x21

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :sswitch_11
    const-string v0, "jfif"

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result p0

    .line 278
    .line 279
    if-nez p0, :cond_11

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_11
    const/16 v0, 0x20

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :sswitch_12
    const-string v0, "html"

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result p0

    .line 292
    .line 293
    if-nez p0, :cond_12

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_12
    const/16 v0, 0x1f

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :sswitch_13
    const-string v0, "flac"

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result p0

    .line 306
    .line 307
    if-nez p0, :cond_13

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_13
    const/16 v0, 0x1e

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :sswitch_14
    const-string v0, "apng"

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    move-result p0

    .line 320
    .line 321
    if-nez p0, :cond_14

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_14
    const/16 v0, 0x1d

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    .line 330
    :sswitch_15
    const-string/jumbo v0, "zip"

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result p0

    .line 335
    .line 336
    if-nez p0, :cond_15

    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_15
    const/16 v0, 0x1c

    .line 341
    .line 342
    goto/16 :goto_1

    .line 343
    .line 344
    .line 345
    :sswitch_16
    const-string/jumbo v0, "xml"

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    move-result p0

    .line 350
    .line 351
    if-nez p0, :cond_16

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_16
    const/16 v0, 0x1b

    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    .line 360
    :sswitch_17
    const-string/jumbo v0, "xht"

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    move-result p0

    .line 365
    .line 366
    if-nez p0, :cond_17

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :cond_17
    const/16 v0, 0x1a

    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    .line 375
    :sswitch_18
    const-string/jumbo v0, "wav"

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    move-result p0

    .line 380
    .line 381
    if-nez p0, :cond_18

    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :cond_18
    const/16 v0, 0x19

    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    .line 390
    :sswitch_19
    const-string/jumbo v0, "tif"

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result p0

    .line 395
    .line 396
    if-nez p0, :cond_19

    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_19
    const/16 v0, 0x18

    .line 401
    .line 402
    goto/16 :goto_1

    .line 403
    .line 404
    .line 405
    :sswitch_1a
    const-string/jumbo v0, "tgz"

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    move-result p0

    .line 410
    .line 411
    if-nez p0, :cond_1a

    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_1a
    const/16 v0, 0x17

    .line 416
    .line 417
    goto/16 :goto_1

    .line 418
    .line 419
    .line 420
    :sswitch_1b
    const-string/jumbo v0, "svg"

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    move-result p0

    .line 425
    .line 426
    if-nez p0, :cond_1b

    .line 427
    .line 428
    goto/16 :goto_0

    .line 429
    .line 430
    :cond_1b
    const/16 v0, 0x16

    .line 431
    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    .line 435
    :sswitch_1c
    const-string/jumbo v0, "png"

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    move-result p0

    .line 440
    .line 441
    if-nez p0, :cond_1c

    .line 442
    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :cond_1c
    const/16 v0, 0x15

    .line 446
    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    .line 450
    :sswitch_1d
    const-string/jumbo v0, "pjp"

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    move-result p0

    .line 455
    .line 456
    if-nez p0, :cond_1d

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_1d
    const/16 v0, 0x14

    .line 461
    .line 462
    goto/16 :goto_1

    .line 463
    .line 464
    .line 465
    :sswitch_1e
    const-string/jumbo v0, "pdf"

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    move-result p0

    .line 470
    .line 471
    if-nez p0, :cond_1e

    .line 472
    .line 473
    goto/16 :goto_0

    .line 474
    .line 475
    :cond_1e
    const/16 v0, 0x13

    .line 476
    .line 477
    goto/16 :goto_1

    .line 478
    .line 479
    .line 480
    :sswitch_1f
    const-string/jumbo v0, "ogv"

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    move-result p0

    .line 485
    .line 486
    if-nez p0, :cond_1f

    .line 487
    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :cond_1f
    const/16 v0, 0x12

    .line 491
    .line 492
    goto/16 :goto_1

    .line 493
    .line 494
    .line 495
    :sswitch_20
    const-string/jumbo v0, "ogm"

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    move-result p0

    .line 500
    .line 501
    if-nez p0, :cond_20

    .line 502
    .line 503
    goto/16 :goto_0

    .line 504
    .line 505
    :cond_20
    const/16 v0, 0x11

    .line 506
    .line 507
    goto/16 :goto_1

    .line 508
    .line 509
    .line 510
    :sswitch_21
    const-string/jumbo v0, "ogg"

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    move-result p0

    .line 515
    .line 516
    if-nez p0, :cond_21

    .line 517
    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :cond_21
    const/16 v0, 0x10

    .line 521
    .line 522
    goto/16 :goto_1

    .line 523
    .line 524
    .line 525
    :sswitch_22
    const-string/jumbo v0, "oga"

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    move-result p0

    .line 530
    .line 531
    if-nez p0, :cond_22

    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_22
    const/16 v0, 0xf

    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :sswitch_23
    const-string v0, "mpg"

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 543
    move-result p0

    .line 544
    .line 545
    if-nez p0, :cond_23

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_23
    const/16 v0, 0xe

    .line 550
    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :sswitch_24
    const-string v0, "mp4"

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    move-result p0

    .line 558
    .line 559
    if-nez p0, :cond_24

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_24
    const/16 v0, 0xd

    .line 564
    .line 565
    goto/16 :goto_1

    .line 566
    .line 567
    :sswitch_25
    const-string v0, "mp3"

    .line 568
    .line 569
    .line 570
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    move-result p0

    .line 572
    .line 573
    if-nez p0, :cond_25

    .line 574
    .line 575
    goto/16 :goto_0

    .line 576
    .line 577
    :cond_25
    const/16 v0, 0xc

    .line 578
    .line 579
    goto/16 :goto_1

    .line 580
    .line 581
    :sswitch_26
    const-string v0, "mjs"

    .line 582
    .line 583
    .line 584
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    move-result p0

    .line 586
    .line 587
    if-nez p0, :cond_26

    .line 588
    .line 589
    goto/16 :goto_0

    .line 590
    .line 591
    :cond_26
    const/16 v0, 0xb

    .line 592
    .line 593
    goto/16 :goto_1

    .line 594
    .line 595
    :sswitch_27
    const-string v0, "mht"

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    move-result p0

    .line 600
    .line 601
    if-nez p0, :cond_27

    .line 602
    .line 603
    goto/16 :goto_0

    .line 604
    .line 605
    :cond_27
    const/16 v0, 0xa

    .line 606
    .line 607
    goto/16 :goto_1

    .line 608
    .line 609
    :sswitch_28
    const-string v0, "m4v"

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    move-result p0

    .line 614
    .line 615
    if-nez p0, :cond_28

    .line 616
    .line 617
    goto/16 :goto_0

    .line 618
    .line 619
    :cond_28
    const/16 v0, 0x9

    .line 620
    .line 621
    goto/16 :goto_1

    .line 622
    .line 623
    :sswitch_29
    const-string v0, "m4a"

    .line 624
    .line 625
    .line 626
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result p0

    .line 628
    .line 629
    if-nez p0, :cond_29

    .line 630
    .line 631
    goto/16 :goto_0

    .line 632
    .line 633
    :cond_29
    const/16 v0, 0x8

    .line 634
    .line 635
    goto/16 :goto_1

    .line 636
    .line 637
    :sswitch_2a
    const-string v0, "jpg"

    .line 638
    .line 639
    .line 640
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    move-result p0

    .line 642
    .line 643
    if-nez p0, :cond_2a

    .line 644
    .line 645
    goto/16 :goto_0

    .line 646
    :cond_2a
    const/4 v0, 0x7

    .line 647
    goto :goto_1

    .line 648
    .line 649
    :sswitch_2b
    const-string v0, "ico"

    .line 650
    .line 651
    .line 652
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    move-result p0

    .line 654
    .line 655
    if-nez p0, :cond_2b

    .line 656
    .line 657
    goto/16 :goto_0

    .line 658
    :cond_2b
    const/4 v0, 0x6

    .line 659
    goto :goto_1

    .line 660
    .line 661
    :sswitch_2c
    const-string v0, "htm"

    .line 662
    .line 663
    .line 664
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    move-result p0

    .line 666
    .line 667
    if-nez p0, :cond_2c

    .line 668
    .line 669
    goto/16 :goto_0

    .line 670
    :cond_2c
    const/4 v0, 0x5

    .line 671
    goto :goto_1

    .line 672
    .line 673
    :sswitch_2d
    const-string v0, "gif"

    .line 674
    .line 675
    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    move-result p0

    .line 678
    .line 679
    if-nez p0, :cond_2d

    .line 680
    .line 681
    goto/16 :goto_0

    .line 682
    :cond_2d
    const/4 v0, 0x4

    .line 683
    goto :goto_1

    .line 684
    .line 685
    :sswitch_2e
    const-string v0, "css"

    .line 686
    .line 687
    .line 688
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    move-result p0

    .line 690
    .line 691
    if-nez p0, :cond_2e

    .line 692
    .line 693
    goto/16 :goto_0

    .line 694
    :cond_2e
    const/4 v0, 0x3

    .line 695
    goto :goto_1

    .line 696
    .line 697
    :sswitch_2f
    const-string v0, "bmp"

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    move-result p0

    .line 702
    .line 703
    if-nez p0, :cond_2f

    .line 704
    .line 705
    goto/16 :goto_0

    .line 706
    :cond_2f
    const/4 v0, 0x2

    .line 707
    goto :goto_1

    .line 708
    .line 709
    :sswitch_30
    const-string v0, "js"

    .line 710
    .line 711
    .line 712
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    move-result p0

    .line 714
    .line 715
    if-nez p0, :cond_30

    .line 716
    .line 717
    goto/16 :goto_0

    .line 718
    :cond_30
    move v0, v4

    .line 719
    goto :goto_1

    .line 720
    .line 721
    :sswitch_31
    const-string v0, "gz"

    .line 722
    .line 723
    .line 724
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    move-result p0

    .line 726
    .line 727
    if-nez p0, :cond_31

    .line 728
    .line 729
    goto/16 :goto_0

    .line 730
    :cond_31
    const/4 v0, 0x0

    .line 731
    .line 732
    .line 733
    :cond_32
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 734
    return-object v2

    .line 735
    .line 736
    :pswitch_0
    const-string p0, "application/font-woff"

    .line 737
    return-object p0

    .line 738
    .line 739
    :pswitch_1
    const-string p0, "image/webp"

    .line 740
    return-object p0

    .line 741
    .line 742
    .line 743
    :pswitch_2
    const-string/jumbo p0, "video/webm"

    .line 744
    return-object p0

    .line 745
    .line 746
    :pswitch_3
    const-string p0, "application/wasm"

    .line 747
    return-object p0

    .line 748
    .line 749
    :pswitch_4
    const-string p0, "application/json"

    .line 750
    return-object p0

    .line 751
    .line 752
    :pswitch_5
    const-string p0, "audio/flac"

    .line 753
    return-object p0

    .line 754
    .line 755
    :pswitch_6
    const-string p0, "image/apng"

    .line 756
    return-object p0

    .line 757
    .line 758
    :pswitch_7
    const-string p0, "application/zip"

    .line 759
    return-object p0

    .line 760
    .line 761
    .line 762
    :pswitch_8
    const-string/jumbo p0, "text/xml"

    .line 763
    return-object p0

    .line 764
    .line 765
    :pswitch_9
    const-string p0, "application/xhtml+xml"

    .line 766
    return-object p0

    .line 767
    .line 768
    :pswitch_a
    const-string p0, "audio/wav"

    .line 769
    return-object p0

    .line 770
    .line 771
    :pswitch_b
    const-string p0, "image/tiff"

    .line 772
    return-object p0

    .line 773
    .line 774
    :pswitch_c
    const-string p0, "image/svg+xml"

    .line 775
    return-object p0

    .line 776
    .line 777
    :pswitch_d
    const-string p0, "image/png"

    .line 778
    return-object p0

    .line 779
    .line 780
    :pswitch_e
    const-string p0, "application/pdf"

    .line 781
    return-object p0

    .line 782
    .line 783
    .line 784
    :pswitch_f
    const-string/jumbo p0, "video/ogg"

    .line 785
    return-object p0

    .line 786
    .line 787
    :pswitch_10
    const-string p0, "audio/ogg"

    .line 788
    return-object p0

    .line 789
    .line 790
    .line 791
    :pswitch_11
    const-string/jumbo p0, "video/mpeg"

    .line 792
    return-object p0

    .line 793
    .line 794
    :pswitch_12
    const-string p0, "audio/mpeg"

    .line 795
    return-object p0

    .line 796
    .line 797
    :pswitch_13
    const-string p0, "multipart/related"

    .line 798
    return-object p0

    .line 799
    .line 800
    .line 801
    :pswitch_14
    const-string/jumbo p0, "video/mp4"

    .line 802
    return-object p0

    .line 803
    .line 804
    :pswitch_15
    const-string p0, "audio/x-m4a"

    .line 805
    return-object p0

    .line 806
    .line 807
    :pswitch_16
    const-string p0, "image/jpeg"

    .line 808
    return-object p0

    .line 809
    .line 810
    :pswitch_17
    const-string p0, "image/x-icon"

    .line 811
    return-object p0

    .line 812
    .line 813
    .line 814
    :pswitch_18
    const-string/jumbo p0, "text/html"

    .line 815
    return-object p0

    .line 816
    .line 817
    :pswitch_19
    const-string p0, "image/gif"

    .line 818
    return-object p0

    .line 819
    .line 820
    .line 821
    :pswitch_1a
    const-string/jumbo p0, "text/css"

    .line 822
    return-object p0

    .line 823
    .line 824
    :pswitch_1b
    const-string p0, "image/bmp"

    .line 825
    return-object p0

    .line 826
    .line 827
    :pswitch_1c
    const-string p0, "application/javascript"

    .line 828
    return-object p0

    .line 829
    .line 830
    :pswitch_1d
    const-string p0, "application/gzip"

    .line 831
    return-object p0

    .line 832
    nop

    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    :sswitch_data_0
    .sparse-switch
        0xcf3 -> :sswitch_31
        0xd49 -> :sswitch_30
        0x17d85 -> :sswitch_2f
        0x18203 -> :sswitch_2e
        0x18fc4 -> :sswitch_2d
        0x194e1 -> :sswitch_2c
        0x19695 -> :sswitch_2b
        0x19be1 -> :sswitch_2a
        0x19fda -> :sswitch_29
        0x19fef -> :sswitch_28
        0x1a639 -> :sswitch_27
        0x1a676 -> :sswitch_26
        0x1a6f0 -> :sswitch_25
        0x1a6f1 -> :sswitch_24
        0x1a724 -> :sswitch_23
        0x1ad89 -> :sswitch_22
        0x1ad8f -> :sswitch_21
        0x1ad95 -> :sswitch_20
        0x1ad9e -> :sswitch_1f
        0x1b0f2 -> :sswitch_1e
        0x1b1b6 -> :sswitch_1d
        0x1b229 -> :sswitch_1c
        0x1be64 -> :sswitch_1b
        0x1c067 -> :sswitch_1a
        0x1c091 -> :sswitch_19
        0x1caec -> :sswitch_18
        0x1cf84 -> :sswitch_17
        0x1d017 -> :sswitch_16
        0x1d721 -> :sswitch_15
        0x2dca28 -> :sswitch_14
        0x2fff68 -> :sswitch_13
        0x3107ab -> :sswitch_12
        0x31bb59 -> :sswitch_11
        0x31e068 -> :sswitch_10
        0x31ece8 -> :sswitch_f
        0x333d85 -> :sswitch_e
        0x34283f -> :sswitch_d
        0x35db8e -> :sswitch_c
        0x360e96 -> :sswitch_b
        0x3651f5 -> :sswitch_a
        0x3792a4 -> :sswitch_9
        0x379f99 -> :sswitch_8
        0x379f9c -> :sswitch_7
        0x37c598 -> :sswitch_6
        0x382169 -> :sswitch_5
        0x5c04d90 -> :sswitch_4
        0x6310998 -> :sswitch_3
        0x65c28d8 -> :sswitch_2
        0x685969e -> :sswitch_1
        0x6cc0c23 -> :sswitch_0
    .end sparse-switch

    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1c
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_16
        :pswitch_d
        :pswitch_c
        :pswitch_1d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_4
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_18
        :pswitch_13
        :pswitch_16
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method
