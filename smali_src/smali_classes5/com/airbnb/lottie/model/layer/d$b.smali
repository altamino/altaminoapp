.class public Lcom/airbnb/lottie/model/layer/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/layer/d;
    .locals 26

    .line 1
    .line 2
    move-object/from16 v2, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 6
    move-result-object v18

    .line 7
    .line 8
    new-instance v25, Lcom/airbnb/lottie/model/layer/d;

    .line 9
    .line 10
    move-object/from16 v0, v25

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "root"

    .line 18
    .line 19
    const-wide/16 v4, -0x1

    .line 20
    .line 21
    sget-object v6, Lcom/airbnb/lottie/model/layer/d$c;->PreComp:Lcom/airbnb/lottie/model/layer/d$c;

    .line 22
    .line 23
    const-wide/16 v7, -0x1

    .line 24
    const/4 v9, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    move-result-object v10

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/l$b;->a()Lcom/airbnb/lottie/model/animatable/l;

    .line 32
    move-result-object v11

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v13, 0x0

    .line 35
    const/4 v14, 0x0

    .line 36
    const/4 v15, 0x0

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    .line 42
    move-result v17

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    .line 46
    move-result v18

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const/16 v20, 0x0

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 54
    move-result-object v21

    .line 55
    .line 56
    sget-object v22, Lcom/airbnb/lottie/model/layer/d$d;->None:Lcom/airbnb/lottie/model/layer/d$d;

    .line 57
    .line 58
    const/16 v23, 0x0

    .line 59
    .line 60
    const/16 v24, 0x0

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/d;-><init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/d$c;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;IIIFFIILcom/airbnb/lottie/model/animatable/j;Lcom/airbnb/lottie/model/animatable/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/d$d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/layer/d$a;)V

    .line 64
    return-object v25
.end method

