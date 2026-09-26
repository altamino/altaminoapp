.class public final enum Lorg/threeten/bp/temporal/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/threeten/bp/temporal/a;",
        ">;",
        "Lorg/threeten/bp/temporal/h;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/a;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/a;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/a;

.field public static final enum AMPM_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

.field public static final enum CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

.field public static final enum DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

.field public static final enum DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

.field public static final enum EPOCH_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum ERA:Lorg/threeten/bp/temporal/a;

.field public static final enum HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

.field public static final enum HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

.field public static final enum MICRO_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum MICRO_OF_SECOND:Lorg/threeten/bp/temporal/a;

.field public static final enum MILLI_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum MILLI_OF_SECOND:Lorg/threeten/bp/temporal/a;

.field public static final enum MINUTE_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/a;

.field public static final enum MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

.field public static final enum NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

.field public static final enum OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

.field public static final enum PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

.field public static final enum SECOND_OF_DAY:Lorg/threeten/bp/temporal/a;

.field public static final enum SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/a;

.field public static final enum YEAR:Lorg/threeten/bp/temporal/a;

.field public static final enum YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;


# instance fields
.field private final baseUnit:Lorg/threeten/bp/temporal/k;

.field private final name:Ljava/lang/String;

.field private final range:Lorg/threeten/bp/temporal/m;

.field private final rangeUnit:Lorg/threeten/bp/temporal/k;


