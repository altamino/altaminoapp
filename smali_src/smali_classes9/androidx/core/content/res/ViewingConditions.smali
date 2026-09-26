.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 3
    .line 4
    const/high16 v1, 0x42480000    # 50.0f

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->h(F)F

    .line 8
    move-result v2

    .line 9
    float-to-double v2, v2

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 15
    mul-double/2addr v2, v4

    .line 16
    .line 17
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 18
    div-double/2addr v2, v4

    .line 19
    double-to-float v2, v2

    .line 20
    .line 21
    const/high16 v3, 0x40000000    # 2.0f

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->k([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 29
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 6
    .line 7
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 8
    .line 9
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 10
    .line 11
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 12
    .line 13
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 14
    .line 15
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 16
    .line 17
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 18
    .line 19
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 20
    .line 21
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 22
    .line 23
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 24
    return-void
.end method

.method static k([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .locals 22
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move/from16 v0, p1

    .line 3
    .line 4
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget v3, p0, v2

    .line 8
    .line 9
    aget-object v4, v1, v2

    .line 10
    .line 11
    aget v5, v4, v2

    .line 12
    mul-float/2addr v5, v3

    .line 13
    const/4 v6, 0x1

    .line 14
    .line 15
    aget v7, p0, v6

    .line 16
    .line 17
    aget v8, v4, v6

    .line 18
    mul-float/2addr v8, v7

    .line 19
    add-float/2addr v5, v8

    .line 20
    const/4 v8, 0x2

    .line 21
    .line 22
    aget v9, p0, v8

    .line 23
    .line 24
    aget v4, v4, v8

    .line 25
    mul-float/2addr v4, v9

    .line 26
    add-float/2addr v5, v4

    .line 27
    .line 28
    aget-object v4, v1, v6

    .line 29
    .line 30
    aget v10, v4, v2

    .line 31
    mul-float/2addr v10, v3

    .line 32
    .line 33
    aget v11, v4, v6

    .line 34
    mul-float/2addr v11, v7

    .line 35
    add-float/2addr v10, v11

    .line 36
    .line 37
    aget v4, v4, v8

    .line 38
    mul-float/2addr v4, v9

    .line 39
    add-float/2addr v10, v4

    .line 40
    .line 41
    aget-object v1, v1, v8

    .line 42
    .line 43
    aget v4, v1, v2

    .line 44
    mul-float/2addr v3, v4

    .line 45
    .line 46
    aget v4, v1, v6

    .line 47
    mul-float/2addr v7, v4

    .line 48
    add-float/2addr v3, v7

    .line 49
    .line 50
    aget v1, v1, v8

    .line 51
    mul-float/2addr v9, v1

    .line 52
    add-float/2addr v3, v9

    .line 53
    .line 54
    const/high16 v1, 0x41200000    # 10.0f

    .line 55
    .line 56
    div-float v4, p3, v1

    .line 57
    .line 58
    .line 59
    const v7, 0x3f4ccccd    # 0.8f

    .line 60
    add-float/2addr v4, v7

    .line 61
    float-to-double v11, v4

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide v13, 0x3feccccccccccccdL    # 0.9

    .line 67
    .line 68
    cmpl-double v9, v11, v13

    .line 69
    .line 70
    .line 71
    const v11, 0x3f170a3d    # 0.59f

    .line 72
    .line 73
    if-ltz v9, :cond_0

    .line 74
    .line 75
    .line 76
    const v7, 0x3f666666    # 0.9f

    .line 77
    .line 78
    sub-float v7, v4, v7

    .line 79
    mul-float/2addr v7, v1

    .line 80
    .line 81
    .line 82
    const v1, 0x3f30a3d7    # 0.69f

    .line 83
    .line 84
    .line 85
    invoke-static {v11, v1, v7}, Landroidx/core/content/res/CamUtils;->d(FFF)F

    .line 86
    move-result v1

    .line 87
    .line 88
    :goto_0
    move/from16 v16, v1

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_0
    sub-float v7, v4, v7

    .line 92
    mul-float/2addr v7, v1

    .line 93
    .line 94
    .line 95
    const v1, 0x3f066666    # 0.525f

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v11, v7}, Landroidx/core/content/res/CamUtils;->d(FFF)F

    .line 99
    move-result v1

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 103
    .line 104
    if-eqz p4, :cond_1

    .line 105
    move v7, v1

    .line 106
    goto :goto_2

    .line 107
    :cond_1
    neg-float v7, v0

    .line 108
    .line 109
    const/high16 v9, 0x42280000    # 42.0f

    .line 110
    sub-float/2addr v7, v9

    .line 111
    .line 112
    const/high16 v9, 0x42b80000    # 92.0f

    .line 113
    div-float/2addr v7, v9

    .line 114
    float-to-double v11, v7

    .line 115
    .line 116
    .line 117
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    .line 118
    move-result-wide v11

    .line 119
    double-to-float v7, v11

    .line 120
    .line 121
    .line 122
    const v9, 0x3e8e38e4

    .line 123
    mul-float/2addr v7, v9

    .line 124
    .line 125
    sub-float v7, v1, v7

    .line 126
    mul-float/2addr v7, v4

    .line 127
    :goto_2
    float-to-double v11, v7

    .line 128
    .line 129
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 130
    .line 131
    cmpl-double v9, v11, v13

    .line 132
    .line 133
    if-lez v9, :cond_2

    .line 134
    move v7, v1

    .line 135
    goto :goto_3

    .line 136
    .line 137
    :cond_2
    const-wide/16 v13, 0x0

    .line 138
    .line 139
    cmpg-double v9, v11, v13

    .line 140
    .line 141
    if-gez v9, :cond_3

    .line 142
    const/4 v7, 0x0

    .line 143
    :cond_3
    :goto_3
    const/4 v9, 0x3

    .line 144
    .line 145
    new-array v15, v9, [F

    .line 146
    .line 147
    const/high16 v11, 0x42c80000    # 100.0f

    .line 148
    .line 149
    div-float v12, v11, v5

    .line 150
    mul-float/2addr v12, v7

    .line 151
    add-float/2addr v12, v1

    .line 152
    sub-float/2addr v12, v7

    .line 153
    .line 154
    aput v12, v15, v2

    .line 155
    .line 156
    div-float v12, v11, v10

    .line 157
    mul-float/2addr v12, v7

    .line 158
    add-float/2addr v12, v1

    .line 159
    sub-float/2addr v12, v7

    .line 160
    .line 161
    aput v12, v15, v6

    .line 162
    div-float/2addr v11, v3

    .line 163
    mul-float/2addr v11, v7

    .line 164
    add-float/2addr v11, v1

    .line 165
    sub-float/2addr v11, v7

    .line 166
    .line 167
    aput v11, v15, v8

    .line 168
    .line 169
    const/high16 v7, 0x40a00000    # 5.0f

    .line 170
    mul-float/2addr v7, v0

    .line 171
    add-float/2addr v7, v1

    .line 172
    .line 173
    div-float v7, v1, v7

    .line 174
    .line 175
    mul-float v11, v7, v7

    .line 176
    mul-float/2addr v11, v7

    .line 177
    mul-float/2addr v11, v7

    .line 178
    sub-float/2addr v1, v11

    .line 179
    mul-float/2addr v11, v0

    .line 180
    .line 181
    .line 182
    const v7, 0x3dcccccd    # 0.1f

    .line 183
    mul-float/2addr v7, v1

    .line 184
    mul-float/2addr v7, v1

    .line 185
    .line 186
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    .line 187
    float-to-double v0, v0

    .line 188
    mul-double/2addr v0, v12

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    .line 192
    move-result-wide v0

    .line 193
    double-to-float v0, v0

    .line 194
    mul-float/2addr v7, v0

    .line 195
    .line 196
    add-float v0, v11, v7

    .line 197
    .line 198
    .line 199
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->h(F)F

    .line 200
    move-result v1

    .line 201
    .line 202
    aget v7, p0, v6

    .line 203
    .line 204
    div-float v12, v1, v7

    .line 205
    float-to-double v13, v12

    .line 206
    .line 207
    .line 208
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 209
    move-result-wide v6

    .line 210
    double-to-float v6, v6

    .line 211
    .line 212
    .line 213
    const v7, 0x3fbd70a4    # 1.48f

    .line 214
    .line 215
    add-float v21, v6, v7

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 221
    .line 222
    .line 223
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 224
    move-result-wide v6

    .line 225
    double-to-float v6, v6

    .line 226
    .line 227
    .line 228
    const v7, 0x3f39999a    # 0.725f

    .line 229
    .line 230
    div-float v6, v7, v6

    .line 231
    .line 232
    new-array v7, v9, [F

    .line 233
    .line 234
    aget v9, v15, v2

    .line 235
    mul-float/2addr v9, v0

    .line 236
    mul-float/2addr v9, v5

    .line 237
    float-to-double v13, v9

    .line 238
    .line 239
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    .line 240
    .line 241
    div-double v13, v13, v17

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    .line 247
    .line 248
    .line 249
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 250
    move-result-wide v13

    .line 251
    double-to-float v11, v13

    .line 252
    .line 253
    aput v11, v7, v2

    .line 254
    const/4 v1, 0x1

    .line 255
    .line 256
    aget v11, v15, v1

    .line 257
    mul-float/2addr v11, v0

    .line 258
    mul-float/2addr v11, v10

    .line 259
    float-to-double v10, v11

    .line 260
    .line 261
    div-double v10, v10, v17

    .line 262
    .line 263
    .line 264
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 265
    move-result-wide v10

    .line 266
    double-to-float v10, v10

    .line 267
    .line 268
    aput v10, v7, v1

    .line 269
    const/4 v5, 0x2

    .line 270
    .line 271
    aget v10, v15, v5

    .line 272
    mul-float/2addr v10, v0

    .line 273
    mul-float/2addr v10, v3

    .line 274
    float-to-double v10, v10

    .line 275
    .line 276
    div-double v10, v10, v17

    .line 277
    .line 278
    .line 279
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 280
    move-result-wide v8

    .line 281
    double-to-float v3, v8

    .line 282
    .line 283
    aput v3, v7, v5

    .line 284
    .line 285
    aget v2, v7, v2

    .line 286
    .line 287
    const/high16 v5, 0x43c80000    # 400.0f

    .line 288
    .line 289
    mul-float v8, v2, v5

    .line 290
    .line 291
    .line 292
    const v9, 0x41d90a3d    # 27.13f

    .line 293
    add-float/2addr v2, v9

    .line 294
    div-float/2addr v8, v2

    .line 295
    const/4 v1, 0x1

    .line 296
    .line 297
    aget v1, v7, v1

    .line 298
    .line 299
    mul-float v2, v1, v5

    .line 300
    add-float/2addr v1, v9

    .line 301
    div-float/2addr v2, v1

    .line 302
    mul-float/2addr v5, v3

    .line 303
    add-float/2addr v3, v9

    .line 304
    div-float/2addr v5, v3

    .line 305
    .line 306
    const/high16 v1, 0x40000000    # 2.0f

    .line 307
    mul-float/2addr v8, v1

    .line 308
    add-float/2addr v8, v2

    .line 309
    .line 310
    .line 311
    const v1, 0x3d4ccccd    # 0.05f

    .line 312
    mul-float/2addr v5, v1

    .line 313
    add-float/2addr v8, v5

    .line 314
    .line 315
    mul-float v13, v8, v6

    .line 316
    .line 317
    new-instance v1, Landroidx/core/content/res/ViewingConditions;

    .line 318
    float-to-double v2, v0

    .line 319
    .line 320
    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    .line 321
    .line 322
    .line 323
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 324
    move-result-wide v2

    .line 325
    double-to-float v2, v2

    .line 326
    move-object v11, v1

    .line 327
    move v14, v6

    .line 328
    move-object v3, v15

    .line 329
    move v15, v6

    .line 330
    .line 331
    move/from16 v17, v4

    .line 332
    .line 333
    move-object/from16 v18, v3

    .line 334
    .line 335
    move/from16 v19, v0

    .line 336
    .line 337
    move/from16 v20, v2

    .line 338
    .line 339
    .line 340
    invoke-direct/range {v11 .. v21}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    .line 341
    return-object v1
.end method


# virtual methods
.method a()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    return v0
.end method

.method b()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    return v0
.end method

.method c()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    return v0
.end method

.method d()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    return v0
.end method

.method e()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    return v0
.end method

.method f()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    return v0
.end method

.method g()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    return v0
.end method

.method h()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    return v0
.end method

.method i()[F
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    return-object v0
.end method

.method j()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    return v0
.end method
