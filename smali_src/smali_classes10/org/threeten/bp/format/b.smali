.class public final Lorg/threeten/bp/format/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASIC_ISO_DATE:Lorg/threeten/bp/format/b;

.field public static final ISO_DATE:Lorg/threeten/bp/format/b;

.field public static final ISO_DATE_TIME:Lorg/threeten/bp/format/b;

.field public static final ISO_INSTANT:Lorg/threeten/bp/format/b;

.field public static final ISO_LOCAL_DATE:Lorg/threeten/bp/format/b;

.field public static final ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/b;

.field public static final ISO_LOCAL_TIME:Lorg/threeten/bp/format/b;

.field public static final ISO_OFFSET_DATE:Lorg/threeten/bp/format/b;

.field public static final ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/b;

.field public static final ISO_OFFSET_TIME:Lorg/threeten/bp/format/b;

.field public static final ISO_ORDINAL_DATE:Lorg/threeten/bp/format/b;

.field public static final ISO_TIME:Lorg/threeten/bp/format/b;

.field public static final ISO_WEEK_DATE:Lorg/threeten/bp/format/b;

.field public static final ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/b;

.field private static final PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/n;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC_1123_DATE_TIME:Lorg/threeten/bp/format/b;


# instance fields
.field private final chrono:Lorg/threeten/bp/chrono/h;

.field private final decimalStyle:Lorg/threeten/bp/format/f;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Lorg/threeten/bp/format/c$f;

.field private final resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/threeten/bp/temporal/h;",
            ">;"
        }
    .end annotation
.end field

.field private final resolverStyle:Lorg/threeten/bp/format/g;

