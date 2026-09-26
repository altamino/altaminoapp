.class public final enum Lorg/threeten/bp/temporal/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/b;",
        ">;",
        "Lorg/threeten/bp/temporal/k;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/b;

.field public static final enum CENTURIES:Lorg/threeten/bp/temporal/b;

.field public static final enum DAYS:Lorg/threeten/bp/temporal/b;

.field public static final enum DECADES:Lorg/threeten/bp/temporal/b;

.field public static final enum ERAS:Lorg/threeten/bp/temporal/b;

.field public static final enum FOREVER:Lorg/threeten/bp/temporal/b;

.field public static final enum HALF_DAYS:Lorg/threeten/bp/temporal/b;

.field public static final enum HOURS:Lorg/threeten/bp/temporal/b;

.field public static final enum MICROS:Lorg/threeten/bp/temporal/b;

.field public static final enum MILLENNIA:Lorg/threeten/bp/temporal/b;

.field public static final enum MILLIS:Lorg/threeten/bp/temporal/b;

.field public static final enum MINUTES:Lorg/threeten/bp/temporal/b;

.field public static final enum MONTHS:Lorg/threeten/bp/temporal/b;

.field public static final enum NANOS:Lorg/threeten/bp/temporal/b;

.field public static final enum SECONDS:Lorg/threeten/bp/temporal/b;

.field public static final enum WEEKS:Lorg/threeten/bp/temporal/b;

.field public static final enum YEARS:Lorg/threeten/bp/temporal/b;


