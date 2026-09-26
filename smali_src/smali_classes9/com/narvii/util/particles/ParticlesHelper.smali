.class public Lcom/narvii/util/particles/ParticlesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field birthRate:I

.field birthRateTo:I

.field direction:I

.field directionRange:I

.field duration:I

.field g:F

.field initAlpha:F

.field initScale:F

.field lifetime:I

.field public resId:I

.field rotateRange:I

.field scaleSpeed:F

.field spark:Z

.field tintColor:I

.field tintRangeB:I

.field tintRangeG:I

.field tintRangeR:I

.field tintRatio:F

.field v:F

.field vRange:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f080687

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    .line 9
    .line 10
    const/16 v0, 0x3e8

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->spark:Z

    .line 16
    .line 17
    const/16 v2, -0x5a

    .line 18
    .line 19
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->direction:I

    .line 20
    .line 21
    const/16 v2, 0x64

    .line 22
    .line 23
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    .line 24
    .line 25
    const/16 v2, 0x14

    .line 26
    .line 27
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    .line 28
    const/4 v2, 0x5

    .line 29
    .line 30
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    .line 33
    .line 34
    const/high16 v0, 0x42700000    # 60.0f

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    .line 37
    .line 38
    const/high16 v2, 0x43480000    # 200.0f

    .line 39
    .line 40
    iput v2, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    .line 41
    .line 42
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    .line 43
    .line 44
    .line 45
    const v0, 0x3f4ccccd    # 0.8f

    .line 46
    .line 47
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    .line 48
    .line 49
    .line 50
    const v0, 0x3e19999a    # 0.15f

    .line 51
    .line 52
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    .line 53
    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    .line 56
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    .line 57
    .line 58
    const/16 v0, 0x168

    .line 59
    .line 60
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    .line 61
    .line 62
    iput v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    .line 63
    .line 64
    const/16 v0, 0x78

    .line 65
    .line 66
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    .line 67
    .line 68
    const/16 v0, 0xc8

    .line 69
    .line 70
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    .line 71
    .line 72
    const/16 v0, 0x32

    .line 73
    .line 74
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    .line 75
    const/4 v0, 0x0

    .line 76
    .line 77
    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    .line 78
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    .line 7
    :goto_0
    int-to-long v0, v0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :cond_0
    iget v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    .line 11
    .line 12
    div-int/lit8 v1, v1, 0x2

    .line 13
    add-int/2addr v0, v1

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    return-wide v0
.end method

