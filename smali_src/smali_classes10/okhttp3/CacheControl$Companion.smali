.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    :goto_0
    if-ge p3, v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v1, p3, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v2, v5, v3, v4}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    return p3

    .line 23
    :cond_0
    move p3, v1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x2

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 30
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "headers"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 13
    move-result v2

    .line 14
    const/4 v5, 0x1

    .line 15
    move v8, v5

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, -0x1

    .line 21
    const/4 v13, -0x1

    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    .line 25
    const/16 v16, 0x0

    .line 26
    .line 27
    const/16 v17, -0x1

    .line 28
    .line 29
    const/16 v18, -0x1

    .line 30
    .line 31
    const/16 v19, 0x0

    .line 32
    .line 33
    const/16 v20, 0x0

    .line 34
    .line 35
    const/16 v21, 0x0

    .line 36
    .line 37
    :goto_0
    if-ge v7, v2, :cond_12

    .line 38
    .line 39
    add-int/lit8 v22, v7, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 47
    move-result-object v7

    .line 48
    .line 49
    const-string v6, "Cache-Control"

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v6, v5}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 53
    move-result v6

    .line 54
    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    if-eqz v9, :cond_0

    .line 58
    :goto_1
    const/4 v8, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    move-object v9, v7

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_1
    const-string v6, "Pragma"

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v6, v5}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_11

    .line 70
    goto :goto_1

    .line 71
    :goto_2
    const/4 v3, 0x0

    .line 72
    .line 73
    .line 74
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 75
    move-result v6

    .line 76
    .line 77
    if-ge v3, v6, :cond_11

    .line 78
    .line 79
    const-string v6, "=,;"

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v7, v6, v3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 83
    move-result v6

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 104
    move-result v5

    .line 105
    .line 106
    if-eq v6, v5, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 110
    move-result v5

    .line 111
    .line 112
    const/16 v1, 0x2c

    .line 113
    .line 114
    if-eq v5, v1, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 118
    move-result v1

    .line 119
    .line 120
    const/16 v5, 0x3b

    .line 121
    .line 122
    if-ne v1, v5, :cond_2

    .line 123
    goto :goto_4

    .line 124
    .line 125
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    .line 128
    invoke-static {v7, v6}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    .line 129
    move-result v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 133
    move-result v5

    .line 134
    .line 135
    if-ge v1, v5, :cond_3

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    .line 139
    move-result v5

    .line 140
    .line 141
    const/16 v6, 0x22

    .line 142
    .line 143
    if-ne v5, v6, :cond_3

    .line 144
    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    const/16 v25, 0x22

    .line 148
    .line 149
    const/16 v27, 0x0

    .line 150
    .line 151
    const/16 v28, 0x4

    .line 152
    .line 153
    const/16 v29, 0x0

    .line 154
    .line 155
    move-object/from16 v24, v7

    .line 156
    .line 157
    move/from16 v26, v1

    .line 158
    .line 159
    .line 160
    invoke-static/range {v24 .. v29}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 161
    move-result v5

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    const/4 v4, 0x1

    .line 170
    add-int/2addr v5, v4

    .line 171
    goto :goto_5

    .line 172
    .line 173
    :cond_3
    const-string v5, ",;"

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, v7, v5, v1}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    .line 177
    move-result v5

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 193
    goto :goto_5

    .line 194
    .line 195
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 196
    move v5, v6

    .line 197
    const/4 v1, 0x0

    .line 198
    .line 199
    :goto_5
    const-string v4, "no-cache"

    .line 200
    const/4 v6, 0x1

    .line 201
    .line 202
    .line 203
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 204
    move-result v4

    .line 205
    .line 206
    if-eqz v4, :cond_5

    .line 207
    .line 208
    move-object/from16 v1, p1

    .line 209
    move v3, v5

    .line 210
    move v5, v6

    .line 211
    move v10, v5

    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    :cond_5
    const-string v4, "no-store"

    .line 216
    .line 217
    .line 218
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 219
    move-result v4

    .line 220
    .line 221
    if-eqz v4, :cond_6

    .line 222
    .line 223
    move-object/from16 v1, p1

    .line 224
    move v3, v5

    .line 225
    move v5, v6

    .line 226
    move v11, v5

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :cond_6
    const-string v4, "max-age"

    .line 231
    .line 232
    .line 233
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 234
    move-result v4

    .line 235
    .line 236
    if-eqz v4, :cond_8

    .line 237
    const/4 v4, -0x1

    .line 238
    .line 239
    .line 240
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 241
    move-result v12

    .line 242
    .line 243
    :cond_7
    :goto_6
    move-object/from16 v1, p1

    .line 244
    move v3, v5

    .line 245
    move v5, v6

    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_8
    const-string v4, "s-maxage"

    .line 250
    .line 251
    .line 252
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 253
    move-result v4

    .line 254
    .line 255
    if-eqz v4, :cond_9

    .line 256
    const/4 v4, -0x1

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 260
    move-result v13

    .line 261
    goto :goto_6

    .line 262
    .line 263
    :cond_9
    const-string v4, "private"

    .line 264
    .line 265
    .line 266
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 267
    move-result v4

    .line 268
    .line 269
    if-eqz v4, :cond_a

    .line 270
    .line 271
    move-object/from16 v1, p1

    .line 272
    move v3, v5

    .line 273
    move v5, v6

    .line 274
    move v14, v5

    .line 275
    .line 276
    goto/16 :goto_3

    .line 277
    .line 278
    :cond_a
    const-string v4, "public"

    .line 279
    .line 280
    .line 281
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 282
    move-result v4

    .line 283
    .line 284
    if-eqz v4, :cond_b

    .line 285
    .line 286
    move-object/from16 v1, p1

    .line 287
    move v3, v5

    .line 288
    move v5, v6

    .line 289
    move v15, v5

    .line 290
    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    :cond_b
    const-string v4, "must-revalidate"

    .line 294
    .line 295
    .line 296
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 297
    move-result v4

    .line 298
    .line 299
    if-eqz v4, :cond_c

    .line 300
    .line 301
    move-object/from16 v1, p1

    .line 302
    move v3, v5

    .line 303
    move v5, v6

    .line 304
    .line 305
    move/from16 v16, v5

    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :cond_c
    const-string v4, "max-stale"

    .line 310
    .line 311
    .line 312
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 313
    move-result v4

    .line 314
    .line 315
    if-eqz v4, :cond_d

    .line 316
    .line 317
    .line 318
    const v3, 0x7fffffff

    .line 319
    .line 320
    .line 321
    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 322
    move-result v17

    .line 323
    goto :goto_6

    .line 324
    .line 325
    :cond_d
    const-string v4, "min-fresh"

    .line 326
    .line 327
    .line 328
    invoke-static {v4, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 329
    move-result v4

    .line 330
    .line 331
    if-eqz v4, :cond_e

    .line 332
    const/4 v4, -0x1

    .line 333
    .line 334
    .line 335
    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    .line 336
    move-result v18

    .line 337
    goto :goto_6

    .line 338
    :cond_e
    const/4 v4, -0x1

    .line 339
    .line 340
    const-string v1, "only-if-cached"

    .line 341
    .line 342
    .line 343
    invoke-static {v1, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 344
    move-result v1

    .line 345
    .line 346
    if-eqz v1, :cond_f

    .line 347
    .line 348
    move-object/from16 v1, p1

    .line 349
    move v3, v5

    .line 350
    move v5, v6

    .line 351
    .line 352
    move/from16 v19, v5

    .line 353
    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    :cond_f
    const-string v1, "no-transform"

    .line 357
    .line 358
    .line 359
    invoke-static {v1, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 360
    move-result v1

    .line 361
    .line 362
    if-eqz v1, :cond_10

    .line 363
    .line 364
    move-object/from16 v1, p1

    .line 365
    move v3, v5

    .line 366
    move v5, v6

    .line 367
    .line 368
    move/from16 v20, v5

    .line 369
    .line 370
    goto/16 :goto_3

    .line 371
    .line 372
    :cond_10
    const-string v1, "immutable"

    .line 373
    .line 374
    .line 375
    invoke-static {v1, v3, v6}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 376
    move-result v1

    .line 377
    .line 378
    if-eqz v1, :cond_7

    .line 379
    .line 380
    move-object/from16 v1, p1

    .line 381
    move v3, v5

    .line 382
    move v5, v6

    .line 383
    .line 384
    move/from16 v21, v5

    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    :cond_11
    const/4 v4, -0x1

    .line 388
    .line 389
    move-object/from16 v1, p1

    .line 390
    .line 391
    move/from16 v7, v22

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_12
    if-nez v8, :cond_13

    .line 396
    .line 397
    const/16 v22, 0x0

    .line 398
    goto :goto_7

    .line 399
    .line 400
    :cond_13
    move-object/from16 v22, v9

    .line 401
    .line 402
    :goto_7
    new-instance v1, Lokhttp3/CacheControl;

    .line 403
    .line 404
    const/16 v23, 0x0

    .line 405
    move-object v9, v1

    .line 406
    .line 407
    .line 408
    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/k;)V

    .line 409
    return-object v1
.end method