# direct methods
.method static constructor <clinit>()V
    .locals 55

    .line 1
    .line 2
    new-instance v7, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    const-string v1, "NANO_OF_SECOND"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const-string v3, "NanoOfSecond"

    .line 8
    .line 9
    sget-object v12, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

    .line 10
    .line 11
    sget-object v20, Lorg/threeten/bp/temporal/b;->SECONDS:Lorg/threeten/bp/temporal/b;

    .line 12
    .line 13
    const-wide/16 v14, 0x0

    .line 14
    .line 15
    .line 16
    const-wide/32 v10, 0x3b9ac9ff

    .line 17
    .line 18
    .line 19
    invoke-static {v14, v15, v10, v11}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 20
    move-result-object v6

    .line 21
    move-object v0, v7

    .line 22
    move-object v4, v12

    .line 23
    .line 24
    move-object/from16 v5, v20

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 28
    .line 29
    sput-object v7, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 30
    .line 31
    new-instance v0, Lorg/threeten/bp/temporal/a;

    .line 32
    .line 33
    const-string v9, "NANO_OF_DAY"

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    const-string v2, "NanoOfDay"

    .line 37
    .line 38
    sget-object v3, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v4, 0x4e94914effffL

    .line 44
    .line 45
    .line 46
    invoke-static {v14, v15, v4, v5}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 47
    move-result-object v4

    .line 48
    move-object v8, v0

    .line 49
    move-wide v5, v10

    .line 50
    move v10, v1

    .line 51
    move-object v11, v2

    .line 52
    move-object v13, v3

    .line 53
    move-wide v1, v14

    .line 54
    move-object v14, v4

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v8 .. v14}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 58
    .line 59
    sput-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 60
    .line 61
    new-instance v4, Lorg/threeten/bp/temporal/a;

    .line 62
    .line 63
    const-string v14, "MICRO_OF_SECOND"

    .line 64
    const/4 v15, 0x2

    .line 65
    .line 66
    const-string v16, "MicroOfSecond"

    .line 67
    .line 68
    sget-object v25, Lorg/threeten/bp/temporal/b;->MICROS:Lorg/threeten/bp/temporal/b;

    .line 69
    .line 70
    .line 71
    const-wide/32 v8, 0xf423f

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2, v8, v9}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 75
    move-result-object v19

    .line 76
    move-object v13, v4

    .line 77
    .line 78
    move-object/from16 v17, v25

    .line 79
    .line 80
    move-object/from16 v18, v20

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 84
    .line 85
    sput-object v4, Lorg/threeten/bp/temporal/a;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 86
    .line 87
    new-instance v8, Lorg/threeten/bp/temporal/a;

    .line 88
    .line 89
    const-string v22, "MICRO_OF_DAY"

    .line 90
    .line 91
    const/16 v23, 0x3

    .line 92
    .line 93
    const-string v24, "MicroOfDay"

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const-wide v9, 0x141dd75fffL

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2, v9, v10}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 102
    move-result-object v27

    .line 103
    .line 104
    move-object/from16 v21, v8

    .line 105
    .line 106
    move-object/from16 v26, v3

    .line 107
    .line 108
    .line 109
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 110
    .line 111
    sput-object v8, Lorg/threeten/bp/temporal/a;->MICRO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 112
    .line 113
    new-instance v9, Lorg/threeten/bp/temporal/a;

    .line 114
    .line 115
    const-string v14, "MILLI_OF_SECOND"

    .line 116
    const/4 v15, 0x4

    .line 117
    .line 118
    const-string v16, "MilliOfSecond"

    .line 119
    .line 120
    sget-object v25, Lorg/threeten/bp/temporal/b;->MILLIS:Lorg/threeten/bp/temporal/b;

    .line 121
    .line 122
    const-wide/16 v10, 0x3e7

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v2, v10, v11}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 126
    move-result-object v19

    .line 127
    move-object v13, v9

    .line 128
    .line 129
    move-object/from16 v17, v25

    .line 130
    .line 131
    .line 132
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 133
    .line 134
    sput-object v9, Lorg/threeten/bp/temporal/a;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 135
    .line 136
    new-instance v10, Lorg/threeten/bp/temporal/a;

    .line 137
    .line 138
    const-string v22, "MILLI_OF_DAY"

    .line 139
    .line 140
    const/16 v23, 0x5

    .line 141
    .line 142
    const-string v24, "MilliOfDay"

    .line 143
    .line 144
    .line 145
    const-wide/32 v11, 0x5265bff

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v2, v11, v12}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 149
    move-result-object v27

    .line 150
    .line 151
    move-object/from16 v21, v10

    .line 152
    .line 153
    .line 154
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 155
    .line 156
    sput-object v10, Lorg/threeten/bp/temporal/a;->MILLI_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 157
    .line 158
    new-instance v11, Lorg/threeten/bp/temporal/a;

    .line 159
    .line 160
    const-string v14, "SECOND_OF_MINUTE"

    .line 161
    const/4 v15, 0x6

    .line 162
    .line 163
    const-string v16, "SecondOfMinute"

    .line 164
    .line 165
    sget-object v12, Lorg/threeten/bp/temporal/b;->MINUTES:Lorg/threeten/bp/temporal/b;

    .line 166
    .line 167
    const-wide/16 v5, 0x3b

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v2, v5, v6}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 171
    move-result-object v19

    .line 172
    move-object v13, v11

    .line 173
    .line 174
    move-object/from16 v17, v20

    .line 175
    .line 176
    move-object/from16 v18, v12

    .line 177
    .line 178
    .line 179
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 180
    .line 181
    sput-object v11, Lorg/threeten/bp/temporal/a;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/a;

    .line 182
    .line 183
    new-instance v28, Lorg/threeten/bp/temporal/a;

    .line 184
    .line 185
    const-string v14, "SECOND_OF_DAY"

    .line 186
    const/4 v15, 0x7

    .line 187
    .line 188
    const-string v16, "SecondOfDay"

    .line 189
    .line 190
    .line 191
    const-wide/32 v5, 0x1517f

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v2, v5, v6}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 195
    move-result-object v19

    .line 196
    .line 197
    move-object/from16 v13, v28

    .line 198
    .line 199
    move-object/from16 v18, v3

    .line 200
    .line 201
    .line 202
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 203
    .line 204
    sput-object v28, Lorg/threeten/bp/temporal/a;->SECOND_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 205
    .line 206
    new-instance v5, Lorg/threeten/bp/temporal/a;

    .line 207
    .line 208
    const-string v6, "MINUTE_OF_HOUR"

    .line 209
    .line 210
    const/16 v23, 0x8

    .line 211
    .line 212
    const-string v24, "MinuteOfHour"

    .line 213
    .line 214
    sget-object v29, Lorg/threeten/bp/temporal/b;->HOURS:Lorg/threeten/bp/temporal/b;

    .line 215
    .line 216
    const-wide/16 v13, 0x3b

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v2, v13, v14}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 220
    move-result-object v27

    .line 221
    .line 222
    move-object/from16 v21, v5

    .line 223
    .line 224
    move-object/from16 v22, v6

    .line 225
    .line 226
    move-object/from16 v25, v12

    .line 227
    .line 228
    move-object/from16 v26, v29

    .line 229
    .line 230
    .line 231
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 232
    .line 233
    sput-object v5, Lorg/threeten/bp/temporal/a;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/a;

    .line 234
    .line 235
    new-instance v6, Lorg/threeten/bp/temporal/a;

    .line 236
    .line 237
    const-string v22, "MINUTE_OF_DAY"

    .line 238
    .line 239
    const/16 v23, 0x9

    .line 240
    .line 241
    const-string v24, "MinuteOfDay"

    .line 242
    .line 243
    const-wide/16 v13, 0x59f

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v2, v13, v14}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 247
    move-result-object v27

    .line 248
    .line 249
    move-object/from16 v21, v6

    .line 250
    .line 251
    move-object/from16 v26, v3

    .line 252
    .line 253
    .line 254
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 255
    .line 256
    sput-object v6, Lorg/threeten/bp/temporal/a;->MINUTE_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 257
    .line 258
    new-instance v12, Lorg/threeten/bp/temporal/a;

    .line 259
    .line 260
    const-string v14, "HOUR_OF_AMPM"

    .line 261
    .line 262
    const/16 v15, 0xa

    .line 263
    .line 264
    const-string v16, "HourOfAmPm"

    .line 265
    .line 266
    sget-object v30, Lorg/threeten/bp/temporal/b;->HALF_DAYS:Lorg/threeten/bp/temporal/b;

    .line 267
    .line 268
    move-object/from16 v31, v5

    .line 269
    .line 270
    move-object/from16 v32, v6

    .line 271
    .line 272
    const-wide/16 v5, 0xb

    .line 273
    .line 274
    .line 275
    invoke-static {v1, v2, v5, v6}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 276
    move-result-object v19

    .line 277
    move-object v13, v12

    .line 278
    .line 279
    move-object/from16 v17, v29

    .line 280
    .line 281
    move-object/from16 v18, v30

    .line 282
    .line 283
    .line 284
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 285
    .line 286
    sput-object v12, Lorg/threeten/bp/temporal/a;->HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

    .line 287
    .line 288
    new-instance v5, Lorg/threeten/bp/temporal/a;

    .line 289
    .line 290
    const-string v14, "CLOCK_HOUR_OF_AMPM"

    .line 291
    .line 292
    const/16 v15, 0xb

    .line 293
    .line 294
    const-string v16, "ClockHourOfAmPm"

    .line 295
    .line 296
    const-wide/16 v1, 0x1

    .line 297
    move-object v6, v11

    .line 298
    .line 299
    move-object/from16 v33, v12

    .line 300
    .line 301
    const-wide/16 v11, 0xc

    .line 302
    .line 303
    .line 304
    invoke-static {v1, v2, v11, v12}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 305
    move-result-object v19

    .line 306
    move-object v13, v5

    .line 307
    .line 308
    .line 309
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 310
    .line 311
    sput-object v5, Lorg/threeten/bp/temporal/a;->CLOCK_HOUR_OF_AMPM:Lorg/threeten/bp/temporal/a;

    .line 312
    .line 313
    new-instance v34, Lorg/threeten/bp/temporal/a;

    .line 314
    .line 315
    const-string v22, "HOUR_OF_DAY"

    .line 316
    .line 317
    const/16 v23, 0xc

    .line 318
    .line 319
    const-string v24, "HourOfDay"

    .line 320
    .line 321
    const-wide/16 v13, 0x17

    .line 322
    .line 323
    const-wide/16 v11, 0x0

    .line 324
    .line 325
    .line 326
    invoke-static {v11, v12, v13, v14}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 327
    move-result-object v27

    .line 328
    .line 329
    move-object/from16 v21, v34

    .line 330
    .line 331
    move-object/from16 v25, v29

    .line 332
    .line 333
    .line 334
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 335
    .line 336
    sput-object v34, Lorg/threeten/bp/temporal/a;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 337
    .line 338
    new-instance v11, Lorg/threeten/bp/temporal/a;

    .line 339
    .line 340
    const-string v22, "CLOCK_HOUR_OF_DAY"

    .line 341
    .line 342
    const/16 v23, 0xd

    .line 343
    .line 344
    const-string v24, "ClockHourOfDay"

    .line 345
    .line 346
    const-wide/16 v12, 0x18

    .line 347
    .line 348
    .line 349
    invoke-static {v1, v2, v12, v13}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 350
    move-result-object v27

    .line 351
    .line 352
    move-object/from16 v21, v11

    .line 353
    .line 354
    .line 355
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 356
    .line 357
    sput-object v11, Lorg/threeten/bp/temporal/a;->CLOCK_HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 358
    .line 359
    new-instance v12, Lorg/threeten/bp/temporal/a;

    .line 360
    .line 361
    const-string v22, "AMPM_OF_DAY"

    .line 362
    .line 363
    const/16 v23, 0xe

    .line 364
    .line 365
    const-string v24, "AmPmOfDay"

    .line 366
    .line 367
    const-wide/16 v13, 0x0

    .line 368
    .line 369
    .line 370
    invoke-static {v13, v14, v1, v2}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 371
    move-result-object v27

    .line 372
    .line 373
    move-object/from16 v21, v12

    .line 374
    .line 375
    move-object/from16 v25, v30

    .line 376
    .line 377
    .line 378
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 379
    .line 380
    sput-object v12, Lorg/threeten/bp/temporal/a;->AMPM_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 381
    .line 382
    new-instance v29, Lorg/threeten/bp/temporal/a;

    .line 383
    .line 384
    const-string v22, "DAY_OF_WEEK"

    .line 385
    .line 386
    const/16 v23, 0xf

    .line 387
    .line 388
    const-string v24, "DayOfWeek"

    .line 389
    .line 390
    sget-object v13, Lorg/threeten/bp/temporal/b;->WEEKS:Lorg/threeten/bp/temporal/b;

    .line 391
    .line 392
    const-wide/16 v14, 0x7

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v2, v14, v15}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 396
    move-result-object v27

    .line 397
    .line 398
    move-object/from16 v21, v29

    .line 399
    .line 400
    move-object/from16 v25, v3

    .line 401
    .line 402
    move-object/from16 v26, v13

    .line 403
    .line 404
    .line 405
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 406
    .line 407
    sput-object v29, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 408
    .line 409
    new-instance v30, Lorg/threeten/bp/temporal/a;

    .line 410
    .line 411
    const-string v22, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    .line 412
    .line 413
    const/16 v23, 0x10

    .line 414
    .line 415
    const-string v24, "AlignedDayOfWeekInMonth"

    .line 416
    .line 417
    .line 418
    invoke-static {v1, v2, v14, v15}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 419
    move-result-object v27

    .line 420
    .line 421
    move-object/from16 v21, v30

    .line 422
    .line 423
    .line 424
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 425
    .line 426
    sput-object v30, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/a;

    .line 427
    .line 428
    new-instance v42, Lorg/threeten/bp/temporal/a;

    .line 429
    .line 430
    const-string v22, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    .line 431
    .line 432
    const/16 v23, 0x11

    .line 433
    .line 434
    const-string v24, "AlignedDayOfWeekInYear"

    .line 435
    .line 436
    .line 437
    invoke-static {v1, v2, v14, v15}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 438
    move-result-object v27

    .line 439
    .line 440
    move-object/from16 v21, v42

    .line 441
    .line 442
    .line 443
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 444
    .line 445
    sput-object v42, Lorg/threeten/bp/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/a;

    .line 446
    .line 447
    new-instance v43, Lorg/threeten/bp/temporal/a;

    .line 448
    .line 449
    const-string v22, "DAY_OF_MONTH"

    .line 450
    .line 451
    const/16 v23, 0x12

    .line 452
    .line 453
    const-string v24, "DayOfMonth"

    .line 454
    .line 455
    sget-object v14, Lorg/threeten/bp/temporal/b;->MONTHS:Lorg/threeten/bp/temporal/b;

    .line 456
    .line 457
    const-wide/16 v35, 0x1

    .line 458
    .line 459
    const-wide/16 v37, 0x1c

    .line 460
    .line 461
    const-wide/16 v39, 0x1f

    .line 462
    .line 463
    .line 464
    invoke-static/range {v35 .. v40}, Lorg/threeten/bp/temporal/m;->j(JJJ)Lorg/threeten/bp/temporal/m;

    .line 465
    move-result-object v27

    .line 466
    .line 467
    move-object/from16 v21, v43

    .line 468
    .line 469
    move-object/from16 v26, v14

    .line 470
    .line 471
    .line 472
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 473
    .line 474
    sput-object v43, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 475
    .line 476
    new-instance v44, Lorg/threeten/bp/temporal/a;

    .line 477
    .line 478
    const-string v22, "DAY_OF_YEAR"

    .line 479
    .line 480
    const/16 v23, 0x13

    .line 481
    .line 482
    const-string v24, "DayOfYear"

    .line 483
    .line 484
    sget-object v15, Lorg/threeten/bp/temporal/b;->YEARS:Lorg/threeten/bp/temporal/b;

    .line 485
    .line 486
    const-wide/16 v37, 0x16d

    .line 487
    .line 488
    const-wide/16 v39, 0x16e

    .line 489
    .line 490
    .line 491
    invoke-static/range {v35 .. v40}, Lorg/threeten/bp/temporal/m;->j(JJJ)Lorg/threeten/bp/temporal/m;

    .line 492
    move-result-object v27

    .line 493
    .line 494
    move-object/from16 v21, v44

    .line 495
    .line 496
    move-object/from16 v26, v15

    .line 497
    .line 498
    .line 499
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 500
    .line 501
    sput-object v44, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 502
    .line 503
    new-instance v45, Lorg/threeten/bp/temporal/a;

    .line 504
    .line 505
    const-string v22, "EPOCH_DAY"

    .line 506
    .line 507
    const/16 v23, 0x14

    .line 508
    .line 509
    const-string v24, "EpochDay"

    .line 510
    .line 511
    sget-object v46, Lorg/threeten/bp/temporal/b;->FOREVER:Lorg/threeten/bp/temporal/b;

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    const-wide v1, -0x550a313cdaL

    .line 517
    .line 518
    move-object/from16 v47, v11

    .line 519
    .line 520
    move-object/from16 v48, v12

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    const-wide v11, 0x550a1b48f7L

    .line 526
    .line 527
    .line 528
    invoke-static {v1, v2, v11, v12}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 529
    move-result-object v27

    .line 530
    .line 531
    move-object/from16 v21, v45

    .line 532
    .line 533
    move-object/from16 v26, v46

    .line 534
    .line 535
    .line 536
    invoke-direct/range {v21 .. v27}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 537
    .line 538
    sput-object v45, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 539
    .line 540
    new-instance v1, Lorg/threeten/bp/temporal/a;

    .line 541
    .line 542
    const-string v36, "ALIGNED_WEEK_OF_MONTH"

    .line 543
    .line 544
    const/16 v37, 0x15

    .line 545
    .line 546
    const-string v38, "AlignedWeekOfMonth"

    .line 547
    .line 548
    const-wide/16 v21, 0x1

    .line 549
    .line 550
    const-wide/16 v23, 0x4

    .line 551
    .line 552
    const-wide/16 v25, 0x5

    .line 553
    .line 554
    .line 555
    invoke-static/range {v21 .. v26}, Lorg/threeten/bp/temporal/m;->j(JJJ)Lorg/threeten/bp/temporal/m;

    .line 556
    move-result-object v41

    .line 557
    .line 558
    move-object/from16 v35, v1

    .line 559
    .line 560
    move-object/from16 v39, v13

    .line 561
    .line 562
    move-object/from16 v40, v14

    .line 563
    .line 564
    .line 565
    invoke-direct/range {v35 .. v41}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 566
    .line 567
    sput-object v1, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 568
    .line 569
    new-instance v2, Lorg/threeten/bp/temporal/a;

    .line 570
    .line 571
    const-string v36, "ALIGNED_WEEK_OF_YEAR"

    .line 572
    .line 573
    const/16 v37, 0x16

    .line 574
    .line 575
    const-string v38, "AlignedWeekOfYear"

    .line 576
    .line 577
    const-wide/16 v11, 0x35

    .line 578
    move-object v3, v5

    .line 579
    .line 580
    move-object/from16 v21, v6

    .line 581
    .line 582
    const-wide/16 v5, 0x1

    .line 583
    .line 584
    .line 585
    invoke-static {v5, v6, v11, v12}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 586
    move-result-object v41

    .line 587
    .line 588
    move-object/from16 v35, v2

    .line 589
    .line 590
    move-object/from16 v40, v15

    .line 591
    .line 592
    .line 593
    invoke-direct/range {v35 .. v41}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 594
    .line 595
    sput-object v2, Lorg/threeten/bp/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 596
    .line 597
    new-instance v5, Lorg/threeten/bp/temporal/a;

    .line 598
    .line 599
    const-string v36, "MONTH_OF_YEAR"

    .line 600
    .line 601
    const/16 v37, 0x17

    .line 602
    .line 603
    const-string v38, "MonthOfYear"

    .line 604
    move-object v6, v1

    .line 605
    .line 606
    move-object/from16 v22, v2

    .line 607
    .line 608
    const-wide/16 v1, 0xc

    .line 609
    .line 610
    const-wide/16 v11, 0x1

    .line 611
    .line 612
    .line 613
    invoke-static {v11, v12, v1, v2}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 614
    move-result-object v41

    .line 615
    .line 616
    move-object/from16 v35, v5

    .line 617
    .line 618
    move-object/from16 v39, v14

    .line 619
    .line 620
    .line 621
    invoke-direct/range {v35 .. v41}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 622
    .line 623
    sput-object v5, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 624
    .line 625
    new-instance v1, Lorg/threeten/bp/temporal/a;

    .line 626
    .line 627
    const-string v36, "PROLEPTIC_MONTH"

    .line 628
    .line 629
    const/16 v37, 0x18

    .line 630
    .line 631
    const-string v38, "ProlepticMonth"

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    const-wide v11, -0x2cb4177f4L

    .line 637
    move-object v2, v5

    .line 638
    .line 639
    move-object/from16 v23, v6

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    const-wide v5, 0x2cb4177ffL

    .line 645
    .line 646
    .line 647
    invoke-static {v11, v12, v5, v6}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 648
    move-result-object v41

    .line 649
    .line 650
    move-object/from16 v35, v1

    .line 651
    .line 652
    move-object/from16 v40, v46

    .line 653
    .line 654
    .line 655
    invoke-direct/range {v35 .. v41}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 656
    .line 657
    sput-object v1, Lorg/threeten/bp/temporal/a;->PROLEPTIC_MONTH:Lorg/threeten/bp/temporal/a;

    .line 658
    .line 659
    new-instance v5, Lorg/threeten/bp/temporal/a;

    .line 660
    .line 661
    const-string v36, "YEAR_OF_ERA"

    .line 662
    .line 663
    const/16 v37, 0x19

    .line 664
    .line 665
    const-string v38, "YearOfEra"

    .line 666
    .line 667
    const-wide/16 v49, 0x1

    .line 668
    .line 669
    .line 670
    const-wide/32 v51, 0x3b9ac9ff

    .line 671
    .line 672
    .line 673
    const-wide/32 v53, 0x3b9aca00

    .line 674
    .line 675
    .line 676
    invoke-static/range {v49 .. v54}, Lorg/threeten/bp/temporal/m;->j(JJJ)Lorg/threeten/bp/temporal/m;

    .line 677
    move-result-object v41

    .line 678
    .line 679
    move-object/from16 v35, v5

    .line 680
    .line 681
    move-object/from16 v39, v15

    .line 682
    .line 683
    .line 684
    invoke-direct/range {v35 .. v41}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 685
    .line 686
    sput-object v5, Lorg/threeten/bp/temporal/a;->YEAR_OF_ERA:Lorg/threeten/bp/temporal/a;

    .line 687
    .line 688
    new-instance v6, Lorg/threeten/bp/temporal/a;

    .line 689
    .line 690
    const-string v36, "YEAR"

    .line 691
    .line 692
    const/16 v37, 0x1a

    .line 693
    .line 694
    const-string v38, "Year"

    .line 695
    .line 696
    .line 697
    const-wide/32 v11, -0x3b9ac9ff

    .line 698
    .line 699
    .line 700
    const-wide/32 v13, 0x3b9ac9ff

    .line 701
    .line 702
    .line 703
    invoke-static {v11, v12, v13, v14}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 704
    move-result-object v41

    .line 705
    .line 706
    move-object/from16 v35, v6

    .line 707
    .line 708
    .line 709
    invoke-direct/range {v35 .. v41}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 710
    .line 711
    sput-object v6, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 712
    .line 713
    new-instance v11, Lorg/threeten/bp/temporal/a;

    .line 714
    .line 715
    const-string v36, "ERA"

    .line 716
    .line 717
    const/16 v37, 0x1b

    .line 718
    .line 719
    const-string v38, "Era"

    .line 720
    .line 721
    sget-object v39, Lorg/threeten/bp/temporal/b;->ERAS:Lorg/threeten/bp/temporal/b;

    .line 722
    .line 723
    const-wide/16 v12, 0x0

    .line 724
    .line 725
    const-wide/16 v14, 0x1

    .line 726
    .line 727
    .line 728
    invoke-static {v12, v13, v14, v15}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 729
    move-result-object v41

    .line 730
    .line 731
    move-object/from16 v35, v11

    .line 732
    .line 733
    .line 734
    invoke-direct/range {v35 .. v41}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 735
    .line 736
    sput-object v11, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 737
    .line 738
    new-instance v12, Lorg/threeten/bp/temporal/a;

    .line 739
    .line 740
    const-string v14, "INSTANT_SECONDS"

    .line 741
    .line 742
    const/16 v15, 0x1c

    .line 743
    .line 744
    const-string v16, "InstantSeconds"

    .line 745
    .line 746
    move-object/from16 v24, v5

    .line 747
    .line 748
    move-object/from16 v25, v6

    .line 749
    .line 750
    const-wide/high16 v5, -0x8000000000000000L

    .line 751
    .line 752
    move-object/from16 v26, v1

    .line 753
    .line 754
    move-object/from16 v27, v2

    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    const-wide v1, 0x7fffffffffffffffL

    .line 760
    .line 761
    .line 762
    invoke-static {v5, v6, v1, v2}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 763
    move-result-object v19

    .line 764
    move-object v13, v12

    .line 765
    .line 766
    move-object/from16 v17, v20

    .line 767
    .line 768
    move-object/from16 v18, v46

    .line 769
    .line 770
    .line 771
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 772
    .line 773
    sput-object v12, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 774
    .line 775
    new-instance v1, Lorg/threeten/bp/temporal/a;

    .line 776
    .line 777
    const-string v14, "OFFSET_SECONDS"

    .line 778
    .line 779
    const/16 v15, 0x1d

    .line 780
    .line 781
    const-string v16, "OffsetSeconds"

    .line 782
    .line 783
    .line 784
    const-wide/32 v5, -0xfd20

    .line 785
    move-object v2, v12

    .line 786
    .line 787
    .line 788
    const-wide/32 v12, 0xfd20

    .line 789
    .line 790
    .line 791
    invoke-static {v5, v6, v12, v13}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 792
    move-result-object v19

    .line 793
    move-object v13, v1

    .line 794
    .line 795
    .line 796
    invoke-direct/range {v13 .. v19}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V

    .line 797
    .line 798
    sput-object v1, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 799
    .line 800
    const/16 v5, 0x1e

    .line 801
    .line 802
    new-array v5, v5, [Lorg/threeten/bp/temporal/a;

    .line 803
    const/4 v6, 0x0

    .line 804
    .line 805
    aput-object v7, v5, v6

    .line 806
    const/4 v6, 0x1

    .line 807
    .line 808
    aput-object v0, v5, v6

    .line 809
    const/4 v0, 0x2

    .line 810
    .line 811
    aput-object v4, v5, v0

    .line 812
    const/4 v0, 0x3

    .line 813
    .line 814
    aput-object v8, v5, v0

    .line 815
    const/4 v0, 0x4

    .line 816
    .line 817
    aput-object v9, v5, v0

    .line 818
    const/4 v0, 0x5

    .line 819
    .line 820
    aput-object v10, v5, v0

    .line 821
    const/4 v0, 0x6

    .line 822
    .line 823
    aput-object v21, v5, v0

    .line 824
    const/4 v0, 0x7

    .line 825
    .line 826
    aput-object v28, v5, v0

    .line 827
    .line 828
    const/16 v0, 0x8

    .line 829
    .line 830
    aput-object v31, v5, v0

    .line 831
    .line 832
    const/16 v0, 0x9

    .line 833
    .line 834
    aput-object v32, v5, v0

    .line 835
    .line 836
    const/16 v0, 0xa

    .line 837
    .line 838
    aput-object v33, v5, v0

    .line 839
    .line 840
    const/16 v0, 0xb

    .line 841
    .line 842
    aput-object v3, v5, v0

    .line 843
    .line 844
    const/16 v0, 0xc

    .line 845
    .line 846
    aput-object v34, v5, v0

    .line 847
    .line 848
    const/16 v0, 0xd

    .line 849
    .line 850
    aput-object v47, v5, v0

    .line 851
    .line 852
    const/16 v0, 0xe

    .line 853
    .line 854
    aput-object v48, v5, v0

    .line 855
    .line 856
    const/16 v0, 0xf

    .line 857
    .line 858
    aput-object v29, v5, v0

    .line 859
    .line 860
    const/16 v0, 0x10

    .line 861
    .line 862
    aput-object v30, v5, v0

    .line 863
    .line 864
    const/16 v0, 0x11

    .line 865
    .line 866
    aput-object v42, v5, v0

    .line 867
    .line 868
    const/16 v0, 0x12

    .line 869
    .line 870
    aput-object v43, v5, v0

    .line 871
    .line 872
    const/16 v0, 0x13

    .line 873
    .line 874
    aput-object v44, v5, v0

    .line 875
    .line 876
    const/16 v0, 0x14

    .line 877
    .line 878
    aput-object v45, v5, v0

    .line 879
    .line 880
    const/16 v0, 0x15

    .line 881
    .line 882
    aput-object v23, v5, v0

    .line 883
    .line 884
    const/16 v0, 0x16

    .line 885
    .line 886
    aput-object v22, v5, v0

    .line 887
    .line 888
    const/16 v0, 0x17

    .line 889
    .line 890
    aput-object v27, v5, v0

    .line 891
    .line 892
    const/16 v0, 0x18

    .line 893
    .line 894
    aput-object v26, v5, v0

    .line 895
    .line 896
    const/16 v0, 0x19

    .line 897
    .line 898
    aput-object v24, v5, v0

    .line 899
    .line 900
    const/16 v0, 0x1a

    .line 901
    .line 902
    aput-object v25, v5, v0

    .line 903
    .line 904
    const/16 v0, 0x1b

    .line 905
    .line 906
    aput-object v11, v5, v0

    .line 907
    .line 908
    const/16 v0, 0x1c

    .line 909
    .line 910
    aput-object v2, v5, v0

    .line 911
    .line 912
    const/16 v0, 0x1d

    .line 913
    .line 914
    aput-object v1, v5, v0

    .line 915
    .line 916
    sput-object v5, Lorg/threeten/bp/temporal/a;->$VALUES:[Lorg/threeten/bp/temporal/a;

    .line 917
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/temporal/k;",
            "Lorg/threeten/bp/temporal/k;",
            "Lorg/threeten/bp/temporal/m;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lorg/threeten/bp/temporal/a;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/threeten/bp/temporal/a;->baseUnit:Lorg/threeten/bp/temporal/k;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/threeten/bp/temporal/a;->rangeUnit:Lorg/threeten/bp/temporal/k;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/threeten/bp/temporal/a;->range:Lorg/threeten/bp/temporal/m;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/a;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/threeten/bp/temporal/a;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/threeten/bp/temporal/a;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->$VALUES:[Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/threeten/bp/temporal/a;

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    .line 18
    sget-object v1, Lorg/threeten/bp/temporal/a;->ERA:Lorg/threeten/bp/temporal/a;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-gt v0, v1, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
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
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/e;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public d()Lorg/threeten/bp/temporal/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/temporal/a;->range:Lorg/threeten/bp/temporal/m;

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

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

.method public f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/e;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Lorg/threeten/bp/temporal/e;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public i(J)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public j(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/m;->b(JLorg/threeten/bp/temporal/h;)J

    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/threeten/bp/temporal/a;->name:Ljava/lang/String;

    return-object v0
.end method
