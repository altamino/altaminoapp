.class public final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Hpack$Reader;,
        Lokhttp3/internal/http2/Hpack$Writer;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/http2/Hpack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NAME_TO_FIRST_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREFIX_4_BITS:I = 0xf

.field private static final PREFIX_5_BITS:I = 0x1f

.field private static final PREFIX_6_BITS:I = 0x3f

.field private static final PREFIX_7_BITS:I = 0x7f

.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000

.field private static final STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lokhttp3/internal/http2/Hpack;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lokhttp3/internal/http2/Hpack;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    .line 8
    .line 9
    const/16 v1, 0x3d

    .line 10
    .line 11
    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 12
    .line 13
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 14
    .line 15
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    .line 16
    .line 17
    const-string v4, ""

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    aput-object v2, v1, v3

    .line 24
    .line 25
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 26
    .line 27
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    .line 28
    .line 29
    const-string v5, "GET"

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 33
    const/4 v5, 0x1

    .line 34
    .line 35
    aput-object v2, v1, v5

    .line 36
    .line 37
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 38
    .line 39
    const-string v5, "POST"

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x2

    .line 44
    .line 45
    aput-object v2, v1, v3

    .line 46
    .line 47
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 48
    .line 49
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    .line 50
    .line 51
    const-string v5, "/"

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 55
    const/4 v5, 0x3

    .line 56
    .line 57
    aput-object v2, v1, v5

    .line 58
    .line 59
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 60
    .line 61
    const-string v5, "/index.html"

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 65
    const/4 v3, 0x4

    .line 66
    .line 67
    aput-object v2, v1, v3

    .line 68
    .line 69
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 70
    .line 71
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    .line 72
    .line 73
    const-string v5, "http"

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 77
    const/4 v5, 0x5

    .line 78
    .line 79
    aput-object v2, v1, v5

    .line 80
    .line 81
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 82
    .line 83
    const-string v5, "https"

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 87
    const/4 v3, 0x6

    .line 88
    .line 89
    aput-object v2, v1, v3

    .line 90
    .line 91
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 92
    .line 93
    sget-object v3, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    .line 94
    .line 95
    const-string v5, "200"

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 99
    const/4 v5, 0x7

    .line 100
    .line 101
    aput-object v2, v1, v5

    .line 102
    .line 103
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 104
    .line 105
    const-string v5, "204"

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 109
    .line 110
    const/16 v5, 0x8

    .line 111
    .line 112
    aput-object v2, v1, v5

    .line 113
    .line 114
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 115
    .line 116
    const-string v5, "206"

    .line 117
    .line 118
    .line 119
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 120
    .line 121
    const/16 v5, 0x9

    .line 122
    .line 123
    aput-object v2, v1, v5

    .line 124
    .line 125
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 126
    .line 127
    const-string v5, "304"

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 131
    .line 132
    const/16 v5, 0xa

    .line 133
    .line 134
    aput-object v2, v1, v5

    .line 135
    .line 136
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 137
    .line 138
    const-string v5, "400"

    .line 139
    .line 140
    .line 141
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 142
    .line 143
    const/16 v5, 0xb

    .line 144
    .line 145
    aput-object v2, v1, v5

    .line 146
    .line 147
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 148
    .line 149
    const-string v5, "404"

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 153
    .line 154
    const/16 v5, 0xc

    .line 155
    .line 156
    aput-object v2, v1, v5

    .line 157
    .line 158
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 159
    .line 160
    const-string v5, "500"

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 164
    .line 165
    const/16 v3, 0xd

    .line 166
    .line 167
    aput-object v2, v1, v3

    .line 168
    .line 169
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 170
    .line 171
    const-string v3, "accept-charset"

    .line 172
    .line 173
    .line 174
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    const/16 v3, 0xe

    .line 177
    .line 178
    aput-object v2, v1, v3

    .line 179
    .line 180
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 181
    .line 182
    const-string v3, "accept-encoding"

    .line 183
    .line 184
    const-string v5, "gzip, deflate"

    .line 185
    .line 186
    .line 187
    invoke-direct {v2, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    const/16 v3, 0xf

    .line 190
    .line 191
    aput-object v2, v1, v3

    .line 192
    .line 193
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 194
    .line 195
    const-string v3, "accept-language"

    .line 196
    .line 197
    .line 198
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    const/16 v3, 0x10

    .line 201
    .line 202
    aput-object v2, v1, v3

    .line 203
    .line 204
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 205
    .line 206
    const-string v3, "accept-ranges"

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    const/16 v3, 0x11

    .line 212
    .line 213
    aput-object v2, v1, v3

    .line 214
    .line 215
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 216
    .line 217
    const-string v3, "accept"

    .line 218
    .line 219
    .line 220
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    const/16 v3, 0x12

    .line 223
    .line 224
    aput-object v2, v1, v3

    .line 225
    .line 226
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 227
    .line 228
    const-string v3, "access-control-allow-origin"

    .line 229
    .line 230
    .line 231
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    const/16 v3, 0x13

    .line 234
    .line 235
    aput-object v2, v1, v3

    .line 236
    .line 237
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 238
    .line 239
    const-string v3, "age"

    .line 240
    .line 241
    .line 242
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    const/16 v3, 0x14

    .line 245
    .line 246
    aput-object v2, v1, v3

    .line 247
    .line 248
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 249
    .line 250
    const-string v3, "allow"

    .line 251
    .line 252
    .line 253
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    const/16 v3, 0x15

    .line 256
    .line 257
    aput-object v2, v1, v3

    .line 258
    .line 259
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 260
    .line 261
    const-string v3, "authorization"

    .line 262
    .line 263
    .line 264
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    const/16 v3, 0x16

    .line 267
    .line 268
    aput-object v2, v1, v3

    .line 269
    .line 270
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 271
    .line 272
    const-string v3, "cache-control"

    .line 273
    .line 274
    .line 275
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    const/16 v3, 0x17

    .line 278
    .line 279
    aput-object v2, v1, v3

    .line 280
    .line 281
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 282
    .line 283
    const-string v3, "content-disposition"

    .line 284
    .line 285
    .line 286
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    const/16 v3, 0x18

    .line 289
    .line 290
    aput-object v2, v1, v3

    .line 291
    .line 292
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 293
    .line 294
    const-string v3, "content-encoding"

    .line 295
    .line 296
    .line 297
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    const/16 v3, 0x19

    .line 300
    .line 301
    aput-object v2, v1, v3

    .line 302
    .line 303
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 304
    .line 305
    const-string v3, "content-language"

    .line 306
    .line 307
    .line 308
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    const/16 v3, 0x1a

    .line 311
    .line 312
    aput-object v2, v1, v3

    .line 313
    .line 314
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 315
    .line 316
    const-string v3, "content-length"

    .line 317
    .line 318
    .line 319
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    const/16 v3, 0x1b

    .line 322
    .line 323
    aput-object v2, v1, v3

    .line 324
    .line 325
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 326
    .line 327
    const-string v3, "content-location"

    .line 328
    .line 329
    .line 330
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    const/16 v3, 0x1c

    .line 333
    .line 334
    aput-object v2, v1, v3

    .line 335
    .line 336
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 337
    .line 338
    const-string v3, "content-range"

    .line 339
    .line 340
    .line 341
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    const/16 v3, 0x1d

    .line 344
    .line 345
    aput-object v2, v1, v3

    .line 346
    .line 347
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 348
    .line 349
    const-string v3, "content-type"

    .line 350
    .line 351
    .line 352
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    const/16 v3, 0x1e

    .line 355
    .line 356
    aput-object v2, v1, v3

    .line 357
    .line 358
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 359
    .line 360
    const-string v3, "cookie"

    .line 361
    .line 362
    .line 363
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    const/16 v3, 0x1f

    .line 366
    .line 367
    aput-object v2, v1, v3

    .line 368
    .line 369
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 370
    .line 371
    const-string v3, "date"

    .line 372
    .line 373
    .line 374
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    const/16 v3, 0x20

    .line 377
    .line 378
    aput-object v2, v1, v3

    .line 379
    .line 380
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 381
    .line 382
    const-string v3, "etag"

    .line 383
    .line 384
    .line 385
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    const/16 v3, 0x21

    .line 388
    .line 389
    aput-object v2, v1, v3

    .line 390
    .line 391
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 392
    .line 393
    const-string v3, "expect"

    .line 394
    .line 395
    .line 396
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    const/16 v3, 0x22

    .line 399
    .line 400
    aput-object v2, v1, v3

    .line 401
    .line 402
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 403
    .line 404
    const-string v3, "expires"

    .line 405
    .line 406
    .line 407
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    const/16 v3, 0x23

    .line 410
    .line 411
    aput-object v2, v1, v3

    .line 412
    .line 413
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 414
    .line 415
    const-string v3, "from"

    .line 416
    .line 417
    .line 418
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    const/16 v3, 0x24

    .line 421
    .line 422
    aput-object v2, v1, v3

    .line 423
    .line 424
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 425
    .line 426
    const-string v3, "host"

    .line 427
    .line 428
    .line 429
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    const/16 v3, 0x25

    .line 432
    .line 433
    aput-object v2, v1, v3

    .line 434
    .line 435
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 436
    .line 437
    const-string v3, "if-match"

    .line 438
    .line 439
    .line 440
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    const/16 v3, 0x26

    .line 443
    .line 444
    aput-object v2, v1, v3

    .line 445
    .line 446
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 447
    .line 448
    const-string v3, "if-modified-since"

    .line 449
    .line 450
    .line 451
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    const/16 v3, 0x27

    .line 454
    .line 455
    aput-object v2, v1, v3

    .line 456
    .line 457
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 458
    .line 459
    const-string v3, "if-none-match"

    .line 460
    .line 461
    .line 462
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    const/16 v3, 0x28

    .line 465
    .line 466
    aput-object v2, v1, v3

    .line 467
    .line 468
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 469
    .line 470
    const-string v3, "if-range"

    .line 471
    .line 472
    .line 473
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    const/16 v3, 0x29

    .line 476
    .line 477
    aput-object v2, v1, v3

    .line 478
    .line 479
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 480
    .line 481
    const-string v3, "if-unmodified-since"

    .line 482
    .line 483
    .line 484
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    const/16 v3, 0x2a

    .line 487
    .line 488
    aput-object v2, v1, v3

    .line 489
    .line 490
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 491
    .line 492
    const-string v3, "last-modified"

    .line 493
    .line 494
    .line 495
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    const/16 v3, 0x2b

    .line 498
    .line 499
    aput-object v2, v1, v3

    .line 500
    .line 501
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 502
    .line 503
    const-string v3, "link"

    .line 504
    .line 505
    .line 506
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    const/16 v3, 0x2c

    .line 509
    .line 510
    aput-object v2, v1, v3

    .line 511
    .line 512
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 513
    .line 514
    const-string v3, "location"

    .line 515
    .line 516
    .line 517
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .line 519
    const/16 v3, 0x2d

    .line 520
    .line 521
    aput-object v2, v1, v3

    .line 522
    .line 523
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 524
    .line 525
    const-string v3, "max-forwards"

    .line 526
    .line 527
    .line 528
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .line 530
    const/16 v3, 0x2e

    .line 531
    .line 532
    aput-object v2, v1, v3

    .line 533
    .line 534
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 535
    .line 536
    const-string v3, "proxy-authenticate"

    .line 537
    .line 538
    .line 539
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .line 541
    const/16 v3, 0x2f

    .line 542
    .line 543
    aput-object v2, v1, v3

    .line 544
    .line 545
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 546
    .line 547
    const-string v3, "proxy-authorization"

    .line 548
    .line 549
    .line 550
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    const/16 v3, 0x30

    .line 553
    .line 554
    aput-object v2, v1, v3

    .line 555
    .line 556
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 557
    .line 558
    const-string v3, "range"

    .line 559
    .line 560
    .line 561
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    const/16 v3, 0x31

    .line 564
    .line 565
    aput-object v2, v1, v3

    .line 566
    .line 567
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 568
    .line 569
    const-string v3, "referer"

    .line 570
    .line 571
    .line 572
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    const/16 v3, 0x32

    .line 575
    .line 576
    aput-object v2, v1, v3

    .line 577
    .line 578
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 579
    .line 580
    const-string v3, "refresh"

    .line 581
    .line 582
    .line 583
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    const/16 v3, 0x33

    .line 586
    .line 587
    aput-object v2, v1, v3

    .line 588
    .line 589
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 590
    .line 591
    const-string v3, "retry-after"

    .line 592
    .line 593
    .line 594
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    const/16 v3, 0x34

    .line 597
    .line 598
    aput-object v2, v1, v3

    .line 599
    .line 600
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 601
    .line 602
    const-string v3, "server"

    .line 603
    .line 604
    .line 605
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    const/16 v3, 0x35

    .line 608
    .line 609
    aput-object v2, v1, v3

    .line 610
    .line 611
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 612
    .line 613
    const-string v3, "set-cookie"

    .line 614
    .line 615
    .line 616
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    const/16 v3, 0x36

    .line 619
    .line 620
    aput-object v2, v1, v3

    .line 621
    .line 622
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 623
    .line 624
    const-string v3, "strict-transport-security"

    .line 625
    .line 626
    .line 627
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    const/16 v3, 0x37

    .line 630
    .line 631
    aput-object v2, v1, v3

    .line 632
    .line 633
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 634
    .line 635
    const-string v3, "transfer-encoding"

    .line 636
    .line 637
    .line 638
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .line 640
    const/16 v3, 0x38

    .line 641
    .line 642
    aput-object v2, v1, v3

    .line 643
    .line 644
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 645
    .line 646
    const-string v3, "user-agent"

    .line 647
    .line 648
    .line 649
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    const/16 v3, 0x39

    .line 652
    .line 653
    aput-object v2, v1, v3

    .line 654
    .line 655
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 656
    .line 657
    const-string v3, "vary"

    .line 658
    .line 659
    .line 660
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    const/16 v3, 0x3a

    .line 663
    .line 664
    aput-object v2, v1, v3

    .line 665
    .line 666
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 667
    .line 668
    const-string v3, "via"

    .line 669
    .line 670
    .line 671
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    const/16 v3, 0x3b

    .line 674
    .line 675
    aput-object v2, v1, v3

    .line 676
    .line 677
    new-instance v2, Lokhttp3/internal/http2/Header;

    .line 678
    .line 679
    const-string v3, "www-authenticate"

    .line 680
    .line 681
    .line 682
    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    const/16 v3, 0x3c

    .line 685
    .line 686
    aput-object v2, v1, v3

    .line 687
    .line 688
    sput-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 689
    .line 690
    .line 691
    invoke-direct {v0}, Lokhttp3/internal/http2/Hpack;->nameToFirstIndex()Ljava/util/Map;

    .line 692
    move-result-object v0

    .line 693
    .line 694
    sput-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    .line 695
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final nameToFirstIndex()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    sget-object v1, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 5
    array-length v2, v1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 15
    .line 16
    sget-object v4, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 17
    .line 18
    aget-object v5, v4, v2

    .line 19
    .line 20
    iget-object v5, v5, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v5

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    aget-object v4, v4, v2

    .line 29
    .line 30
    iget-object v4, v4, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    move v2, v3

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const-string v1, "unmodifiableMap(result)"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public final checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v1, v0, :cond_2

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 18
    move-result v1

    .line 19
    .line 20
    const/16 v3, 0x41

    .line 21
    .line 22
    if-gt v3, v1, :cond_1

    .line 23
    .line 24
    const/16 v3, 0x5a

    .line 25
    .line 26
    if-le v1, v3, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 30
    .line 31
    const-string v1, "PROTOCOL_ERROR response malformed: mixed case name: "

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_1
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object p1
.end method

.method public final getNAME_TO_FIRST_INDEX()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    return-object v0
.end method

.method public final getSTATIC_HEADER_TABLE()[Lokhttp3/internal/http2/Header;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    return-object v0
.end method
