.class public final Lio/ktor/http/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodecs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n+ 6 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 7 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n1099#2,3:297\n8#3,3:300\n13586#4,2:303\n11#5:305\n823#6,6:306\n829#6,13:313\n355#7:312\n1549#8:326\n1620#8,3:327\n1549#8:330\n1620#8,3:331\n1549#8:334\n1620#8,3:335\n*S KotlinDebug\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n*L\n130#1:297,3\n133#1:300,3\n141#1:303,2\n250#1:305\n289#1:306,6\n289#1:313,13\n290#1:312\n9#1:326\n9#1:327,3\n20#1:330\n20#1:331,3\n42#1:334\n42#1:335,3\n*E\n"
.end annotation


# static fields
.field private static final ATTRIBUTE_CHARACTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HEX_ALPHABET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SPECIAL_SYMBOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_ALPHABET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_ALPHABET_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_PROTOCOL_PART:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VALID_PATH_PART:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    .line 2
    new-instance v0, Lj8/c;

    .line 3
    .line 4
    const/16 v1, 0x7a

    .line 5
    .line 6
    const/16 v2, 0x61

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lj8/c;-><init>(CC)V

    .line 10
    .line 11
    new-instance v1, Lj8/c;

    .line 12
    .line 13
    const/16 v3, 0x5a

    .line 14
    .line 15
    const/16 v4, 0x41

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v4, v3}, Lj8/c;-><init>(CC)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/collections/t;->C0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/util/Collection;

    .line 25
    .line 26
    new-instance v1, Lj8/c;

    .line 27
    .line 28
    const/16 v3, 0x30

    .line 29
    .line 30
    const/16 v5, 0x39

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3, v5}, Lj8/c;-><init>(CC)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Ljava/lang/Iterable;

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/16 v6, 0xa

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v6}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 47
    move-result v7

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v7

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    check-cast v7, Ljava/lang/Character;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    .line 70
    move-result v7

    .line 71
    int-to-byte v7, v7

    .line 72
    .line 73
    .line 74
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 75
    move-result-object v7

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-static {v1}, Lkotlin/collections/t;->Y0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    sput-object v0, Lio/ktor/http/b;->URL_ALPHABET:Ljava/util/Set;

    .line 86
    .line 87
    new-instance v0, Lj8/c;

    .line 88
    .line 89
    const/16 v1, 0x7a

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, v2, v1}, Lj8/c;-><init>(CC)V

    .line 93
    .line 94
    new-instance v1, Lj8/c;

    .line 95
    .line 96
    const/16 v7, 0x5a

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v4, v7}, Lj8/c;-><init>(CC)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/collections/t;->C0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    check-cast v0, Ljava/util/Collection;

    .line 106
    .line 107
    new-instance v1, Lj8/c;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, v3, v5}, Lj8/c;-><init>(CC)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Ljava/lang/Iterable;

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lkotlin/collections/t;->Y0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    sput-object v0, Lio/ktor/http/b;->URL_ALPHABET_CHARS:Ljava/util/Set;

    .line 123
    .line 124
    new-instance v0, Lj8/c;

    .line 125
    .line 126
    const/16 v1, 0x66

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v2, v1}, Lj8/c;-><init>(CC)V

    .line 130
    .line 131
    new-instance v1, Lj8/c;

    .line 132
    .line 133
    const/16 v2, 0x46

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v4, v2}, Lj8/c;-><init>(CC)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Lkotlin/collections/t;->C0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Ljava/util/Collection;

    .line 143
    .line 144
    new-instance v1, Lj8/c;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v3, v5}, Lj8/c;-><init>(CC)V

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    check-cast v0, Ljava/lang/Iterable;

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lkotlin/collections/t;->Y0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    sput-object v0, Lio/ktor/http/b;->HEX_ALPHABET:Ljava/util/Set;

    .line 160
    .line 161
    const/16 v0, 0x16

    .line 162
    .line 163
    new-array v0, v0, [Ljava/lang/Character;

    .line 164
    .line 165
    const/16 v1, 0x3a

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 169
    move-result-object v1

    .line 170
    const/4 v2, 0x0

    .line 171
    .line 172
    aput-object v1, v0, v2

    .line 173
    .line 174
    const/16 v1, 0x2f

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 178
    move-result-object v1

    .line 179
    const/4 v3, 0x1

    .line 180
    .line 181
    aput-object v1, v0, v3

    .line 182
    .line 183
    const/16 v1, 0x3f

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 187
    move-result-object v1

    .line 188
    const/4 v4, 0x2

    .line 189
    .line 190
    aput-object v1, v0, v4

    .line 191
    .line 192
    const/16 v1, 0x23

    .line 193
    .line 194
    .line 195
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 196
    move-result-object v1

    .line 197
    const/4 v5, 0x3

    .line 198
    .line 199
    aput-object v1, v0, v5

    .line 200
    .line 201
    const/16 v1, 0x5b

    .line 202
    .line 203
    .line 204
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 205
    move-result-object v1

    .line 206
    const/4 v7, 0x4

    .line 207
    .line 208
    aput-object v1, v0, v7

    .line 209
    .line 210
    const/16 v1, 0x5d

    .line 211
    .line 212
    .line 213
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 214
    move-result-object v1

    .line 215
    const/4 v8, 0x5

    .line 216
    .line 217
    aput-object v1, v0, v8

    .line 218
    .line 219
    const/16 v1, 0x40

    .line 220
    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 223
    move-result-object v1

    .line 224
    const/4 v9, 0x6

    .line 225
    .line 226
    aput-object v1, v0, v9

    .line 227
    .line 228
    const/16 v1, 0x21

    .line 229
    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 232
    move-result-object v10

    .line 233
    const/4 v11, 0x7

    .line 234
    .line 235
    aput-object v10, v0, v11

    .line 236
    .line 237
    const/16 v10, 0x24

    .line 238
    .line 239
    .line 240
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 241
    move-result-object v12

    .line 242
    .line 243
    const/16 v13, 0x8

    .line 244
    .line 245
    aput-object v12, v0, v13

    .line 246
    .line 247
    const/16 v12, 0x26

    .line 248
    .line 249
    .line 250
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 251
    move-result-object v14

    .line 252
    .line 253
    const/16 v15, 0x9

    .line 254
    .line 255
    aput-object v14, v0, v15

    .line 256
    .line 257
    const/16 v14, 0x27

    .line 258
    .line 259
    .line 260
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 261
    move-result-object v14

    .line 262
    .line 263
    aput-object v14, v0, v6

    .line 264
    .line 265
    const/16 v14, 0x28

    .line 266
    .line 267
    .line 268
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 269
    move-result-object v14

    .line 270
    .line 271
    const/16 v16, 0xb

    .line 272
    .line 273
    aput-object v14, v0, v16

    .line 274
    .line 275
    const/16 v14, 0x29

    .line 276
    .line 277
    .line 278
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 279
    move-result-object v14

    .line 280
    .line 281
    const/16 v16, 0xc

    .line 282
    .line 283
    aput-object v14, v0, v16

    .line 284
    .line 285
    const/16 v14, 0x2a

    .line 286
    .line 287
    .line 288
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 289
    move-result-object v14

    .line 290
    .line 291
    const/16 v16, 0xd

    .line 292
    .line 293
    aput-object v14, v0, v16

    .line 294
    .line 295
    const/16 v14, 0x2c

    .line 296
    .line 297
    .line 298
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 299
    move-result-object v14

    .line 300
    .line 301
    const/16 v16, 0xe

    .line 302
    .line 303
    aput-object v14, v0, v16

    .line 304
    .line 305
    const/16 v14, 0x3b

    .line 306
    .line 307
    .line 308
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 309
    move-result-object v14

    .line 310
    .line 311
    const/16 v16, 0xf

    .line 312
    .line 313
    aput-object v14, v0, v16

    .line 314
    .line 315
    const/16 v14, 0x3d

    .line 316
    .line 317
    .line 318
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 319
    move-result-object v14

    .line 320
    .line 321
    const/16 v16, 0x10

    .line 322
    .line 323
    aput-object v14, v0, v16

    .line 324
    .line 325
    const/16 v14, 0x11

    .line 326
    .line 327
    const/16 v16, 0x2d

    .line 328
    .line 329
    .line 330
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 331
    move-result-object v17

    .line 332
    .line 333
    aput-object v17, v0, v14

    .line 334
    .line 335
    const/16 v14, 0x12

    .line 336
    .line 337
    const/16 v17, 0x2e

    .line 338
    .line 339
    .line 340
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 341
    move-result-object v18

    .line 342
    .line 343
    aput-object v18, v0, v14

    .line 344
    .line 345
    const/16 v14, 0x13

    .line 346
    .line 347
    const/16 v18, 0x5f

    .line 348
    .line 349
    .line 350
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 351
    move-result-object v19

    .line 352
    .line 353
    aput-object v19, v0, v14

    .line 354
    .line 355
    const/16 v14, 0x14

    .line 356
    .line 357
    const/16 v19, 0x7e

    .line 358
    .line 359
    .line 360
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 361
    move-result-object v20

    .line 362
    .line 363
    aput-object v20, v0, v14

    .line 364
    .line 365
    const/16 v14, 0x2b

    .line 366
    .line 367
    .line 368
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 369
    move-result-object v14

    .line 370
    .line 371
    const/16 v20, 0x15

    .line 372
    .line 373
    aput-object v14, v0, v20

    .line 374
    .line 375
    .line 376
    invoke-static {v0}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 377
    move-result-object v0

    .line 378
    .line 379
    new-instance v14, Ljava/util/ArrayList;

    .line 380
    .line 381
    .line 382
    invoke-static {v0, v6}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 383
    move-result v15

    .line 384
    .line 385
    .line 386
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    .line 393
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    move-result v15

    .line 395
    .line 396
    if-eqz v15, :cond_1

    .line 397
    .line 398
    .line 399
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 400
    move-result-object v15

    .line 401
    .line 402
    check-cast v15, Ljava/lang/Character;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v15}, Ljava/lang/Character;->charValue()C

    .line 406
    move-result v15

    .line 407
    int-to-byte v15, v15

    .line 408
    .line 409
    .line 410
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 411
    move-result-object v15

    .line 412
    .line 413
    .line 414
    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 415
    goto :goto_1

    .line 416
    .line 417
    :cond_1
    sput-object v14, Lio/ktor/http/b;->URL_PROTOCOL_PART:Ljava/util/List;

    .line 418
    .line 419
    const/16 v0, 0x11

    .line 420
    .line 421
    new-array v0, v0, [Ljava/lang/Character;

    .line 422
    .line 423
    const/16 v14, 0x3a

    .line 424
    .line 425
    .line 426
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 427
    move-result-object v14

    .line 428
    .line 429
    aput-object v14, v0, v2

    .line 430
    .line 431
    const/16 v14, 0x40

    .line 432
    .line 433
    .line 434
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 435
    move-result-object v14

    .line 436
    .line 437
    aput-object v14, v0, v3

    .line 438
    .line 439
    .line 440
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 441
    move-result-object v14

    .line 442
    .line 443
    aput-object v14, v0, v4

    .line 444
    .line 445
    .line 446
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 447
    move-result-object v14

    .line 448
    .line 449
    aput-object v14, v0, v5

    .line 450
    .line 451
    .line 452
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 453
    move-result-object v14

    .line 454
    .line 455
    aput-object v14, v0, v7

    .line 456
    .line 457
    const/16 v14, 0x27

    .line 458
    .line 459
    .line 460
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 461
    move-result-object v14

    .line 462
    .line 463
    aput-object v14, v0, v8

    .line 464
    .line 465
    const/16 v14, 0x28

    .line 466
    .line 467
    .line 468
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 469
    move-result-object v14

    .line 470
    .line 471
    aput-object v14, v0, v9

    .line 472
    .line 473
    const/16 v14, 0x29

    .line 474
    .line 475
    .line 476
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 477
    move-result-object v14

    .line 478
    .line 479
    aput-object v14, v0, v11

    .line 480
    .line 481
    const/16 v14, 0x2a

    .line 482
    .line 483
    .line 484
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 485
    move-result-object v14

    .line 486
    .line 487
    aput-object v14, v0, v13

    .line 488
    .line 489
    const/16 v14, 0x2b

    .line 490
    .line 491
    .line 492
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 493
    move-result-object v14

    .line 494
    .line 495
    const/16 v15, 0x9

    .line 496
    .line 497
    aput-object v14, v0, v15

    .line 498
    .line 499
    const/16 v14, 0x2c

    .line 500
    .line 501
    .line 502
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 503
    move-result-object v14

    .line 504
    .line 505
    aput-object v14, v0, v6

    .line 506
    .line 507
    const/16 v14, 0x3b

    .line 508
    .line 509
    .line 510
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 511
    move-result-object v14

    .line 512
    .line 513
    const/16 v15, 0xb

    .line 514
    .line 515
    aput-object v14, v0, v15

    .line 516
    .line 517
    const/16 v14, 0x3d

    .line 518
    .line 519
    .line 520
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 521
    move-result-object v14

    .line 522
    .line 523
    const/16 v15, 0xc

    .line 524
    .line 525
    aput-object v14, v0, v15

    .line 526
    .line 527
    const/16 v14, 0xd

    .line 528
    .line 529
    .line 530
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 531
    move-result-object v15

    .line 532
    .line 533
    aput-object v15, v0, v14

    .line 534
    .line 535
    const/16 v14, 0xe

    .line 536
    .line 537
    .line 538
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 539
    move-result-object v15

    .line 540
    .line 541
    aput-object v15, v0, v14

    .line 542
    .line 543
    const/16 v14, 0xf

    .line 544
    .line 545
    .line 546
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 547
    move-result-object v15

    .line 548
    .line 549
    aput-object v15, v0, v14

    .line 550
    .line 551
    const/16 v14, 0x10

    .line 552
    .line 553
    .line 554
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 555
    move-result-object v15

    .line 556
    .line 557
    aput-object v15, v0, v14

    .line 558
    .line 559
    .line 560
    invoke-static {v0}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 561
    move-result-object v0

    .line 562
    .line 563
    sput-object v0, Lio/ktor/http/b;->VALID_PATH_PART:Ljava/util/Set;

    .line 564
    .line 565
    sget-object v0, Lio/ktor/http/b;->URL_ALPHABET_CHARS:Ljava/util/Set;

    .line 566
    .line 567
    const/16 v14, 0xc

    .line 568
    .line 569
    new-array v14, v14, [Ljava/lang/Character;

    .line 570
    .line 571
    .line 572
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 573
    move-result-object v1

    .line 574
    .line 575
    aput-object v1, v14, v2

    .line 576
    .line 577
    const/16 v1, 0x23

    .line 578
    .line 579
    .line 580
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 581
    move-result-object v1

    .line 582
    .line 583
    aput-object v1, v14, v3

    .line 584
    .line 585
    .line 586
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 587
    move-result-object v1

    .line 588
    .line 589
    aput-object v1, v14, v4

    .line 590
    .line 591
    .line 592
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 593
    move-result-object v1

    .line 594
    .line 595
    aput-object v1, v14, v5

    .line 596
    .line 597
    const/16 v1, 0x2b

    .line 598
    .line 599
    .line 600
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 601
    move-result-object v1

    .line 602
    .line 603
    aput-object v1, v14, v7

    .line 604
    .line 605
    .line 606
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 607
    move-result-object v1

    .line 608
    .line 609
    aput-object v1, v14, v8

    .line 610
    .line 611
    .line 612
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 613
    move-result-object v1

    .line 614
    .line 615
    aput-object v1, v14, v9

    .line 616
    .line 617
    const/16 v1, 0x5e

    .line 618
    .line 619
    .line 620
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 621
    move-result-object v1

    .line 622
    .line 623
    aput-object v1, v14, v11

    .line 624
    .line 625
    .line 626
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 627
    move-result-object v1

    .line 628
    .line 629
    aput-object v1, v14, v13

    .line 630
    .line 631
    const/16 v1, 0x60

    .line 632
    .line 633
    .line 634
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 635
    move-result-object v1

    .line 636
    .line 637
    const/16 v8, 0x9

    .line 638
    .line 639
    aput-object v1, v14, v8

    .line 640
    .line 641
    const/16 v1, 0x7c

    .line 642
    .line 643
    .line 644
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 645
    move-result-object v1

    .line 646
    .line 647
    aput-object v1, v14, v6

    .line 648
    .line 649
    const/16 v1, 0xb

    .line 650
    .line 651
    .line 652
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 653
    move-result-object v8

    .line 654
    .line 655
    aput-object v8, v14, v1

    .line 656
    .line 657
    .line 658
    invoke-static {v14}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 659
    move-result-object v1

    .line 660
    .line 661
    .line 662
    invoke-static {v0, v1}, Lkotlin/collections/w0;->k(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 663
    move-result-object v0

    .line 664
    .line 665
    sput-object v0, Lio/ktor/http/b;->ATTRIBUTE_CHARACTERS:Ljava/util/Set;

    .line 666
    .line 667
    new-array v0, v7, [Ljava/lang/Character;

    .line 668
    .line 669
    .line 670
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 671
    move-result-object v1

    .line 672
    .line 673
    aput-object v1, v0, v2

    .line 674
    .line 675
    .line 676
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 677
    move-result-object v1

    .line 678
    .line 679
    aput-object v1, v0, v3

    .line 680
    .line 681
    .line 682
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 683
    move-result-object v1

    .line 684
    .line 685
    aput-object v1, v0, v4

    .line 686
    .line 687
    .line 688
    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 689
    move-result-object v1

    .line 690
    .line 691
    aput-object v1, v0, v5

    .line 692
    .line 693
    .line 694
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 695
    move-result-object v0

    .line 696
    .line 697
    check-cast v0, Ljava/lang/Iterable;

    .line 698
    .line 699
    new-instance v1, Ljava/util/ArrayList;

    .line 700
    .line 701
    .line 702
    invoke-static {v0, v6}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 703
    move-result v2

    .line 704
    .line 705
    .line 706
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 707
    .line 708
    .line 709
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 710
    move-result-object v0

    .line 711
    .line 712
    .line 713
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 714
    move-result v2

    .line 715
    .line 716
    if-eqz v2, :cond_2

    .line 717
    .line 718
    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    move-result-object v2

    .line 721
    .line 722
    check-cast v2, Ljava/lang/Character;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 726
    move-result v2

    .line 727
    int-to-byte v2, v2

    .line 728
    .line 729
    .line 730
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 731
    move-result-object v2

    .line 732
    .line 733
    .line 734
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 735
    goto :goto_2

    .line 736
    .line 737
    :cond_2
    sput-object v1, Lio/ktor/http/b;->SPECIAL_SYMBOLS:Ljava/util/List;

    .line 738
    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/b;->SPECIAL_SYMBOLS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/b;->URL_ALPHABET:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/b;->URL_PROTOCOL_PART:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic d(B)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/http/b;->u(B)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final e(C)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x47

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x67

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static final f(Ljava/lang/CharSequence;IIIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    sub-int v0, p2, p1

    .line 3
    .line 4
    const/16 v1, 0xff

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    div-int/lit8 v0, v0, 0x3

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    if-le p3, p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0, p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge p3, p2, :cond_8

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz p4, :cond_2

    .line 28
    .line 29
    const/16 v2, 0x2b

    .line 30
    .line 31
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x20

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    const/16 v2, 0x25

    .line 42
    .line 43
    if-ne v0, v2, :cond_7

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    sub-int p1, p2, p3

    .line 48
    .line 49
    div-int/lit8 p1, p1, 0x3

    .line 50
    .line 51
    new-array p1, p1, [B

    .line 52
    :cond_3
    const/4 v0, 0x0

    .line 53
    move v3, v0

    .line 54
    .line 55
    :goto_2
    if-ge p3, p2, :cond_6

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 59
    move-result v4

    .line 60
    .line 61
    if-ne v4, v2, :cond_6

    .line 62
    .line 63
    add-int/lit8 v4, p3, 0x2

    .line 64
    .line 65
    const-string v5, ", in "

    .line 66
    .line 67
    if-ge v4, p2, :cond_5

    .line 68
    .line 69
    add-int/lit8 v6, p3, 0x1

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 73
    move-result v7

    .line 74
    .line 75
    .line 76
    invoke-static {v7}, Lio/ktor/http/b;->e(C)I

    .line 77
    move-result v7

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 81
    move-result v8

    .line 82
    .line 83
    .line 84
    invoke-static {v8}, Lio/ktor/http/b;->e(C)I

    .line 85
    move-result v8

    .line 86
    const/4 v9, -0x1

    .line 87
    .line 88
    if-eq v7, v9, :cond_4

    .line 89
    .line 90
    if-eq v8, v9, :cond_4

    .line 91
    .line 92
    add-int/lit8 v4, v3, 0x1

    .line 93
    .line 94
    mul-int/lit8 v7, v7, 0x10

    .line 95
    add-int/2addr v7, v8

    .line 96
    int-to-byte v5, v7

    .line 97
    .line 98
    aput-byte v5, p1, v3

    .line 99
    .line 100
    add-int/lit8 p3, p3, 0x3

    .line 101
    move v3, v4

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_4
    new-instance p1, Lio/ktor/http/i0;

    .line 105
    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string p4, "Wrong HEX escape: %"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 118
    move-result p4

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 125
    move-result p4

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string p0, ", at "

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p0}, Lio/ktor/http/i0;-><init>(Ljava/lang/String;)V

    .line 150
    throw p1

    .line 151
    .line 152
    :cond_5
    new-instance p1, Lio/ktor/http/i0;

    .line 153
    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    const-string p4, "Incomplete trailing HEX escape: "

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 166
    move-result p4

    .line 167
    .line 168
    .line 169
    invoke-interface {p0, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 170
    move-result-object p4

    .line 171
    .line 172
    .line 173
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    move-result-object p4

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string p0, " at "

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    .line 197
    .line 198
    invoke-direct {p1, p0}, Lio/ktor/http/i0;-><init>(Ljava/lang/String;)V

    .line 199
    throw p1

    .line 200
    .line 201
    :cond_6
    new-instance v2, Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    invoke-direct {v2, p1, v0, v3, p5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    .line 212
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    .line 217
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p0

    .line 219
    .line 220
    const-string p1, "sb.toString()"

    .line 221
    .line 222
    .line 223
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    return-object p0
.end method

.method private static final g(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 1
    move v3, p1

    .line 2
    .line 3
    :goto_0
    if-ge v3, p2, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 7
    move-result v0

    .line 8
    .line 9
    const/16 v1, 0x25

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x2b

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    move-object v0, p0

    .line 23
    move v1, p1

    .line 24
    move v2, p2

    .line 25
    move v4, p3

    .line 26
    move-object v5, p4

    .line 27
    .line 28
    .line 29
    invoke-static/range {v0 .. v5}, Lio/ktor/http/b;->f(Ljava/lang/CharSequence;IIIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    .line 33
    :cond_2
    if-nez p1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    move-result p3

    .line 38
    .line 39
    if-ne p2, p3, :cond_3

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    :goto_2
    return-object p0
.end method

.method public static final h(Ljava/lang/String;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/charset/Charset;
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
    const-string v0, "charset"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/http/b;->g(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result p2

    .line 14
    .line 15
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 16
    .line 17
    if-eqz p4, :cond_2

    .line 18
    .line 19
    sget-object p3, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/b;->h(Ljava/lang/String;IILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final j(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
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
    const-string v0, "charset"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/http/b;->g(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    move p1, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 9
    .line 10
    if-eqz p6, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result p2

    .line 15
    .line 16
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 17
    .line 18
    if-eqz p6, :cond_2

    .line 19
    move p3, v0

    .line 20
    .line 21
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 22
    .line 23
    if-eqz p5, :cond_3

    .line 24
    .line 25
    sget-object p4, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    .line 28
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/http/b;->j(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final l(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    sget-object v1, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-string v1, "UTF_8.newEncoder()"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x6

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v3, p0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Lq7/b;->d(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lr7/j;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    new-instance v1, Lio/ktor/http/b$a;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v0, p1}, Lio/ktor/http/b$a;-><init>(Ljava/lang/StringBuilder;Z)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v1}, Lio/ktor/http/b;->s(Lr7/j;Le8/l;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    const-string p1, "StringBuilder().apply(builderAction).toString()"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/http/b;->l(Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
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
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lio/ktor/http/b;->l(Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final o(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    sget-object v1, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result v3

    .line 18
    .line 19
    if-ge v2, v3, :cond_5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v3

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x2f

    .line 28
    .line 29
    if-eq v3, v4, :cond_4

    .line 30
    .line 31
    :cond_0
    sget-object v4, Lio/ktor/http/b;->URL_ALPHABET_CHARS:Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    .line 38
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-nez v4, :cond_4

    .line 42
    .line 43
    sget-object v4, Lio/ktor/http/b;->VALID_PATH_PART:Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_1
    const/16 v4, 0x25

    .line 57
    .line 58
    if-ne v3, v4, :cond_2

    .line 59
    .line 60
    add-int/lit8 v4, v2, 0x2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 64
    move-result v5

    .line 65
    .line 66
    if-ge v4, v5, :cond_2

    .line 67
    .line 68
    sget-object v5, Lio/ktor/http/b;->HEX_ALPHABET:Ljava/util/Set;

    .line 69
    .line 70
    add-int/lit8 v6, v2, 0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 74
    move-result v7

    .line 75
    .line 76
    .line 77
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 78
    move-result-object v7

    .line 79
    .line 80
    .line 81
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v7

    .line 83
    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 88
    move-result v7

    .line 89
    .line 90
    .line 91
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 92
    move-result-object v7

    .line 93
    .line 94
    .line 95
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 96
    move-result v5

    .line 97
    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 105
    move-result v3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 112
    move-result v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x3

    .line 118
    goto :goto_0

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-static {v3}, Lkotlin/text/a;->i(C)Z

    .line 122
    move-result v3

    .line 123
    .line 124
    if-eqz v3, :cond_3

    .line 125
    const/4 v3, 0x2

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const/4 v3, 0x1

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    const-string v5, "charset.newEncoder()"

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    add-int/2addr v3, v2

    .line 138
    .line 139
    .line 140
    invoke-static {v4, p0, v2, v3}, Lq7/b;->c(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lr7/j;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    new-instance v4, Lio/ktor/http/b$b;

    .line 144
    .line 145
    .line 146
    invoke-direct {v4, v0}, Lio/ktor/http/b$b;-><init>(Ljava/lang/StringBuilder;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v4}, Lio/ktor/http/b;->s(Lr7/j;Le8/l;)V

    .line 150
    move v2, v3

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    .line 165
    const-string p1, "StringBuilder().apply(builderAction).toString()"

    .line 166
    .line 167
    .line 168
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    return-object p0
.end method

.method public static final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
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
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lio/ktor/http/b;->o(Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final q(Ljava/lang/String;ZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/charset/Charset;
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
    const-string v0, "charset"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-string p3, "charset.newEncoder()"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x6

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v2, p0

    .line 30
    .line 31
    .line 32
    invoke-static/range {v1 .. v6}, Lq7/b;->d(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lr7/j;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    new-instance p3, Lio/ktor/http/b$c;

    .line 36
    .line 37
    .line 38
    invoke-direct {p3, p2, v0, p1}, Lio/ktor/http/b$c;-><init>(ZLjava/lang/StringBuilder;Z)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p3}, Lio/ktor/http/b;->s(Lr7/j;Le8/l;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    const-string p1, "StringBuilder().apply(builderAction).toString()"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;ZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    move p1, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    move p2, v0

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    sget-object p3, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/b;->q(Ljava/lang/String;ZZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static final s(Lr7/j;Le8/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/j;",
            "Le8/l<",
            "-",
            "Ljava/lang/Byte;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Ls7/g;->b(Lr7/m;I)Ls7/a;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lr7/a;->j()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lr7/a;->h()I

    .line 16
    move-result v3

    .line 17
    .line 18
    if-le v2, v3, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lr7/a;->k()B

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    .line 34
    .line 35
    :cond_1
    :try_start_1
    invoke-static {p0, v1}, Ls7/g;->c(Lr7/m;Ls7/a;)Ls7/a;

    .line 36
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    :goto_1
    return-void

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    :goto_2
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v1}, Ls7/g;->a(Lr7/m;Ls7/a;)V

    .line 47
    :cond_2
    throw p1
.end method

.method private static final t(I)C
    .locals 1

    .line 1
    const/16 v0, 0xa

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x41

    int-to-char p0, p0

    sub-int/2addr p0, v0

    goto :goto_0

    :goto_1
    return p0
.end method

.method private static final u(B)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    and-int/lit16 v0, p0, 0xff

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    new-array v1, v1, [C

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    const/16 v3, 0x25

    .line 9
    .line 10
    aput-char v3, v1, v2

    .line 11
    .line 12
    shr-int/lit8 v0, v0, 0x4

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lio/ktor/http/b;->t(I)C

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    aput-char v0, v1, v2

    .line 20
    .line 21
    and-int/lit8 p0, p0, 0xf

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lio/ktor/http/b;->t(I)C

    .line 25
    move-result p0

    .line 26
    const/4 v0, 0x2

    .line 27
    .line 28
    aput-char p0, v1, v0

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/text/k;->q([C)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
