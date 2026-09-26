.class public final Lorg/threeten/bp/chrono/k;
.super Lorg/threeten/bp/chrono/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/a<",
        "Lorg/threeten/bp/chrono/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_CYCLES:[Ljava/lang/Long;

.field private static final ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CYCLEYEAR_START_DATE:[I

.field private static final DEFAULT_CONFIG_FILENAME:Ljava/lang/String; = "hijrah_deviation.cfg"

.field private static final DEFAULT_CONFIG_PATH:Ljava/lang/String;

.field private static final DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final FILE_SEP:C

.field private static final HIJRAH_JAN_1_1_GREGORIAN_DAY:I = -0x78274

.field private static final LEAP_MONTH_LENGTH:[I

.field private static final LEAP_NUM_DAYS:[I

.field private static final LEAST_MAX_VALUES:[I

.field private static final MAX_ADJUSTED_CYCLE:I = 0x14e

.field private static final MAX_VALUES:[I

.field public static final MAX_VALUE_OF_ERA:I = 0x270f

.field private static final MIN_VALUES:[I

.field public static final MIN_VALUE_OF_ERA:I = 0x1

.field private static final MONTH_LENGTH:[I

.field private static final NUM_DAYS:[I

.field private static final PATH_SEP:Ljava/lang/String;

.field private static final POSITION_DAY_OF_MONTH:I = 0x5

.field private static final POSITION_DAY_OF_YEAR:I = 0x6

.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient dayOfMonth:I

.field private final transient dayOfWeek:Lorg/threeten/bp/d;

.field private final transient dayOfYear:I

.field private final transient era:Lorg/threeten/bp/chrono/l;

.field private final gregorianEpochDay:J

.field private final transient isLeapYear:Z

.field private final transient monthOfYear:I

.field private final transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    new-array v1, v0, [I

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    sput-object v1, Lorg/threeten/bp/chrono/k;->NUM_DAYS:[I

    .line 10
    .line 11
    new-array v2, v0, [I

    .line 12
    .line 13
    .line 14
    fill-array-data v2, :array_1

    .line 15
    .line 16
    sput-object v2, Lorg/threeten/bp/chrono/k;->LEAP_NUM_DAYS:[I

    .line 17
    .line 18
    new-array v2, v0, [I

    .line 19
    .line 20
    .line 21
    fill-array-data v2, :array_2

    .line 22
    .line 23
    sput-object v2, Lorg/threeten/bp/chrono/k;->MONTH_LENGTH:[I

    .line 24
    .line 25
    new-array v0, v0, [I

    .line 26
    .line 27
    .line 28
    fill-array-data v0, :array_3

    .line 29
    .line 30
    sput-object v0, Lorg/threeten/bp/chrono/k;->LEAP_MONTH_LENGTH:[I

    .line 31
    const/4 v0, 0x7

    .line 32
    .line 33
    new-array v2, v0, [I

    .line 34
    .line 35
    .line 36
    fill-array-data v2, :array_4

    .line 37
    .line 38
    sput-object v2, Lorg/threeten/bp/chrono/k;->MIN_VALUES:[I

    .line 39
    .line 40
    new-array v2, v0, [I

    .line 41
    .line 42
    .line 43
    fill-array-data v2, :array_5

    .line 44
    .line 45
    sput-object v2, Lorg/threeten/bp/chrono/k;->LEAST_MAX_VALUES:[I

    .line 46
    .line 47
    new-array v0, v0, [I

    .line 48
    .line 49
    .line 50
    fill-array-data v0, :array_6

    .line 51
    .line 52
    sput-object v0, Lorg/threeten/bp/chrono/k;->MAX_VALUES:[I

    .line 53
    .line 54
    const/16 v0, 0x1e

    .line 55
    .line 56
    new-array v0, v0, [I

    .line 57
    .line 58
    .line 59
    fill-array-data v0, :array_7

    .line 60
    .line 61
    sput-object v0, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 62
    .line 63
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 64
    .line 65
    sput-char v0, Lorg/threeten/bp/chrono/k;->FILE_SEP:C

    .line 66
    .line 67
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 68
    .line 69
    sput-object v2, Lorg/threeten/bp/chrono/k;->PATH_SEP:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string v3, "org"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, "threeten"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "bp"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "chrono"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    sput-object v0, Lorg/threeten/bp/chrono/k;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v0, Ljava/util/HashMap;

    .line 112
    .line 113
    .line 114
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .line 116
    sput-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 117
    .line 118
    new-instance v0, Ljava/util/HashMap;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .line 123
    sput-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 124
    .line 125
    new-instance v0, Ljava/util/HashMap;

    .line 126
    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .line 130
    sput-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 131
    array-length v0, v1

    .line 132
    .line 133
    new-array v0, v0, [Ljava/lang/Integer;

    .line 134
    .line 135
    sput-object v0, Lorg/threeten/bp/chrono/k;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    .line 136
    const/4 v0, 0x0

    .line 137
    move v1, v0

    .line 138
    .line 139
    :goto_0
    sget-object v2, Lorg/threeten/bp/chrono/k;->NUM_DAYS:[I

    .line 140
    array-length v3, v2

    .line 141
    .line 142
    if-ge v1, v3, :cond_0

    .line 143
    .line 144
    sget-object v3, Lorg/threeten/bp/chrono/k;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    .line 145
    .line 146
    aget v2, v2, v1

    .line 147
    .line 148
    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    aput-object v2, v3, v1

    .line 153
    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    goto :goto_0

    .line 156
    .line 157
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/k;->LEAP_NUM_DAYS:[I

    .line 158
    array-length v1, v1

    .line 159
    .line 160
    new-array v1, v1, [Ljava/lang/Integer;

    .line 161
    .line 162
    sput-object v1, Lorg/threeten/bp/chrono/k;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    .line 163
    move v1, v0

    .line 164
    .line 165
    :goto_1
    sget-object v2, Lorg/threeten/bp/chrono/k;->LEAP_NUM_DAYS:[I

    .line 166
    array-length v3, v2

    .line 167
    .line 168
    if-ge v1, v3, :cond_1

    .line 169
    .line 170
    sget-object v3, Lorg/threeten/bp/chrono/k;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    .line 171
    .line 172
    aget v2, v2, v1

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v2

    .line 177
    .line 178
    aput-object v2, v3, v1

    .line 179
    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 181
    goto :goto_1

    .line 182
    .line 183
    :cond_1
    sget-object v1, Lorg/threeten/bp/chrono/k;->MONTH_LENGTH:[I

    .line 184
    array-length v1, v1

    .line 185
    .line 186
    new-array v1, v1, [Ljava/lang/Integer;

    .line 187
    .line 188
    sput-object v1, Lorg/threeten/bp/chrono/k;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 189
    move v1, v0

    .line 190
    .line 191
    :goto_2
    sget-object v2, Lorg/threeten/bp/chrono/k;->MONTH_LENGTH:[I

    .line 192
    array-length v3, v2

    .line 193
    .line 194
    if-ge v1, v3, :cond_2

    .line 195
    .line 196
    sget-object v3, Lorg/threeten/bp/chrono/k;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 197
    .line 198
    aget v2, v2, v1

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    aput-object v2, v3, v1

    .line 205
    .line 206
    add-int/lit8 v1, v1, 0x1

    .line 207
    goto :goto_2

    .line 208
    .line 209
    :cond_2
    sget-object v1, Lorg/threeten/bp/chrono/k;->LEAP_MONTH_LENGTH:[I

    .line 210
    array-length v1, v1

    .line 211
    .line 212
    new-array v1, v1, [Ljava/lang/Integer;

    .line 213
    .line 214
    sput-object v1, Lorg/threeten/bp/chrono/k;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 215
    move v1, v0

    .line 216
    .line 217
    :goto_3
    sget-object v2, Lorg/threeten/bp/chrono/k;->LEAP_MONTH_LENGTH:[I

    .line 218
    array-length v3, v2

    .line 219
    .line 220
    if-ge v1, v3, :cond_3

    .line 221
    .line 222
    sget-object v3, Lorg/threeten/bp/chrono/k;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 223
    .line 224
    aget v2, v2, v1

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v2

    .line 229
    .line 230
    aput-object v2, v3, v1

    .line 231
    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    goto :goto_3

    .line 234
    .line 235
    :cond_3
    sget-object v1, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 236
    array-length v1, v1

    .line 237
    .line 238
    new-array v1, v1, [Ljava/lang/Integer;

    .line 239
    .line 240
    sput-object v1, Lorg/threeten/bp/chrono/k;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    .line 241
    move v1, v0

    .line 242
    .line 243
    :goto_4
    sget-object v2, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 244
    array-length v3, v2

    .line 245
    .line 246
    if-ge v1, v3, :cond_4

    .line 247
    .line 248
    sget-object v3, Lorg/threeten/bp/chrono/k;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    .line 249
    .line 250
    aget v2, v2, v1

    .line 251
    .line 252
    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    aput-object v2, v3, v1

    .line 257
    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    goto :goto_4

    .line 260
    .line 261
    :cond_4
    const/16 v1, 0x14e

    .line 262
    .line 263
    new-array v1, v1, [Ljava/lang/Long;

    .line 264
    .line 265
    sput-object v1, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 266
    move v1, v0

    .line 267
    .line 268
    :goto_5
    sget-object v2, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 269
    array-length v3, v2

    .line 270
    .line 271
    if-ge v1, v3, :cond_5

    .line 272
    .line 273
    mul-int/lit16 v3, v1, 0x2987

    .line 274
    int-to-long v3, v3

    .line 275
    .line 276
    .line 277
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 278
    move-result-object v3

    .line 279
    .line 280
    aput-object v3, v2, v1

    .line 281
    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 283
    goto :goto_5

    .line 284
    .line 285
    :cond_5
    sget-object v1, Lorg/threeten/bp/chrono/k;->MIN_VALUES:[I

    .line 286
    array-length v1, v1

    .line 287
    .line 288
    new-array v1, v1, [Ljava/lang/Integer;

    .line 289
    .line 290
    sput-object v1, Lorg/threeten/bp/chrono/k;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    .line 291
    move v1, v0

    .line 292
    .line 293
    :goto_6
    sget-object v2, Lorg/threeten/bp/chrono/k;->MIN_VALUES:[I

    .line 294
    array-length v3, v2

    .line 295
    .line 296
    if-ge v1, v3, :cond_6

    .line 297
    .line 298
    sget-object v3, Lorg/threeten/bp/chrono/k;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    .line 299
    .line 300
    aget v2, v2, v1

    .line 301
    .line 302
    .line 303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    move-result-object v2

    .line 305
    .line 306
    aput-object v2, v3, v1

    .line 307
    .line 308
    add-int/lit8 v1, v1, 0x1

    .line 309
    goto :goto_6

    .line 310
    .line 311
    :cond_6
    sget-object v1, Lorg/threeten/bp/chrono/k;->LEAST_MAX_VALUES:[I

    .line 312
    array-length v1, v1

    .line 313
    .line 314
    new-array v1, v1, [Ljava/lang/Integer;

    .line 315
    .line 316
    sput-object v1, Lorg/threeten/bp/chrono/k;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    .line 317
    move v1, v0

    .line 318
    .line 319
    :goto_7
    sget-object v2, Lorg/threeten/bp/chrono/k;->LEAST_MAX_VALUES:[I

    .line 320
    array-length v3, v2

    .line 321
    .line 322
    if-ge v1, v3, :cond_7

    .line 323
    .line 324
    sget-object v3, Lorg/threeten/bp/chrono/k;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    .line 325
    .line 326
    aget v2, v2, v1

    .line 327
    .line 328
    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    move-result-object v2

    .line 331
    .line 332
    aput-object v2, v3, v1

    .line 333
    .line 334
    add-int/lit8 v1, v1, 0x1

    .line 335
    goto :goto_7

    .line 336
    .line 337
    :cond_7
    sget-object v1, Lorg/threeten/bp/chrono/k;->MAX_VALUES:[I

    .line 338
    array-length v1, v1

    .line 339
    .line 340
    new-array v1, v1, [Ljava/lang/Integer;

    .line 341
    .line 342
    sput-object v1, Lorg/threeten/bp/chrono/k;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 343
    .line 344
    :goto_8
    sget-object v1, Lorg/threeten/bp/chrono/k;->MAX_VALUES:[I

    .line 345
    array-length v2, v1

    .line 346
    .line 347
    if-ge v0, v2, :cond_8

    .line 348
    .line 349
    sget-object v2, Lorg/threeten/bp/chrono/k;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 350
    .line 351
    aget v1, v1, v0

    .line 352
    .line 353
    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    move-result-object v1

    .line 356
    .line 357
    aput-object v1, v2, v0

    .line 358
    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 360
    goto :goto_8

    .line 361
    .line 362
    .line 363
    :cond_8
    :try_start_0
    invoke-static {}, Lorg/threeten/bp/chrono/k;->l0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :catch_0
    return-void

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
    :array_0
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

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
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

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
    :array_2
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    .line 449
    .line 450
    .line 451
    .line 452
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
    :array_3
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

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
    :array_4
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
    .end array-data

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
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    :array_5
    .array-data 4
        0x1
        0x270f
        0xb
        0x33
        0x5
        0x1d
        0x162
    .end array-data

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
    :array_6
    .array-data 4
        0x1
        0x270f
        0xb
        0x34
        0x6
        0x1e
        0x163
    .end array-data

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
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    :array_7
    .array-data 4
        0x0
        0x162
        0x2c5
        0x427
        0x589
        0x6ec
        0x84e
        0x9b1
        0xb13
        0xc75
        0xdd8
        0xf3a
        0x109c
        0x11ff
        0x1361
        0x14c3
        0x1626
        0x1788
        0x18eb
        0x1a4d
        0x1baf
        0x1d12
        0x1e74
        0x1fd6
        0x2139
        0x229b
        0x23fe
        0x2560
        0x26c2
        0x2825
    .end array-data
.end method

.method private constructor <init>(J)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lorg/threeten/bp/chrono/k;->R(J)[I

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    aget v2, v0, v1

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lorg/threeten/bp/chrono/k;->F(I)V

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    aget v3, v0, v2

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Lorg/threeten/bp/chrono/k;->E(I)V

    .line 20
    const/4 v3, 0x3

    .line 21
    .line 22
    aget v4, v0, v3

    .line 23
    .line 24
    .line 25
    invoke-static {v4}, Lorg/threeten/bp/chrono/k;->C(I)V

    .line 26
    const/4 v4, 0x4

    .line 27
    .line 28
    aget v5, v0, v4

    .line 29
    .line 30
    .line 31
    invoke-static {v5}, Lorg/threeten/bp/chrono/k;->D(I)V

    .line 32
    const/4 v5, 0x0

    .line 33
    .line 34
    aget v5, v0, v5

    .line 35
    .line 36
    .line 37
    invoke-static {v5}, Lorg/threeten/bp/chrono/l;->a(I)Lorg/threeten/bp/chrono/l;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    iput-object v5, p0, Lorg/threeten/bp/chrono/k;->era:Lorg/threeten/bp/chrono/l;

    .line 41
    .line 42
    aget v1, v0, v1

    .line 43
    .line 44
    iput v1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 45
    .line 46
    aget v2, v0, v2

    .line 47
    .line 48
    iput v2, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 49
    .line 50
    aget v2, v0, v3

    .line 51
    .line 52
    iput v2, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 53
    .line 54
    aget v2, v0, v4

    .line 55
    .line 56
    iput v2, p0, Lorg/threeten/bp/chrono/k;->dayOfYear:I

    .line 57
    const/4 v2, 0x5

    .line 58
    .line 59
    aget v0, v0, v2

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lorg/threeten/bp/d;->n(I)Lorg/threeten/bp/d;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iput-object v0, p0, Lorg/threeten/bp/chrono/k;->dayOfWeek:Lorg/threeten/bp/d;

    .line 66
    .line 67
    iput-wide p1, p0, Lorg/threeten/bp/chrono/k;->gregorianEpochDay:J

    .line 68
    int-to-long p1, v1

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 72
    move-result p1

    .line 73
    .line 74
    iput-boolean p1, p0, Lorg/threeten/bp/chrono/k;->isLeapYear:Z

    .line 75
    return-void
.end method

.method private static B(IIIII)V
    .locals 15

    .line 1
    move v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-lt v0, v5, :cond_28

    .line 13
    .line 14
    if-lt v2, v5, :cond_27

    .line 15
    .line 16
    if-ltz v1, :cond_26

    .line 17
    .line 18
    const/16 v6, 0xb

    .line 19
    .line 20
    if-gt v1, v6, :cond_26

    .line 21
    .line 22
    if-ltz v3, :cond_25

    .line 23
    .line 24
    if-gt v3, v6, :cond_25

    .line 25
    .line 26
    const/16 v7, 0x270f

    .line 27
    .line 28
    if-gt v2, v7, :cond_24

    .line 29
    .line 30
    if-lt v2, v0, :cond_23

    .line 31
    .line 32
    if-ne v2, v0, :cond_1

    .line 33
    .line 34
    if-lt v3, v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v1, "startYear == endYear && endMonth < startMonth"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    int-to-long v7, v0

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v8}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 48
    move-result v7

    .line 49
    .line 50
    sget-object v8, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v9

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v8

    .line 59
    .line 60
    check-cast v8, [Ljava/lang/Integer;

    .line 61
    .line 62
    if-nez v8, :cond_3

    .line 63
    .line 64
    if-eqz v7, :cond_2

    .line 65
    .line 66
    sget-object v8, Lorg/threeten/bp/chrono/k;->LEAP_NUM_DAYS:[I

    .line 67
    array-length v8, v8

    .line 68
    .line 69
    new-array v8, v8, [Ljava/lang/Integer;

    .line 70
    const/4 v10, 0x0

    .line 71
    .line 72
    :goto_1
    sget-object v11, Lorg/threeten/bp/chrono/k;->LEAP_NUM_DAYS:[I

    .line 73
    array-length v12, v11

    .line 74
    .line 75
    if-ge v10, v12, :cond_3

    .line 76
    .line 77
    aget v11, v11, v10

    .line 78
    .line 79
    .line 80
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v11

    .line 82
    .line 83
    aput-object v11, v8, v10

    .line 84
    .line 85
    add-int/lit8 v10, v10, 0x1

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_2
    sget-object v8, Lorg/threeten/bp/chrono/k;->NUM_DAYS:[I

    .line 89
    array-length v8, v8

    .line 90
    .line 91
    new-array v8, v8, [Ljava/lang/Integer;

    .line 92
    const/4 v10, 0x0

    .line 93
    .line 94
    :goto_2
    sget-object v11, Lorg/threeten/bp/chrono/k;->NUM_DAYS:[I

    .line 95
    array-length v12, v11

    .line 96
    .line 97
    if-ge v10, v12, :cond_3

    .line 98
    .line 99
    aget v11, v11, v10

    .line 100
    .line 101
    .line 102
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v11

    .line 104
    .line 105
    aput-object v11, v8, v10

    .line 106
    .line 107
    add-int/lit8 v10, v10, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    array-length v10, v8

    .line 110
    .line 111
    new-array v10, v10, [Ljava/lang/Integer;

    .line 112
    const/4 v11, 0x0

    .line 113
    .line 114
    :goto_3
    const/16 v12, 0xc

    .line 115
    .line 116
    if-ge v11, v12, :cond_5

    .line 117
    .line 118
    if-le v11, v1, :cond_4

    .line 119
    .line 120
    aget-object v12, v8, v11

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 124
    move-result v12

    .line 125
    sub-int/2addr v12, v4

    .line 126
    .line 127
    .line 128
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v12

    .line 130
    .line 131
    aput-object v12, v10, v11

    .line 132
    goto :goto_4

    .line 133
    .line 134
    :cond_4
    aget-object v12, v8, v11

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 138
    move-result v12

    .line 139
    .line 140
    .line 141
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v12

    .line 143
    .line 144
    aput-object v12, v10, v11

    .line 145
    .line 146
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 147
    goto :goto_3

    .line 148
    .line 149
    :cond_5
    sget-object v8, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 150
    .line 151
    .line 152
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v11

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    sget-object v8, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v10

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object v8

    .line 167
    .line 168
    check-cast v8, [Ljava/lang/Integer;

    .line 169
    .line 170
    if-nez v8, :cond_7

    .line 171
    .line 172
    if-eqz v7, :cond_6

    .line 173
    .line 174
    sget-object v7, Lorg/threeten/bp/chrono/k;->LEAP_MONTH_LENGTH:[I

    .line 175
    array-length v7, v7

    .line 176
    .line 177
    new-array v8, v7, [Ljava/lang/Integer;

    .line 178
    const/4 v7, 0x0

    .line 179
    .line 180
    :goto_5
    sget-object v10, Lorg/threeten/bp/chrono/k;->LEAP_MONTH_LENGTH:[I

    .line 181
    array-length v11, v10

    .line 182
    .line 183
    if-ge v7, v11, :cond_7

    .line 184
    .line 185
    aget v10, v10, v7

    .line 186
    .line 187
    .line 188
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v10

    .line 190
    .line 191
    aput-object v10, v8, v7

    .line 192
    .line 193
    add-int/lit8 v7, v7, 0x1

    .line 194
    goto :goto_5

    .line 195
    .line 196
    :cond_6
    sget-object v7, Lorg/threeten/bp/chrono/k;->MONTH_LENGTH:[I

    .line 197
    array-length v7, v7

    .line 198
    .line 199
    new-array v8, v7, [Ljava/lang/Integer;

    .line 200
    const/4 v7, 0x0

    .line 201
    .line 202
    :goto_6
    sget-object v10, Lorg/threeten/bp/chrono/k;->MONTH_LENGTH:[I

    .line 203
    array-length v11, v10

    .line 204
    .line 205
    if-ge v7, v11, :cond_7

    .line 206
    .line 207
    aget v10, v10, v7

    .line 208
    .line 209
    .line 210
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v10

    .line 212
    .line 213
    aput-object v10, v8, v7

    .line 214
    .line 215
    add-int/lit8 v7, v7, 0x1

    .line 216
    goto :goto_6

    .line 217
    :cond_7
    array-length v7, v8

    .line 218
    .line 219
    new-array v7, v7, [Ljava/lang/Integer;

    .line 220
    const/4 v10, 0x0

    .line 221
    .line 222
    :goto_7
    if-ge v10, v12, :cond_9

    .line 223
    .line 224
    if-ne v10, v1, :cond_8

    .line 225
    .line 226
    aget-object v11, v8, v10

    .line 227
    .line 228
    .line 229
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 230
    move-result v11

    .line 231
    sub-int/2addr v11, v4

    .line 232
    .line 233
    .line 234
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    move-result-object v11

    .line 236
    .line 237
    aput-object v11, v7, v10

    .line 238
    goto :goto_8

    .line 239
    .line 240
    :cond_8
    aget-object v11, v8, v10

    .line 241
    .line 242
    .line 243
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 244
    move-result v11

    .line 245
    .line 246
    .line 247
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    move-result-object v11

    .line 249
    .line 250
    aput-object v11, v7, v10

    .line 251
    .line 252
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 253
    goto :goto_7

    .line 254
    .line 255
    :cond_9
    sget-object v8, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 256
    .line 257
    .line 258
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object v10

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    if-eq v0, v2, :cond_12

    .line 265
    .line 266
    add-int/lit8 v7, v0, -0x1

    .line 267
    .line 268
    div-int/lit8 v8, v7, 0x1e

    .line 269
    .line 270
    rem-int/lit8 v7, v7, 0x1e

    .line 271
    .line 272
    sget-object v10, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 273
    .line 274
    .line 275
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    move-result-object v11

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-result-object v10

    .line 281
    .line 282
    check-cast v10, [Ljava/lang/Integer;

    .line 283
    .line 284
    if-nez v10, :cond_b

    .line 285
    .line 286
    sget-object v10, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 287
    array-length v10, v10

    .line 288
    .line 289
    new-array v11, v10, [Ljava/lang/Integer;

    .line 290
    const/4 v13, 0x0

    .line 291
    .line 292
    :goto_9
    if-ge v13, v10, :cond_a

    .line 293
    .line 294
    sget-object v14, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 295
    .line 296
    aget v14, v14, v13

    .line 297
    .line 298
    .line 299
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    move-result-object v14

    .line 301
    .line 302
    aput-object v14, v11, v13

    .line 303
    .line 304
    add-int/lit8 v13, v13, 0x1

    .line 305
    goto :goto_9

    .line 306
    :cond_a
    move-object v10, v11

    .line 307
    :cond_b
    add-int/2addr v7, v5

    .line 308
    .line 309
    :goto_a
    sget-object v11, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 310
    array-length v11, v11

    .line 311
    .line 312
    if-ge v7, v11, :cond_c

    .line 313
    .line 314
    aget-object v11, v10, v7

    .line 315
    .line 316
    .line 317
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 318
    move-result v11

    .line 319
    sub-int/2addr v11, v4

    .line 320
    .line 321
    .line 322
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    move-result-object v11

    .line 324
    .line 325
    aput-object v11, v10, v7

    .line 326
    .line 327
    add-int/lit8 v7, v7, 0x1

    .line 328
    goto :goto_a

    .line 329
    .line 330
    :cond_c
    sget-object v7, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 331
    .line 332
    .line 333
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    move-result-object v11

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    add-int/lit8 v7, v2, -0x1

    .line 340
    .line 341
    div-int/lit8 v10, v7, 0x1e

    .line 342
    .line 343
    if-eq v8, v10, :cond_e

    .line 344
    add-int/2addr v8, v5

    .line 345
    .line 346
    :goto_b
    sget-object v11, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 347
    array-length v13, v11

    .line 348
    .line 349
    if-ge v8, v13, :cond_d

    .line 350
    .line 351
    aget-object v13, v11, v8

    .line 352
    .line 353
    .line 354
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 355
    move-result-wide v13

    .line 356
    int-to-long v5, v4

    .line 357
    sub-long/2addr v13, v5

    .line 358
    .line 359
    .line 360
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 361
    move-result-object v5

    .line 362
    .line 363
    aput-object v5, v11, v8

    .line 364
    .line 365
    add-int/lit8 v8, v8, 0x1

    .line 366
    const/4 v5, 0x1

    .line 367
    .line 368
    const/16 v6, 0xb

    .line 369
    goto :goto_b

    .line 370
    .line 371
    :cond_d
    add-int/lit8 v5, v10, 0x1

    .line 372
    .line 373
    :goto_c
    sget-object v6, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 374
    array-length v8, v6

    .line 375
    .line 376
    if-ge v5, v8, :cond_e

    .line 377
    .line 378
    aget-object v8, v6, v5

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 382
    move-result-wide v13

    .line 383
    move v11, v10

    .line 384
    int-to-long v9, v4

    .line 385
    add-long/2addr v13, v9

    .line 386
    .line 387
    .line 388
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 389
    move-result-object v9

    .line 390
    .line 391
    aput-object v9, v6, v5

    .line 392
    .line 393
    add-int/lit8 v5, v5, 0x1

    .line 394
    move v10, v11

    .line 395
    goto :goto_c

    .line 396
    :cond_e
    move v11, v10

    .line 397
    .line 398
    rem-int/lit8 v7, v7, 0x1e

    .line 399
    .line 400
    sget-object v5, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 401
    .line 402
    .line 403
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    move-result-object v6

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    move-result-object v5

    .line 409
    .line 410
    check-cast v5, [Ljava/lang/Integer;

    .line 411
    .line 412
    if-nez v5, :cond_10

    .line 413
    .line 414
    sget-object v5, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 415
    array-length v5, v5

    .line 416
    .line 417
    new-array v6, v5, [Ljava/lang/Integer;

    .line 418
    const/4 v9, 0x0

    .line 419
    .line 420
    :goto_d
    if-ge v9, v5, :cond_f

    .line 421
    .line 422
    sget-object v10, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 423
    .line 424
    aget v10, v10, v9

    .line 425
    .line 426
    .line 427
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    move-result-object v10

    .line 429
    .line 430
    aput-object v10, v6, v9

    .line 431
    .line 432
    add-int/lit8 v9, v9, 0x1

    .line 433
    goto :goto_d

    .line 434
    :cond_f
    move-object v5, v6

    .line 435
    :cond_10
    const/4 v6, 0x1

    .line 436
    add-int/2addr v7, v6

    .line 437
    .line 438
    :goto_e
    sget-object v6, Lorg/threeten/bp/chrono/k;->CYCLEYEAR_START_DATE:[I

    .line 439
    array-length v6, v6

    .line 440
    .line 441
    if-ge v7, v6, :cond_11

    .line 442
    .line 443
    aget-object v6, v5, v7

    .line 444
    .line 445
    .line 446
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 447
    move-result v6

    .line 448
    add-int/2addr v6, v4

    .line 449
    .line 450
    .line 451
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    move-result-object v6

    .line 453
    .line 454
    aput-object v6, v5, v7

    .line 455
    .line 456
    add-int/lit8 v7, v7, 0x1

    .line 457
    goto :goto_e

    .line 458
    .line 459
    :cond_11
    sget-object v6, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 460
    .line 461
    .line 462
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    move-result-object v7

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_12
    int-to-long v5, v2

    .line 468
    .line 469
    .line 470
    invoke-static {v5, v6}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 471
    move-result v5

    .line 472
    .line 473
    sget-object v6, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 474
    .line 475
    .line 476
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    move-result-object v7

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    move-result-object v6

    .line 482
    .line 483
    check-cast v6, [Ljava/lang/Integer;

    .line 484
    .line 485
    if-nez v6, :cond_14

    .line 486
    .line 487
    if-eqz v5, :cond_13

    .line 488
    .line 489
    sget-object v6, Lorg/threeten/bp/chrono/k;->LEAP_NUM_DAYS:[I

    .line 490
    array-length v6, v6

    .line 491
    .line 492
    new-array v6, v6, [Ljava/lang/Integer;

    .line 493
    const/4 v7, 0x0

    .line 494
    .line 495
    :goto_f
    sget-object v9, Lorg/threeten/bp/chrono/k;->LEAP_NUM_DAYS:[I

    .line 496
    array-length v10, v9

    .line 497
    .line 498
    if-ge v7, v10, :cond_14

    .line 499
    .line 500
    aget v9, v9, v7

    .line 501
    .line 502
    .line 503
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 504
    move-result-object v9

    .line 505
    .line 506
    aput-object v9, v6, v7

    .line 507
    .line 508
    add-int/lit8 v7, v7, 0x1

    .line 509
    goto :goto_f

    .line 510
    .line 511
    :cond_13
    sget-object v6, Lorg/threeten/bp/chrono/k;->NUM_DAYS:[I

    .line 512
    array-length v6, v6

    .line 513
    .line 514
    new-array v6, v6, [Ljava/lang/Integer;

    .line 515
    const/4 v7, 0x0

    .line 516
    .line 517
    :goto_10
    sget-object v9, Lorg/threeten/bp/chrono/k;->NUM_DAYS:[I

    .line 518
    array-length v10, v9

    .line 519
    .line 520
    if-ge v7, v10, :cond_14

    .line 521
    .line 522
    aget v9, v9, v7

    .line 523
    .line 524
    .line 525
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    move-result-object v9

    .line 527
    .line 528
    aput-object v9, v6, v7

    .line 529
    .line 530
    add-int/lit8 v7, v7, 0x1

    .line 531
    goto :goto_10

    .line 532
    :cond_14
    array-length v7, v6

    .line 533
    .line 534
    new-array v7, v7, [Ljava/lang/Integer;

    .line 535
    const/4 v9, 0x0

    .line 536
    .line 537
    :goto_11
    if-ge v9, v12, :cond_16

    .line 538
    .line 539
    if-le v9, v3, :cond_15

    .line 540
    .line 541
    aget-object v10, v6, v9

    .line 542
    .line 543
    .line 544
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 545
    move-result v10

    .line 546
    add-int/2addr v10, v4

    .line 547
    .line 548
    .line 549
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    move-result-object v10

    .line 551
    .line 552
    aput-object v10, v7, v9

    .line 553
    goto :goto_12

    .line 554
    .line 555
    :cond_15
    aget-object v10, v6, v9

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 559
    move-result v10

    .line 560
    .line 561
    .line 562
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    move-result-object v10

    .line 564
    .line 565
    aput-object v10, v7, v9

    .line 566
    .line 567
    :goto_12
    add-int/lit8 v9, v9, 0x1

    .line 568
    goto :goto_11

    .line 569
    .line 570
    :cond_16
    sget-object v6, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 571
    .line 572
    .line 573
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 574
    move-result-object v9

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    sget-object v6, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 580
    .line 581
    .line 582
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    move-result-object v7

    .line 584
    .line 585
    .line 586
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    move-result-object v6

    .line 588
    .line 589
    check-cast v6, [Ljava/lang/Integer;

    .line 590
    .line 591
    if-nez v6, :cond_18

    .line 592
    .line 593
    if-eqz v5, :cond_17

    .line 594
    .line 595
    sget-object v5, Lorg/threeten/bp/chrono/k;->LEAP_MONTH_LENGTH:[I

    .line 596
    array-length v5, v5

    .line 597
    .line 598
    new-array v6, v5, [Ljava/lang/Integer;

    .line 599
    const/4 v5, 0x0

    .line 600
    .line 601
    :goto_13
    sget-object v7, Lorg/threeten/bp/chrono/k;->LEAP_MONTH_LENGTH:[I

    .line 602
    array-length v9, v7

    .line 603
    .line 604
    if-ge v5, v9, :cond_18

    .line 605
    .line 606
    aget v7, v7, v5

    .line 607
    .line 608
    .line 609
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    move-result-object v7

    .line 611
    .line 612
    aput-object v7, v6, v5

    .line 613
    .line 614
    add-int/lit8 v5, v5, 0x1

    .line 615
    goto :goto_13

    .line 616
    .line 617
    :cond_17
    sget-object v5, Lorg/threeten/bp/chrono/k;->MONTH_LENGTH:[I

    .line 618
    array-length v5, v5

    .line 619
    .line 620
    new-array v6, v5, [Ljava/lang/Integer;

    .line 621
    const/4 v5, 0x0

    .line 622
    .line 623
    :goto_14
    sget-object v7, Lorg/threeten/bp/chrono/k;->MONTH_LENGTH:[I

    .line 624
    array-length v9, v7

    .line 625
    .line 626
    if-ge v5, v9, :cond_18

    .line 627
    .line 628
    aget v7, v7, v5

    .line 629
    .line 630
    .line 631
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    move-result-object v7

    .line 633
    .line 634
    aput-object v7, v6, v5

    .line 635
    .line 636
    add-int/lit8 v5, v5, 0x1

    .line 637
    goto :goto_14

    .line 638
    :cond_18
    array-length v5, v6

    .line 639
    .line 640
    new-array v5, v5, [Ljava/lang/Integer;

    .line 641
    const/4 v9, 0x0

    .line 642
    .line 643
    :goto_15
    if-ge v9, v12, :cond_1a

    .line 644
    .line 645
    if-ne v9, v3, :cond_19

    .line 646
    .line 647
    aget-object v7, v6, v9

    .line 648
    .line 649
    .line 650
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 651
    move-result v7

    .line 652
    add-int/2addr v7, v4

    .line 653
    .line 654
    .line 655
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 656
    move-result-object v7

    .line 657
    .line 658
    aput-object v7, v5, v9

    .line 659
    goto :goto_16

    .line 660
    .line 661
    :cond_19
    aget-object v7, v6, v9

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 665
    move-result v7

    .line 666
    .line 667
    .line 668
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 669
    move-result-object v7

    .line 670
    .line 671
    aput-object v7, v5, v9

    .line 672
    .line 673
    :goto_16
    add-int/lit8 v9, v9, 0x1

    .line 674
    goto :goto_15

    .line 675
    .line 676
    :cond_1a
    sget-object v4, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 677
    .line 678
    .line 679
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 680
    move-result-object v6

    .line 681
    .line 682
    .line 683
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 687
    move-result-object v5

    .line 688
    .line 689
    .line 690
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    move-result-object v5

    .line 692
    .line 693
    check-cast v5, [Ljava/lang/Integer;

    .line 694
    .line 695
    .line 696
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    move-result-object v6

    .line 698
    .line 699
    .line 700
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    move-result-object v4

    .line 702
    .line 703
    check-cast v4, [Ljava/lang/Integer;

    .line 704
    .line 705
    sget-object v6, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 706
    .line 707
    .line 708
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 709
    move-result-object v0

    .line 710
    .line 711
    .line 712
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    move-result-object v0

    .line 714
    .line 715
    check-cast v0, [Ljava/lang/Integer;

    .line 716
    .line 717
    .line 718
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 719
    move-result-object v2

    .line 720
    .line 721
    .line 722
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    move-result-object v2

    .line 724
    .line 725
    check-cast v2, [Ljava/lang/Integer;

    .line 726
    .line 727
    aget-object v1, v5, v1

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 731
    move-result v1

    .line 732
    .line 733
    aget-object v3, v4, v3

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 737
    move-result v3

    .line 738
    .line 739
    const/16 v6, 0xb

    .line 740
    .line 741
    aget-object v0, v0, v6

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 745
    move-result v0

    .line 746
    .line 747
    aget-object v5, v5, v6

    .line 748
    .line 749
    .line 750
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 751
    move-result v5

    .line 752
    add-int/2addr v0, v5

    .line 753
    .line 754
    aget-object v2, v2, v6

    .line 755
    .line 756
    .line 757
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 758
    move-result v2

    .line 759
    .line 760
    aget-object v4, v4, v6

    .line 761
    .line 762
    .line 763
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 764
    move-result v4

    .line 765
    add-int/2addr v2, v4

    .line 766
    .line 767
    sget-object v4, Lorg/threeten/bp/chrono/k;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 768
    const/4 v5, 0x5

    .line 769
    .line 770
    aget-object v6, v4, v5

    .line 771
    .line 772
    .line 773
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 774
    move-result v6

    .line 775
    .line 776
    sget-object v7, Lorg/threeten/bp/chrono/k;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    .line 777
    .line 778
    aget-object v8, v7, v5

    .line 779
    .line 780
    .line 781
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 782
    move-result v8

    .line 783
    .line 784
    if-ge v6, v1, :cond_1b

    .line 785
    move v6, v1

    .line 786
    .line 787
    :cond_1b
    if-ge v6, v3, :cond_1c

    .line 788
    move v6, v3

    .line 789
    .line 790
    .line 791
    :cond_1c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 792
    move-result-object v6

    .line 793
    .line 794
    aput-object v6, v4, v5

    .line 795
    .line 796
    if-le v8, v1, :cond_1d

    .line 797
    goto :goto_17

    .line 798
    :cond_1d
    move v1, v8

    .line 799
    .line 800
    :goto_17
    if-le v1, v3, :cond_1e

    .line 801
    goto :goto_18

    .line 802
    :cond_1e
    move v3, v1

    .line 803
    .line 804
    .line 805
    :goto_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 806
    move-result-object v1

    .line 807
    .line 808
    aput-object v1, v7, v5

    .line 809
    const/4 v1, 0x6

    .line 810
    .line 811
    aget-object v3, v4, v1

    .line 812
    .line 813
    .line 814
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 815
    move-result v3

    .line 816
    .line 817
    aget-object v5, v7, v1

    .line 818
    .line 819
    .line 820
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 821
    move-result v5

    .line 822
    .line 823
    if-ge v3, v0, :cond_1f

    .line 824
    move v3, v0

    .line 825
    .line 826
    :cond_1f
    if-ge v3, v2, :cond_20

    .line 827
    move v3, v2

    .line 828
    .line 829
    .line 830
    :cond_20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 831
    move-result-object v3

    .line 832
    .line 833
    aput-object v3, v4, v1

    .line 834
    .line 835
    if-le v5, v0, :cond_21

    .line 836
    goto :goto_19

    .line 837
    :cond_21
    move v0, v5

    .line 838
    .line 839
    :goto_19
    if-le v0, v2, :cond_22

    .line 840
    goto :goto_1a

    .line 841
    :cond_22
    move v2, v0

    .line 842
    .line 843
    .line 844
    :goto_1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 845
    move-result-object v0

    .line 846
    .line 847
    aput-object v0, v7, v1

    .line 848
    return-void

    .line 849
    .line 850
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 851
    .line 852
    const-string v1, "startYear > endYear"

    .line 853
    .line 854
    .line 855
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 856
    throw v0

    .line 857
    .line 858
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 859
    .line 860
    const-string v1, "endYear > 9999"

    .line 861
    .line 862
    .line 863
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 864
    throw v0

    .line 865
    .line 866
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 867
    .line 868
    const-string v1, "endMonth < 0 || endMonth > 11"

    .line 869
    .line 870
    .line 871
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 872
    throw v0

    .line 873
    .line 874
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 875
    .line 876
    const-string v1, "startMonth < 0 || startMonth > 11"

    .line 877
    .line 878
    .line 879
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 880
    throw v0

    .line 881
    .line 882
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 883
    .line 884
    const-string v1, "endYear < 1"

    .line 885
    .line 886
    .line 887
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 888
    throw v0

    .line 889
    .line 890
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 891
    .line 892
    const-string v1, "startYear < 1"

    .line 893
    .line 894
    .line 895
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 896
    throw v0
.end method

.method private static C(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/threeten/bp/chrono/k;->S()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-gt p0, v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v2, "Invalid day of month of Hijrah date, day "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p0, " greater than "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/threeten/bp/chrono/k;->S()I

    .line 34
    move-result p0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p0, " or less than 1"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method private static D(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/threeten/bp/chrono/k;->T()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-gt p0, v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance p0, Lorg/threeten/bp/b;

    .line 13
    .line 14
    const-string v0, "Invalid day of year of Hijrah date"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
.end method

.method private static E(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance p0, Lorg/threeten/bp/b;

    .line 11
    .line 12
    const-string v0, "Invalid month of Hijrah date"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method

.method private static F(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x270f

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance p0, Lorg/threeten/bp/b;

    .line 11
    .line 12
    const-string v0, "Invalid year of Hijrah Era"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method

.method private static G(I)[Ljava/lang/Integer;
    .locals 1

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    .line 16
    :goto_0
    if-nez p0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lorg/threeten/bp/chrono/k;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    .line 19
    :cond_0
    return-object p0
.end method

.method private static H(I)[Ljava/lang/Integer;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    int-to-long v0, p0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 21
    move-result p0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lorg/threeten/bp/chrono/k;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/k;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    .line 29
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static I(I)[Ljava/lang/Integer;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    int-to-long v0, p0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 21
    move-result p0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lorg/threeten/bp/chrono/k;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/k;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 29
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static K()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "org.threeten.bp.i18n.HijrahDate.deviationConfigFile"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "hijrah_deviation.cfg"

    .line 11
    .line 12
    :cond_0
    const-string v1, "org.threeten.bp.i18n.HijrahDate.deviationConfigDir"

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    move-result v3

    .line 24
    .line 25
    const-string v4, "file.separator"

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    :cond_2
    new-instance v3, Ljava/io/File;

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    sget-char v1, Lorg/threeten/bp/chrono/k;->FILE_SEP:C

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    new-instance v0, Ljava/io/FileInputStream;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    return-object v0

    .line 94
    :cond_3
    return-object v2

    .line 95
    .line 96
    :cond_4
    const-string v1, "java.class.path"

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    new-instance v3, Ljava/util/StringTokenizer;

    .line 103
    .line 104
    sget-object v4, Lorg/threeten/bp/chrono/k;->PATH_SEP:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 111
    move-result v1

    .line 112
    .line 113
    if-eqz v1, :cond_a

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    new-instance v4, Ljava/io/File;

    .line 120
    .line 121
    .line 122
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 126
    move-result v5

    .line 127
    .line 128
    if-eqz v5, :cond_5

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 132
    move-result v5

    .line 133
    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    new-instance v4, Ljava/io/File;

    .line 137
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    sget-char v6, Lorg/threeten/bp/chrono/k;->FILE_SEP:C

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    sget-object v7, Lorg/threeten/bp/chrono/k;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v5

    .line 159
    .line 160
    .line 161
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 165
    move-result v4

    .line 166
    .line 167
    if-eqz v4, :cond_5

    .line 168
    .line 169
    new-instance v2, Ljava/io/FileInputStream;

    .line 170
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 197
    return-object v2

    .line 198
    .line 199
    :cond_6
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 204
    :catch_0
    move-object v1, v2

    .line 205
    .line 206
    :goto_0
    if-eqz v1, :cond_5

    .line 207
    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    sget-object v5, Lorg/threeten/bp/chrono/k;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    sget-char v5, Lorg/threeten/bp/chrono/k;->FILE_SEP:C

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v4

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 232
    move-result-object v6

    .line 233
    .line 234
    if-nez v6, :cond_9

    .line 235
    .line 236
    const/16 v6, 0x5c

    .line 237
    .line 238
    const/16 v7, 0x2f

    .line 239
    .line 240
    if-ne v5, v7, :cond_7

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 244
    move-result-object v4

    .line 245
    goto :goto_1

    .line 246
    .line 247
    :cond_7
    if-ne v5, v6, :cond_8

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 251
    move-result-object v4

    .line 252
    .line 253
    .line 254
    :cond_8
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 255
    move-result-object v6

    .line 256
    .line 257
    :cond_9
    if-eqz v6, :cond_5

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 261
    move-result-object v0

    .line 262
    return-object v0

    .line 263
    :cond_a
    return-object v2
.end method

.method private static L(J)I
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_0
    array-length v2, v0

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    aget-object v2, v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmp-long v2, p0, v2

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    return v1

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    long-to-int v0, p0

    .line 24
    .line 25
    div-int/lit16 v0, v0, 0x2987
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    long-to-int p0, p0

    .line 28
    .line 29
    div-int/lit16 v0, p0, 0x2987

    .line 30
    :goto_1
    return v0
.end method

.method private static M(JI)I
    .locals 2

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 3
    .line 4
    aget-object v0, v0, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    if-nez v0, :cond_0

    .line 9
    .line 10
    mul-int/lit16 p2, p2, 0x2987

    .line 11
    int-to-long v0, p2

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 19
    move-result-wide v0

    .line 20
    sub-long/2addr p0, v0

    .line 21
    long-to-int p0, p0

    .line 22
    return p0
.end method

.method private static N(III)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lorg/threeten/bp/chrono/k;->H(I)[Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ltz p0, :cond_1

    .line 7
    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    :goto_0
    sub-int/2addr p0, p1

    .line 16
    :cond_0
    return p0

    .line 17
    :cond_1
    int-to-long v1, p2

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    add-int/lit16 p0, p0, 0x163

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_2
    add-int/lit16 p0, p0, 0x162

    .line 29
    .line 30
    :goto_1
    if-lez p1, :cond_3

    .line 31
    .line 32
    aget-object p1, v0, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return p0
.end method

.method private static O(III)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/chrono/k;->G(I)[Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    aget-object p0, p0, p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p0

    .line 13
    sub-int/2addr p1, p0

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    aget-object p0, p0, p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, p1

    .line 22
    return p0
.end method

.method private static Q(III)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/chrono/k;->r0(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Lorg/threeten/bp/chrono/k;->U(II)I

    .line 10
    move-result p0

    .line 11
    int-to-long p0, p0

    .line 12
    add-long/2addr v0, p0

    .line 13
    int-to-long p0, p2

    .line 14
    add-long/2addr v0, p0

    .line 15
    return-wide v0
.end method

.method private static R(J)[I
    .locals 8

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, -0x78274

    .line 4
    .line 5
    sub-long v0, p0, v0

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/k;->L(J)I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/chrono/k;->M(JI)I

    .line 20
    move-result v0

    .line 21
    int-to-long v4, v0

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v4, v5}, Lorg/threeten/bp/chrono/k;->X(IJ)I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v0, v1}, Lorg/threeten/bp/chrono/k;->O(III)I

    .line 29
    move-result v0

    .line 30
    .line 31
    mul-int/lit8 v2, v2, 0x1e

    .line 32
    add-int/2addr v2, v1

    .line 33
    add-int/2addr v2, v3

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2}, Lorg/threeten/bp/chrono/k;->W(II)I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/chrono/k;->N(III)I

    .line 41
    move-result v4

    .line 42
    add-int/2addr v4, v3

    .line 43
    .line 44
    sget-object v5, Lorg/threeten/bp/chrono/l;->AH:Lorg/threeten/bp/chrono/l;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Lorg/threeten/bp/chrono/l;->getValue()I

    .line 48
    move-result v5

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    long-to-int v0, v0

    .line 51
    .line 52
    div-int/lit16 v1, v0, 0x2987

    .line 53
    .line 54
    rem-int/lit16 v0, v0, 0x2987

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    const/16 v0, -0x2987

    .line 61
    :cond_1
    int-to-long v4, v0

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v4, v5}, Lorg/threeten/bp/chrono/k;->X(IJ)I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0, v2}, Lorg/threeten/bp/chrono/k;->O(III)I

    .line 69
    move-result v0

    .line 70
    .line 71
    mul-int/lit8 v1, v1, 0x1e

    .line 72
    sub-int/2addr v1, v2

    .line 73
    .line 74
    rsub-int/lit8 v2, v1, 0x1

    .line 75
    int-to-long v4, v2

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v5}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    add-int/lit16 v0, v0, 0x163

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_2
    add-int/lit16 v0, v0, 0x162

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-static {v0, v2}, Lorg/threeten/bp/chrono/k;->W(II)I

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/chrono/k;->N(III)I

    .line 94
    move-result v4

    .line 95
    add-int/2addr v4, v3

    .line 96
    .line 97
    sget-object v5, Lorg/threeten/bp/chrono/l;->BEFORE_AH:Lorg/threeten/bp/chrono/l;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Lorg/threeten/bp/chrono/l;->getValue()I

    .line 101
    move-result v5

    .line 102
    .line 103
    .line 104
    :goto_1
    const-wide/32 v6, -0x78279

    .line 105
    sub-long/2addr p0, v6

    .line 106
    .line 107
    const-wide/16 v6, 0x7

    .line 108
    rem-long/2addr p0, v6

    .line 109
    long-to-int p0, p0

    .line 110
    const/4 p1, 0x0

    .line 111
    .line 112
    if-gtz p0, :cond_3

    .line 113
    const/4 v6, 0x7

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v6, p1

    .line 116
    :goto_2
    add-int/2addr p0, v6

    .line 117
    const/4 v6, 0x6

    .line 118
    .line 119
    new-array v6, v6, [I

    .line 120
    .line 121
    aput v5, v6, p1

    .line 122
    .line 123
    aput v2, v6, v3

    .line 124
    const/4 p1, 0x2

    .line 125
    add-int/2addr v1, v3

    .line 126
    .line 127
    aput v1, v6, p1

    .line 128
    const/4 p1, 0x3

    .line 129
    .line 130
    aput v4, v6, p1

    .line 131
    const/4 p1, 0x4

    .line 132
    add-int/2addr v0, v3

    .line 133
    .line 134
    aput v0, v6, p1

    .line 135
    const/4 p1, 0x5

    .line 136
    .line 137
    aput p0, v6, p1

    .line 138
    return-object v6
.end method

.method static S()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method static T()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/k;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method private static U(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/k;->H(I)[Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    aget-object p0, p1, p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method static V(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/k;->I(I)[Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    aget-object p0, p1, p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static W(II)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/threeten/bp/chrono/k;->H(I)[Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-ltz p0, :cond_2

    .line 10
    :goto_0
    array-length p1, v0

    .line 11
    .line 12
    if-ge v2, p1, :cond_1

    .line 13
    .line 14
    aget-object p1, v0, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result p1

    .line 19
    .line 20
    if-ge p0, p1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 23
    return v2

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    int-to-long v3, p1

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    add-int/lit16 p0, p0, 0x163

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_3
    add-int/lit16 p0, p0, 0x162

    .line 40
    :goto_1
    array-length p1, v0

    .line 41
    .line 42
    if-ge v2, p1, :cond_5

    .line 43
    .line 44
    aget-object p1, v0, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p1

    .line 49
    .line 50
    if-ge p0, p1, :cond_4

    .line 51
    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 53
    return v2

    .line 54
    .line 55
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    return v1
.end method

.method private static X(IJ)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/chrono/k;->G(I)[Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    :cond_0
    const/16 v2, 0x1d

    .line 15
    .line 16
    if-lez v0, :cond_3

    .line 17
    :goto_0
    array-length v0, p0

    .line 18
    .line 19
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    aget-object v0, p0, v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v0

    .line 26
    int-to-long v3, v0

    .line 27
    .line 28
    cmp-long v0, p1, v3

    .line 29
    .line 30
    if-gez v0, :cond_1

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    return v1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v2

    .line 38
    :cond_3
    neg-long p1, p1

    .line 39
    :goto_1
    array-length v0, p0

    .line 40
    .line 41
    if-ge v1, v0, :cond_5

    .line 42
    .line 43
    aget-object v0, p0, v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v0

    .line 48
    int-to-long v3, v0

    .line 49
    .line 50
    cmp-long v0, p1, v3

    .line 51
    .line 52
    if-gtz v0, :cond_4

    .line 53
    .line 54
    add-int/lit8 v1, v1, -0x1

    .line 55
    return v1

    .line 56
    .line 57
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_5
    return v2
.end method

.method static Y(I)I
    .locals 4

    .line 1
    .line 2
    add-int/lit8 v0, p0, -0x1

    .line 3
    .line 4
    div-int/lit8 v1, v0, 0x1e

    .line 5
    .line 6
    :try_start_0
    sget-object v2, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    check-cast v2, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 v2, 0x0

    .line 19
    .line 20
    :goto_0
    if-eqz v2, :cond_1

    .line 21
    .line 22
    rem-int/lit8 v0, v0, 0x1e

    .line 23
    .line 24
    const/16 p0, 0x1d

    .line 25
    .line 26
    if-ne v0, p0, :cond_0

    .line 27
    .line 28
    sget-object p0, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 29
    .line 30
    add-int/lit8 v3, v1, 0x1

    .line 31
    .line 32
    aget-object v3, p0, v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 36
    move-result v3

    .line 37
    .line 38
    aget-object p0, p0, v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    .line 42
    move-result p0

    .line 43
    sub-int/2addr v3, p0

    .line 44
    .line 45
    aget-object p0, v2, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result p0

    .line 50
    sub-int/2addr v3, p0

    .line 51
    return v3

    .line 52
    .line 53
    :cond_0
    add-int/lit8 p0, v0, 0x1

    .line 54
    .line 55
    aget-object p0, v2, p0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result p0

    .line 60
    .line 61
    aget-object v0, v2, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result v0

    .line 66
    sub-int/2addr p0, v0

    .line 67
    return p0

    .line 68
    :cond_1
    int-to-long v0, p0

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/k;->Z(J)Z

    .line 72
    move-result p0

    .line 73
    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    const/16 p0, 0x163

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_2
    const/16 p0, 0x162

    .line 80
    :goto_1
    return p0
.end method

.method static Z(J)Z
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    neg-long p0, p0

    .line 9
    .line 10
    :goto_0
    const-wide/16 v0, 0xb

    .line 11
    mul-long/2addr p0, v0

    .line 12
    .line 13
    const-wide/16 v2, 0xe

    .line 14
    add-long/2addr p0, v2

    .line 15
    .line 16
    const-wide/16 v2, 0x1e

    .line 17
    rem-long/2addr p0, v2

    .line 18
    .line 19
    cmp-long p0, p0, v0

    .line 20
    .line 21
    if-gez p0, :cond_1

    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_1
    return p0
.end method

.method public static d0(III)Lorg/threeten/bp/chrono/k;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/threeten/bp/chrono/l;->AH:Lorg/threeten/bp/chrono/l;

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0, p1, p2}, Lorg/threeten/bp/chrono/k;->e0(Lorg/threeten/bp/chrono/l;III)Lorg/threeten/bp/chrono/k;

    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/l;->BEFORE_AH:Lorg/threeten/bp/chrono/l;

    .line 13
    sub-int/2addr v0, p0

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0, p1, p2}, Lorg/threeten/bp/chrono/k;->e0(Lorg/threeten/bp/chrono/l;III)Lorg/threeten/bp/chrono/k;

    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method

.method static e0(Lorg/threeten/bp/chrono/l;III)Lorg/threeten/bp/chrono/k;
    .locals 1

    .line 1
    .line 2
    const-string v0, "era"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/threeten/bp/chrono/k;->F(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lorg/threeten/bp/chrono/k;->E(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p3}, Lorg/threeten/bp/chrono/k;->C(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/l;->n(I)I

    .line 18
    move-result p0

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p2, p3}, Lorg/threeten/bp/chrono/k;->Q(III)J

    .line 22
    move-result-wide p0

    .line 23
    .line 24
    new-instance p2, Lorg/threeten/bp/chrono/k;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p0, p1}, Lorg/threeten/bp/chrono/k;-><init>(J)V

    .line 28
    return-object p2
.end method

.method static f0(J)Lorg/threeten/bp/chrono/k;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/chrono/k;-><init>(J)V

    .line 6
    return-object v0
.end method

.method private static g0(Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    .line 3
    .line 4
    const-string v1, ";"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 11
    move-result p0

    .line 12
    .line 13
    if-eqz p0, :cond_5

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    const/16 v1, 0x3a

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    .line 26
    const-string v3, "."

    .line 27
    .line 28
    if-eq v1, v2, :cond_4

    .line 29
    .line 30
    add-int/lit8 v4, v1, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 34
    move-result v5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 43
    .line 44
    const/16 v5, 0x2d

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 48
    move-result v5

    .line 49
    .line 50
    if-eq v5, v2, :cond_3

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    move-result-object v7

    .line 56
    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    const/16 v1, 0x2f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    .line 67
    move-result v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eq v5, v2, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    move-result-object v8

    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 83
    move-result v9

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    .line 90
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 92
    .line 93
    .line 94
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    .line 97
    if-eq v1, v2, :cond_1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 107
    move-result v8

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    move-result v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    .line 117
    .line 118
    :try_start_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 120
    .line 121
    if-eq v7, v2, :cond_0

    .line 122
    .line 123
    if-eq v5, v2, :cond_0

    .line 124
    .line 125
    if-eq v1, v2, :cond_0

    .line 126
    .line 127
    if-eq p0, v2, :cond_0

    .line 128
    .line 129
    .line 130
    invoke-static {v7, v5, v1, p0, v4}, Lorg/threeten/bp/chrono/k;->B(IIIII)V

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    const-string v1, "Unknown error at line "

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 157
    throw p0

    .line 158
    .line 159
    :catch_0
    new-instance p0, Ljava/text/ParseException;

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    const-string v1, "End month is not properly set at line "

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 183
    throw p0

    .line 184
    .line 185
    :catch_1
    new-instance p0, Ljava/text/ParseException;

    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    const-string v1, "End year is not properly set at line "

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 209
    throw p0

    .line 210
    .line 211
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    const-string v1, "End year/month has incorrect format at line "

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    .line 234
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 235
    throw p0

    .line 236
    .line 237
    :catch_2
    new-instance p0, Ljava/text/ParseException;

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    const-string v1, "Start month is not properly set at line "

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 261
    throw p0

    .line 262
    .line 263
    :catch_3
    new-instance p0, Ljava/text/ParseException;

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    const-string v1, "Start year is not properly set at line "

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v0

    .line 284
    .line 285
    .line 286
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 287
    throw p0

    .line 288
    .line 289
    :cond_2
    new-instance p0, Ljava/text/ParseException;

    .line 290
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    const-string v1, "Start year/month has incorrect format at line "

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    .line 312
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 313
    throw p0

    .line 314
    .line 315
    :cond_3
    new-instance p0, Ljava/text/ParseException;

    .line 316
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    const-string v1, "Start and end year/month has incorrect format at line "

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object v0

    .line 336
    .line 337
    .line 338
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 339
    throw p0

    .line 340
    .line 341
    :catch_4
    new-instance p0, Ljava/text/ParseException;

    .line 342
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    const-string v1, "Offset is not properly set at line "

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    move-result-object v0

    .line 362
    .line 363
    .line 364
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 365
    throw p0

    .line 366
    .line 367
    :cond_4
    new-instance p0, Ljava/text/ParseException;

    .line 368
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    const-string v1, "Offset has incorrect format at line "

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v0

    .line 388
    .line 389
    .line 390
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 391
    throw p0

    .line 392
    :cond_5
    return-void
.end method

.method private static l0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/chrono/k;->K()Ljava/io/InputStream;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v3, Ljava/io/InputStreamReader;

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lorg/threeten/bp/chrono/k;->g0(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object v1, v2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 41
    goto :goto_2

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    .line 44
    :goto_1
    if-eqz v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 48
    :cond_1
    throw v0

    .line 49
    :cond_2
    :goto_2
    return-void
.end method

.method static m0(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 12
    move-result p0

    .line 13
    .line 14
    sget-object v2, Lorg/threeten/bp/chrono/j;->INSTANCE:Lorg/threeten/bp/chrono/j;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1, p0}, Lorg/threeten/bp/chrono/j;->s(III)Lorg/threeten/bp/chrono/k;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static n0(III)Lorg/threeten/bp/chrono/k;
    .locals 1

    .line 1
    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lorg/threeten/bp/chrono/k;->U(II)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-le p2, v0, :cond_0

    .line 9
    move p2, v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/chrono/k;->d0(III)Lorg/threeten/bp/chrono/k;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static r0(I)J
    .locals 4

    .line 1
    .line 2
    add-int/lit8 p0, p0, -0x1

    .line 3
    .line 4
    div-int/lit8 v0, p0, 0x1e

    .line 5
    .line 6
    rem-int/lit8 p0, p0, 0x1e

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/threeten/bp/chrono/k;->G(I)[Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 14
    move-result v2

    .line 15
    .line 16
    aget-object v1, v1, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-gez p0, :cond_0

    .line 23
    neg-int v1, v1

    .line 24
    .line 25
    :cond_0
    :try_start_0
    sget-object p0, Lorg/threeten/bp/chrono/k;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 26
    .line 27
    aget-object p0, p0, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 p0, 0x0

    .line 30
    .line 31
    :goto_0
    if-nez p0, :cond_1

    .line 32
    .line 33
    mul-int/lit16 v0, v0, 0x2987

    .line 34
    int-to-long v2, v0

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 42
    move-result-wide v2

    .line 43
    int-to-long v0, v1

    .line 44
    add-long/2addr v2, v0

    .line 45
    .line 46
    .line 47
    const-wide/32 v0, -0x78275

    .line 48
    add-long/2addr v2, v0

    .line 49
    return-wide v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/k;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/threeten/bp/chrono/k;->gregorianEpochDay:J

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/k;-><init>(J)V

    .line 8
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/u;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/u;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method bridge synthetic A(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/k;->k0(J)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public J()Lorg/threeten/bp/chrono/j;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/chrono/j;->INSTANCE:Lorg/threeten/bp/chrono/j;

    .line 3
    return-object v0
.end method

.method public P()Lorg/threeten/bp/chrono/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/k;->era:Lorg/threeten/bp/chrono/l;

    return-object v0
.end method

.method public a0()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iget v1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/k;->V(II)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public b0()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/threeten/bp/chrono/k;->Y(I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/b;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    check-cast p1, Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/chrono/k$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    move-result v1

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    const-wide/16 v2, 0x1

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    const/4 v1, 0x3

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    const/4 v1, 0x4

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/k;->J()Lorg/threeten/bp/chrono/j;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/j;->v(Lorg/threeten/bp/temporal/a;)Lorg/threeten/bp/temporal/m;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    .line 52
    :cond_1
    const-wide/16 v0, 0x5

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/k;->b0()I

    .line 61
    move-result p1

    .line 62
    int-to-long v0, p1

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/k;->a0()I

    .line 71
    move-result p1

    .line 72
    int-to-long v0, p1

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    .line 79
    :cond_4
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string v2, "Unsupported field: "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 104
    move-result-object p1

    .line 105
    return-object p1
.end method

.method public c0(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/k;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/k;

    .line 7
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/k;->c0(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/k;->p0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h0(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/k;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/a;->x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/k;

    .line 7
    return-object p1
.end method

.method i0(J)Lorg/threeten/bp/chrono/k;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/k;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/threeten/bp/chrono/k;->gregorianEpochDay:J

    .line 5
    add-long/2addr v1, p1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/k;-><init>(J)V

    .line 9
    return-object v0
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/k;->o0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method j0(J)Lorg/threeten/bp/chrono/k;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    long-to-int p1, p1

    .line 13
    add-int/2addr v0, p1

    .line 14
    .line 15
    div-int/lit8 p1, v0, 0xc

    .line 16
    .line 17
    rem-int/lit8 v0, v0, 0xc

    .line 18
    .line 19
    :goto_0
    if-gez v0, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0xc

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Lra/d;->n(II)I

    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget p2, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1}, Lra/d;->j(II)I

    .line 32
    move-result p1

    .line 33
    .line 34
    iget-object p2, p0, Lorg/threeten/bp/chrono/k;->era:Lorg/threeten/bp/chrono/l;

    .line 35
    add-int/2addr v0, v1

    .line 36
    .line 37
    iget v1, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p1, v0, v1}, Lorg/threeten/bp/chrono/k;->e0(Lorg/threeten/bp/chrono/l;III)Lorg/threeten/bp/chrono/k;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/chrono/k$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    check-cast v1, Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    .line 15
    aget v0, v0, v1

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "Unsupported field: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0

    .line 42
    .line 43
    :pswitch_0
    iget-object p1, p0, Lorg/threeten/bp/chrono/k;->era:Lorg/threeten/bp/chrono/l;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/l;->getValue()I

    .line 47
    move-result p1

    .line 48
    :goto_0
    int-to-long v0, p1

    .line 49
    return-wide v0

    .line 50
    .line 51
    :pswitch_1
    iget p1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :pswitch_2
    iget p1, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :pswitch_3
    iget p1, p0, Lorg/threeten/bp/chrono/k;->dayOfYear:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    div-int/lit8 p1, p1, 0x7

    .line 62
    .line 63
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :pswitch_4
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/k;->u()J

    .line 68
    move-result-wide v0

    .line 69
    return-wide v0

    .line 70
    .line 71
    :pswitch_5
    iget p1, p0, Lorg/threeten/bp/chrono/k;->dayOfYear:I

    .line 72
    .line 73
    add-int/lit8 p1, p1, -0x1

    .line 74
    .line 75
    rem-int/lit8 p1, p1, 0x7

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :pswitch_6
    iget p1, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 79
    .line 80
    add-int/lit8 p1, p1, -0x1

    .line 81
    .line 82
    rem-int/lit8 p1, p1, 0x7

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :pswitch_7
    iget-object p1, p0, Lorg/threeten/bp/chrono/k;->dayOfWeek:Lorg/threeten/bp/d;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lorg/threeten/bp/d;->getValue()I

    .line 89
    move-result p1

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :pswitch_8
    iget p1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :pswitch_9
    iget p1, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 96
    .line 97
    add-int/lit8 p1, p1, -0x1

    .line 98
    .line 99
    div-int/lit8 p1, p1, 0x7

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :pswitch_a
    iget p1, p0, Lorg/threeten/bp/chrono/k;->dayOfYear:I

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :pswitch_b
    iget p1, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 110
    move-result-wide v0

    .line 111
    return-wide v0

    .line 112
    nop

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method k0(J)Lorg/threeten/bp/chrono/k;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 10
    long-to-int p1, p1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lra/d;->j(II)I

    .line 14
    move-result p1

    .line 15
    .line 16
    iget-object p2, p0, Lorg/threeten/bp/chrono/k;->era:Lorg/threeten/bp/chrono/l;

    .line 17
    .line 18
    iget v0, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 19
    .line 20
    iget v1, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p1, v0, v1}, Lorg/threeten/bp/chrono/k;->e0(Lorg/threeten/bp/chrono/l;III)Lorg/threeten/bp/chrono/k;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/k;->h0(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/i;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "Lorg/threeten/bp/chrono/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/a;->n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/k;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/b;->v(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/k;

    .line 7
    return-object p1
.end method

.method public bridge synthetic p()Lorg/threeten/bp/chrono/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/k;->J()Lorg/threeten/bp/chrono/j;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public p0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/k;
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 11
    long-to-int v1, p2

    .line 12
    .line 13
    sget-object v2, Lorg/threeten/bp/chrono/k$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result v0

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    const-wide/16 v2, 0x7

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    new-instance p2, Lorg/threeten/bp/temporal/l;

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v0, "Unsupported field: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 48
    throw p2

    .line 49
    .line 50
    :pswitch_0
    iget p1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 51
    sub-int/2addr v4, p1

    .line 52
    .line 53
    iget p1, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 54
    .line 55
    iget p2, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 56
    .line 57
    .line 58
    invoke-static {v4, p1, p2}, Lorg/threeten/bp/chrono/k;->n0(III)Lorg/threeten/bp/chrono/k;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    .line 62
    :pswitch_1
    iget p1, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 63
    .line 64
    iget p2, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 65
    .line 66
    .line 67
    invoke-static {v1, p1, p2}, Lorg/threeten/bp/chrono/k;->n0(III)Lorg/threeten/bp/chrono/k;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    .line 71
    :pswitch_2
    iget p1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 72
    .line 73
    iget p2, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v1, p2}, Lorg/threeten/bp/chrono/k;->n0(III)Lorg/threeten/bp/chrono/k;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    :pswitch_3
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/k;->k(Lorg/threeten/bp/temporal/h;)J

    .line 84
    move-result-wide v0

    .line 85
    sub-long/2addr p2, v0

    .line 86
    mul-long/2addr p2, v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/k;->i0(J)Lorg/threeten/bp/chrono/k;

    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    .line 93
    :pswitch_4
    new-instance p1, Lorg/threeten/bp/chrono/k;

    .line 94
    int-to-long p2, v1

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p2, p3}, Lorg/threeten/bp/chrono/k;-><init>(J)V

    .line 98
    return-object p1

    .line 99
    .line 100
    :pswitch_5
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/a;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/k;->k(Lorg/threeten/bp/temporal/h;)J

    .line 104
    move-result-wide v0

    .line 105
    sub-long/2addr p2, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/k;->i0(J)Lorg/threeten/bp/chrono/k;

    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    .line 112
    :pswitch_6
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/a;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/k;->k(Lorg/threeten/bp/temporal/h;)J

    .line 116
    move-result-wide v0

    .line 117
    sub-long/2addr p2, v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/k;->i0(J)Lorg/threeten/bp/chrono/k;

    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    .line 124
    :pswitch_7
    iget-object p1, p0, Lorg/threeten/bp/chrono/k;->dayOfWeek:Lorg/threeten/bp/d;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lorg/threeten/bp/d;->getValue()I

    .line 128
    move-result p1

    .line 129
    int-to-long v0, p1

    .line 130
    sub-long/2addr p2, v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/k;->i0(J)Lorg/threeten/bp/chrono/k;

    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    .line 137
    :pswitch_8
    iget p1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 138
    .line 139
    if-lt p1, v4, :cond_0

    .line 140
    goto :goto_0

    .line 141
    .line 142
    :cond_0
    rsub-int/lit8 v1, v1, 0x1

    .line 143
    .line 144
    :goto_0
    iget p1, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 145
    .line 146
    iget p2, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 147
    .line 148
    .line 149
    invoke-static {v1, p1, p2}, Lorg/threeten/bp/chrono/k;->n0(III)Lorg/threeten/bp/chrono/k;

    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    .line 153
    :pswitch_9
    sget-object p1, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/k;->k(Lorg/threeten/bp/temporal/h;)J

    .line 157
    move-result-wide v0

    .line 158
    sub-long/2addr p2, v0

    .line 159
    mul-long/2addr p2, v2

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p2, p3}, Lorg/threeten/bp/chrono/k;->i0(J)Lorg/threeten/bp/chrono/k;

    .line 163
    move-result-object p1

    .line 164
    return-object p1

    .line 165
    .line 166
    :pswitch_a
    iget p1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 167
    sub-int/2addr v1, v4

    .line 168
    .line 169
    div-int/lit8 p2, v1, 0x1e

    .line 170
    add-int/2addr p2, v4

    .line 171
    .line 172
    rem-int/lit8 v1, v1, 0x1e

    .line 173
    add-int/2addr v1, v4

    .line 174
    .line 175
    .line 176
    invoke-static {p1, p2, v1}, Lorg/threeten/bp/chrono/k;->n0(III)Lorg/threeten/bp/chrono/k;

    .line 177
    move-result-object p1

    .line 178
    return-object p1

    .line 179
    .line 180
    :pswitch_b
    iget p1, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 181
    .line 182
    iget p2, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 183
    .line 184
    .line 185
    invoke-static {p1, p2, v1}, Lorg/threeten/bp/chrono/k;->n0(III)Lorg/threeten/bp/chrono/k;

    .line 186
    move-result-object p1

    .line 187
    return-object p1

    .line 188
    .line 189
    .line 190
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    check-cast p1, Lorg/threeten/bp/chrono/k;

    .line 194
    return-object p1

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
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
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic q()Lorg/threeten/bp/chrono/i;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/k;->P()Lorg/threeten/bp/chrono/l;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method q0(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 10
    .line 11
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 19
    .line 20
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 28
    return-void
.end method

.method public bridge synthetic s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/k;->c0(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/k;->h0(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u()J
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lorg/threeten/bp/chrono/k;->yearOfEra:I

    .line 3
    .line 4
    iget v1, p0, Lorg/threeten/bp/chrono/k;->monthOfYear:I

    .line 5
    .line 6
    iget v2, p0, Lorg/threeten/bp/chrono/k;->dayOfMonth:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/chrono/k;->Q(III)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public bridge synthetic v(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/k;->o0(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic w(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/k;->p0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic x(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/k;->h0(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic y(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/k;->i0(J)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic z(J)Lorg/threeten/bp/chrono/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/k;->j0(J)Lorg/threeten/bp/chrono/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