.method public static b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/layer/d;
    .locals 37

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "nm"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v9

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "refId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v10

    .line 19
    .line 20
    const-string v1, ".ai"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string v1, "cl"

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "ai"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    :cond_0
    const-string v1, "Convert your Illustrator layers to shape layers."

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/e;->g(Ljava/lang/String;)V

    .line 48
    .line 49
    :cond_1
    const-string v1, "ind"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 53
    move-result-wide v11

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "ty"

    .line 57
    const/4 v2, -0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 61
    move-result v1

    .line 62
    .line 63
    sget-object v2, Lcom/airbnb/lottie/model/layer/d$c;->Unknown:Lcom/airbnb/lottie/model/layer/d$c;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 67
    move-result v3

    .line 68
    .line 69
    if-ge v1, v3, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/airbnb/lottie/model/layer/d$c;->values()[Lcom/airbnb/lottie/model/layer/d$c;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    aget-object v1, v3, v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v1, v2

    .line 78
    .line 79
    :goto_0
    sget-object v3, Lcom/airbnb/lottie/model/layer/d$c;->Text:Lcom/airbnb/lottie/model/layer/d$c;

    .line 80
    const/4 v13, 0x0

    .line 81
    .line 82
    if-ne v1, v3, :cond_3

    .line 83
    const/4 v3, 0x4

    .line 84
    .line 85
    const/16 v4, 0x8

    .line 86
    .line 87
    .line 88
    invoke-static {v8, v3, v4, v13}, Lcom/airbnb/lottie/utils/f;->h(Lcom/airbnb/lottie/e;III)Z

    .line 89
    move-result v3

    .line 90
    .line 91
    if-nez v3, :cond_3

    .line 92
    .line 93
    const-string v1, "Text is only supported on bodymovin >= 4.8.0"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/e;->g(Ljava/lang/String;)V

    .line 97
    move-object v14, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move-object v14, v1

    .line 100
    .line 101
    .line 102
    :goto_1
    const-string/jumbo v1, "parent"

    .line 103
    .line 104
    const-wide/16 v2, -0x1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 108
    move-result-wide v15

    .line 109
    .line 110
    sget-object v1, Lcom/airbnb/lottie/model/layer/d$c;->Solid:Lcom/airbnb/lottie/model/layer/d$c;

    .line 111
    .line 112
    if-ne v14, v1, :cond_4

    .line 113
    .line 114
    .line 115
    const-string/jumbo v1, "sw"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 119
    move-result v1

    .line 120
    int-to-float v1, v1

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->j()F

    .line 124
    move-result v2

    .line 125
    mul-float/2addr v1, v2

    .line 126
    float-to-int v1, v1

    .line 127
    .line 128
    .line 129
    const-string/jumbo v2, "sh"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 133
    move-result v2

    .line 134
    int-to-float v2, v2

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->j()F

    .line 138
    move-result v3

    .line 139
    mul-float/2addr v2, v3

    .line 140
    float-to-int v2, v2

    .line 141
    .line 142
    .line 143
    const-string/jumbo v3, "sc"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 151
    move-result v3

    .line 152
    .line 153
    move/from16 v17, v1

    .line 154
    .line 155
    move/from16 v18, v2

    .line 156
    .line 157
    move/from16 v19, v3

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_4
    move/from16 v17, v13

    .line 161
    .line 162
    move/from16 v18, v17

    .line 163
    .line 164
    move/from16 v19, v18

    .line 165
    .line 166
    :goto_2
    const-string v1, "ks"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v8}, Lcom/airbnb/lottie/model/animatable/l$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/l;

    .line 174
    move-result-object v20

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/airbnb/lottie/model/layer/d$d;->values()[Lcom/airbnb/lottie/model/layer/d$d;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    const-string/jumbo v2, "tt"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 185
    move-result v2

    .line 186
    .line 187
    aget-object v22, v1, v2

    .line 188
    .line 189
    new-instance v7, Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    new-instance v6, Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    const-string v1, "masksProperties"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    if-eqz v1, :cond_5

    .line 206
    move v2, v13

    .line 207
    .line 208
    .line 209
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 210
    move-result v3

    .line 211
    .line 212
    if-ge v2, v3, :cond_5

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-static {v3, v8}, Lcom/airbnb/lottie/model/content/g$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/g;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    .line 223
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 226
    goto :goto_3

    .line 227
    .line 228
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .line 229
    .line 230
    .line 231
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string/jumbo v1, "shapes"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    if-eqz v1, :cond_7

    .line 241
    move v2, v13

    .line 242
    .line 243
    .line 244
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 245
    move-result v3

    .line 246
    .line 247
    if-ge v2, v3, :cond_7

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 251
    move-result-object v3

    .line 252
    .line 253
    .line 254
    invoke-static {v3, v8}, Lcom/airbnb/lottie/model/content/n;->d(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/b;

    .line 255
    move-result-object v3

    .line 256
    .line 257
    if-eqz v3, :cond_6

    .line 258
    .line 259
    .line 260
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 263
    goto :goto_4

    .line 264
    .line 265
    .line 266
    :cond_7
    const-string/jumbo v1, "t"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 270
    move-result-object v1

    .line 271
    .line 272
    const/16 v21, 0x0

    .line 273
    .line 274
    if-eqz v1, :cond_8

    .line 275
    .line 276
    const-string v2, "d"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 280
    move-result-object v2

    .line 281
    .line 282
    .line 283
    invoke-static {v2, v8}, Lcom/airbnb/lottie/model/animatable/j$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/j;

    .line 284
    move-result-object v2

    .line 285
    .line 286
    const-string v3, "a"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 290
    move-result-object v1

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    .line 297
    invoke-static {v1, v8}, Lcom/airbnb/lottie/model/animatable/k$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/k;

    .line 298
    move-result-object v1

    .line 299
    .line 300
    move-object/from16 v25, v1

    .line 301
    .line 302
    move-object/from16 v23, v2

    .line 303
    goto :goto_5

    .line 304
    .line 305
    :cond_8
    move-object/from16 v23, v21

    .line 306
    .line 307
    move-object/from16 v25, v23

    .line 308
    .line 309
    :goto_5
    const-string v1, "ef"

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 313
    move-result v1

    .line 314
    .line 315
    if-eqz v1, :cond_9

    .line 316
    .line 317
    const-string v1, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape."

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/e;->g(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_9
    const-string/jumbo v1, "sr"

    .line 324
    .line 325
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 329
    move-result-wide v1

    .line 330
    double-to-float v4, v1

    .line 331
    .line 332
    .line 333
    const-string/jumbo v1, "st"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 337
    move-result-wide v1

    .line 338
    double-to-float v1, v1

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->l()F

    .line 342
    move-result v2

    .line 343
    .line 344
    div-float v26, v1, v2

    .line 345
    .line 346
    sget-object v1, Lcom/airbnb/lottie/model/layer/d$c;->PreComp:Lcom/airbnb/lottie/model/layer/d$c;

    .line 347
    .line 348
    if-ne v14, v1, :cond_a

    .line 349
    .line 350
    .line 351
    const-string/jumbo v1, "w"

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 355
    move-result v1

    .line 356
    int-to-float v1, v1

    .line 357
    .line 358
    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->j()F

    .line 360
    move-result v2

    .line 361
    mul-float/2addr v1, v2

    .line 362
    float-to-int v1, v1

    .line 363
    .line 364
    const-string v2, "h"

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 368
    move-result v2

    .line 369
    int-to-float v2, v2

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->j()F

    .line 373
    move-result v3

    .line 374
    mul-float/2addr v2, v3

    .line 375
    float-to-int v2, v2

    .line 376
    .line 377
    move/from16 v27, v1

    .line 378
    .line 379
    move/from16 v28, v2

    .line 380
    goto :goto_6

    .line 381
    .line 382
    :cond_a
    move/from16 v27, v13

    .line 383
    .line 384
    move/from16 v28, v27

    .line 385
    .line 386
    :goto_6
    const-string v1, "ip"

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 390
    move-result-wide v1

    .line 391
    long-to-float v1, v1

    .line 392
    .line 393
    div-float v24, v1, v4

    .line 394
    .line 395
    .line 396
    const-string/jumbo v1, "op"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 400
    move-result-wide v1

    .line 401
    long-to-float v1, v1

    .line 402
    .line 403
    div-float v29, v1, v4

    .line 404
    .line 405
    const/16 v30, 0x0

    .line 406
    .line 407
    cmpl-float v1, v24, v30

    .line 408
    .line 409
    if-lez v1, :cond_b

    .line 410
    .line 411
    new-instance v3, Lh0/a;

    .line 412
    .line 413
    .line 414
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 415
    move-result-object v31

    .line 416
    .line 417
    .line 418
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 419
    move-result-object v32

    .line 420
    .line 421
    const/16 v33, 0x0

    .line 422
    .line 423
    const/16 v34, 0x0

    .line 424
    .line 425
    .line 426
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    move-result-object v35

    .line 428
    move-object v1, v3

    .line 429
    .line 430
    move-object/from16 v2, p1

    .line 431
    move-object v13, v3

    .line 432
    .line 433
    move-object/from16 v3, v31

    .line 434
    .line 435
    move/from16 v31, v4

    .line 436
    .line 437
    move-object/from16 v4, v32

    .line 438
    .line 439
    move-object/from16 v32, v5

    .line 440
    .line 441
    move-object/from16 v5, v33

    .line 442
    .line 443
    move-object/from16 v36, v6

    .line 444
    .line 445
    move/from16 v6, v34

    .line 446
    .line 447
    move-object/from16 v33, v7

    .line 448
    .line 449
    move-object/from16 v7, v35

    .line 450
    .line 451
    .line 452
    invoke-direct/range {v1 .. v7}, Lh0/a;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 453
    .line 454
    move-object/from16 v7, v36

    .line 455
    .line 456
    .line 457
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    goto :goto_7

    .line 459
    .line 460
    :cond_b
    move/from16 v31, v4

    .line 461
    .line 462
    move-object/from16 v32, v5

    .line 463
    .line 464
    move-object/from16 v33, v7

    .line 465
    move-object v7, v6

    .line 466
    .line 467
    :goto_7
    cmpl-float v1, v29, v30

    .line 468
    .line 469
    if-lez v1, :cond_c

    .line 470
    goto :goto_8

    .line 471
    .line 472
    .line 473
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->m()J

    .line 474
    move-result-wide v1

    .line 475
    .line 476
    const-wide/16 v3, 0x1

    .line 477
    add-long/2addr v1, v3

    .line 478
    long-to-float v1, v1

    .line 479
    .line 480
    move/from16 v29, v1

    .line 481
    .line 482
    :goto_8
    new-instance v13, Lh0/a;

    .line 483
    .line 484
    const/high16 v1, 0x3f800000    # 1.0f

    .line 485
    .line 486
    .line 487
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 488
    move-result-object v3

    .line 489
    .line 490
    .line 491
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 492
    move-result-object v4

    .line 493
    const/4 v5, 0x0

    .line 494
    .line 495
    .line 496
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 497
    move-result-object v34

    .line 498
    move-object v1, v13

    .line 499
    .line 500
    move-object/from16 v2, p1

    .line 501
    .line 502
    move/from16 v6, v24

    .line 503
    .line 504
    move-object/from16 v35, v10

    .line 505
    move-object v10, v7

    .line 506
    .line 507
    move-object/from16 v7, v34

    .line 508
    .line 509
    .line 510
    invoke-direct/range {v1 .. v7}, Lh0/a;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 511
    .line 512
    .line 513
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    new-instance v13, Lh0/a;

    .line 516
    .line 517
    .line 518
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 519
    move-result-object v3

    .line 520
    .line 521
    .line 522
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 523
    move-result-object v4

    .line 524
    .line 525
    .line 526
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 527
    .line 528
    .line 529
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 530
    move-result-object v7

    .line 531
    move-object v1, v13

    .line 532
    .line 533
    move/from16 v6, v29

    .line 534
    .line 535
    .line 536
    invoke-direct/range {v1 .. v7}, Lh0/a;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 537
    .line 538
    .line 539
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    const-string/jumbo v1, "tm"

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 546
    move-result v2

    .line 547
    .line 548
    if-eqz v2, :cond_d

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 552
    move-result-object v0

    .line 553
    const/4 v1, 0x0

    .line 554
    .line 555
    .line 556
    invoke-static {v0, v8, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 557
    move-result-object v0

    .line 558
    .line 559
    move-object/from16 v29, v0

    .line 560
    goto :goto_9

    .line 561
    .line 562
    :cond_d
    move-object/from16 v29, v21

    .line 563
    .line 564
    :goto_9
    new-instance v30, Lcom/airbnb/lottie/model/layer/d;

    .line 565
    .line 566
    move-object/from16 v0, v30

    .line 567
    .line 568
    const/16 v24, 0x0

    .line 569
    .line 570
    move-object/from16 v1, v32

    .line 571
    .line 572
    move-object/from16 v2, p1

    .line 573
    move-object v3, v9

    .line 574
    move-wide v4, v11

    .line 575
    move-object v6, v14

    .line 576
    move-wide v7, v15

    .line 577
    .line 578
    move-object/from16 v9, v35

    .line 579
    .line 580
    move-object/from16 v21, v10

    .line 581
    .line 582
    move-object/from16 v10, v33

    .line 583
    .line 584
    move-object/from16 v11, v20

    .line 585
    .line 586
    move/from16 v12, v17

    .line 587
    .line 588
    move/from16 v13, v18

    .line 589
    .line 590
    move/from16 v14, v19

    .line 591
    .line 592
    move/from16 v15, v31

    .line 593
    .line 594
    move/from16 v16, v26

    .line 595
    .line 596
    move/from16 v17, v27

    .line 597
    .line 598
    move/from16 v18, v28

    .line 599
    .line 600
    move-object/from16 v19, v23

    .line 601
    .line 602
    move-object/from16 v20, v25

    .line 603
    .line 604
    move-object/from16 v23, v29

    .line 605
    .line 606
    .line 607
    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/d;-><init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/d$c;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;IIIFFIILcom/airbnb/lottie/model/animatable/j;Lcom/airbnb/lottie/model/animatable/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/d$d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/layer/d$a;)V

    .line 608
    return-object v30
.end method
