.class public Lcom/narvii/widget/shadow/ShadowHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static drawShadow(Landroid/graphics/Canvas;Lcom/narvii/widget/shadow/ShadowConfig;)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    if-nez v7, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v8, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 10
    neg-float v0, v8

    .line 11
    .line 12
    iget v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 13
    int-to-float v1, v1

    .line 14
    .line 15
    sub-float v9, v0, v1

    .line 16
    .line 17
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 21
    move-result v0

    .line 22
    .line 23
    const/high16 v1, 0x40000000    # 2.0f

    .line 24
    .line 25
    mul-float v10, v8, v1

    .line 26
    sub-float/2addr v0, v10

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    cmpl-float v0, v0, v2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    move v11, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v11, v3

    .line 37
    .line 38
    :goto_0
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 42
    move-result v0

    .line 43
    sub-float/2addr v0, v10

    .line 44
    .line 45
    cmpl-float v0, v0, v2

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    move v12, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v12, v3

    .line 51
    .line 52
    :goto_1
    if-nez v11, :cond_3

    .line 53
    .line 54
    if-nez v12, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 58
    .line 59
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 60
    int-to-float v0, v0

    .line 61
    .line 62
    iget v2, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 63
    int-to-float v2, v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 67
    .line 68
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 72
    move-result v0

    .line 73
    .line 74
    iget-object v2, v7, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 78
    move-result v2

    .line 79
    .line 80
    iget-object v3, v7, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 84
    move-result v3

    .line 85
    div-float/2addr v3, v1

    .line 86
    .line 87
    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->circleShadowPaint:Landroid/graphics/Paint;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 94
    return-void

    .line 95
    .line 96
    :cond_3
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 97
    .line 98
    const/high16 v1, 0x3e800000    # 0.25f

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 103
    .line 104
    if-nez v0, :cond_4

    .line 105
    move v0, v1

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_4
    const/high16 v0, 0x3f400000    # 0.75f

    .line 109
    .line 110
    :goto_2
    iget v2, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 111
    int-to-float v3, v2

    .line 112
    mul-float/2addr v3, v0

    .line 113
    int-to-float v4, v2

    .line 114
    mul-float/2addr v4, v0

    .line 115
    int-to-float v0, v2

    .line 116
    mul-float/2addr v0, v1

    .line 117
    add-float/2addr v4, v8

    .line 118
    .line 119
    div-float v13, v8, v4

    .line 120
    add-float/2addr v3, v8

    .line 121
    .line 122
    div-float v14, v8, v3

    .line 123
    add-float/2addr v0, v8

    .line 124
    .line 125
    div-float v15, v8, v0

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 129
    move-result v5

    .line 130
    .line 131
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 132
    .line 133
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 134
    add-float/2addr v1, v8

    .line 135
    .line 136
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 137
    add-float/2addr v0, v8

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 144
    .line 145
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    .line 146
    .line 147
    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    .line 152
    const/high16 v4, 0x3f800000    # 1.0f

    .line 153
    .line 154
    if-eqz v11, :cond_6

    .line 155
    .line 156
    div-float v0, v4, v13

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v0, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 160
    const/4 v1, 0x0

    .line 161
    .line 162
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 163
    .line 164
    if-ltz v0, :cond_5

    .line 165
    move v2, v9

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    int-to-float v0, v0

    .line 168
    add-float/2addr v0, v9

    .line 169
    move v2, v0

    .line 170
    .line 171
    :goto_3
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 175
    move-result v0

    .line 176
    .line 177
    sub-float v3, v0, v10

    .line 178
    .line 179
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 180
    neg-float v0, v0

    .line 181
    .line 182
    move/from16 v16, v5

    .line 183
    .line 184
    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    .line 185
    .line 186
    move/from16 v17, v0

    .line 187
    .line 188
    move-object/from16 v0, p0

    .line 189
    .line 190
    move/from16 v4, v17

    .line 191
    .line 192
    move/from16 v17, v14

    .line 193
    .line 194
    move/from16 v14, v16

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    goto :goto_4

    .line 199
    .line 200
    :cond_6
    move/from16 v17, v14

    .line 201
    move v14, v5

    .line 202
    .line 203
    .line 204
    :goto_4
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 208
    move-result v14

    .line 209
    .line 210
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 211
    .line 212
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 213
    sub-float/2addr v1, v8

    .line 214
    .line 215
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 216
    sub-float/2addr v0, v8

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 223
    .line 224
    const/high16 v0, 0x43340000    # 180.0f

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 228
    .line 229
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    .line 230
    .line 231
    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRB:Landroid/graphics/Paint;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 235
    .line 236
    if-eqz v11, :cond_8

    .line 237
    .line 238
    const/high16 v11, 0x3f800000    # 1.0f

    .line 239
    .line 240
    div-float v4, v11, v13

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v4, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 244
    const/4 v1, 0x0

    .line 245
    .line 246
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 247
    .line 248
    if-ltz v0, :cond_7

    .line 249
    int-to-float v0, v0

    .line 250
    .line 251
    sub-float v0, v9, v0

    .line 252
    move v2, v0

    .line 253
    goto :goto_5

    .line 254
    :cond_7
    move v2, v9

    .line 255
    .line 256
    :goto_5
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 260
    move-result v0

    .line 261
    .line 262
    sub-float v3, v0, v10

    .line 263
    .line 264
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 265
    neg-float v4, v0

    .line 266
    .line 267
    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRB:Landroid/graphics/Paint;

    .line 268
    .line 269
    move-object/from16 v0, p0

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    goto :goto_6

    .line 274
    .line 275
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    .line 276
    .line 277
    .line 278
    :goto_6
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 282
    move-result v14

    .line 283
    .line 284
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 285
    .line 286
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 287
    add-float/2addr v1, v8

    .line 288
    .line 289
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 290
    sub-float/2addr v0, v8

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 297
    .line 298
    const/high16 v0, 0x43870000    # 270.0f

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 302
    .line 303
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    .line 304
    .line 305
    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLB:Landroid/graphics/Paint;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 309
    .line 310
    if-eqz v12, :cond_a

    .line 311
    .line 312
    div-float v4, v11, v15

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6, v4, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 316
    const/4 v1, 0x0

    .line 317
    .line 318
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 319
    .line 320
    if-ltz v0, :cond_9

    .line 321
    move v2, v9

    .line 322
    goto :goto_7

    .line 323
    :cond_9
    int-to-float v0, v0

    .line 324
    add-float/2addr v0, v9

    .line 325
    move v2, v0

    .line 326
    .line 327
    :goto_7
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 331
    move-result v0

    .line 332
    .line 333
    sub-float v3, v0, v10

    .line 334
    .line 335
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 336
    neg-float v4, v0

    .line 337
    .line 338
    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLB:Landroid/graphics/Paint;

    .line 339
    .line 340
    move-object/from16 v0, p0

    .line 341
    .line 342
    .line 343
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 344
    .line 345
    .line 346
    :cond_a
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 350
    move-result v14

    .line 351
    .line 352
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 353
    .line 354
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 355
    sub-float/2addr v1, v8

    .line 356
    .line 357
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 358
    add-float/2addr v0, v8

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    .line 363
    move/from16 v8, v17

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v13, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 367
    .line 368
    const/high16 v0, 0x42b40000    # 90.0f

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 372
    .line 373
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    .line 374
    .line 375
    iget-object v1, v7, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRT:Landroid/graphics/Paint;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 379
    .line 380
    if-eqz v12, :cond_c

    .line 381
    .line 382
    div-float v4, v11, v8

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v4, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 386
    const/4 v1, 0x0

    .line 387
    .line 388
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 389
    .line 390
    if-ltz v0, :cond_b

    .line 391
    int-to-float v0, v0

    .line 392
    sub-float/2addr v9, v0

    .line 393
    :cond_b
    move v2, v9

    .line 394
    .line 395
    iget-object v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 399
    move-result v0

    .line 400
    .line 401
    sub-float v3, v0, v10

    .line 402
    .line 403
    iget v0, v7, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 404
    neg-float v4, v0

    .line 405
    .line 406
    iget-object v5, v7, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRT:Landroid/graphics/Paint;

    .line 407
    .line 408
    move-object/from16 v0, p0

    .line 409
    .line 410
    .line 411
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 412
    .line 413
    .line 414
    :cond_c
    invoke-virtual {v6, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 415
    return-void
.end method
