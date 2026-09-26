.class public Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formListedTags:[Ljava/lang/String;

.field private static final formSubmitTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final preserveWhitespaceTags:[Ljava/lang/String;

.field private static final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canContainInline:Z

.field private empty:Z

.field private formList:Z

.field private formSubmit:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 67

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 8
    .line 9
    const-string v1, "html"

    .line 10
    .line 11
    const-string v2, "head"

    .line 12
    .line 13
    const-string v3, "body"

    .line 14
    .line 15
    const-string v4, "frameset"

    .line 16
    .line 17
    const-string v5, "script"

    .line 18
    .line 19
    const-string v6, "noscript"

    .line 20
    .line 21
    const-string v7, "style"

    .line 22
    .line 23
    const-string v8, "meta"

    .line 24
    .line 25
    const-string v9, "link"

    .line 26
    .line 27
    const-string v10, "title"

    .line 28
    .line 29
    const-string v11, "frame"

    .line 30
    .line 31
    const-string v12, "noframes"

    .line 32
    .line 33
    const-string v13, "section"

    .line 34
    .line 35
    const-string v14, "nav"

    .line 36
    .line 37
    const-string v15, "aside"

    .line 38
    .line 39
    const-string v16, "hgroup"

    .line 40
    .line 41
    const-string v17, "header"

    .line 42
    .line 43
    const-string v18, "footer"

    .line 44
    .line 45
    const-string v19, "p"

    .line 46
    .line 47
    const-string v20, "h1"

    .line 48
    .line 49
    const-string v21, "h2"

    .line 50
    .line 51
    const-string v22, "h3"

    .line 52
    .line 53
    const-string v23, "h4"

    .line 54
    .line 55
    const-string v24, "h5"

    .line 56
    .line 57
    const-string v25, "h6"

    .line 58
    .line 59
    const-string v26, "ul"

    .line 60
    .line 61
    const-string v27, "ol"

    .line 62
    .line 63
    const-string v28, "pre"

    .line 64
    .line 65
    const-string v29, "div"

    .line 66
    .line 67
    const-string v30, "blockquote"

    .line 68
    .line 69
    const-string v31, "hr"

    .line 70
    .line 71
    const-string v32, "address"

    .line 72
    .line 73
    const-string v33, "figure"

    .line 74
    .line 75
    const-string v34, "figcaption"

    .line 76
    .line 77
    const-string v35, "form"

    .line 78
    .line 79
    const-string v36, "fieldset"

    .line 80
    .line 81
    const-string v37, "ins"

    .line 82
    .line 83
    const-string v38, "del"

    .line 84
    .line 85
    const-string v39, "dl"

    .line 86
    .line 87
    const-string v40, "dt"

    .line 88
    .line 89
    const-string v41, "dd"

    .line 90
    .line 91
    const-string v42, "li"

    .line 92
    .line 93
    const-string v43, "table"

    .line 94
    .line 95
    const-string v44, "caption"

    .line 96
    .line 97
    const-string v45, "thead"

    .line 98
    .line 99
    const-string v46, "tfoot"

    .line 100
    .line 101
    const-string v47, "tbody"

    .line 102
    .line 103
    const-string v48, "colgroup"

    .line 104
    .line 105
    const-string v49, "col"

    .line 106
    .line 107
    const-string v50, "tr"

    .line 108
    .line 109
    const-string v51, "th"

    .line 110
    .line 111
    const-string v52, "td"

    .line 112
    .line 113
    const-string v53, "video"

    .line 114
    .line 115
    const-string v54, "audio"

    .line 116
    .line 117
    const-string v55, "canvas"

    .line 118
    .line 119
    const-string v56, "details"

    .line 120
    .line 121
    const-string v57, "menu"

    .line 122
    .line 123
    const-string v58, "plaintext"

    .line 124
    .line 125
    const-string v59, "template"

    .line 126
    .line 127
    const-string v60, "article"

    .line 128
    .line 129
    const-string v61, "main"

    .line 130
    .line 131
    const-string v62, "svg"

    .line 132
    .line 133
    const-string v63, "math"

    .line 134
    .line 135
    .line 136
    filled-new-array/range {v1 .. v63}, [Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    sput-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    .line 140
    .line 141
    const-string v1, "object"

    .line 142
    .line 143
    const-string v2, "base"

    .line 144
    .line 145
    const-string v3, "font"

    .line 146
    .line 147
    const-string v4, "tt"

    .line 148
    .line 149
    const-string v5, "i"

    .line 150
    .line 151
    const-string v6, "b"

    .line 152
    .line 153
    const-string v7, "u"

    .line 154
    .line 155
    const-string v8, "big"

    .line 156
    .line 157
    const-string v9, "small"

    .line 158
    .line 159
    const-string v10, "em"

    .line 160
    .line 161
    const-string v11, "strong"

    .line 162
    .line 163
    const-string v12, "dfn"

    .line 164
    .line 165
    const-string v13, "code"

    .line 166
    .line 167
    const-string v14, "samp"

    .line 168
    .line 169
    const-string v15, "kbd"

    .line 170
    .line 171
    const-string v16, "var"

    .line 172
    .line 173
    const-string v17, "cite"

    .line 174
    .line 175
    const-string v18, "abbr"

    .line 176
    .line 177
    const-string v19, "time"

    .line 178
    .line 179
    const-string v20, "acronym"

    .line 180
    .line 181
    const-string v21, "mark"

    .line 182
    .line 183
    const-string v22, "ruby"

    .line 184
    .line 185
    const-string v23, "rt"

    .line 186
    .line 187
    const-string v24, "rp"

    .line 188
    .line 189
    const-string v25, "a"

    .line 190
    .line 191
    const-string v26, "img"

    .line 192
    .line 193
    const-string v27, "br"

    .line 194
    .line 195
    const-string v28, "wbr"

    .line 196
    .line 197
    const-string v29, "map"

    .line 198
    .line 199
    const-string v30, "q"

    .line 200
    .line 201
    const-string v31, "sub"

    .line 202
    .line 203
    const-string v32, "sup"

    .line 204
    .line 205
    const-string v33, "bdo"

    .line 206
    .line 207
    const-string v34, "iframe"

    .line 208
    .line 209
    const-string v35, "embed"

    .line 210
    .line 211
    const-string v36, "span"

    .line 212
    .line 213
    const-string v37, "input"

    .line 214
    .line 215
    const-string v38, "select"

    .line 216
    .line 217
    const-string v39, "textarea"

    .line 218
    .line 219
    const-string v40, "label"

    .line 220
    .line 221
    const-string v41, "button"

    .line 222
    .line 223
    const-string v42, "optgroup"

    .line 224
    .line 225
    const-string v43, "option"

    .line 226
    .line 227
    const-string v44, "legend"

    .line 228
    .line 229
    const-string v45, "datalist"

    .line 230
    .line 231
    const-string v46, "keygen"

    .line 232
    .line 233
    const-string v47, "output"

    .line 234
    .line 235
    const-string v48, "progress"

    .line 236
    .line 237
    const-string v49, "meter"

    .line 238
    .line 239
    const-string v50, "area"

    .line 240
    .line 241
    const-string v51, "param"

    .line 242
    .line 243
    const-string v52, "source"

    .line 244
    .line 245
    const-string v53, "track"

    .line 246
    .line 247
    const-string v54, "summary"

    .line 248
    .line 249
    const-string v55, "command"

    .line 250
    .line 251
    const-string v56, "device"

    .line 252
    .line 253
    const-string v57, "area"

    .line 254
    .line 255
    const-string v58, "basefont"

    .line 256
    .line 257
    const-string v59, "bgsound"

    .line 258
    .line 259
    const-string v60, "menuitem"

    .line 260
    .line 261
    const-string v61, "param"

    .line 262
    .line 263
    const-string v62, "source"

    .line 264
    .line 265
    const-string v63, "track"

    .line 266
    .line 267
    const-string v64, "data"

    .line 268
    .line 269
    const-string v65, "bdi"

    .line 270
    .line 271
    const-string v66, "s"

    .line 272
    .line 273
    .line 274
    filled-new-array/range {v1 .. v66}, [Ljava/lang/String;

    .line 275
    move-result-object v1

    .line 276
    .line 277
    sput-object v1, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    .line 278
    .line 279
    const-string v2, "meta"

    .line 280
    .line 281
    const-string v3, "link"

    .line 282
    .line 283
    const-string v4, "base"

    .line 284
    .line 285
    const-string v5, "frame"

    .line 286
    .line 287
    const-string v6, "img"

    .line 288
    .line 289
    const-string v7, "br"

    .line 290
    .line 291
    const-string v8, "wbr"

    .line 292
    .line 293
    const-string v9, "embed"

    .line 294
    .line 295
    const-string v10, "hr"

    .line 296
    .line 297
    const-string v11, "input"

    .line 298
    .line 299
    const-string v12, "keygen"

    .line 300
    .line 301
    const-string v13, "col"

    .line 302
    .line 303
    const-string v14, "command"

    .line 304
    .line 305
    const-string v15, "device"

    .line 306
    .line 307
    const-string v16, "area"

    .line 308
    .line 309
    const-string v17, "basefont"

    .line 310
    .line 311
    const-string v18, "bgsound"

    .line 312
    .line 313
    const-string v19, "menuitem"

    .line 314
    .line 315
    const-string v20, "param"

    .line 316
    .line 317
    const-string v21, "source"

    .line 318
    .line 319
    const-string v22, "track"

    .line 320
    .line 321
    .line 322
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    .line 323
    move-result-object v1

    .line 324
    .line 325
    sput-object v1, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .line 326
    .line 327
    const-string v2, "title"

    .line 328
    .line 329
    const-string v3, "a"

    .line 330
    .line 331
    const-string v4, "p"

    .line 332
    .line 333
    const-string v5, "h1"

    .line 334
    .line 335
    const-string v6, "h2"

    .line 336
    .line 337
    const-string v7, "h3"

    .line 338
    .line 339
    const-string v8, "h4"

    .line 340
    .line 341
    const-string v9, "h5"

    .line 342
    .line 343
    const-string v10, "h6"

    .line 344
    .line 345
    const-string v11, "pre"

    .line 346
    .line 347
    const-string v12, "address"

    .line 348
    .line 349
    const-string v13, "li"

    .line 350
    .line 351
    const-string v14, "th"

    .line 352
    .line 353
    const-string v15, "td"

    .line 354
    .line 355
    const-string v16, "script"

    .line 356
    .line 357
    const-string v17, "style"

    .line 358
    .line 359
    const-string v18, "ins"

    .line 360
    .line 361
    const-string v19, "del"

    .line 362
    .line 363
    const-string v20, "s"

    .line 364
    .line 365
    .line 366
    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    .line 367
    move-result-object v1

    .line 368
    .line 369
    sput-object v1, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 370
    .line 371
    const-string v1, "pre"

    .line 372
    .line 373
    const-string v2, "plaintext"

    .line 374
    .line 375
    const-string v3, "title"

    .line 376
    .line 377
    const-string v4, "textarea"

    .line 378
    .line 379
    .line 380
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 381
    move-result-object v1

    .line 382
    .line 383
    sput-object v1, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 384
    .line 385
    const-string v5, "button"

    .line 386
    .line 387
    const-string v6, "fieldset"

    .line 388
    .line 389
    const-string v7, "input"

    .line 390
    .line 391
    const-string v8, "keygen"

    .line 392
    .line 393
    const-string v9, "object"

    .line 394
    .line 395
    const-string v10, "output"

    .line 396
    .line 397
    const-string v11, "select"

    .line 398
    .line 399
    const-string v12, "textarea"

    .line 400
    .line 401
    .line 402
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 403
    move-result-object v1

    .line 404
    .line 405
    sput-object v1, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    .line 406
    .line 407
    const-string v1, "object"

    .line 408
    .line 409
    const-string v2, "select"

    .line 410
    .line 411
    const-string v3, "input"

    .line 412
    .line 413
    const-string v5, "keygen"

    .line 414
    .line 415
    .line 416
    filled-new-array {v3, v5, v1, v2, v4}, [Ljava/lang/String;

    .line 417
    move-result-object v1

    .line 418
    .line 419
    sput-object v1, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    .line 420
    array-length v1, v0

    .line 421
    const/4 v2, 0x0

    .line 422
    move v3, v2

    .line 423
    .line 424
    :goto_0
    if-ge v3, v1, :cond_0

    .line 425
    .line 426
    aget-object v4, v0, v3

    .line 427
    .line 428
    new-instance v5, Lorg/jsoup/parser/Tag;

    .line 429
    .line 430
    .line 431
    invoke-direct {v5, v4}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v5}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    .line 435
    .line 436
    add-int/lit8 v3, v3, 0x1

    .line 437
    goto :goto_0

    .line 438
    .line 439
    :cond_0
    sget-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    .line 440
    array-length v1, v0

    .line 441
    move v3, v2

    .line 442
    .line 443
    :goto_1
    if-ge v3, v1, :cond_1

    .line 444
    .line 445
    aget-object v4, v0, v3

    .line 446
    .line 447
    new-instance v5, Lorg/jsoup/parser/Tag;

    .line 448
    .line 449
    .line 450
    invoke-direct {v5, v4}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 453
    .line 454
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 455
    .line 456
    .line 457
    invoke-static {v5}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    .line 458
    .line 459
    add-int/lit8 v3, v3, 0x1

    .line 460
    goto :goto_1

    .line 461
    .line 462
    :cond_1
    sget-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .line 463
    array-length v1, v0

    .line 464
    move v3, v2

    .line 465
    :goto_2
    const/4 v4, 0x1

    .line 466
    .line 467
    if-ge v3, v1, :cond_2

    .line 468
    .line 469
    aget-object v5, v0, v3

    .line 470
    .line 471
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 472
    .line 473
    .line 474
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-result-object v5

    .line 476
    .line 477
    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 478
    .line 479
    .line 480
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 481
    .line 482
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 483
    .line 484
    iput-boolean v4, v5, Lorg/jsoup/parser/Tag;->empty:Z

    .line 485
    .line 486
    add-int/lit8 v3, v3, 0x1

    .line 487
    goto :goto_2

    .line 488
    .line 489
    :cond_2
    sget-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 490
    array-length v1, v0

    .line 491
    move v3, v2

    .line 492
    .line 493
    :goto_3
    if-ge v3, v1, :cond_3

    .line 494
    .line 495
    aget-object v5, v0, v3

    .line 496
    .line 497
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 498
    .line 499
    .line 500
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    move-result-object v5

    .line 502
    .line 503
    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 504
    .line 505
    .line 506
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 507
    .line 508
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 509
    .line 510
    add-int/lit8 v3, v3, 0x1

    .line 511
    goto :goto_3

    .line 512
    .line 513
    :cond_3
    sget-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 514
    array-length v1, v0

    .line 515
    move v3, v2

    .line 516
    .line 517
    :goto_4
    if-ge v3, v1, :cond_4

    .line 518
    .line 519
    aget-object v5, v0, v3

    .line 520
    .line 521
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 522
    .line 523
    .line 524
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    move-result-object v5

    .line 526
    .line 527
    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 528
    .line 529
    .line 530
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 531
    .line 532
    iput-boolean v4, v5, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 533
    .line 534
    add-int/lit8 v3, v3, 0x1

    .line 535
    goto :goto_4

    .line 536
    .line 537
    :cond_4
    sget-object v0, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    .line 538
    array-length v1, v0

    .line 539
    move v3, v2

    .line 540
    .line 541
    :goto_5
    if-ge v3, v1, :cond_5

    .line 542
    .line 543
    aget-object v5, v0, v3

    .line 544
    .line 545
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 546
    .line 547
    .line 548
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    move-result-object v5

    .line 550
    .line 551
    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 552
    .line 553
    .line 554
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 555
    .line 556
    iput-boolean v4, v5, Lorg/jsoup/parser/Tag;->formList:Z

    .line 557
    .line 558
    add-int/lit8 v3, v3, 0x1

    .line 559
    goto :goto_5

    .line 560
    .line 561
    :cond_5
    sget-object v0, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    .line 562
    array-length v1, v0

    .line 563
    .line 564
    :goto_6
    if-ge v2, v1, :cond_6

    .line 565
    .line 566
    aget-object v3, v0, v2

    .line 567
    .line 568
    sget-object v5, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 569
    .line 570
    .line 571
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    move-result-object v3

    .line 573
    .line 574
    check-cast v3, Lorg/jsoup/parser/Tag;

    .line 575
    .line 576
    .line 577
    invoke-static {v3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 578
    .line 579
    iput-boolean v4, v3, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 580
    .line 581
    add-int/lit8 v2, v2, 0x1

    .line 582
    goto :goto_6

    .line 583
    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 22
    .line 23
    iput-object p1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static isKnownTag(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static register(Lorg/jsoup/parser/Tag;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 7
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p0, v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/parser/Tag;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/jsoup/parser/Tag;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lorg/jsoup/parser/Tag;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lorg/jsoup/parser/Tag;->isBlock:Z

    :cond_0
    return-object v1
.end method


# virtual methods
.method public canContainBlock()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/jsoup/parser/Tag;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    return v2

    .line 24
    .line 25
    :cond_2
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 26
    .line 27
    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 28
    .line 29
    if-eq v1, v3, :cond_3

    .line 30
    return v2

    .line 31
    .line 32
    :cond_3
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->empty:Z

    .line 35
    .line 36
    if-eq v1, v3, :cond_4

    .line 37
    return v2

    .line 38
    .line 39
    :cond_4
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 40
    .line 41
    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 42
    .line 43
    if-eq v1, v3, :cond_5

    .line 44
    return v2

    .line 45
    .line 46
    :cond_5
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 47
    .line 48
    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 49
    .line 50
    if-eq v1, v3, :cond_6

    .line 51
    return v2

    .line 52
    .line 53
    :cond_6
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 54
    .line 55
    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 56
    .line 57
    if-eq v1, v3, :cond_7

    .line 58
    return v2

    .line 59
    .line 60
    :cond_7
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 61
    .line 62
    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 63
    .line 64
    if-eq v1, v3, :cond_8

    .line 65
    return v2

    .line 66
    .line 67
    :cond_8
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 68
    .line 69
    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formList:Z

    .line 70
    .line 71
    if-eq v1, v3, :cond_9

    .line 72
    return v2

    .line 73
    .line 74
    :cond_9
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 75
    .line 76
    iget-boolean p1, p1, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 77
    .line 78
    if-ne v1, p1, :cond_a

    .line 79
    goto :goto_0

    .line 80
    :cond_a
    move v0, v2

    .line 81
    :goto_0
    return v0
.end method

.method public formatAsBlock()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 16
    add-int/2addr v0, v1

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 21
    add-int/2addr v0, v1

    .line 22
    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 26
    add-int/2addr v0, v1

    .line 27
    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 31
    add-int/2addr v0, v1

    .line 32
    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 36
    add-int/2addr v0, v1

    .line 37
    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 41
    add-int/2addr v0, v1

    .line 42
    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 46
    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public isBlock()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public isData()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return v0
.end method

.method public isFormListed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return v0
.end method

.method public isFormSubmittable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelfClosing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public preserveWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method setSelfClosing()Lorg/jsoup/parser/Tag;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