# instance fields
.field private final duration:Lorg/threeten/bp/e;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/threeten/bp/e;->d(J)Lorg/threeten/bp/e;

    .line 8
    move-result-object v3

    .line 9
    .line 10
    const-string v4, "NANOS"

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    const-string v6, "Nanos"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v4, v5, v6, v3}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 17
    .line 18
    sput-object v0, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

    .line 19
    .line 20
    new-instance v3, Lorg/threeten/bp/temporal/b;

    .line 21
    .line 22
    const-wide/16 v6, 0x3e8

    .line 23
    .line 24
    .line 25
    invoke-static {v6, v7}, Lorg/threeten/bp/e;->d(J)Lorg/threeten/bp/e;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    const-string v6, "MICROS"

    .line 29
    const/4 v7, 0x1

    .line 30
    .line 31
    const-string v8, "Micros"

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v6, v7, v8, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 35
    .line 36
    sput-object v3, Lorg/threeten/bp/temporal/b;->MICROS:Lorg/threeten/bp/temporal/b;

    .line 37
    .line 38
    new-instance v4, Lorg/threeten/bp/temporal/b;

    .line 39
    .line 40
    .line 41
    const-wide/32 v8, 0xf4240

    .line 42
    .line 43
    .line 44
    invoke-static {v8, v9}, Lorg/threeten/bp/e;->d(J)Lorg/threeten/bp/e;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    const-string v8, "MILLIS"

    .line 48
    const/4 v9, 0x2

    .line 49
    .line 50
    const-string v10, "Millis"

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, v8, v9, v10, v6}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 54
    .line 55
    sput-object v4, Lorg/threeten/bp/temporal/b;->MILLIS:Lorg/threeten/bp/temporal/b;

    .line 56
    .line 57
    new-instance v6, Lorg/threeten/bp/temporal/b;

    .line 58
    .line 59
    const-string v8, "Seconds"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    const-string v2, "SECONDS"

    .line 66
    const/4 v10, 0x3

    .line 67
    .line 68
    .line 69
    invoke-direct {v6, v2, v10, v8, v1}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 70
    .line 71
    sput-object v6, Lorg/threeten/bp/temporal/b;->SECONDS:Lorg/threeten/bp/temporal/b;

    .line 72
    .line 73
    new-instance v1, Lorg/threeten/bp/temporal/b;

    .line 74
    .line 75
    const-wide/16 v11, 0x3c

    .line 76
    .line 77
    .line 78
    invoke-static {v11, v12}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    const-string v8, "MINUTES"

    .line 82
    const/4 v11, 0x4

    .line 83
    .line 84
    const-string v12, "Minutes"

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v8, v11, v12, v2}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 88
    .line 89
    sput-object v1, Lorg/threeten/bp/temporal/b;->MINUTES:Lorg/threeten/bp/temporal/b;

    .line 90
    .line 91
    new-instance v2, Lorg/threeten/bp/temporal/b;

    .line 92
    .line 93
    const-wide/16 v12, 0xe10

    .line 94
    .line 95
    .line 96
    invoke-static {v12, v13}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 97
    move-result-object v8

    .line 98
    .line 99
    const-string v12, "HOURS"

    .line 100
    const/4 v13, 0x5

    .line 101
    .line 102
    const-string v14, "Hours"

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v12, v13, v14, v8}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 106
    .line 107
    sput-object v2, Lorg/threeten/bp/temporal/b;->HOURS:Lorg/threeten/bp/temporal/b;

    .line 108
    .line 109
    new-instance v8, Lorg/threeten/bp/temporal/b;

    .line 110
    .line 111
    .line 112
    const-wide/32 v14, 0xa8c0

    .line 113
    .line 114
    .line 115
    invoke-static {v14, v15}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 116
    move-result-object v12

    .line 117
    .line 118
    const-string v14, "HALF_DAYS"

    .line 119
    const/4 v15, 0x6

    .line 120
    .line 121
    const-string v13, "HalfDays"

    .line 122
    .line 123
    .line 124
    invoke-direct {v8, v14, v15, v13, v12}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 125
    .line 126
    sput-object v8, Lorg/threeten/bp/temporal/b;->HALF_DAYS:Lorg/threeten/bp/temporal/b;

    .line 127
    .line 128
    new-instance v12, Lorg/threeten/bp/temporal/b;

    .line 129
    .line 130
    .line 131
    const-wide/32 v13, 0x15180

    .line 132
    .line 133
    .line 134
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 135
    move-result-object v13

    .line 136
    .line 137
    const-string v14, "DAYS"

    .line 138
    const/4 v15, 0x7

    .line 139
    .line 140
    const-string v11, "Days"

    .line 141
    .line 142
    .line 143
    invoke-direct {v12, v14, v15, v11, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 144
    .line 145
    sput-object v12, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 146
    .line 147
    new-instance v11, Lorg/threeten/bp/temporal/b;

    .line 148
    .line 149
    .line 150
    const-wide/32 v13, 0x93a80

    .line 151
    .line 152
    .line 153
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 154
    move-result-object v13

    .line 155
    .line 156
    const-string v14, "WEEKS"

    .line 157
    .line 158
    const/16 v15, 0x8

    .line 159
    .line 160
    const-string v10, "Weeks"

    .line 161
    .line 162
    .line 163
    invoke-direct {v11, v14, v15, v10, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 164
    .line 165
    sput-object v11, Lorg/threeten/bp/temporal/b;->WEEKS:Lorg/threeten/bp/temporal/b;

    .line 166
    .line 167
    new-instance v10, Lorg/threeten/bp/temporal/b;

    .line 168
    .line 169
    .line 170
    const-wide/32 v13, 0x282072

    .line 171
    .line 172
    .line 173
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 174
    move-result-object v13

    .line 175
    .line 176
    const-string v14, "MONTHS"

    .line 177
    .line 178
    const/16 v15, 0x9

    .line 179
    .line 180
    const-string v9, "Months"

    .line 181
    .line 182
    .line 183
    invoke-direct {v10, v14, v15, v9, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 184
    .line 185
    sput-object v10, Lorg/threeten/bp/temporal/b;->MONTHS:Lorg/threeten/bp/temporal/b;

    .line 186
    .line 187
    new-instance v9, Lorg/threeten/bp/temporal/b;

    .line 188
    .line 189
    .line 190
    const-wide/32 v13, 0x1e18558

    .line 191
    .line 192
    .line 193
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 194
    move-result-object v13

    .line 195
    .line 196
    const-string v14, "YEARS"

    .line 197
    .line 198
    const/16 v15, 0xa

    .line 199
    .line 200
    const-string v7, "Years"

    .line 201
    .line 202
    .line 203
    invoke-direct {v9, v14, v15, v7, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 204
    .line 205
    sput-object v9, Lorg/threeten/bp/temporal/b;->YEARS:Lorg/threeten/bp/temporal/b;

    .line 206
    .line 207
    new-instance v7, Lorg/threeten/bp/temporal/b;

    .line 208
    .line 209
    .line 210
    const-wide/32 v13, 0x12cf3570

    .line 211
    .line 212
    .line 213
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 214
    move-result-object v13

    .line 215
    .line 216
    const-string v14, "DECADES"

    .line 217
    .line 218
    const/16 v15, 0xb

    .line 219
    .line 220
    const-string v5, "Decades"

    .line 221
    .line 222
    .line 223
    invoke-direct {v7, v14, v15, v5, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 224
    .line 225
    sput-object v7, Lorg/threeten/bp/temporal/b;->DECADES:Lorg/threeten/bp/temporal/b;

    .line 226
    .line 227
    new-instance v5, Lorg/threeten/bp/temporal/b;

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    const-wide v13, 0xbc181660L

    .line 233
    .line 234
    .line 235
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 236
    move-result-object v13

    .line 237
    .line 238
    const-string v14, "CENTURIES"

    .line 239
    .line 240
    const/16 v15, 0xc

    .line 241
    .line 242
    move-object/from16 v16, v7

    .line 243
    .line 244
    const-string v7, "Centuries"

    .line 245
    .line 246
    .line 247
    invoke-direct {v5, v14, v15, v7, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 248
    .line 249
    sput-object v5, Lorg/threeten/bp/temporal/b;->CENTURIES:Lorg/threeten/bp/temporal/b;

    .line 250
    .line 251
    new-instance v7, Lorg/threeten/bp/temporal/b;

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    const-wide v13, 0x758f0dfc0L

    .line 257
    .line 258
    .line 259
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 260
    move-result-object v13

    .line 261
    .line 262
    const-string v14, "MILLENNIA"

    .line 263
    .line 264
    const/16 v15, 0xd

    .line 265
    .line 266
    move-object/from16 v17, v5

    .line 267
    .line 268
    const-string v5, "Millennia"

    .line 269
    .line 270
    .line 271
    invoke-direct {v7, v14, v15, v5, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 272
    .line 273
    sput-object v7, Lorg/threeten/bp/temporal/b;->MILLENNIA:Lorg/threeten/bp/temporal/b;

    .line 274
    .line 275
    new-instance v5, Lorg/threeten/bp/temporal/b;

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    const-wide v13, 0x701ce172277000L

    .line 281
    .line 282
    .line 283
    invoke-static {v13, v14}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 284
    move-result-object v13

    .line 285
    .line 286
    const-string v14, "ERAS"

    .line 287
    .line 288
    const/16 v15, 0xe

    .line 289
    .line 290
    move-object/from16 v18, v7

    .line 291
    .line 292
    const-string v7, "Eras"

    .line 293
    .line 294
    .line 295
    invoke-direct {v5, v14, v15, v7, v13}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 296
    .line 297
    sput-object v5, Lorg/threeten/bp/temporal/b;->ERAS:Lorg/threeten/bp/temporal/b;

    .line 298
    .line 299
    new-instance v7, Lorg/threeten/bp/temporal/b;

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    const-wide v13, 0x7fffffffffffffffL

    .line 305
    .line 306
    move-object/from16 v20, v9

    .line 307
    .line 308
    move-object/from16 v19, v10

    .line 309
    .line 310
    .line 311
    const-wide/32 v9, 0x3b9ac9ff

    .line 312
    .line 313
    .line 314
    invoke-static {v13, v14, v9, v10}, Lorg/threeten/bp/e;->f(JJ)Lorg/threeten/bp/e;

    .line 315
    move-result-object v9

    .line 316
    .line 317
    const-string v10, "FOREVER"

    .line 318
    .line 319
    const/16 v13, 0xf

    .line 320
    .line 321
    const-string v14, "Forever"

    .line 322
    .line 323
    .line 324
    invoke-direct {v7, v10, v13, v14, v9}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V

    .line 325
    .line 326
    sput-object v7, Lorg/threeten/bp/temporal/b;->FOREVER:Lorg/threeten/bp/temporal/b;

    .line 327
    .line 328
    const/16 v9, 0x10

    .line 329
    .line 330
    new-array v9, v9, [Lorg/threeten/bp/temporal/b;

    .line 331
    const/4 v10, 0x0

    .line 332
    .line 333
    aput-object v0, v9, v10

    .line 334
    const/4 v0, 0x1

    .line 335
    .line 336
    aput-object v3, v9, v0

    .line 337
    const/4 v0, 0x2

    .line 338
    .line 339
    aput-object v4, v9, v0

    .line 340
    const/4 v0, 0x3

    .line 341
    .line 342
    aput-object v6, v9, v0

    .line 343
    const/4 v0, 0x4

    .line 344
    .line 345
    aput-object v1, v9, v0

    .line 346
    const/4 v0, 0x5

    .line 347
    .line 348
    aput-object v2, v9, v0

    .line 349
    const/4 v0, 0x6

    .line 350
    .line 351
    aput-object v8, v9, v0

    .line 352
    const/4 v0, 0x7

    .line 353
    .line 354
    aput-object v12, v9, v0

    .line 355
    .line 356
    const/16 v0, 0x8

    .line 357
    .line 358
    aput-object v11, v9, v0

    .line 359
    .line 360
    const/16 v0, 0x9

    .line 361
    .line 362
    aput-object v19, v9, v0

    .line 363
    .line 364
    const/16 v0, 0xa

    .line 365
    .line 366
    aput-object v20, v9, v0

    .line 367
    .line 368
    const/16 v0, 0xb

    .line 369
    .line 370
    aput-object v16, v9, v0

    .line 371
    .line 372
    const/16 v0, 0xc

    .line 373
    .line 374
    aput-object v17, v9, v0

    .line 375
    .line 376
    const/16 v0, 0xd

    .line 377
    .line 378
    aput-object v18, v9, v0

    .line 379
    .line 380
    aput-object v5, v9, v15

    .line 381
    .line 382
    aput-object v7, v9, v13

    .line 383
    .line 384
    sput-object v9, Lorg/threeten/bp/temporal/b;->$VALUES:[Lorg/threeten/bp/temporal/b;

    .line 385
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/e;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lorg/threeten/bp/temporal/b;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/threeten/bp/temporal/b;->duration:Lorg/threeten/bp/e;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/b;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/temporal/b;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/b;->$VALUES:[Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/b;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/temporal/b;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lorg/threeten/bp/temporal/b;->FOREVER:Lorg/threeten/bp/temporal/b;

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2, p3, p0}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/temporal/b;->name:Ljava/lang/String;

    return-object v0
.end method
