.class Lorg/schabi/newpipe/extractor/utils/jsextractor/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1

.field private static final IS_RESERVED_KEYWORD_AS_IDENTIFIER:Z = true

.field private static final NUMERIC_SEPARATOR:C = '_'

.field private static final REPORT_NUMBER_FORMAT_ERROR:I = -0x2

.field private static final STRICT_MODE:Z


# instance fields
.field private final allStrings:Lorg/mozilla/javascript/ObjToIntMap;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private final languageVersion:I

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field sourceCursor:I

.field private final sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v0, 0x80

    .line 10
    .line 11
    new-array v0, v0, [C

    .line 12
    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBuffer:[C

    .line 14
    .line 15
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    .line 16
    .line 17
    const/16 v1, 0x32

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    .line 21
    .line 22
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 23
    const/4 v0, 0x3

    .line 24
    .line 25
    new-array v0, v0, [I

    .line 26
    .line 27
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetBuffer:[I

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->hitEOF:Z

    .line 31
    .line 32
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineStart:I

    .line 33
    const/4 v1, -0x1

    .line 34
    .line 35
    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineEndChar:I

    .line 36
    .line 37
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceString:Ljava/lang/String;

    .line 38
    .line 39
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceCursor:I

    .line 40
    .line 41
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 42
    .line 43
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 44
    .line 45
    iput p3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->languageVersion:I

    .line 46
    return-void
.end method

.method private static A(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/c;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :sswitch_0
    const-string v0, "abstract"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p0

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    const/16 v1, 0x3c

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :sswitch_1
    const-string v0, "default"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p0

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    const/16 v1, 0x3b

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :sswitch_2
    const-string v0, "function"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 48
    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    const/16 v1, 0x3a

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :sswitch_3
    const-string v0, "transient"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_3
    const/16 v1, 0x39

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :sswitch_4
    const-string v0, "instanceof"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p0

    .line 76
    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_4
    const/16 v1, 0x38

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :sswitch_5
    const-string v0, "debugger"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p0

    .line 90
    .line 91
    if-nez p0, :cond_5

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_5
    const/16 v1, 0x37

    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :sswitch_6
    const-string v0, "interface"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p0

    .line 104
    .line 105
    if-nez p0, :cond_6

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_6
    const/16 v1, 0x36

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :sswitch_7
    const-string v0, "yield"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result p0

    .line 118
    .line 119
    if-nez p0, :cond_7

    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :cond_7
    const/16 v1, 0x35

    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :sswitch_8
    const-string v0, "while"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result p0

    .line 132
    .line 133
    if-nez p0, :cond_8

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_8
    const/16 v1, 0x34

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :sswitch_9
    const-string v0, "throw"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result p0

    .line 146
    .line 147
    if-nez p0, :cond_9

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_9
    const/16 v1, 0x33

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :sswitch_a
    const-string v0, "super"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p0

    .line 160
    .line 161
    if-nez p0, :cond_a

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_a
    const/16 v1, 0x32

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :sswitch_b
    const-string v0, "short"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result p0

    .line 174
    .line 175
    if-nez p0, :cond_b

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_b
    const/16 v1, 0x31

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :sswitch_c
    const-string v0, "float"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result p0

    .line 188
    .line 189
    if-nez p0, :cond_c

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_c
    const/16 v1, 0x30

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :sswitch_d
    const-string v0, "final"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result p0

    .line 202
    .line 203
    if-nez p0, :cond_d

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_d
    const/16 v1, 0x2f

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :sswitch_e
    const-string v0, "false"

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result p0

    .line 216
    .line 217
    if-nez p0, :cond_e

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_e
    const/16 v1, 0x2e

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :sswitch_f
    const-string v0, "const"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result p0

    .line 230
    .line 231
    if-nez p0, :cond_f

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_f
    const/16 v1, 0x2d

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :sswitch_10
    const-string v0, "class"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result p0

    .line 244
    .line 245
    if-nez p0, :cond_10

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_10
    const/16 v1, 0x2c

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :sswitch_11
    const-string v0, "catch"

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result p0

    .line 258
    .line 259
    if-nez p0, :cond_11

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_11
    const/16 v1, 0x2b

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :sswitch_12
    const-string v0, "break"

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result p0

    .line 272
    .line 273
    if-nez p0, :cond_12

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_12
    const/16 v1, 0x2a

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :sswitch_13
    const-string v0, "boolean"

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    move-result p0

    .line 286
    .line 287
    if-nez p0, :cond_13

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_13
    const/16 v1, 0x29

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :sswitch_14
    const-string v0, "with"

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result p0

    .line 300
    .line 301
    if-nez p0, :cond_14

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_14
    const/16 v1, 0x28

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :sswitch_15
    const-string v0, "void"

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    move-result p0

    .line 314
    .line 315
    if-nez p0, :cond_15

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_15
    const/16 v1, 0x27

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :sswitch_16
    const-string v0, "true"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    move-result p0

    .line 328
    .line 329
    if-nez p0, :cond_16

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_16
    const/16 v1, 0x26

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :sswitch_17
    const-string v0, "this"

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result p0

    .line 342
    .line 343
    if-nez p0, :cond_17

    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_17
    const/16 v1, 0x25

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :sswitch_18
    const-string v0, "null"

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result p0

    .line 356
    .line 357
    if-nez p0, :cond_18

    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_18
    const/16 v1, 0x24

    .line 362
    .line 363
    goto/16 :goto_0

    .line 364
    .line 365
    :sswitch_19
    const-string v0, "long"

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    move-result p0

    .line 370
    .line 371
    if-nez p0, :cond_19

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_19
    const/16 v1, 0x23

    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :sswitch_1a
    const-string v0, "goto"

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result p0

    .line 384
    .line 385
    if-nez p0, :cond_1a

    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_1a
    const/16 v1, 0x22

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :sswitch_1b
    const-string v0, "enum"

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    move-result p0

    .line 398
    .line 399
    if-nez p0, :cond_1b

    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :cond_1b
    const/16 v1, 0x21

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :sswitch_1c
    const-string v0, "else"

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    move-result p0

    .line 412
    .line 413
    if-nez p0, :cond_1c

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_1c
    const/16 v1, 0x20

    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :sswitch_1d
    const-string v0, "char"

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    move-result p0

    .line 426
    .line 427
    if-nez p0, :cond_1d

    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :cond_1d
    const/16 v1, 0x1f

    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :sswitch_1e
    const-string v0, "case"

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    move-result p0

    .line 440
    .line 441
    if-nez p0, :cond_1e

    .line 442
    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :cond_1e
    const/16 v1, 0x1e

    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :sswitch_1f
    const-string v0, "byte"

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    move-result p0

    .line 454
    .line 455
    if-nez p0, :cond_1f

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_1f
    const/16 v1, 0x1d

    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :sswitch_20
    const-string v0, "var"

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    move-result p0

    .line 468
    .line 469
    if-nez p0, :cond_20

    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :cond_20
    const/16 v1, 0x1c

    .line 474
    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :sswitch_21
    const-string v0, "try"

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 481
    move-result p0

    .line 482
    .line 483
    if-nez p0, :cond_21

    .line 484
    .line 485
    goto/16 :goto_0

    .line 486
    .line 487
    :cond_21
    const/16 v1, 0x1b

    .line 488
    .line 489
    goto/16 :goto_0

    .line 490
    .line 491
    :sswitch_22
    const-string v0, "new"

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    move-result p0

    .line 496
    .line 497
    if-nez p0, :cond_22

    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :cond_22
    const/16 v1, 0x1a

    .line 502
    .line 503
    goto/16 :goto_0

    .line 504
    .line 505
    :sswitch_23
    const-string v0, "let"

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    move-result p0

    .line 510
    .line 511
    if-nez p0, :cond_23

    .line 512
    .line 513
    goto/16 :goto_0

    .line 514
    .line 515
    :cond_23
    const/16 v1, 0x19

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :sswitch_24
    const-string v0, "int"

    .line 520
    .line 521
    .line 522
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    move-result p0

    .line 524
    .line 525
    if-nez p0, :cond_24

    .line 526
    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :cond_24
    const/16 v1, 0x18

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :sswitch_25
    const-string v0, "for"

    .line 534
    .line 535
    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    move-result p0

    .line 538
    .line 539
    if-nez p0, :cond_25

    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :cond_25
    const/16 v1, 0x17

    .line 544
    .line 545
    goto/16 :goto_0

    .line 546
    .line 547
    :sswitch_26
    const-string v0, "in"

    .line 548
    .line 549
    .line 550
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    move-result p0

    .line 552
    .line 553
    if-nez p0, :cond_26

    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :cond_26
    const/16 v1, 0x16

    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :sswitch_27
    const-string v0, "if"

    .line 562
    .line 563
    .line 564
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    move-result p0

    .line 566
    .line 567
    if-nez p0, :cond_27

    .line 568
    .line 569
    goto/16 :goto_0

    .line 570
    .line 571
    :cond_27
    const/16 v1, 0x15

    .line 572
    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :sswitch_28
    const-string v0, "do"

    .line 576
    .line 577
    .line 578
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    move-result p0

    .line 580
    .line 581
    if-nez p0, :cond_28

    .line 582
    .line 583
    goto/16 :goto_0

    .line 584
    .line 585
    :cond_28
    const/16 v1, 0x14

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :sswitch_29
    const-string v0, "private"

    .line 590
    .line 591
    .line 592
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    move-result p0

    .line 594
    .line 595
    if-nez p0, :cond_29

    .line 596
    .line 597
    goto/16 :goto_0

    .line 598
    .line 599
    :cond_29
    const/16 v1, 0x13

    .line 600
    .line 601
    goto/16 :goto_0

    .line 602
    .line 603
    :sswitch_2a
    const-string v0, "continue"

    .line 604
    .line 605
    .line 606
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    move-result p0

    .line 608
    .line 609
    if-nez p0, :cond_2a

    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    :cond_2a
    const/16 v1, 0x12

    .line 614
    .line 615
    goto/16 :goto_0

    .line 616
    .line 617
    :sswitch_2b
    const-string v0, "protected"

    .line 618
    .line 619
    .line 620
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    move-result p0

    .line 622
    .line 623
    if-nez p0, :cond_2b

    .line 624
    .line 625
    goto/16 :goto_0

    .line 626
    .line 627
    :cond_2b
    const/16 v1, 0x11

    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :sswitch_2c
    const-string v0, "package"

    .line 632
    .line 633
    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    move-result p0

    .line 636
    .line 637
    if-nez p0, :cond_2c

    .line 638
    .line 639
    goto/16 :goto_0

    .line 640
    .line 641
    :cond_2c
    const/16 v1, 0x10

    .line 642
    .line 643
    goto/16 :goto_0

    .line 644
    .line 645
    :sswitch_2d
    const-string v0, "finally"

    .line 646
    .line 647
    .line 648
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    move-result p0

    .line 650
    .line 651
    if-nez p0, :cond_2d

    .line 652
    .line 653
    goto/16 :goto_0

    .line 654
    .line 655
    :cond_2d
    const/16 v1, 0xf

    .line 656
    .line 657
    goto/16 :goto_0

    .line 658
    .line 659
    :sswitch_2e
    const-string v0, "typeof"

    .line 660
    .line 661
    .line 662
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    move-result p0

    .line 664
    .line 665
    if-nez p0, :cond_2e

    .line 666
    .line 667
    goto/16 :goto_0

    .line 668
    .line 669
    :cond_2e
    const/16 v1, 0xe

    .line 670
    .line 671
    goto/16 :goto_0

    .line 672
    .line 673
    :sswitch_2f
    const-string v0, "throws"

    .line 674
    .line 675
    .line 676
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    move-result p0

    .line 678
    .line 679
    if-nez p0, :cond_2f

    .line 680
    .line 681
    goto/16 :goto_0

    .line 682
    .line 683
    :cond_2f
    const/16 v1, 0xd

    .line 684
    .line 685
    goto/16 :goto_0

    .line 686
    .line 687
    :sswitch_30
    const-string v0, "switch"

    .line 688
    .line 689
    .line 690
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    move-result p0

    .line 692
    .line 693
    if-nez p0, :cond_30

    .line 694
    .line 695
    goto/16 :goto_0

    .line 696
    .line 697
    :cond_30
    const/16 v1, 0xc

    .line 698
    .line 699
    goto/16 :goto_0

    .line 700
    .line 701
    :sswitch_31
    const-string v0, "static"

    .line 702
    .line 703
    .line 704
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    move-result p0

    .line 706
    .line 707
    if-nez p0, :cond_31

    .line 708
    .line 709
    goto/16 :goto_0

    .line 710
    .line 711
    :cond_31
    const/16 v1, 0xb

    .line 712
    .line 713
    goto/16 :goto_0

    .line 714
    .line 715
    :sswitch_32
    const-string v0, "implements"

    .line 716
    .line 717
    .line 718
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    move-result p0

    .line 720
    .line 721
    if-nez p0, :cond_32

    .line 722
    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :cond_32
    const/16 v1, 0xa

    .line 726
    .line 727
    goto/16 :goto_0

    .line 728
    .line 729
    :sswitch_33
    const-string v0, "return"

    .line 730
    .line 731
    .line 732
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    move-result p0

    .line 734
    .line 735
    if-nez p0, :cond_33

    .line 736
    .line 737
    goto/16 :goto_0

    .line 738
    .line 739
    :cond_33
    const/16 v1, 0x9

    .line 740
    .line 741
    goto/16 :goto_0

    .line 742
    .line 743
    :sswitch_34
    const-string v0, "public"

    .line 744
    .line 745
    .line 746
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    move-result p0

    .line 748
    .line 749
    if-nez p0, :cond_34

    .line 750
    .line 751
    goto/16 :goto_0

    .line 752
    .line 753
    :cond_34
    const/16 v1, 0x8

    .line 754
    .line 755
    goto/16 :goto_0

    .line 756
    .line 757
    :sswitch_35
    const-string v0, "native"

    .line 758
    .line 759
    .line 760
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    move-result p0

    .line 762
    .line 763
    if-nez p0, :cond_35

    .line 764
    goto :goto_0

    .line 765
    :cond_35
    const/4 v1, 0x7

    .line 766
    goto :goto_0

    .line 767
    .line 768
    :sswitch_36
    const-string v0, "import"

    .line 769
    .line 770
    .line 771
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    move-result p0

    .line 773
    .line 774
    if-nez p0, :cond_36

    .line 775
    goto :goto_0

    .line 776
    :cond_36
    const/4 v1, 0x6

    .line 777
    goto :goto_0

    .line 778
    .line 779
    :sswitch_37
    const-string v0, "export"

    .line 780
    .line 781
    .line 782
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 783
    move-result p0

    .line 784
    .line 785
    if-nez p0, :cond_37

    .line 786
    goto :goto_0

    .line 787
    :cond_37
    const/4 v1, 0x5

    .line 788
    goto :goto_0

    .line 789
    .line 790
    :sswitch_38
    const-string v0, "extends"

    .line 791
    .line 792
    .line 793
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    move-result p0

    .line 795
    .line 796
    if-nez p0, :cond_38

    .line 797
    goto :goto_0

    .line 798
    :cond_38
    const/4 v1, 0x4

    .line 799
    goto :goto_0

    .line 800
    .line 801
    :sswitch_39
    const-string v0, "double"

    .line 802
    .line 803
    .line 804
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 805
    move-result p0

    .line 806
    .line 807
    if-nez p0, :cond_39

    .line 808
    goto :goto_0

    .line 809
    :cond_39
    const/4 v1, 0x3

    .line 810
    goto :goto_0

    .line 811
    .line 812
    :sswitch_3a
    const-string v0, "delete"

    .line 813
    .line 814
    .line 815
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 816
    move-result p0

    .line 817
    .line 818
    if-nez p0, :cond_3a

    .line 819
    goto :goto_0

    .line 820
    :cond_3a
    const/4 v1, 0x2

    .line 821
    goto :goto_0

    .line 822
    .line 823
    :sswitch_3b
    const-string v0, "synchronized"

    .line 824
    .line 825
    .line 826
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    move-result p0

    .line 828
    .line 829
    if-nez p0, :cond_3b

    .line 830
    goto :goto_0

    .line 831
    :cond_3b
    const/4 v1, 0x1

    .line 832
    goto :goto_0

    .line 833
    .line 834
    :sswitch_3c
    const-string v0, "volatile"

    .line 835
    .line 836
    .line 837
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    move-result p0

    .line 839
    .line 840
    if-nez p0, :cond_3c

    .line 841
    goto :goto_0

    .line 842
    :cond_3c
    const/4 v1, 0x0

    .line 843
    .line 844
    .line 845
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 846
    .line 847
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 848
    return-object p0

    .line 849
    .line 850
    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 851
    return-object p0

    .line 852
    .line 853
    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 854
    return-object p0

    .line 855
    .line 856
    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 857
    return-object p0

    .line 858
    .line 859
    :pswitch_3
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 860
    return-object p0

    .line 861
    .line 862
    :pswitch_4
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 863
    return-object p0

    .line 864
    .line 865
    :pswitch_5
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 866
    return-object p0

    .line 867
    .line 868
    :pswitch_6
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 869
    return-object p0

    .line 870
    .line 871
    :pswitch_7
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 872
    return-object p0

    .line 873
    .line 874
    :pswitch_8
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 875
    return-object p0

    .line 876
    .line 877
    :pswitch_9
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 878
    return-object p0

    .line 879
    .line 880
    :pswitch_a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 881
    return-object p0

    .line 882
    .line 883
    :pswitch_b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 884
    return-object p0

    .line 885
    .line 886
    :pswitch_c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 887
    return-object p0

    .line 888
    .line 889
    :pswitch_d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 890
    return-object p0

    .line 891
    .line 892
    :pswitch_e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 893
    return-object p0

    .line 894
    .line 895
    :pswitch_f
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 896
    return-object p0

    .line 897
    .line 898
    :pswitch_10
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 899
    return-object p0

    .line 900
    .line 901
    :pswitch_11
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 902
    return-object p0

    .line 903
    .line 904
    :pswitch_12
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 905
    return-object p0

    .line 906
    .line 907
    :pswitch_13
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 908
    return-object p0

    .line 909
    .line 910
    :pswitch_14
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 911
    return-object p0

    .line 912
    .line 913
    :pswitch_15
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 914
    return-object p0

    .line 915
    .line 916
    :pswitch_16
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 917
    return-object p0

    .line 918
    .line 919
    :pswitch_17
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 920
    return-object p0

    .line 921
    .line 922
    :pswitch_18
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 923
    return-object p0

    .line 924
    .line 925
    :pswitch_19
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 926
    return-object p0

    .line 927
    .line 928
    :pswitch_1a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 929
    return-object p0

    .line 930
    .line 931
    :pswitch_1b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 932
    return-object p0

    .line 933
    .line 934
    :pswitch_1c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 935
    return-object p0

    .line 936
    .line 937
    :pswitch_1d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 938
    return-object p0

    .line 939
    .line 940
    :pswitch_1e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 941
    return-object p0

    .line 942
    .line 943
    :pswitch_1f
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 944
    return-object p0

    .line 945
    .line 946
    :pswitch_20
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 947
    return-object p0

    .line 948
    .line 949
    :pswitch_21
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 950
    return-object p0

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
    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_3c
        -0x576a7aec -> :sswitch_3b
        -0x4f997a55 -> :sswitch_3a
        -0x4f08842f -> :sswitch_39
        -0x4dd2db67 -> :sswitch_38
        -0x4cd6ec4c -> :sswitch_37
        -0x469e8c5b -> :sswitch_36
        -0x3ebdafe9 -> :sswitch_35
        -0x3a424d97 -> :sswitch_34
        -0x37b1c2d0 -> :sswitch_33
        -0x368fa850 -> :sswitch_32
        -0x35323192 -> :sswitch_31
        -0x350448cc -> :sswitch_30
        -0x341ec9b3 -> :sswitch_2f
        -0x3330496f -> :sswitch_2e
        -0x32dbb67d -> :sswitch_2d
        -0x301acbba -> :sswitch_2c
        -0x24459452 -> :sswitch_2b
        -0x21ced359 -> :sswitch_2a
        -0x12beda7d -> :sswitch_29
        0xc8b -> :sswitch_28
        0xd1d -> :sswitch_27
        0xd25 -> :sswitch_26
        0x18cc9 -> :sswitch_25
        0x197ef -> :sswitch_24
        0x1a21b -> :sswitch_23
        0x1a9a0 -> :sswitch_22
        0x1c1bb -> :sswitch_21
        0x1c727 -> :sswitch_20
        0x2e6108 -> :sswitch_1f
        0x2e7b30 -> :sswitch_1e
        0x2e9356 -> :sswitch_1d
        0x2f8d39 -> :sswitch_1c
        0x2f9501 -> :sswitch_1b
        0x308163 -> :sswitch_1a
        0x32c67c -> :sswitch_19
        0x33c587 -> :sswitch_18
        0x364e9e -> :sswitch_17
        0x36758e -> :sswitch_16
        0x375194 -> :sswitch_15
        0x37b0c6 -> :sswitch_14
        0x3db6c28 -> :sswitch_13
        0x59a58ff -> :sswitch_12
        0x5a0eebb -> :sswitch_11
        0x5a5a978 -> :sswitch_10
        0x5a73763 -> :sswitch_f
        0x5cb1923 -> :sswitch_e
        0x5cec176 -> :sswitch_d
        0x5d0225c -> :sswitch_c
        0x685847c -> :sswitch_b
        0x68b6f7b -> :sswitch_a
        0x693a6e6 -> :sswitch_9
        0x6bdcb31 -> :sswitch_8
        0x6da5f8d -> :sswitch_7
        0x1df56d39 -> :sswitch_6
        0x20a6f421 -> :sswitch_5
        0x35c3d12c -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6749f022 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_21
        :pswitch_21
        :pswitch_1f
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_21
        :pswitch_21
        :pswitch_1d
        :pswitch_21
        :pswitch_1c
        :pswitch_1b
        :pswitch_21
        :pswitch_21
        :pswitch_1a
        :pswitch_21
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_21
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_21
        :pswitch_11
        :pswitch_21
        :pswitch_10
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_21
        :pswitch_a
        :pswitch_9
        :pswitch_21
        :pswitch_8
        :pswitch_7
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_21
        :pswitch_3
        :pswitch_2
        :pswitch_21
        :pswitch_1
        :pswitch_0
        :pswitch_21
    .end packed-switch
.end method

.method private B(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetCursor:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetBuffer:[I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    aget v0, v1, v0

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetBuffer:[I

    .line 20
    .line 21
    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetCursor:I

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetCursor:I

    .line 26
    .line 27
    aput p1, v0, v1

    .line 28
    .line 29
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 34
    return-void
.end method

.method private C(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetBuffer:[I

    .line 3
    .line 4
    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetCursor:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetCursor:I

    .line 9
    .line 10
    aput p1, v0, v1

    .line 11
    .line 12
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 17
    return-void
.end method

.method private a(I)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBuffer:[C

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    array-length v2, v1

    .line 9
    .line 10
    mul-int/lit8 v2, v2, 0x2

    .line 11
    .line 12
    new-array v2, v2, [C

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBuffer:[C

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBuffer:[C

    .line 21
    int-to-char p1, p1

    .line 22
    .line 23
    aput-char p1, v1, v0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 28
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v3, "\\u"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result p0

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    move-result v0

    .line 34
    .line 35
    rsub-int/lit8 v0, v0, 0x4

    .line 36
    .line 37
    if-ge v2, v0, :cond_0

    .line 38
    .line 39
    const/16 v0, 0x30

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private c()I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->e(ZZ)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private d(Z)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->e(ZZ)I

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private e(ZZ)I
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetCursor:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 8
    add-int/2addr p1, v1

    .line 9
    .line 10
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 11
    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetBuffer:[I

    .line 13
    sub-int/2addr v0, v1

    .line 14
    .line 15
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->ungetCursor:I

    .line 16
    .line 17
    aget p1, p1, v0

    .line 18
    return p1

    .line 19
    .line 20
    :cond_0
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceCursor:I

    .line 21
    .line 22
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceString:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iput-boolean v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->hitEOF:Z

    .line 32
    return v3

    .line 33
    .line 34
    :cond_1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 35
    add-int/2addr v0, v1

    .line 36
    .line 37
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 38
    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceString:Ljava/lang/String;

    .line 40
    .line 41
    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceCursor:I

    .line 42
    .line 43
    add-int/lit8 v4, v2, 0x1

    .line 44
    .line 45
    iput v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceCursor:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 49
    move-result v0

    .line 50
    .line 51
    const/16 v2, 0xd

    .line 52
    .line 53
    const/16 v4, 0xa

    .line 54
    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    iget v5, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineEndChar:I

    .line 58
    .line 59
    if-ltz v5, :cond_3

    .line 60
    .line 61
    if-ne v5, v2, :cond_2

    .line 62
    .line 63
    if-ne v0, v4, :cond_2

    .line 64
    .line 65
    iput v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineEndChar:I

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineEndChar:I

    .line 69
    .line 70
    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->sourceCursor:I

    .line 71
    sub-int/2addr v3, v1

    .line 72
    .line 73
    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineStart:I

    .line 74
    .line 75
    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 76
    add-int/2addr v3, v1

    .line 77
    .line 78
    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineno:I

    .line 79
    .line 80
    :cond_3
    const/16 v3, 0x7f

    .line 81
    .line 82
    if-gt v0, v3, :cond_5

    .line 83
    .line 84
    if-eq v0, v4, :cond_4

    .line 85
    .line 86
    if-ne v0, v2, :cond_8

    .line 87
    .line 88
    :cond_4
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineEndChar:I

    .line 89
    :goto_1
    move v0, v4

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_5
    const v2, 0xfeff

    .line 94
    .line 95
    if-ne v0, v2, :cond_6

    .line 96
    return v0

    .line 97
    .line 98
    :cond_6
    if-eqz p1, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->o(I)Z

    .line 102
    move-result v2

    .line 103
    .line 104
    if-eqz v2, :cond_7

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 109
    move-result p1

    .line 110
    .line 111
    if-eqz p1, :cond_8

    .line 112
    .line 113
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineEndChar:I

    .line 114
    goto :goto_1

    .line 115
    :cond_8
    :goto_2
    return v0
.end method

.method private f()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->e(ZZ)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method private g(Z)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->e(ZZ)I

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 3
    .line 4
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBuffer:[C

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 15
    return-object v0
.end method

.method private static j(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private static k(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static l(II)Z
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->k(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    :cond_0
    const/16 v0, 0x10

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->n(I)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    :cond_1
    const/16 v0, 0x8

    .line 23
    .line 24
    if-ne p0, v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->r(I)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    :cond_2
    const/4 v0, 0x2

    .line 32
    .line 33
    if-ne p0, v0, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->m(I)Z

    .line 37
    move-result p0

    .line 38
    .line 39
    if-eqz p0, :cond_4

    .line 40
    :cond_3
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    const/4 p0, 0x0

    .line 43
    :goto_0
    return p0
.end method

.method private static m(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-eq v0, p0, :cond_1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static n(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static o(I)Z
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x7f

    .line 3
    .line 4
    if-le p0, v0, :cond_0

    .line 5
    int-to-char p0, p0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    .line 9
    move-result p0

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method private static p(I)Z
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x7f

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    const/16 v3, 0xc

    .line 7
    .line 8
    if-gt p0, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    if-eq p0, v3, :cond_1

    .line 19
    .line 20
    const/16 v0, 0xb

    .line 21
    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :cond_1
    :goto_0
    return v1

    .line 26
    .line 27
    :cond_2
    const/16 v0, 0xa0

    .line 28
    .line 29
    if-eq p0, v0, :cond_4

    .line 30
    .line 31
    .line 32
    const v0, 0xfeff

    .line 33
    .line 34
    if-eq p0, v0, :cond_4

    .line 35
    int-to-char p0, p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    .line 39
    move-result p0

    .line 40
    .line 41
    if-ne p0, v3, :cond_3

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v1, v2

    .line 44
    :cond_4
    :goto_1
    return v1
.end method

.method static q(Ljava/lang/String;IZ)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->y(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    if-eq v0, p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private static r(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private s(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->f()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 9
    .line 10
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->C(I)V

    .line 16
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method private u()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->B(I)V

    .line 8
    return v0
.end method

.method private v(II)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->l(II)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 13
    move-result p2

    .line 14
    const/4 v0, -0x1

    .line 15
    .line 16
    if-ne p2, v0, :cond_0

    .line 17
    return v0

    .line 18
    .line 19
    :cond_0
    :goto_0
    const/16 v1, 0x5f

    .line 20
    .line 21
    if-ne p2, v1, :cond_4

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 25
    move-result p2

    .line 26
    .line 27
    const/16 v2, 0xa

    .line 28
    .line 29
    if-eq p2, v2, :cond_3

    .line 30
    .line 31
    if-ne p2, v0, :cond_1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->l(II)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->B(I)V

    .line 42
    return v1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    const/4 p1, -0x2

    .line 48
    return p1

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->l(II)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 61
    move-result p2

    .line 62
    .line 63
    if-ne p2, v0, :cond_0

    .line 64
    return v0

    .line 65
    :cond_5
    return p2
.end method

.method private x()V
    .locals 2

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->B(I)V

    .line 16
    .line 17
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 18
    .line 19
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 20
    return-void
.end method

.method private static y(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/c;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xc8

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->A(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->z(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static z(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "await"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_27
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_28
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_29
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2a
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2b
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2c
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2d
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 12
    :pswitch_a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 13
    :pswitch_b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 14
    :pswitch_c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 15
    :pswitch_d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 16
    :pswitch_e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 17
    :pswitch_f
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 18
    :pswitch_10
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 19
    :pswitch_11
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 20
    :pswitch_12
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 21
    :pswitch_13
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 22
    :pswitch_14
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 23
    :pswitch_15
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 24
    :pswitch_16
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 25
    :pswitch_17
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 26
    :pswitch_18
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 27
    :pswitch_19
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 28
    :pswitch_1a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 29
    :pswitch_1b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 30
    :pswitch_1c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 31
    :pswitch_1d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 32
    :pswitch_1e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    :pswitch_1f
    if-eqz p1, :cond_2e

    .line 33
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 34
    :cond_2e
    :goto_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 35
    :pswitch_20
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->IMPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 36
    :pswitch_21
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 37
    :pswitch_22
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    .line 38
    :pswitch_23
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2d
        -0x4dd2db67 -> :sswitch_2c
        -0x4cd6ec4c -> :sswitch_2b
        -0x469e8c5b -> :sswitch_2a
        -0x3a424d97 -> :sswitch_29
        -0x37b1c2d0 -> :sswitch_28
        -0x368fa850 -> :sswitch_27
        -0x35323192 -> :sswitch_26
        -0x350448cc -> :sswitch_25
        -0x3330496f -> :sswitch_24
        -0x32dbb67d -> :sswitch_23
        -0x301acbba -> :sswitch_22
        -0x24459452 -> :sswitch_21
        -0x21ced359 -> :sswitch_20
        -0x12beda7d -> :sswitch_1f
        0xc8b -> :sswitch_1e
        0xd1d -> :sswitch_1d
        0xd25 -> :sswitch_1c
        0x18cc9 -> :sswitch_1b
        0x1a21b -> :sswitch_1a
        0x1a9a0 -> :sswitch_19
        0x1c1bb -> :sswitch_18
        0x1c727 -> :sswitch_17
        0x2e7b30 -> :sswitch_16
        0x2f8d39 -> :sswitch_15
        0x2f9501 -> :sswitch_14
        0x33c587 -> :sswitch_13
        0x364e9e -> :sswitch_12
        0x36758e -> :sswitch_11
        0x375194 -> :sswitch_10
        0x37b0c6 -> :sswitch_f
        0x58e7956 -> :sswitch_e
        0x59a58ff -> :sswitch_d
        0x5a0eebb -> :sswitch_c
        0x5a5a978 -> :sswitch_b
        0x5a73763 -> :sswitch_a
        0x5cb1923 -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x6da5f8d -> :sswitch_5
        0x1df56d39 -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
        :pswitch_1f
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_22
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_22
        :pswitch_a
        :pswitch_9
        :pswitch_22
        :pswitch_8
        :pswitch_7
        :pswitch_22
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final i()Lorg/schabi/newpipe/extractor/utils/jsextractor/c;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 12
    .line 13
    add-int/lit8 v2, v1, -0x1

    .line 14
    .line 15
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 16
    .line 17
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 18
    .line 19
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 20
    return-object v1

    .line 21
    .line 22
    :cond_1
    const/16 v3, 0xa

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    if-ne v1, v3, :cond_2

    .line 26
    .line 27
    iput-boolean v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->dirtyLine:Z

    .line 28
    .line 29
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 30
    .line 31
    add-int/lit8 v2, v1, -0x1

    .line 32
    .line 33
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 34
    .line 35
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 36
    .line 37
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 38
    return-object v1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->p(I)Z

    .line 42
    move-result v5

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    const/16 v5, 0x2d

    .line 47
    const/4 v6, 0x1

    .line 48
    .line 49
    if-eq v1, v5, :cond_3

    .line 50
    .line 51
    iput-boolean v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->dirtyLine:Z

    .line 52
    .line 53
    :cond_3
    iget v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 54
    .line 55
    add-int/lit8 v8, v7, -0x1

    .line 56
    .line 57
    iput v8, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 58
    .line 59
    iput v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 60
    .line 61
    const/16 v7, 0x75

    .line 62
    .line 63
    const/16 v8, 0x5c

    .line 64
    .line 65
    if-ne v1, v8, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 69
    move-result v1

    .line 70
    .line 71
    if-ne v1, v7, :cond_4

    .line 72
    .line 73
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 74
    move v9, v6

    .line 75
    move v10, v9

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->B(I)V

    .line 80
    move v9, v4

    .line 81
    move v10, v9

    .line 82
    move v1, v8

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    int-to-char v9, v1

    .line 85
    .line 86
    .line 87
    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    .line 88
    move-result v9

    .line 89
    .line 90
    if-eqz v9, :cond_6

    .line 91
    .line 92
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 96
    :cond_6
    move v10, v4

    .line 97
    .line 98
    :goto_0
    const-string v11, "illegal character: \'%c\'"

    .line 99
    .line 100
    const/16 v12, 0xc8

    .line 101
    const/4 v13, 0x4

    .line 102
    .line 103
    if-eqz v9, :cond_15

    .line 104
    move v1, v10

    .line 105
    .line 106
    :goto_1
    if-eqz v10, :cond_a

    .line 107
    move v3, v4

    .line 108
    move v5, v3

    .line 109
    .line 110
    :goto_2
    if-eq v3, v13, :cond_8

    .line 111
    .line 112
    .line 113
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 114
    move-result v9

    .line 115
    .line 116
    .line 117
    invoke-static {v9, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 118
    move-result v5

    .line 119
    .line 120
    if-gez v5, :cond_7

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 124
    goto :goto_2

    .line 125
    .line 126
    :cond_8
    :goto_3
    if-ltz v5, :cond_9

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 130
    move v10, v4

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :cond_9
    new-instance v1, Laa/h;

    .line 134
    .line 135
    const-string v2, "invalid unicode escape"

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v2}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 139
    throw v1

    .line 140
    .line 141
    .line 142
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 143
    move-result v3

    .line 144
    .line 145
    if-ne v3, v8, :cond_c

    .line 146
    .line 147
    .line 148
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 149
    move-result v1

    .line 150
    .line 151
    if-ne v1, v7, :cond_b

    .line 152
    move v1, v6

    .line 153
    move v10, v1

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :cond_b
    new-instance v2, Laa/h;

    .line 157
    .line 158
    new-array v3, v6, [Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    aput-object v1, v3, v4

    .line 165
    .line 166
    .line 167
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-direct {v2, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 172
    throw v2

    .line 173
    .line 174
    :cond_c
    if-eq v3, v2, :cond_e

    .line 175
    .line 176
    .line 177
    const v5, 0xfeff

    .line 178
    .line 179
    if-eq v3, v5, :cond_e

    .line 180
    int-to-char v5, v3

    .line 181
    .line 182
    .line 183
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 184
    move-result v5

    .line 185
    .line 186
    if-nez v5, :cond_d

    .line 187
    goto :goto_4

    .line 188
    .line 189
    .line 190
    :cond_d
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 191
    goto :goto_1

    .line 192
    .line 193
    .line 194
    :cond_e
    :goto_4
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->B(I)V

    .line 195
    .line 196
    .line 197
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->h()Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    if-nez v1, :cond_13

    .line 201
    .line 202
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->languageVersion:I

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v1, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->y(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 209
    .line 210
    if-eq v1, v3, :cond_14

    .line 211
    .line 212
    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 213
    .line 214
    if-eq v1, v3, :cond_f

    .line 215
    .line 216
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 217
    .line 218
    if-ne v1, v4, :cond_11

    .line 219
    .line 220
    :cond_f
    iget v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->languageVersion:I

    .line 221
    .line 222
    const/16 v5, 0xaa

    .line 223
    .line 224
    if-ge v4, v5, :cond_11

    .line 225
    .line 226
    if-ne v1, v3, :cond_10

    .line 227
    .line 228
    const-string v1, "let"

    .line 229
    goto :goto_5

    .line 230
    .line 231
    :cond_10
    const-string v1, "yield"

    .line 232
    .line 233
    :goto_5
    iput-object v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 234
    .line 235
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 236
    .line 237
    :cond_11
    iget-object v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-result-object v3

    .line 242
    .line 243
    check-cast v3, Ljava/lang/String;

    .line 244
    .line 245
    iput-object v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 246
    .line 247
    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 248
    .line 249
    if-eq v1, v3, :cond_12

    .line 250
    return-object v1

    .line 251
    .line 252
    :cond_12
    iget v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->languageVersion:I

    .line 253
    .line 254
    if-lt v3, v12, :cond_14

    .line 255
    return-object v1

    .line 256
    .line 257
    :cond_13
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->languageVersion:I

    .line 258
    .line 259
    .line 260
    invoke-static {v2, v1, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->q(Ljava/lang/String;IZ)Z

    .line 261
    move-result v1

    .line 262
    .line 263
    if-eqz v1, :cond_14

    .line 264
    .line 265
    .line 266
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    :cond_14
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    check-cast v1, Ljava/lang/String;

    .line 276
    .line 277
    iput-object v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 278
    .line 279
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 280
    return-object v1

    .line 281
    .line 282
    .line 283
    :cond_15
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->k(I)Z

    .line 284
    move-result v9

    .line 285
    .line 286
    const/16 v10, 0x2e

    .line 287
    .line 288
    const/16 v15, 0x78

    .line 289
    const/4 v7, 0x2

    .line 290
    .line 291
    const/16 v14, 0x30

    .line 292
    .line 293
    if-nez v9, :cond_58

    .line 294
    .line 295
    if-ne v1, v10, :cond_16

    .line 296
    .line 297
    .line 298
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->u()I

    .line 299
    move-result v9

    .line 300
    .line 301
    .line 302
    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->k(I)Z

    .line 303
    move-result v9

    .line 304
    .line 305
    if-eqz v9, :cond_16

    .line 306
    .line 307
    goto/16 :goto_12

    .line 308
    .line 309
    :cond_16
    const/16 v9, 0x22

    .line 310
    .line 311
    if-eq v1, v9, :cond_44

    .line 312
    .line 313
    const/16 v9, 0x27

    .line 314
    .line 315
    if-eq v1, v9, :cond_44

    .line 316
    .line 317
    const/16 v9, 0x60

    .line 318
    .line 319
    if-ne v1, v9, :cond_17

    .line 320
    .line 321
    goto/16 :goto_a

    .line 322
    .line 323
    :cond_17
    const/16 v3, 0x21

    .line 324
    .line 325
    const/16 v8, 0x3d

    .line 326
    .line 327
    if-eq v1, v3, :cond_41

    .line 328
    .line 329
    const/16 v9, 0x5b

    .line 330
    .line 331
    if-eq v1, v9, :cond_40

    .line 332
    .line 333
    const/16 v9, 0x25

    .line 334
    .line 335
    if-eq v1, v9, :cond_3e

    .line 336
    .line 337
    const/16 v9, 0x26

    .line 338
    .line 339
    if-eq v1, v9, :cond_3b

    .line 340
    .line 341
    const/16 v9, 0x5d

    .line 342
    .line 343
    if-eq v1, v9, :cond_3a

    .line 344
    .line 345
    const/16 v9, 0x5e

    .line 346
    .line 347
    if-eq v1, v9, :cond_38

    .line 348
    .line 349
    const/16 v9, 0x2a

    .line 350
    .line 351
    const/16 v10, 0x3e

    .line 352
    .line 353
    .line 354
    packed-switch v1, :pswitch_data_0

    .line 355
    .line 356
    .line 357
    packed-switch v1, :pswitch_data_1

    .line 358
    .line 359
    .line 360
    packed-switch v1, :pswitch_data_2

    .line 361
    .line 362
    new-instance v2, Laa/h;

    .line 363
    .line 364
    new-array v3, v6, [Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object v1

    .line 369
    .line 370
    aput-object v1, v3, v4

    .line 371
    .line 372
    .line 373
    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    move-result-object v1

    .line 375
    .line 376
    .line 377
    invoke-direct {v2, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 378
    throw v2

    .line 379
    .line 380
    :pswitch_0
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->BITNOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 381
    return-object v1

    .line 382
    .line 383
    :pswitch_1
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 384
    return-object v1

    .line 385
    .line 386
    :pswitch_2
    const/16 v1, 0x7c

    .line 387
    .line 388
    .line 389
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 390
    move-result v1

    .line 391
    .line 392
    if-eqz v1, :cond_18

    .line 393
    .line 394
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->OR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 395
    return-object v1

    .line 396
    .line 397
    .line 398
    :cond_18
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 399
    move-result v1

    .line 400
    .line 401
    if-eqz v1, :cond_19

    .line 402
    .line 403
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 404
    return-object v1

    .line 405
    .line 406
    :cond_19
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 407
    return-object v1

    .line 408
    .line 409
    :pswitch_3
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 410
    return-object v1

    .line 411
    .line 412
    :pswitch_4
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->HOOK:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 413
    return-object v1

    .line 414
    .line 415
    .line 416
    :pswitch_5
    invoke-direct {v0, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 417
    move-result v1

    .line 418
    .line 419
    if-eqz v1, :cond_1d

    .line 420
    .line 421
    .line 422
    invoke-direct {v0, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 423
    move-result v1

    .line 424
    .line 425
    if-eqz v1, :cond_1b

    .line 426
    .line 427
    .line 428
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 429
    move-result v1

    .line 430
    .line 431
    if-eqz v1, :cond_1a

    .line 432
    .line 433
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 434
    return-object v1

    .line 435
    .line 436
    :cond_1a
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 437
    return-object v1

    .line 438
    .line 439
    .line 440
    :cond_1b
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 441
    move-result v1

    .line 442
    .line 443
    if-eqz v1, :cond_1c

    .line 444
    .line 445
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 446
    return-object v1

    .line 447
    .line 448
    :cond_1c
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 449
    return-object v1

    .line 450
    .line 451
    .line 452
    :cond_1d
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 453
    move-result v1

    .line 454
    .line 455
    if-eqz v1, :cond_1e

    .line 456
    .line 457
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->GE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 458
    return-object v1

    .line 459
    .line 460
    :cond_1e
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->GT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 461
    return-object v1

    .line 462
    .line 463
    .line 464
    :pswitch_6
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 465
    move-result v1

    .line 466
    .line 467
    if-eqz v1, :cond_20

    .line 468
    .line 469
    .line 470
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 471
    move-result v1

    .line 472
    .line 473
    if-eqz v1, :cond_1f

    .line 474
    .line 475
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->SHEQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 476
    return-object v1

    .line 477
    .line 478
    :cond_1f
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 479
    return-object v1

    .line 480
    .line 481
    .line 482
    :cond_20
    invoke-direct {v0, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 483
    move-result v1

    .line 484
    .line 485
    if-eqz v1, :cond_21

    .line 486
    .line 487
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ARROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 488
    return-object v1

    .line 489
    .line 490
    :cond_21
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 491
    return-object v1

    .line 492
    .line 493
    .line 494
    :pswitch_7
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 495
    move-result v1

    .line 496
    .line 497
    if-eqz v1, :cond_24

    .line 498
    .line 499
    .line 500
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 501
    move-result v1

    .line 502
    .line 503
    if-eqz v1, :cond_23

    .line 504
    .line 505
    .line 506
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 507
    move-result v1

    .line 508
    .line 509
    if-eqz v1, :cond_22

    .line 510
    .line 511
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 512
    sub-int/2addr v1, v13

    .line 513
    .line 514
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 515
    .line 516
    .line 517
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->x()V

    .line 518
    .line 519
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 520
    return-object v1

    .line 521
    .line 522
    .line 523
    :cond_22
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->C(I)V

    .line 524
    .line 525
    .line 526
    :cond_23
    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->C(I)V

    .line 527
    .line 528
    :cond_24
    const/16 v1, 0x3c

    .line 529
    .line 530
    .line 531
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 532
    move-result v1

    .line 533
    .line 534
    if-eqz v1, :cond_26

    .line 535
    .line 536
    .line 537
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 538
    move-result v1

    .line 539
    .line 540
    if-eqz v1, :cond_25

    .line 541
    .line 542
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 543
    return-object v1

    .line 544
    .line 545
    :cond_25
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 546
    return-object v1

    .line 547
    .line 548
    .line 549
    :cond_26
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 550
    move-result v1

    .line 551
    .line 552
    if-eqz v1, :cond_27

    .line 553
    .line 554
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 555
    return-object v1

    .line 556
    .line 557
    :cond_27
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 558
    return-object v1

    .line 559
    .line 560
    :pswitch_8
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->SEMI:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 561
    return-object v1

    .line 562
    .line 563
    :pswitch_9
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COLON:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 564
    return-object v1

    .line 565
    .line 566
    :pswitch_a
    const/16 v1, 0x2f

    .line 567
    .line 568
    .line 569
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 570
    move-result v1

    .line 571
    .line 572
    if-eqz v1, :cond_28

    .line 573
    .line 574
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 575
    sub-int/2addr v1, v7

    .line 576
    .line 577
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 578
    .line 579
    .line 580
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->x()V

    .line 581
    .line 582
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 583
    return-object v1

    .line 584
    .line 585
    .line 586
    :cond_28
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 587
    move-result v1

    .line 588
    .line 589
    if-eqz v1, :cond_2e

    .line 590
    .line 591
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 592
    sub-int/2addr v1, v7

    .line 593
    .line 594
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 595
    .line 596
    .line 597
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 598
    move-result v1

    .line 599
    .line 600
    if-eqz v1, :cond_29

    .line 601
    :goto_6
    move v1, v6

    .line 602
    goto :goto_8

    .line 603
    :cond_29
    :goto_7
    move v1, v4

    .line 604
    .line 605
    .line 606
    :cond_2a
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 607
    move-result v3

    .line 608
    .line 609
    if-eq v3, v2, :cond_2d

    .line 610
    .line 611
    if-ne v3, v9, :cond_2b

    .line 612
    goto :goto_6

    .line 613
    .line 614
    :cond_2b
    const/16 v5, 0x2f

    .line 615
    .line 616
    if-ne v3, v5, :cond_2c

    .line 617
    .line 618
    if-eqz v1, :cond_2a

    .line 619
    .line 620
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 621
    .line 622
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 623
    .line 624
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 625
    return-object v1

    .line 626
    .line 627
    :cond_2c
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 628
    .line 629
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 630
    goto :goto_7

    .line 631
    .line 632
    :cond_2d
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 633
    sub-int/2addr v1, v6

    .line 634
    .line 635
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 636
    .line 637
    new-instance v1, Laa/h;

    .line 638
    .line 639
    const-string v2, "unterminated comment"

    .line 640
    .line 641
    .line 642
    invoke-direct {v1, v2}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 643
    throw v1

    .line 644
    .line 645
    .line 646
    :cond_2e
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 647
    move-result v1

    .line 648
    .line 649
    if-eqz v1, :cond_2f

    .line 650
    .line 651
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 652
    return-object v1

    .line 653
    .line 654
    :cond_2f
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 655
    return-object v1

    .line 656
    .line 657
    :pswitch_b
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 658
    return-object v1

    .line 659
    .line 660
    :pswitch_c
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 661
    .line 662
    .line 663
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 664
    move-result v2

    .line 665
    .line 666
    if-eqz v2, :cond_30

    .line 667
    .line 668
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 669
    goto :goto_9

    .line 670
    .line 671
    .line 672
    :cond_30
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 673
    move-result v2

    .line 674
    .line 675
    if-eqz v2, :cond_32

    .line 676
    .line 677
    iget-boolean v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->dirtyLine:Z

    .line 678
    .line 679
    if-nez v1, :cond_31

    .line 680
    .line 681
    .line 682
    invoke-direct {v0, v10}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 683
    move-result v1

    .line 684
    .line 685
    if-eqz v1, :cond_31

    .line 686
    .line 687
    .line 688
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->x()V

    .line 689
    .line 690
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 691
    return-object v1

    .line 692
    .line 693
    :cond_31
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DEC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 694
    .line 695
    :cond_32
    :goto_9
    iput-boolean v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->dirtyLine:Z

    .line 696
    return-object v1

    .line 697
    .line 698
    :pswitch_d
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COMMA:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 699
    return-object v1

    .line 700
    .line 701
    .line 702
    :pswitch_e
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 703
    move-result v1

    .line 704
    .line 705
    if-eqz v1, :cond_33

    .line 706
    .line 707
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 708
    return-object v1

    .line 709
    .line 710
    :cond_33
    const/16 v1, 0x2b

    .line 711
    .line 712
    .line 713
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 714
    move-result v1

    .line 715
    .line 716
    if-eqz v1, :cond_34

    .line 717
    .line 718
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->INC:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 719
    return-object v1

    .line 720
    .line 721
    :cond_34
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 722
    return-object v1

    .line 723
    .line 724
    :pswitch_f
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->languageVersion:I

    .line 725
    .line 726
    if-lt v1, v12, :cond_36

    .line 727
    .line 728
    .line 729
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 730
    move-result v1

    .line 731
    .line 732
    if-eqz v1, :cond_36

    .line 733
    .line 734
    .line 735
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 736
    move-result v1

    .line 737
    .line 738
    if-eqz v1, :cond_35

    .line 739
    .line 740
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 741
    return-object v1

    .line 742
    .line 743
    :cond_35
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 744
    return-object v1

    .line 745
    .line 746
    .line 747
    :cond_36
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 748
    move-result v1

    .line 749
    .line 750
    if-eqz v1, :cond_37

    .line 751
    .line 752
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 753
    return-object v1

    .line 754
    .line 755
    :cond_37
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 756
    return-object v1

    .line 757
    .line 758
    :pswitch_10
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 759
    return-object v1

    .line 760
    .line 761
    :pswitch_11
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 762
    return-object v1

    .line 763
    .line 764
    .line 765
    :cond_38
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 766
    move-result v1

    .line 767
    .line 768
    if-eqz v1, :cond_39

    .line 769
    .line 770
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 771
    return-object v1

    .line 772
    .line 773
    :cond_39
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 774
    return-object v1

    .line 775
    .line 776
    :cond_3a
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 777
    return-object v1

    .line 778
    .line 779
    :cond_3b
    const/16 v1, 0x26

    .line 780
    .line 781
    .line 782
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 783
    move-result v1

    .line 784
    .line 785
    if-eqz v1, :cond_3c

    .line 786
    .line 787
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->AND:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 788
    return-object v1

    .line 789
    .line 790
    .line 791
    :cond_3c
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 792
    move-result v1

    .line 793
    .line 794
    if-eqz v1, :cond_3d

    .line 795
    .line 796
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 797
    return-object v1

    .line 798
    .line 799
    :cond_3d
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 800
    return-object v1

    .line 801
    .line 802
    .line 803
    :cond_3e
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 804
    move-result v1

    .line 805
    .line 806
    if-eqz v1, :cond_3f

    .line 807
    .line 808
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 809
    return-object v1

    .line 810
    .line 811
    :cond_3f
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 812
    return-object v1

    .line 813
    .line 814
    :cond_40
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->LB:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 815
    return-object v1

    .line 816
    .line 817
    .line 818
    :cond_41
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 819
    move-result v1

    .line 820
    .line 821
    if-eqz v1, :cond_43

    .line 822
    .line 823
    .line 824
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->s(I)Z

    .line 825
    move-result v1

    .line 826
    .line 827
    if-eqz v1, :cond_42

    .line 828
    .line 829
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->SHNE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 830
    return-object v1

    .line 831
    .line 832
    :cond_42
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NE:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 833
    return-object v1

    .line 834
    .line 835
    :cond_43
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 836
    return-object v1

    .line 837
    .line 838
    :cond_44
    :goto_a
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 839
    .line 840
    .line 841
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->g(Z)I

    .line 842
    move-result v5

    .line 843
    .line 844
    :goto_b
    if-eq v5, v1, :cond_56

    .line 845
    .line 846
    if-ne v5, v2, :cond_46

    .line 847
    :cond_45
    move v7, v6

    .line 848
    goto :goto_d

    .line 849
    .line 850
    :cond_46
    if-ne v5, v3, :cond_48

    .line 851
    .line 852
    iget v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->lineEndChar:I

    .line 853
    .line 854
    if-eq v7, v3, :cond_45

    .line 855
    .line 856
    const/16 v9, 0xd

    .line 857
    .line 858
    if-eq v7, v9, :cond_45

    .line 859
    .line 860
    const/16 v9, 0x2028

    .line 861
    .line 862
    if-eq v7, v9, :cond_47

    .line 863
    .line 864
    const/16 v9, 0x2029

    .line 865
    .line 866
    if-eq v7, v9, :cond_47

    .line 867
    goto :goto_c

    .line 868
    :cond_47
    move v5, v7

    .line 869
    :cond_48
    :goto_c
    move v7, v4

    .line 870
    .line 871
    :goto_d
    if-nez v7, :cond_55

    .line 872
    .line 873
    if-ne v5, v8, :cond_4a

    .line 874
    .line 875
    .line 876
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 877
    move-result v5

    .line 878
    .line 879
    if-eq v5, v3, :cond_54

    .line 880
    .line 881
    const/16 v7, 0x62

    .line 882
    .line 883
    if-eq v5, v7, :cond_53

    .line 884
    .line 885
    const/16 v7, 0x66

    .line 886
    .line 887
    if-eq v5, v7, :cond_52

    .line 888
    .line 889
    const/16 v7, 0x6e

    .line 890
    .line 891
    if-eq v5, v7, :cond_51

    .line 892
    .line 893
    const/16 v7, 0x72

    .line 894
    .line 895
    if-eq v5, v7, :cond_50

    .line 896
    .line 897
    if-eq v5, v15, :cond_4e

    .line 898
    .line 899
    .line 900
    packed-switch v5, :pswitch_data_3

    .line 901
    .line 902
    if-gt v14, v5, :cond_4a

    .line 903
    .line 904
    const/16 v7, 0x38

    .line 905
    .line 906
    if-ge v5, v7, :cond_4a

    .line 907
    .line 908
    add-int/lit8 v5, v5, -0x30

    .line 909
    .line 910
    .line 911
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 912
    move-result v9

    .line 913
    .line 914
    if-gt v14, v9, :cond_49

    .line 915
    .line 916
    if-ge v9, v7, :cond_49

    .line 917
    .line 918
    mul-int/lit8 v5, v5, 0x8

    .line 919
    add-int/2addr v5, v9

    .line 920
    sub-int/2addr v5, v14

    .line 921
    .line 922
    .line 923
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 924
    move-result v9

    .line 925
    .line 926
    if-gt v14, v9, :cond_49

    .line 927
    .line 928
    if-ge v9, v7, :cond_49

    .line 929
    .line 930
    const/16 v7, 0x1f

    .line 931
    .line 932
    if-gt v5, v7, :cond_49

    .line 933
    .line 934
    mul-int/lit8 v5, v5, 0x8

    .line 935
    add-int/2addr v5, v9

    .line 936
    sub-int/2addr v5, v14

    .line 937
    .line 938
    .line 939
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 940
    move-result v9

    .line 941
    .line 942
    .line 943
    :cond_49
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->B(I)V

    .line 944
    .line 945
    :cond_4a
    :goto_e
    const/16 v7, 0x75

    .line 946
    .line 947
    goto/16 :goto_10

    .line 948
    .line 949
    :pswitch_12
    const/16 v5, 0xb

    .line 950
    goto :goto_e

    .line 951
    .line 952
    :pswitch_13
    iget v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 953
    .line 954
    const/16 v7, 0x75

    .line 955
    .line 956
    .line 957
    invoke-direct {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 958
    move v9, v4

    .line 959
    move v10, v9

    .line 960
    .line 961
    :goto_f
    if-eq v10, v13, :cond_4c

    .line 962
    .line 963
    .line 964
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 965
    move-result v11

    .line 966
    .line 967
    .line 968
    invoke-static {v11, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 969
    move-result v9

    .line 970
    .line 971
    if-gez v9, :cond_4b

    .line 972
    move v5, v11

    .line 973
    .line 974
    goto/16 :goto_b

    .line 975
    .line 976
    .line 977
    :cond_4b
    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 978
    .line 979
    add-int/lit8 v10, v10, 0x1

    .line 980
    goto :goto_f

    .line 981
    .line 982
    :cond_4c
    iput v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 983
    :cond_4d
    move v5, v9

    .line 984
    goto :goto_10

    .line 985
    .line 986
    :pswitch_14
    const/16 v7, 0x75

    .line 987
    .line 988
    const/16 v5, 0x9

    .line 989
    goto :goto_10

    .line 990
    .line 991
    :cond_4e
    const/16 v7, 0x75

    .line 992
    .line 993
    .line 994
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 995
    move-result v5

    .line 996
    .line 997
    .line 998
    invoke-static {v5, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 999
    move-result v9

    .line 1000
    .line 1001
    if-gez v9, :cond_4f

    .line 1002
    .line 1003
    .line 1004
    invoke-direct {v0, v15}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1005
    .line 1006
    goto/16 :goto_b

    .line 1007
    .line 1008
    .line 1009
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1010
    move-result v10

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v10, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1014
    move-result v9

    .line 1015
    .line 1016
    if-gez v9, :cond_4d

    .line 1017
    .line 1018
    .line 1019
    invoke-direct {v0, v15}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1020
    .line 1021
    .line 1022
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1023
    move v5, v10

    .line 1024
    .line 1025
    goto/16 :goto_b

    .line 1026
    .line 1027
    :cond_50
    const/16 v7, 0x75

    .line 1028
    .line 1029
    const/16 v5, 0xd

    .line 1030
    goto :goto_10

    .line 1031
    .line 1032
    :cond_51
    const/16 v7, 0x75

    .line 1033
    move v5, v3

    .line 1034
    goto :goto_10

    .line 1035
    .line 1036
    :cond_52
    const/16 v7, 0x75

    .line 1037
    .line 1038
    const/16 v5, 0xc

    .line 1039
    goto :goto_10

    .line 1040
    .line 1041
    :cond_53
    const/16 v7, 0x75

    .line 1042
    .line 1043
    const/16 v5, 0x8

    .line 1044
    goto :goto_10

    .line 1045
    .line 1046
    :cond_54
    const/16 v7, 0x75

    .line 1047
    .line 1048
    .line 1049
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1050
    move-result v5

    .line 1051
    .line 1052
    goto/16 :goto_b

    .line 1053
    .line 1054
    .line 1055
    :goto_10
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1056
    .line 1057
    .line 1058
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->d(Z)I

    .line 1059
    move-result v5

    .line 1060
    .line 1061
    goto/16 :goto_b

    .line 1062
    .line 1063
    :cond_55
    new-instance v1, Laa/h;

    .line 1064
    .line 1065
    const-string v2, "unterminated string literal"

    .line 1066
    .line 1067
    .line 1068
    invoke-direct {v1, v2}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 1069
    throw v1

    .line 1070
    .line 1071
    .line 1072
    :cond_56
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->h()Ljava/lang/String;

    .line 1073
    move-result-object v2

    .line 1074
    .line 1075
    iget-object v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    move-result-object v2

    .line 1080
    .line 1081
    check-cast v2, Ljava/lang/String;

    .line 1082
    .line 1083
    iput-object v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 1084
    .line 1085
    const/16 v2, 0x60

    .line 1086
    .line 1087
    if-ne v1, v2, :cond_57

    .line 1088
    .line 1089
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->TEMPLATE_LITERAL:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 1090
    goto :goto_11

    .line 1091
    .line 1092
    :cond_57
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->STRING:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 1093
    :goto_11
    return-object v1

    .line 1094
    .line 1095
    :cond_58
    :goto_12
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 1096
    .line 1097
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->languageVersion:I

    .line 1098
    .line 1099
    if-lt v2, v12, :cond_59

    .line 1100
    move v2, v6

    .line 1101
    goto :goto_13

    .line 1102
    :cond_59
    move v2, v4

    .line 1103
    .line 1104
    :goto_13
    if-ne v1, v14, :cond_60

    .line 1105
    .line 1106
    .line 1107
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1108
    move-result v1

    .line 1109
    .line 1110
    if-eq v1, v15, :cond_61

    .line 1111
    .line 1112
    const/16 v8, 0x58

    .line 1113
    .line 1114
    if-ne v1, v8, :cond_5a

    .line 1115
    goto :goto_15

    .line 1116
    .line 1117
    :cond_5a
    if-eqz v2, :cond_5c

    .line 1118
    .line 1119
    const/16 v8, 0x6f

    .line 1120
    .line 1121
    if-eq v1, v8, :cond_5b

    .line 1122
    .line 1123
    const/16 v8, 0x4f

    .line 1124
    .line 1125
    if-ne v1, v8, :cond_5c

    .line 1126
    .line 1127
    .line 1128
    :cond_5b
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1129
    move-result v1

    .line 1130
    .line 1131
    :goto_14
    const/16 v6, 0x8

    .line 1132
    goto :goto_16

    .line 1133
    .line 1134
    :cond_5c
    if-eqz v2, :cond_5e

    .line 1135
    .line 1136
    const/16 v8, 0x62

    .line 1137
    .line 1138
    if-eq v1, v8, :cond_5d

    .line 1139
    .line 1140
    const/16 v8, 0x42

    .line 1141
    .line 1142
    if-ne v1, v8, :cond_5e

    .line 1143
    .line 1144
    .line 1145
    :cond_5d
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1146
    move-result v1

    .line 1147
    move v6, v7

    .line 1148
    goto :goto_16

    .line 1149
    .line 1150
    .line 1151
    :cond_5e
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->k(I)Z

    .line 1152
    move-result v8

    .line 1153
    .line 1154
    if-eqz v8, :cond_5f

    .line 1155
    move v4, v6

    .line 1156
    goto :goto_14

    .line 1157
    .line 1158
    .line 1159
    :cond_5f
    invoke-direct {v0, v14}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1160
    :cond_60
    move v6, v3

    .line 1161
    goto :goto_16

    .line 1162
    .line 1163
    .line 1164
    :cond_61
    :goto_15
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1165
    move-result v1

    .line 1166
    .line 1167
    const/16 v6, 0x10

    .line 1168
    .line 1169
    :goto_16
    iget v8, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 1170
    const/4 v9, -0x2

    .line 1171
    .line 1172
    const-string v11, "number format error"

    .line 1173
    .line 1174
    if-eq v6, v3, :cond_66

    .line 1175
    .line 1176
    const/16 v12, 0x10

    .line 1177
    .line 1178
    if-eq v6, v12, :cond_66

    .line 1179
    .line 1180
    const/16 v12, 0x8

    .line 1181
    .line 1182
    if-ne v6, v12, :cond_62

    .line 1183
    .line 1184
    if-eqz v4, :cond_66

    .line 1185
    .line 1186
    :cond_62
    if-ne v6, v7, :cond_63

    .line 1187
    goto :goto_18

    .line 1188
    .line 1189
    .line 1190
    :cond_63
    :goto_17
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->k(I)Z

    .line 1191
    move-result v4

    .line 1192
    .line 1193
    if-eqz v4, :cond_67

    .line 1194
    .line 1195
    const/16 v4, 0x38

    .line 1196
    .line 1197
    if-lt v1, v4, :cond_65

    .line 1198
    .line 1199
    .line 1200
    invoke-direct {v0, v3, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->v(II)I

    .line 1201
    move-result v1

    .line 1202
    .line 1203
    if-eq v1, v9, :cond_64

    .line 1204
    move v6, v3

    .line 1205
    goto :goto_19

    .line 1206
    .line 1207
    :cond_64
    new-instance v1, Laa/h;

    .line 1208
    .line 1209
    .line 1210
    invoke-direct {v1, v11}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 1211
    throw v1

    .line 1212
    .line 1213
    .line 1214
    :cond_65
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1215
    .line 1216
    .line 1217
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1218
    move-result v1

    .line 1219
    goto :goto_17

    .line 1220
    .line 1221
    .line 1222
    :cond_66
    :goto_18
    invoke-direct {v0, v6, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->v(II)I

    .line 1223
    move-result v1

    .line 1224
    .line 1225
    if-eq v1, v9, :cond_74

    .line 1226
    .line 1227
    :cond_67
    :goto_19
    iget v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 1228
    .line 1229
    if-ne v4, v8, :cond_69

    .line 1230
    .line 1231
    if-ne v6, v3, :cond_68

    .line 1232
    goto :goto_1a

    .line 1233
    .line 1234
    :cond_68
    new-instance v1, Laa/h;

    .line 1235
    .line 1236
    .line 1237
    invoke-direct {v1, v11}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 1238
    throw v1

    .line 1239
    .line 1240
    :cond_69
    :goto_1a
    if-eqz v2, :cond_6a

    .line 1241
    .line 1242
    const/16 v2, 0x6e

    .line 1243
    .line 1244
    if-ne v1, v2, :cond_6a

    .line 1245
    .line 1246
    .line 1247
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1248
    move-result v1

    .line 1249
    goto :goto_1c

    .line 1250
    .line 1251
    :cond_6a
    if-ne v6, v3, :cond_73

    .line 1252
    .line 1253
    if-eq v1, v10, :cond_6b

    .line 1254
    .line 1255
    const/16 v2, 0x65

    .line 1256
    .line 1257
    if-eq v1, v2, :cond_6b

    .line 1258
    .line 1259
    const/16 v2, 0x45

    .line 1260
    .line 1261
    if-ne v1, v2, :cond_73

    .line 1262
    .line 1263
    :cond_6b
    if-ne v1, v10, :cond_6d

    .line 1264
    .line 1265
    .line 1266
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1267
    .line 1268
    .line 1269
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1270
    move-result v1

    .line 1271
    .line 1272
    .line 1273
    invoke-direct {v0, v6, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->v(II)I

    .line 1274
    move-result v1

    .line 1275
    .line 1276
    if-eq v1, v9, :cond_6c

    .line 1277
    goto :goto_1b

    .line 1278
    .line 1279
    :cond_6c
    new-instance v1, Laa/h;

    .line 1280
    .line 1281
    .line 1282
    invoke-direct {v1, v11}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 1283
    throw v1

    .line 1284
    .line 1285
    :cond_6d
    :goto_1b
    const/16 v2, 0x65

    .line 1286
    .line 1287
    if-eq v1, v2, :cond_6e

    .line 1288
    .line 1289
    const/16 v2, 0x45

    .line 1290
    .line 1291
    if-ne v1, v2, :cond_73

    .line 1292
    .line 1293
    .line 1294
    :cond_6e
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1295
    .line 1296
    .line 1297
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1298
    move-result v1

    .line 1299
    .line 1300
    const/16 v2, 0x2b

    .line 1301
    .line 1302
    if-eq v1, v2, :cond_6f

    .line 1303
    .line 1304
    if-ne v1, v5, :cond_70

    .line 1305
    .line 1306
    .line 1307
    :cond_6f
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 1308
    .line 1309
    .line 1310
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 1311
    move-result v1

    .line 1312
    .line 1313
    .line 1314
    :cond_70
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->k(I)Z

    .line 1315
    move-result v2

    .line 1316
    .line 1317
    if-eqz v2, :cond_72

    .line 1318
    .line 1319
    .line 1320
    invoke-direct {v0, v6, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->v(II)I

    .line 1321
    move-result v1

    .line 1322
    .line 1323
    if-eq v1, v9, :cond_71

    .line 1324
    goto :goto_1c

    .line 1325
    .line 1326
    :cond_71
    new-instance v1, Laa/h;

    .line 1327
    .line 1328
    .line 1329
    invoke-direct {v1, v11}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 1330
    throw v1

    .line 1331
    .line 1332
    :cond_72
    new-instance v1, Laa/h;

    .line 1333
    .line 1334
    const-string v2, "missing exponent"

    .line 1335
    .line 1336
    .line 1337
    invoke-direct {v1, v2}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 1338
    throw v1

    .line 1339
    .line 1340
    .line 1341
    :cond_73
    :goto_1c
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->B(I)V

    .line 1342
    .line 1343
    .line 1344
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->h()Ljava/lang/String;

    .line 1345
    move-result-object v1

    .line 1346
    .line 1347
    iput-object v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 1348
    .line 1349
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->NUMBER:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 1350
    return-object v1

    .line 1351
    .line 1352
    :cond_74
    new-instance v1, Laa/h;

    .line 1353
    .line 1354
    .line 1355
    invoke-direct {v1, v11}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 1356
    throw v1

    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public t()Lorg/schabi/newpipe/extractor/utils/jsextractor/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->i()Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :goto_0
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    return-object v0

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->i()Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0
.end method

.method w(Lorg/schabi/newpipe/extractor/utils/jsextractor/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenBeg:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 6
    .line 7
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    const-string v4, "msg.unterminated.re.lit"

    .line 11
    .line 12
    if-ne p1, v2, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x3d

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/c;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/c;

    .line 21
    .line 22
    if-eq p1, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->u()I

    .line 29
    move-result p1

    .line 30
    .line 31
    const/16 v2, 0x2a

    .line 32
    .line 33
    if-eq p1, v2, :cond_b

    .line 34
    :goto_0
    move p1, v1

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 38
    move-result v2

    .line 39
    .line 40
    const/16 v5, 0x2f

    .line 41
    const/4 v6, -0x1

    .line 42
    .line 43
    if-ne v2, v5, :cond_5

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    goto :goto_3

    .line 47
    .line 48
    :cond_2
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->f()I

    .line 52
    move-result v2

    .line 53
    .line 54
    const-string v3, "gimysu"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eq v3, v6, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->j(I)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->C(I)V

    .line 74
    .line 75
    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 76
    add-int/2addr v0, v2

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x2

    .line 79
    .line 80
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 81
    .line 82
    new-instance v0, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBuffer:[C

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    .line 88
    .line 89
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 90
    return-void

    .line 91
    .line 92
    :cond_4
    new-instance p1, Laa/h;

    .line 93
    .line 94
    const-string v0, "msg.invalid.re.flag"

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 98
    throw p1

    .line 99
    .line 100
    :cond_5
    :goto_3
    const/16 v5, 0xa

    .line 101
    .line 102
    if-eq v2, v5, :cond_a

    .line 103
    .line 104
    if-eq v2, v6, :cond_a

    .line 105
    .line 106
    const/16 v7, 0x5c

    .line 107
    .line 108
    if-ne v2, v7, :cond_7

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->c()I

    .line 115
    move-result v2

    .line 116
    .line 117
    if-eq v2, v5, :cond_6

    .line 118
    .line 119
    if-eq v2, v6, :cond_6

    .line 120
    goto :goto_4

    .line 121
    .line 122
    :cond_6
    new-instance p1, Laa/h;

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, v4}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 126
    throw p1

    .line 127
    .line 128
    :cond_7
    const/16 v5, 0x5b

    .line 129
    .line 130
    if-ne v2, v5, :cond_8

    .line 131
    move p1, v3

    .line 132
    goto :goto_4

    .line 133
    .line 134
    :cond_8
    const/16 v5, 0x5d

    .line 135
    .line 136
    if-ne v2, v5, :cond_9

    .line 137
    move p1, v1

    .line 138
    .line 139
    .line 140
    :cond_9
    :goto_4
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->a(I)V

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :cond_a
    new-instance p1, Laa/h;

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, v4}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 147
    throw p1

    .line 148
    .line 149
    :cond_b
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->cursor:I

    .line 150
    sub-int/2addr p1, v3

    .line 151
    .line 152
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->tokenEnd:I

    .line 153
    .line 154
    new-instance p1, Ljava/lang/String;

    .line 155
    .line 156
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBuffer:[C

    .line 157
    .line 158
    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->stringBufferTop:I

    .line 159
    .line 160
    .line 161
    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 162
    .line 163
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/d;->string:Ljava/lang/String;

    .line 164
    .line 165
    new-instance p1, Laa/h;

    .line 166
    .line 167
    .line 168
    invoke-direct {p1, v4}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 169
    throw p1
.end method
