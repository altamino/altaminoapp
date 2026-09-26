.class public Lcom/narvii/leaderboard/LeaderBoardShareHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;
    }
.end annotation


# static fields
.field private static final DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/leaderboard/LeaderBoardShareHelper;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->drawWaterMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b()Lcom/narvii/util/statistics/TmpValue;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    return-object v0
.end method

.method private drawWaterMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;)Landroid/graphics/Bitmap;
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    const v2, 0x7f120b7c

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    iget-object v1, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    move-object/from16 v5, p3

    .line 27
    .line 28
    iget-object v5, v5, Lcom/narvii/model/Community;->endpoint:Ljava/lang/String;

    .line 29
    const/4 v6, 0x0

    .line 30
    .line 31
    aput-object v5, v3, v6

    .line 32
    .line 33
    .line 34
    const v5, 0x7f120141

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 42
    move-result v15

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 46
    move-result v3

    .line 47
    .line 48
    new-instance v14, Landroid/graphics/Paint;

    .line 49
    .line 50
    .line 51
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    .line 56
    iget-object v5, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    .line 59
    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    .line 67
    const v7, 0x7f070230

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 71
    move-result v5

    .line 72
    float-to-int v5, v5

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 76
    move-result-object v7

    .line 77
    .line 78
    .line 79
    invoke-static {v15, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 80
    move-result-object v13

    .line 81
    .line 82
    new-instance v12, Landroid/graphics/Canvas;

    .line 83
    .line 84
    .line 85
    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    .line 89
    move-object/from16 v9, p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v9, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    const/4 v7, -0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    const/4 v8, 0x0

    .line 98
    .line 99
    sub-int v11, v3, v5

    .line 100
    int-to-float v9, v11

    .line 101
    int-to-float v10, v15

    .line 102
    int-to-float v3, v3

    .line 103
    move-object v7, v12

    .line 104
    .line 105
    move/from16 v17, v11

    .line 106
    move v11, v3

    .line 107
    move-object v3, v12

    .line 108
    move-object v12, v14

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    iget-object v7, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 114
    .line 115
    .line 116
    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 117
    move-result-object v7

    .line 118
    .line 119
    const/high16 v8, 0x42a00000    # 80.0f

    .line 120
    .line 121
    .line 122
    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 123
    move-result v7

    .line 124
    float-to-int v7, v7

    .line 125
    .line 126
    mul-int/lit8 v8, v7, 0x4e

    .line 127
    .line 128
    div-int/lit16 v8, v8, 0x115

    .line 129
    .line 130
    iget-object v9, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 131
    .line 132
    .line 133
    invoke-interface {v9}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 134
    move-result-object v9

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    move-result-object v9

    .line 139
    .line 140
    .line 141
    const v10, 0x7f0800b6

    .line 142
    .line 143
    .line 144
    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 145
    move-result-object v9

    .line 146
    .line 147
    .line 148
    invoke-static {v9, v7, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 149
    move-result-object v8

    .line 150
    .line 151
    iget-object v9, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 152
    .line 153
    .line 154
    invoke-interface {v9}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 155
    move-result-object v9

    .line 156
    .line 157
    const/high16 v10, 0x42180000    # 38.0f

    .line 158
    .line 159
    .line 160
    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 161
    move-result v9

    .line 162
    float-to-int v9, v9

    .line 163
    .line 164
    move-object/from16 v10, p2

    .line 165
    .line 166
    .line 167
    invoke-static {v10, v9, v9, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 168
    move-result-object v10

    .line 169
    .line 170
    iget-object v11, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 171
    .line 172
    .line 173
    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 174
    move-result-object v11

    .line 175
    .line 176
    const/high16 v12, 0x41900000    # 18.0f

    .line 177
    .line 178
    .line 179
    invoke-static {v11, v12}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 180
    move-result v11

    .line 181
    float-to-int v12, v11

    .line 182
    .line 183
    iget-object v11, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 184
    .line 185
    .line 186
    invoke-interface {v11}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 187
    move-result-object v11

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 191
    move-result-object v11

    .line 192
    .line 193
    .line 194
    const v6, 0x7f080455

    .line 195
    .line 196
    .line 197
    invoke-static {v11, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 198
    move-result-object v6

    .line 199
    .line 200
    .line 201
    invoke-static {v6, v12, v12, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 202
    move-result-object v11

    .line 203
    .line 204
    iget-object v6, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 205
    .line 206
    .line 207
    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 208
    move-result-object v6

    .line 209
    .line 210
    const/high16 v2, 0x41a00000    # 20.0f

    .line 211
    .line 212
    .line 213
    invoke-static {v6, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 214
    move-result v6

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    .line 219
    const/high16 v6, -0x1000000

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    .line 224
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 225
    const/4 v6, 0x1

    .line 226
    .line 227
    .line 228
    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 229
    move-result-object v6

    .line 230
    .line 231
    .line 232
    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 236
    move-result v6

    .line 237
    .line 238
    .line 239
    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    .line 240
    move-result v16

    .line 241
    .line 242
    .line 243
    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    .line 244
    move-result v18

    .line 245
    .line 246
    move-object/from16 v19, v11

    .line 247
    .line 248
    add-float v11, v16, v18

    .line 249
    neg-float v11, v11

    .line 250
    float-to-int v11, v11

    .line 251
    .line 252
    move-object/from16 v16, v13

    .line 253
    .line 254
    new-instance v13, Landroid/graphics/Paint;

    .line 255
    .line 256
    .line 257
    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 258
    .line 259
    move-object/from16 v18, v4

    .line 260
    .line 261
    iget-object v4, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 262
    .line 263
    .line 264
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 265
    move-result-object v4

    .line 266
    .line 267
    move-object/from16 v20, v10

    .line 268
    .line 269
    const/high16 v10, 0x41800000    # 16.0f

    .line 270
    .line 271
    .line 272
    invoke-static {v4, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 273
    move-result v4

    .line 274
    .line 275
    .line 276
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    .line 278
    const/high16 v4, -0x1000000

    .line 279
    .line 280
    .line 281
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    const/4 v4, 0x0

    .line 283
    .line 284
    .line 285
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 286
    move-result-object v2

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 293
    move-result v2

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    .line 297
    move-result v4

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    .line 301
    move-result v10

    .line 302
    add-float/2addr v4, v10

    .line 303
    neg-float v4, v4

    .line 304
    float-to-int v10, v4

    .line 305
    .line 306
    sub-int v4, v15, v7

    .line 307
    .line 308
    div-int/lit8 v4, v4, 0x2

    .line 309
    int-to-float v4, v4

    .line 310
    .line 311
    iget-object v7, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 312
    .line 313
    .line 314
    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 315
    move-result-object v7

    .line 316
    .line 317
    move-object/from16 p2, v13

    .line 318
    .line 319
    const/high16 v13, 0x41a00000    # 20.0f

    .line 320
    .line 321
    .line 322
    invoke-static {v7, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 323
    move-result v7

    .line 324
    float-to-int v7, v7

    .line 325
    int-to-float v7, v7

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v8, v4, v7, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 329
    .line 330
    sub-int v4, v5, v9

    .line 331
    int-to-float v4, v4

    .line 332
    .line 333
    const/high16 v7, 0x40000000    # 2.0f

    .line 334
    div-float/2addr v4, v7

    .line 335
    float-to-int v4, v4

    .line 336
    .line 337
    add-int v8, v4, v9

    .line 338
    .line 339
    iget-object v13, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 340
    .line 341
    .line 342
    invoke-interface {v13}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 343
    move-result-object v13

    .line 344
    .line 345
    const/high16 v7, 0x41200000    # 10.0f

    .line 346
    .line 347
    .line 348
    invoke-static {v13, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 349
    move-result v7

    .line 350
    add-int/2addr v8, v7

    .line 351
    .line 352
    iget-object v7, v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 353
    .line 354
    .line 355
    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 356
    move-result-object v7

    .line 357
    .line 358
    const/high16 v13, 0x40a00000    # 5.0f

    .line 359
    .line 360
    .line 361
    invoke-static {v7, v13}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 362
    move-result v7

    .line 363
    sub-int/2addr v5, v11

    .line 364
    sub-int/2addr v5, v10

    .line 365
    sub-int/2addr v5, v7

    .line 366
    int-to-float v5, v5

    .line 367
    .line 368
    const/high16 v13, 0x40000000    # 2.0f

    .line 369
    div-float/2addr v5, v13

    .line 370
    float-to-int v5, v5

    .line 371
    .line 372
    add-int v21, v5, v11

    .line 373
    .line 374
    add-int v21, v21, v7

    .line 375
    int-to-float v7, v8

    .line 376
    .line 377
    add-float v13, v7, v6

    .line 378
    float-to-int v13, v13

    .line 379
    int-to-float v0, v5

    .line 380
    .line 381
    move/from16 p3, v10

    .line 382
    .line 383
    sub-int v10, v11, v12

    .line 384
    int-to-float v10, v10

    .line 385
    .line 386
    const/high16 v22, 0x40000000    # 2.0f

    .line 387
    .line 388
    div-float v10, v10, v22

    .line 389
    add-float/2addr v0, v10

    .line 390
    float-to-int v0, v0

    .line 391
    .line 392
    .line 393
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 394
    move-result v10

    .line 395
    .line 396
    if-eqz v10, :cond_0

    .line 397
    .line 398
    sub-int v7, v15, v4

    .line 399
    sub-int/2addr v7, v9

    .line 400
    int-to-float v7, v7

    .line 401
    .line 402
    add-int v4, v17, v4

    .line 403
    int-to-float v4, v4

    .line 404
    .line 405
    move-object/from16 v9, v20

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v9, v7, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 409
    const/4 v7, 0x0

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    .line 413
    move-result v9

    .line 414
    const/4 v10, 0x0

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    .line 418
    move-result v20

    .line 419
    .line 420
    sub-int v4, v15, v8

    .line 421
    int-to-float v8, v4

    .line 422
    .line 423
    sub-float v22, v8, v6

    .line 424
    .line 425
    add-int v4, v17, v5

    .line 426
    add-int/2addr v4, v11

    .line 427
    int-to-float v11, v4

    .line 428
    .line 429
    const/16 v23, 0x1

    .line 430
    move-object v6, v3

    .line 431
    .line 432
    move-object/from16 v4, v18

    .line 433
    move v5, v7

    .line 434
    move-object v7, v6

    .line 435
    move v6, v9

    .line 436
    move-object v9, v7

    .line 437
    move v7, v10

    .line 438
    .line 439
    move/from16 v18, v8

    .line 440
    .line 441
    move/from16 v8, v20

    .line 442
    move-object v10, v9

    .line 443
    .line 444
    move/from16 v9, v22

    .line 445
    .line 446
    move/from16 v20, p3

    .line 447
    .line 448
    move-object/from16 p1, v10

    .line 449
    move v10, v11

    .line 450
    .line 451
    move-object/from16 v24, v19

    .line 452
    .line 453
    move/from16 v11, v23

    .line 454
    .line 455
    move/from16 v19, v12

    .line 456
    move-object v12, v14

    .line 457
    .line 458
    .line 459
    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 460
    const/4 v9, 0x0

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 464
    move-result v10

    .line 465
    const/4 v11, 0x0

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 469
    move-result v12

    .line 470
    .line 471
    sub-float v2, v18, v2

    .line 472
    .line 473
    add-int v3, v17, v21

    .line 474
    .line 475
    add-int v3, v3, v20

    .line 476
    int-to-float v3, v3

    .line 477
    const/4 v4, 0x1

    .line 478
    .line 479
    move-object/from16 v7, p1

    .line 480
    move-object v8, v1

    .line 481
    .line 482
    move-object/from16 v1, p2

    .line 483
    move v5, v13

    .line 484
    .line 485
    move-object/from16 v6, v16

    .line 486
    move v13, v2

    .line 487
    move-object v2, v14

    .line 488
    move v14, v3

    .line 489
    move v3, v15

    .line 490
    move v15, v4

    .line 491
    .line 492
    move-object/from16 v16, v1

    .line 493
    .line 494
    .line 495
    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 496
    .line 497
    sub-int v15, v3, v5

    .line 498
    .line 499
    sub-int v15, v15, v19

    .line 500
    int-to-float v1, v15

    .line 501
    .line 502
    add-int v11, v17, v0

    .line 503
    int-to-float v0, v11

    .line 504
    .line 505
    move-object/from16 v3, p1

    .line 506
    .line 507
    move-object/from16 v8, v24

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v8, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 511
    goto :goto_0

    .line 512
    .line 513
    :cond_0
    move-object/from16 v10, p2

    .line 514
    move v12, v13

    .line 515
    move-object v2, v14

    .line 516
    .line 517
    move-object/from16 v6, v16

    .line 518
    .line 519
    move-object/from16 v8, v19

    .line 520
    .line 521
    move-object/from16 v9, v20

    .line 522
    .line 523
    move/from16 v20, p3

    .line 524
    int-to-float v13, v4

    .line 525
    .line 526
    add-int v4, v17, v4

    .line 527
    int-to-float v4, v4

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v9, v13, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 531
    .line 532
    add-int v4, v17, v5

    .line 533
    add-int/2addr v4, v11

    .line 534
    int-to-float v4, v4

    .line 535
    .line 536
    move-object/from16 v5, v18

    .line 537
    .line 538
    .line 539
    invoke-virtual {v3, v5, v7, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 540
    .line 541
    add-int v11, v17, v21

    .line 542
    .line 543
    add-int v11, v11, v20

    .line 544
    int-to-float v4, v11

    .line 545
    .line 546
    .line 547
    invoke-virtual {v3, v1, v7, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 548
    int-to-float v1, v12

    .line 549
    .line 550
    add-int v11, v17, v0

    .line 551
    int-to-float v0, v11

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v8, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 555
    :goto_0
    return-object v6
.end method


# virtual methods
.method public getScreenShot()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0806d4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 28
    :cond_0
    return-object v0
.end method

.method public saveLeaderBoardBackGround(Landroid/app/Activity;ILcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    .line 7
    const/high16 p2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p1, p2}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;F)Landroid/graphics/Bitmap;

    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardShareHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v0, "imageLoader"

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    .line 35
    .line 36
    iget-object v0, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, p1, p3, p4}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$1;-><init>(Lcom/narvii/leaderboard/LeaderBoardShareHelper;Landroid/graphics/Bitmap;Lcom/narvii/model/Community;Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    if-eqz p4, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-interface {p4}, Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;->onSaved()V

    .line 51
    :cond_3
    :goto_1
    return-void
.end method