.field private final zone:Lorg/threeten/bp/r;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/format/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    sget-object v2, Lorg/threeten/bp/format/h;->EXCEEDS_PAD:Lorg/threeten/bp/format/h;

    .line 10
    const/4 v3, 0x4

    .line 11
    .line 12
    const/16 v4, 0xa

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/threeten/bp/format/c;->l(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)Lorg/threeten/bp/format/c;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const/16 v5, 0x2d

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v5}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sget-object v6, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 25
    const/4 v7, 0x2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v6, v7}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sget-object v8, Lorg/threeten/bp/temporal/a;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v8, v7}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget-object v9, Lorg/threeten/bp/format/g;->STRICT:Lorg/threeten/bp/format/g;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sget-object v10, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sput-object v0, Lorg/threeten/bp/format/b;->ISO_LOCAL_DATE:Lorg/threeten/bp/format/b;

    .line 54
    .line 55
    new-instance v11, Lorg/threeten/bp/format/c;

    .line 56
    .line 57
    .line 58
    invoke-direct {v11}, Lorg/threeten/bp/format/c;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v11}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 62
    move-result-object v11

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v0}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 66
    move-result-object v11

    .line 67
    .line 68
    .line 69
    invoke-virtual {v11}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 70
    move-result-object v11

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 74
    move-result-object v11

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 78
    move-result-object v11

    .line 79
    .line 80
    sput-object v11, Lorg/threeten/bp/format/b;->ISO_OFFSET_DATE:Lorg/threeten/bp/format/b;

    .line 81
    .line 82
    new-instance v11, Lorg/threeten/bp/format/c;

    .line 83
    .line 84
    .line 85
    invoke-direct {v11}, Lorg/threeten/bp/format/c;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 89
    move-result-object v11

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v0}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 93
    move-result-object v11

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 97
    move-result-object v11

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 101
    move-result-object v11

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 105
    move-result-object v11

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 109
    move-result-object v11

    .line 110
    .line 111
    sput-object v11, Lorg/threeten/bp/format/b;->ISO_DATE:Lorg/threeten/bp/format/b;

    .line 112
    .line 113
    new-instance v11, Lorg/threeten/bp/format/c;

    .line 114
    .line 115
    .line 116
    invoke-direct {v11}, Lorg/threeten/bp/format/c;-><init>()V

    .line 117
    .line 118
    sget-object v12, Lorg/threeten/bp/temporal/a;->HOUR_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v12, v7}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 122
    move-result-object v11

    .line 123
    .line 124
    const/16 v13, 0x3a

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11, v13}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 128
    move-result-object v11

    .line 129
    .line 130
    sget-object v14, Lorg/threeten/bp/temporal/a;->MINUTE_OF_HOUR:Lorg/threeten/bp/temporal/a;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v14, v7}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 134
    move-result-object v11

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 138
    move-result-object v11

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v13}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 142
    move-result-object v11

    .line 143
    .line 144
    sget-object v15, Lorg/threeten/bp/temporal/a;->SECOND_OF_MINUTE:Lorg/threeten/bp/temporal/a;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v15, v7}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 148
    move-result-object v11

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 152
    move-result-object v11

    .line 153
    .line 154
    sget-object v13, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 155
    const/4 v7, 0x0

    .line 156
    .line 157
    const/16 v5, 0x9

    .line 158
    const/4 v3, 0x1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v13, v7, v5, v3}, Lorg/threeten/bp/format/c;->b(Lorg/threeten/bp/temporal/h;IIZ)Lorg/threeten/bp/format/c;

    .line 162
    move-result-object v5

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 166
    move-result-object v5

    .line 167
    .line 168
    sput-object v5, Lorg/threeten/bp/format/b;->ISO_LOCAL_TIME:Lorg/threeten/bp/format/b;

    .line 169
    .line 170
    new-instance v7, Lorg/threeten/bp/format/c;

    .line 171
    .line 172
    .line 173
    invoke-direct {v7}, Lorg/threeten/bp/format/c;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 177
    move-result-object v7

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v5}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 181
    move-result-object v7

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 185
    move-result-object v7

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 189
    move-result-object v7

    .line 190
    .line 191
    sput-object v7, Lorg/threeten/bp/format/b;->ISO_OFFSET_TIME:Lorg/threeten/bp/format/b;

    .line 192
    .line 193
    new-instance v7, Lorg/threeten/bp/format/c;

    .line 194
    .line 195
    .line 196
    invoke-direct {v7}, Lorg/threeten/bp/format/c;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 200
    move-result-object v7

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v5}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 204
    move-result-object v7

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 208
    move-result-object v7

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 212
    move-result-object v7

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 216
    move-result-object v7

    .line 217
    .line 218
    sput-object v7, Lorg/threeten/bp/format/b;->ISO_TIME:Lorg/threeten/bp/format/b;

    .line 219
    .line 220
    new-instance v7, Lorg/threeten/bp/format/c;

    .line 221
    .line 222
    .line 223
    invoke-direct {v7}, Lorg/threeten/bp/format/c;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 227
    move-result-object v7

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v0}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    const/16 v7, 0x54

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v5}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 249
    move-result-object v0

    .line 250
    .line 251
    sput-object v0, Lorg/threeten/bp/format/b;->ISO_LOCAL_DATE_TIME:Lorg/threeten/bp/format/b;

    .line 252
    .line 253
    new-instance v5, Lorg/threeten/bp/format/c;

    .line 254
    .line 255
    .line 256
    invoke-direct {v5}, Lorg/threeten/bp/format/c;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 260
    move-result-object v5

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v0}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 264
    move-result-object v5

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 268
    move-result-object v5

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 272
    move-result-object v5

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 276
    move-result-object v5

    .line 277
    .line 278
    sput-object v5, Lorg/threeten/bp/format/b;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/b;

    .line 279
    .line 280
    new-instance v7, Lorg/threeten/bp/format/c;

    .line 281
    .line 282
    .line 283
    invoke-direct {v7}, Lorg/threeten/bp/format/c;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7, v5}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 287
    move-result-object v5

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 291
    move-result-object v5

    .line 292
    .line 293
    const/16 v7, 0x5b

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v7}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 297
    move-result-object v5

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5}, Lorg/threeten/bp/format/c;->q()Lorg/threeten/bp/format/c;

    .line 301
    move-result-object v5

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Lorg/threeten/bp/format/c;->m()Lorg/threeten/bp/format/c;

    .line 305
    move-result-object v5

    .line 306
    .line 307
    const/16 v11, 0x5d

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5, v11}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 311
    move-result-object v5

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 315
    move-result-object v5

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 319
    move-result-object v5

    .line 320
    .line 321
    sput-object v5, Lorg/threeten/bp/format/b;->ISO_ZONED_DATE_TIME:Lorg/threeten/bp/format/b;

    .line 322
    .line 323
    new-instance v5, Lorg/threeten/bp/format/c;

    .line 324
    .line 325
    .line 326
    invoke-direct {v5}, Lorg/threeten/bp/format/c;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v0}, Lorg/threeten/bp/format/c;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/c;

    .line 330
    move-result-object v0

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 334
    move-result-object v0

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 338
    move-result-object v0

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v7}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 346
    move-result-object v0

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->q()Lorg/threeten/bp/format/c;

    .line 350
    move-result-object v0

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->m()Lorg/threeten/bp/format/c;

    .line 354
    move-result-object v0

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v11}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 358
    move-result-object v0

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 362
    move-result-object v0

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 366
    move-result-object v0

    .line 367
    .line 368
    sput-object v0, Lorg/threeten/bp/format/b;->ISO_DATE_TIME:Lorg/threeten/bp/format/b;

    .line 369
    .line 370
    new-instance v0, Lorg/threeten/bp/format/c;

    .line 371
    .line 372
    .line 373
    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 377
    move-result-object v0

    .line 378
    const/4 v5, 0x4

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v1, v5, v4, v2}, Lorg/threeten/bp/format/c;->l(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)Lorg/threeten/bp/format/c;

    .line 382
    move-result-object v0

    .line 383
    .line 384
    const/16 v5, 0x2d

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v5}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 388
    move-result-object v0

    .line 389
    .line 390
    sget-object v5, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 391
    const/4 v7, 0x3

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v5, v7}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 395
    move-result-object v0

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 399
    move-result-object v0

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 403
    move-result-object v0

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 407
    move-result-object v0

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 411
    move-result-object v0

    .line 412
    .line 413
    sput-object v0, Lorg/threeten/bp/format/b;->ISO_ORDINAL_DATE:Lorg/threeten/bp/format/b;

    .line 414
    .line 415
    new-instance v0, Lorg/threeten/bp/format/c;

    .line 416
    .line 417
    .line 418
    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 422
    move-result-object v0

    .line 423
    .line 424
    sget-object v5, Lorg/threeten/bp/temporal/c;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/h;

    .line 425
    const/4 v7, 0x4

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v5, v7, v4, v2}, Lorg/threeten/bp/format/c;->l(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)Lorg/threeten/bp/format/c;

    .line 429
    move-result-object v0

    .line 430
    .line 431
    const-string v2, "-W"

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/c;->f(Ljava/lang/String;)Lorg/threeten/bp/format/c;

    .line 435
    move-result-object v0

    .line 436
    .line 437
    sget-object v2, Lorg/threeten/bp/temporal/c;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/h;

    .line 438
    const/4 v4, 0x2

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v2, v4}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 442
    move-result-object v0

    .line 443
    .line 444
    const/16 v2, 0x2d

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 448
    move-result-object v0

    .line 449
    .line 450
    sget-object v2, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 454
    move-result-object v0

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 458
    move-result-object v0

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->h()Lorg/threeten/bp/format/c;

    .line 462
    move-result-object v0

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 466
    move-result-object v0

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 470
    move-result-object v0

    .line 471
    .line 472
    sput-object v0, Lorg/threeten/bp/format/b;->ISO_WEEK_DATE:Lorg/threeten/bp/format/b;

    .line 473
    .line 474
    new-instance v0, Lorg/threeten/bp/format/c;

    .line 475
    .line 476
    .line 477
    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 481
    move-result-object v0

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->c()Lorg/threeten/bp/format/c;

    .line 485
    move-result-object v0

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 489
    move-result-object v0

    .line 490
    .line 491
    sput-object v0, Lorg/threeten/bp/format/b;->ISO_INSTANT:Lorg/threeten/bp/format/b;

    .line 492
    .line 493
    new-instance v0, Lorg/threeten/bp/format/c;

    .line 494
    .line 495
    .line 496
    invoke-direct {v0}, Lorg/threeten/bp/format/c;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 500
    move-result-object v0

    .line 501
    const/4 v4, 0x4

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v1, v4}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 505
    move-result-object v0

    .line 506
    const/4 v4, 0x2

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v6, v4}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 510
    move-result-object v0

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v8, v4}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 514
    move-result-object v0

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 518
    move-result-object v0

    .line 519
    .line 520
    const-string v4, "+HHMMss"

    .line 521
    .line 522
    const-string v5, "Z"

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/format/c;->g(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/c;

    .line 526
    move-result-object v0

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v9}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 530
    move-result-object v0

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0, v10}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 534
    move-result-object v0

    .line 535
    .line 536
    sput-object v0, Lorg/threeten/bp/format/b;->BASIC_ISO_DATE:Lorg/threeten/bp/format/b;

    .line 537
    .line 538
    new-instance v0, Ljava/util/HashMap;

    .line 539
    .line 540
    .line 541
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    .line 543
    const-wide/16 v4, 0x1

    .line 544
    .line 545
    .line 546
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 547
    move-result-object v4

    .line 548
    .line 549
    const-string v5, "Mon"

    .line 550
    .line 551
    .line 552
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    const-wide/16 v16, 0x2

    .line 555
    .line 556
    .line 557
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 558
    move-result-object v5

    .line 559
    .line 560
    const-string v7, "Tue"

    .line 561
    .line 562
    .line 563
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    const-wide/16 v16, 0x3

    .line 566
    .line 567
    .line 568
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 569
    move-result-object v7

    .line 570
    .line 571
    const-string v9, "Wed"

    .line 572
    .line 573
    .line 574
    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    const-wide/16 v16, 0x4

    .line 577
    .line 578
    .line 579
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 580
    move-result-object v9

    .line 581
    .line 582
    const-string v11, "Thu"

    .line 583
    .line 584
    .line 585
    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    const-wide/16 v16, 0x5

    .line 588
    .line 589
    .line 590
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 591
    move-result-object v11

    .line 592
    .line 593
    const-string v13, "Fri"

    .line 594
    .line 595
    .line 596
    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    const-wide/16 v16, 0x6

    .line 599
    .line 600
    .line 601
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 602
    move-result-object v13

    .line 603
    .line 604
    const-string v3, "Sat"

    .line 605
    .line 606
    .line 607
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    const-wide/16 v16, 0x7

    .line 610
    .line 611
    .line 612
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 613
    move-result-object v3

    .line 614
    .line 615
    move-object/from16 v16, v10

    .line 616
    .line 617
    const-string v10, "Sun"

    .line 618
    .line 619
    .line 620
    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    new-instance v10, Ljava/util/HashMap;

    .line 623
    .line 624
    .line 625
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 626
    .line 627
    move-object/from16 v17, v15

    .line 628
    .line 629
    const-string v15, "Jan"

    .line 630
    .line 631
    .line 632
    invoke-interface {v10, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    const-string v4, "Feb"

    .line 635
    .line 636
    .line 637
    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    const-string v4, "Mar"

    .line 640
    .line 641
    .line 642
    invoke-interface {v10, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    const-string v4, "Apr"

    .line 645
    .line 646
    .line 647
    invoke-interface {v10, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    const-string v4, "May"

    .line 650
    .line 651
    .line 652
    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    const-string v4, "Jun"

    .line 655
    .line 656
    .line 657
    invoke-interface {v10, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    const-string v4, "Jul"

    .line 660
    .line 661
    .line 662
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    const-wide/16 v3, 0x8

    .line 665
    .line 666
    .line 667
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 668
    move-result-object v3

    .line 669
    .line 670
    const-string v4, "Aug"

    .line 671
    .line 672
    .line 673
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    const-wide/16 v3, 0x9

    .line 676
    .line 677
    .line 678
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 679
    move-result-object v3

    .line 680
    .line 681
    const-string v4, "Sep"

    .line 682
    .line 683
    .line 684
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    const-wide/16 v3, 0xa

    .line 687
    .line 688
    .line 689
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 690
    move-result-object v3

    .line 691
    .line 692
    const-string v4, "Oct"

    .line 693
    .line 694
    .line 695
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    const-wide/16 v3, 0xb

    .line 698
    .line 699
    .line 700
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 701
    move-result-object v3

    .line 702
    .line 703
    const-string v4, "Nov"

    .line 704
    .line 705
    .line 706
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    const-wide/16 v3, 0xc

    .line 709
    .line 710
    .line 711
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 712
    move-result-object v3

    .line 713
    .line 714
    const-string v4, "Dec"

    .line 715
    .line 716
    .line 717
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    new-instance v3, Lorg/threeten/bp/format/c;

    .line 720
    .line 721
    .line 722
    invoke-direct {v3}, Lorg/threeten/bp/format/c;-><init>()V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v3}, Lorg/threeten/bp/format/c;->p()Lorg/threeten/bp/format/c;

    .line 726
    move-result-object v3

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3}, Lorg/threeten/bp/format/c;->r()Lorg/threeten/bp/format/c;

    .line 730
    move-result-object v3

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 734
    move-result-object v3

    .line 735
    .line 736
    .line 737
    invoke-virtual {v3, v2, v0}, Lorg/threeten/bp/format/c;->i(Lorg/threeten/bp/temporal/h;Ljava/util/Map;)Lorg/threeten/bp/format/c;

    .line 738
    move-result-object v0

    .line 739
    .line 740
    const-string v2, ", "

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/c;->f(Ljava/lang/String;)Lorg/threeten/bp/format/c;

    .line 744
    move-result-object v0

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->n()Lorg/threeten/bp/format/c;

    .line 748
    move-result-object v0

    .line 749
    .line 750
    sget-object v2, Lorg/threeten/bp/format/h;->NOT_NEGATIVE:Lorg/threeten/bp/format/h;

    .line 751
    const/4 v3, 0x2

    .line 752
    const/4 v4, 0x1

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v8, v4, v3, v2}, Lorg/threeten/bp/format/c;->l(Lorg/threeten/bp/temporal/h;IILorg/threeten/bp/format/h;)Lorg/threeten/bp/format/c;

    .line 756
    move-result-object v0

    .line 757
    .line 758
    const/16 v2, 0x20

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 762
    move-result-object v0

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v6, v10}, Lorg/threeten/bp/format/c;->i(Lorg/threeten/bp/temporal/h;Ljava/util/Map;)Lorg/threeten/bp/format/c;

    .line 766
    move-result-object v0

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 770
    move-result-object v0

    .line 771
    const/4 v4, 0x4

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0, v1, v4}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 775
    move-result-object v0

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 779
    move-result-object v0

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v12, v3}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 783
    move-result-object v0

    .line 784
    .line 785
    const/16 v1, 0x3a

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 789
    move-result-object v0

    .line 790
    .line 791
    .line 792
    invoke-virtual {v0, v14, v3}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 793
    move-result-object v0

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->o()Lorg/threeten/bp/format/c;

    .line 797
    move-result-object v0

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 801
    move-result-object v0

    .line 802
    .line 803
    move-object/from16 v1, v17

    .line 804
    .line 805
    .line 806
    invoke-virtual {v0, v1, v3}, Lorg/threeten/bp/format/c;->k(Lorg/threeten/bp/temporal/h;I)Lorg/threeten/bp/format/c;

    .line 807
    move-result-object v0

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0}, Lorg/threeten/bp/format/c;->n()Lorg/threeten/bp/format/c;

    .line 811
    move-result-object v0

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0, v2}, Lorg/threeten/bp/format/c;->e(C)Lorg/threeten/bp/format/c;

    .line 815
    move-result-object v0

    .line 816
    .line 817
    const-string v1, "+HHMM"

    .line 818
    .line 819
    const-string v2, "GMT"

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/c;->g(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/c;

    .line 823
    move-result-object v0

    .line 824
    .line 825
    sget-object v1, Lorg/threeten/bp/format/g;->SMART:Lorg/threeten/bp/format/g;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/c;->u(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;

    .line 829
    move-result-object v0

    .line 830
    .line 831
    move-object/from16 v1, v16

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/b;->h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;

    .line 835
    move-result-object v0

    .line 836
    .line 837
    sput-object v0, Lorg/threeten/bp/format/b;->RFC_1123_DATE_TIME:Lorg/threeten/bp/format/b;

    .line 838
    .line 839
    new-instance v0, Lorg/threeten/bp/format/b$a;

    .line 840
    .line 841
    .line 842
    invoke-direct {v0}, Lorg/threeten/bp/format/b$a;-><init>()V

    .line 843
    .line 844
    sput-object v0, Lorg/threeten/bp/format/b;->PARSED_EXCESS_DAYS:Lorg/threeten/bp/temporal/j;

    .line 845
    .line 846
    new-instance v0, Lorg/threeten/bp/format/b$b;

    .line 847
    .line 848
    .line 849
    invoke-direct {v0}, Lorg/threeten/bp/format/b$b;-><init>()V

    .line 850
    .line 851
    sput-object v0, Lorg/threeten/bp/format/b;->PARSED_LEAP_SECOND:Lorg/threeten/bp/temporal/j;

    .line 852
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/format/c$f;Ljava/util/Locale;Lorg/threeten/bp/format/f;Lorg/threeten/bp/format/g;Ljava/util/Set;Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/c$f;",
            "Ljava/util/Locale;",
            "Lorg/threeten/bp/format/f;",
            "Lorg/threeten/bp/format/g;",
            "Ljava/util/Set<",
            "Lorg/threeten/bp/temporal/h;",
            ">;",
            "Lorg/threeten/bp/chrono/h;",
            "Lorg/threeten/bp/r;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "printerParser"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/format/c$f;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/threeten/bp/format/b;->printerParser:Lorg/threeten/bp/format/c$f;

    .line 14
    .line 15
    const-string p1, "locale"

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Ljava/util/Locale;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/threeten/bp/format/b;->locale:Ljava/util/Locale;

    .line 24
    .line 25
    const-string p1, "decimalStyle"

    .line 26
    .line 27
    .line 28
    invoke-static {p3, p1}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lorg/threeten/bp/format/f;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/threeten/bp/format/b;->decimalStyle:Lorg/threeten/bp/format/f;

    .line 34
    .line 35
    const-string p1, "resolverStyle"

    .line 36
    .line 37
    .line 38
    invoke-static {p4, p1}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lorg/threeten/bp/format/g;

    .line 42
    .line 43
    iput-object p1, p0, Lorg/threeten/bp/format/b;->resolverStyle:Lorg/threeten/bp/format/g;

    .line 44
    .line 45
    iput-object p5, p0, Lorg/threeten/bp/format/b;->resolverFields:Ljava/util/Set;

    .line 46
    .line 47
    iput-object p6, p0, Lorg/threeten/bp/format/b;->chrono:Lorg/threeten/bp/chrono/h;

    .line 48
    .line 49
    iput-object p7, p0, Lorg/threeten/bp/format/b;->zone:Lorg/threeten/bp/r;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/temporal/e;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lorg/threeten/bp/format/b;->b(Lorg/threeten/bp/temporal/e;Ljava/lang/Appendable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public b(Lorg/threeten/bp/temporal/e;Ljava/lang/Appendable;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "temporal"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "appendable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    :try_start_0
    new-instance v0, Lorg/threeten/bp/format/d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, p0}, Lorg/threeten/bp/format/d;-><init>(Lorg/threeten/bp/temporal/e;Lorg/threeten/bp/format/b;)V

    .line 16
    .line 17
    instance-of p1, p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/threeten/bp/format/b;->printerParser:Lorg/threeten/bp/format/c$f;

    .line 22
    .line 23
    check-cast p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Lorg/threeten/bp/format/c$f;->a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .line 38
    iget-object v1, p0, Lorg/threeten/bp/format/b;->printerParser:Lorg/threeten/bp/format/c$f;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0, p1}, Lorg/threeten/bp/format/c$f;->a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z

    .line 42
    .line 43
    .line 44
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 46
    .line 47
    :goto_1
    new-instance p2, Lorg/threeten/bp/b;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    throw p2
.end method

.method public c()Lorg/threeten/bp/chrono/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/b;->chrono:Lorg/threeten/bp/chrono/h;

    return-object v0
.end method

.method public d()Lorg/threeten/bp/format/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/b;->decimalStyle:Lorg/threeten/bp/format/f;

    return-object v0
.end method

.method public e()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/b;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public f()Lorg/threeten/bp/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/format/b;->zone:Lorg/threeten/bp/r;

    return-object v0
.end method

.method g(Z)Lorg/threeten/bp/format/c$f;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/b;->printerParser:Lorg/threeten/bp/format/c$f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/threeten/bp/format/c$f;->b(Z)Lorg/threeten/bp/format/c$f;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Lorg/threeten/bp/chrono/h;)Lorg/threeten/bp/format/b;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/b;->chrono:Lorg/threeten/bp/chrono/h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lra/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/b;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/threeten/bp/format/b;->printerParser:Lorg/threeten/bp/format/c$f;

    .line 14
    .line 15
    iget-object v3, p0, Lorg/threeten/bp/format/b;->locale:Ljava/util/Locale;

    .line 16
    .line 17
    iget-object v4, p0, Lorg/threeten/bp/format/b;->decimalStyle:Lorg/threeten/bp/format/f;

    .line 18
    .line 19
    iget-object v5, p0, Lorg/threeten/bp/format/b;->resolverStyle:Lorg/threeten/bp/format/g;

    .line 20
    .line 21
    iget-object v6, p0, Lorg/threeten/bp/format/b;->resolverFields:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v8, p0, Lorg/threeten/bp/format/b;->zone:Lorg/threeten/bp/r;

    .line 24
    move-object v1, v0

    .line 25
    move-object v7, p1

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/b;-><init>(Lorg/threeten/bp/format/c$f;Ljava/util/Locale;Lorg/threeten/bp/format/f;Lorg/threeten/bp/format/g;Ljava/util/Set;Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/r;)V

    .line 29
    return-object v0
.end method

.method public i(Lorg/threeten/bp/format/g;)Lorg/threeten/bp/format/b;
    .locals 9

    .line 1
    .line 2
    const-string v0, "resolverStyle"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/format/b;->resolverStyle:Lorg/threeten/bp/format/g;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lra/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-object p0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/b;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/threeten/bp/format/b;->printerParser:Lorg/threeten/bp/format/c$f;

    .line 19
    .line 20
    iget-object v3, p0, Lorg/threeten/bp/format/b;->locale:Ljava/util/Locale;

    .line 21
    .line 22
    iget-object v4, p0, Lorg/threeten/bp/format/b;->decimalStyle:Lorg/threeten/bp/format/f;

    .line 23
    .line 24
    iget-object v6, p0, Lorg/threeten/bp/format/b;->resolverFields:Ljava/util/Set;

    .line 25
    .line 26
    iget-object v7, p0, Lorg/threeten/bp/format/b;->chrono:Lorg/threeten/bp/chrono/h;

    .line 27
    .line 28
    iget-object v8, p0, Lorg/threeten/bp/format/b;->zone:Lorg/threeten/bp/r;

    .line 29
    move-object v1, v0

    .line 30
    move-object v5, p1

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v8}, Lorg/threeten/bp/format/b;-><init>(Lorg/threeten/bp/format/c$f;Ljava/util/Locale;Lorg/threeten/bp/format/f;Lorg/threeten/bp/format/g;Ljava/util/Set;Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/r;)V

    .line 34
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/b;->printerParser:Lorg/threeten/bp/format/c$f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/format/c$f;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "["

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    sub-int/2addr v1, v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0
.end method