.method public emit(Landroid/view/View;)V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    iget v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    const/4 v2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    .line 13
    :goto_0
    new-instance v9, Lcom/plattysoft/leonids/d;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v3

    .line 18
    move-object v4, v3

    .line 19
    .line 20
    check-cast v4, Landroid/app/Activity;

    .line 21
    .line 22
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    :goto_1
    move v5, v3

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_1
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v3

    .line 33
    .line 34
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    .line 35
    mul-int/2addr v3, v5

    .line 36
    .line 37
    div-int/lit16 v3, v3, 0x3e8

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :goto_2
    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->resId:I

    .line 41
    .line 42
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    .line 43
    int-to-long v7, v3

    .line 44
    move-object v3, v9

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v3 .. v8}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;IIJ)V

    .line 48
    .line 49
    new-instance v3, Lcom/narvii/util/particles/SpeeddInitializer;

    .line 50
    .line 51
    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->direction:I

    .line 52
    int-to-float v4, v4

    .line 53
    .line 54
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    .line 55
    int-to-float v5, v5

    .line 56
    .line 57
    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    .line 58
    .line 59
    iget v7, v0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    .line 60
    .line 61
    const/high16 v8, 0x40000000    # 2.0f

    .line 62
    div-float/2addr v7, v8

    .line 63
    sub-float/2addr v6, v7

    .line 64
    .line 65
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 66
    div-float/2addr v6, v7

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9, v6}, Lcom/plattysoft/leonids/d;->h(F)F

    .line 70
    move-result v6

    .line 71
    .line 72
    iget v10, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    .line 73
    .line 74
    iget v11, v0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    .line 75
    div-float/2addr v11, v8

    .line 76
    add-float/2addr v10, v11

    .line 77
    div-float/2addr v10, v7

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v10}, Lcom/plattysoft/leonids/d;->h(F)F

    .line 81
    move-result v8

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v4, v5, v6, v8}, Lcom/narvii/util/particles/SpeeddInitializer;-><init>(FFFF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/d;->d(La6/b;)Lcom/plattysoft/leonids/d;

    .line 88
    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    new-instance v3, Lcom/narvii/util/particles/EliminateInitializer;

    .line 92
    .line 93
    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    .line 94
    .line 95
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 96
    .line 97
    mul-int v6, v4, v5

    .line 98
    .line 99
    div-int/lit16 v6, v6, 0x3e8

    .line 100
    .line 101
    iget v8, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    .line 102
    sub-int/2addr v4, v8

    .line 103
    mul-int/2addr v4, v5

    .line 104
    .line 105
    div-int/lit16 v4, v4, 0x3e8

    .line 106
    .line 107
    div-int/lit8 v4, v4, 0x2

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v6, v4}, Lcom/narvii/util/particles/EliminateInitializer;-><init>(II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/d;->d(La6/b;)Lcom/plattysoft/leonids/d;

    .line 114
    .line 115
    :cond_2
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    .line 116
    const/4 v4, 0x0

    .line 117
    .line 118
    cmpl-float v3, v3, v4

    .line 119
    .line 120
    if-lez v3, :cond_3

    .line 121
    .line 122
    new-instance v3, Lcom/narvii/util/particles/TintColorInitializer;

    .line 123
    .line 124
    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    .line 125
    .line 126
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    .line 127
    .line 128
    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    .line 129
    .line 130
    iget v8, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    .line 131
    .line 132
    .line 133
    invoke-direct {v3, v4, v5, v6, v8}, Lcom/narvii/util/particles/TintColorInitializer;-><init>(IIII)V

    .line 134
    .line 135
    new-instance v4, Lcom/narvii/util/particles/RandomInitalizer;

    .line 136
    .line 137
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    .line 138
    .line 139
    .line 140
    invoke-direct {v4, v3, v5}, Lcom/narvii/util/particles/RandomInitalizer;-><init>(La6/b;F)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v4}, Lcom/plattysoft/leonids/d;->d(La6/b;)Lcom/plattysoft/leonids/d;

    .line 144
    .line 145
    :cond_3
    new-instance v3, Lb6/a;

    .line 146
    .line 147
    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    .line 148
    .line 149
    const/high16 v5, 0x437f0000    # 255.0f

    .line 150
    mul-float/2addr v4, v5

    .line 151
    float-to-int v11, v4

    .line 152
    const/4 v12, 0x0

    .line 153
    .line 154
    const-wide/16 v13, 0x0

    .line 155
    .line 156
    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    .line 157
    int-to-long v5, v4

    .line 158
    .line 159
    new-instance v17, Landroid/view/animation/LinearInterpolator;

    .line 160
    .line 161
    .line 162
    invoke-direct/range {v17 .. v17}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 163
    move-object v10, v3

    .line 164
    move-wide v15, v5

    .line 165
    .line 166
    .line 167
    invoke-direct/range {v10 .. v17}, Lb6/a;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/d;->e(Lb6/b;)Lcom/plattysoft/leonids/d;

    .line 171
    .line 172
    new-instance v3, Lcom/narvii/util/particles/ScaleModifier;

    .line 173
    .line 174
    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    .line 175
    .line 176
    iget v5, v0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    .line 177
    .line 178
    iget v6, v0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    .line 179
    int-to-float v10, v6

    .line 180
    mul-float/2addr v5, v10

    .line 181
    div-float/2addr v5, v7

    .line 182
    add-float/2addr v5, v4

    .line 183
    .line 184
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    .line 185
    .line 186
    .line 187
    invoke-direct {v10}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-direct {v3, v4, v5, v6, v10}, Lcom/narvii/util/particles/ScaleModifier;-><init>(FFILandroid/view/animation/Interpolator;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v3}, Lcom/plattysoft/leonids/d;->e(Lb6/b;)Lcom/plattysoft/leonids/d;

    .line 194
    .line 195
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    .line 196
    div-float/2addr v3, v7

    .line 197
    .line 198
    const/high16 v4, 0x44480000    # 800.0f

    .line 199
    div-float/2addr v3, v4

    .line 200
    .line 201
    const/16 v4, 0x5a

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v3, v4}, Lcom/plattysoft/leonids/d;->p(FI)Lcom/plattysoft/leonids/d;

    .line 205
    .line 206
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    .line 207
    neg-int v4, v3

    .line 208
    .line 209
    div-int/lit8 v4, v4, 0x2

    .line 210
    int-to-float v4, v4

    .line 211
    .line 212
    div-int/lit8 v3, v3, 0x2

    .line 213
    int-to-float v3, v3

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v4, v3}, Lcom/plattysoft/leonids/d;->r(FF)Lcom/plattysoft/leonids/d;

    .line 217
    .line 218
    if-eqz v2, :cond_4

    .line 219
    .line 220
    iget v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9, v1, v2}, Lcom/plattysoft/leonids/d;->n(Landroid/view/View;I)V

    .line 224
    goto :goto_3

    .line 225
    .line 226
    :cond_4
    iget v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    .line 227
    .line 228
    iget v3, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v1, v2, v3}, Lcom/plattysoft/leonids/d;->i(Landroid/view/View;II)V

    .line 232
    .line 233
    :goto_3
    iget-boolean v2, v0, Lcom/narvii/util/particles/ParticlesHelper;->spark:Z

    .line 234
    .line 235
    if-eqz v2, :cond_5

    .line 236
    .line 237
    new-instance v2, Lcom/plattysoft/leonids/d;

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 241
    move-result-object v3

    .line 242
    move-object v10, v3

    .line 243
    .line 244
    check-cast v10, Landroid/app/Activity;

    .line 245
    .line 246
    const/16 v3, 0x2bc

    .line 247
    .line 248
    const/16 v4, 0x64

    .line 249
    .line 250
    .line 251
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 252
    move-result v4

    .line 253
    .line 254
    const/16 v5, 0x320

    .line 255
    mul-int/2addr v4, v5

    .line 256
    .line 257
    div-int/lit16 v11, v4, 0x3e8

    .line 258
    .line 259
    .line 260
    const v12, 0x7f0809b3

    .line 261
    int-to-long v4, v5

    .line 262
    move-object v9, v2

    .line 263
    move-wide v13, v4

    .line 264
    .line 265
    .line 266
    invoke-direct/range {v9 .. v14}, Lcom/plattysoft/leonids/d;-><init>(Landroid/app/Activity;IIJ)V

    .line 267
    .line 268
    new-instance v6, Lcom/narvii/util/particles/SpeeddInitializer;

    .line 269
    .line 270
    iget v9, v0, Lcom/narvii/util/particles/ParticlesHelper;->direction:I

    .line 271
    int-to-float v9, v9

    .line 272
    .line 273
    iget v10, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    .line 274
    .line 275
    const/16 v11, 0x14

    .line 276
    int-to-float v11, v11

    .line 277
    sub-float/2addr v10, v11

    .line 278
    div-float/2addr v10, v7

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v10}, Lcom/plattysoft/leonids/d;->h(F)F

    .line 282
    move-result v10

    .line 283
    .line 284
    iget v12, v0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    .line 285
    add-float/2addr v12, v11

    .line 286
    div-float/2addr v12, v7

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v12}, Lcom/plattysoft/leonids/d;->h(F)F

    .line 290
    move-result v7

    .line 291
    .line 292
    const/high16 v11, 0x43b40000    # 360.0f

    .line 293
    .line 294
    .line 295
    invoke-direct {v6, v9, v11, v10, v7}, Lcom/narvii/util/particles/SpeeddInitializer;-><init>(FFFF)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v6}, Lcom/plattysoft/leonids/d;->d(La6/b;)Lcom/plattysoft/leonids/d;

    .line 299
    .line 300
    new-instance v6, Lcom/narvii/util/particles/EliminateInitializer;

    .line 301
    .line 302
    iget v7, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 303
    .line 304
    mul-int/lit16 v9, v7, 0x2bc

    .line 305
    .line 306
    div-int/lit16 v9, v9, 0x3e8

    .line 307
    .line 308
    const/16 v10, 0x258

    .line 309
    mul-int/2addr v10, v7

    .line 310
    .line 311
    div-int/lit16 v10, v10, 0x3e8

    .line 312
    .line 313
    div-int/lit8 v10, v10, 0x2

    .line 314
    .line 315
    .line 316
    invoke-direct {v6, v9, v10}, Lcom/narvii/util/particles/EliminateInitializer;-><init>(II)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v6}, Lcom/plattysoft/leonids/d;->d(La6/b;)Lcom/plattysoft/leonids/d;

    .line 320
    .line 321
    new-instance v6, Lcom/narvii/util/particles/TintColorInitializer;

    .line 322
    .line 323
    .line 324
    const v7, -0x333334

    .line 325
    .line 326
    const/16 v9, 0x80

    .line 327
    .line 328
    const/16 v10, 0x40

    .line 329
    .line 330
    .line 331
    invoke-direct {v6, v7, v9, v10, v10}, Lcom/narvii/util/particles/TintColorInitializer;-><init>(IIII)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v6}, Lcom/plattysoft/leonids/d;->d(La6/b;)Lcom/plattysoft/leonids/d;

    .line 335
    .line 336
    new-instance v6, Lb6/a;

    .line 337
    .line 338
    const/high16 v7, 0x437f0000    # 255.0f

    .line 339
    float-to-int v14, v7

    .line 340
    const/4 v15, 0x0

    .line 341
    .line 342
    const-wide/16 v16, 0x0

    .line 343
    .line 344
    new-instance v20, Landroid/view/animation/LinearInterpolator;

    .line 345
    .line 346
    .line 347
    invoke-direct/range {v20 .. v20}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 348
    move-object v13, v6

    .line 349
    .line 350
    move-wide/from16 v18, v4

    .line 351
    .line 352
    .line 353
    invoke-direct/range {v13 .. v20}, Lb6/a;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v6}, Lcom/plattysoft/leonids/d;->e(Lb6/b;)Lcom/plattysoft/leonids/d;

    .line 357
    .line 358
    .line 359
    const v4, 0x3dcccccd    # 0.1f

    .line 360
    .line 361
    .line 362
    const v5, 0x3ecccccd    # 0.4f

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v4, v5}, Lcom/plattysoft/leonids/d;->s(FF)Lcom/plattysoft/leonids/d;

    .line 366
    .line 367
    const/16 v4, -0xb4

    .line 368
    .line 369
    const/16 v5, 0xb4

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v4, v5}, Lcom/plattysoft/leonids/d;->q(II)Lcom/plattysoft/leonids/d;

    .line 373
    .line 374
    const/high16 v4, 0x42480000    # 50.0f

    .line 375
    .line 376
    const/high16 v5, 0x428c0000    # 70.0f

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v4, v5}, Lcom/plattysoft/leonids/d;->r(FF)Lcom/plattysoft/leonids/d;

    .line 380
    .line 381
    iget v4, v0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1, v3, v4}, Lcom/plattysoft/leonids/d;->i(Landroid/view/View;II)V

    .line 385
    :cond_5
    return-void
.end method

.method public l0()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x1e

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x43250000    # 165.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l1()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l2()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x430c0000    # 140.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l3()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 2

    const/16 v0, 0x64

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v1, 0x3e19999a    # 0.15f

    iput v1, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l4()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, -0x29427

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    const/16 v0, 0xcc

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    const v0, 0x3eaab368    # 0.3334f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    return-object p0
.end method

.method public l5()Lcom/narvii/util/particles/ParticlesHelper;
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->directionRange:I

    const/16 v0, 0x23

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRate:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->birthRateTo:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->duration:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->lifetime:I

    const/high16 v0, 0x435c0000    # 220.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->v:F

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->vRange:F

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->g:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initAlpha:F

    const v0, -0x29427

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintColor:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeR:I

    const/16 v0, 0xcc

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeG:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRangeB:I

    const v0, 0x3eaab368    # 0.3334f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->tintRatio:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->initScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->scaleSpeed:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->rotateRange:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/particles/ParticlesHelper;->spark:Z

    return-object p0
.end method
