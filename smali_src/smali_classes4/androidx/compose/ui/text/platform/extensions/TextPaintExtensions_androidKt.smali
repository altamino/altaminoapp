.class public final Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/SpanStyle;Le8/r;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/text/SpanStyle;
    .locals 23
    .param p0    # Landroidx/compose/ui/text/platform/AndroidTextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/platform/AndroidTextPaint;",
            "Landroidx/compose/ui/text/SpanStyle;",
            "Le8/r<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "-",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "-",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "-",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Landroidx/compose/ui/text/SpanStyle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    const-string v3, "<this>"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v3, "style"

    .line 14
    .line 15
    move-object/from16 v4, p1

    .line 16
    .line 17
    .line 18
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v3, "resolveTypeface"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    const-string v3, "density"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 32
    move-result-wide v5

    .line 33
    .line 34
    .line 35
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 36
    move-result-wide v5

    .line 37
    .line 38
    sget-object v3, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 42
    move-result-wide v7

    .line 43
    .line 44
    .line 45
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 46
    move-result v7

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, v5, v6}, Landroidx/compose/ui/unit/Density;->p0(J)F

    .line 56
    move-result v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 64
    move-result-wide v7

    .line 65
    .line 66
    .line 67
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 78
    move-result-wide v5

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 82
    move-result v5

    .line 83
    mul-float/2addr v2, v5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->b(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    if-nez v5, :cond_2

    .line 103
    .line 104
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 112
    move-result-object v6

    .line 113
    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 118
    move-result v6

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_3
    sget-object v6, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 125
    move-result v6

    .line 126
    .line 127
    .line 128
    :goto_1
    invoke-static {v6}, Landroidx/compose/ui/text/font/FontStyle;->c(I)Landroidx/compose/ui/text/font/FontStyle;

    .line 129
    move-result-object v6

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 133
    move-result-object v7

    .line 134
    .line 135
    if-eqz v7, :cond_4

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    .line 139
    move-result v7

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_4
    sget-object v7, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 146
    move-result v7

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-static {v7}, Landroidx/compose/ui/text/font/FontSynthesis;->e(I)Landroidx/compose/ui/text/font/FontSynthesis;

    .line 150
    move-result-object v7

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v2, v5, v6, v7}, Le8/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    check-cast v1, Landroid/graphics/Typeface;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    if-eqz v1, :cond_8

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    sget-object v2, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Landroidx/compose/ui/text/intl/LocaleList$Companion;->a()Landroidx/compose/ui/text/intl/LocaleList;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    .line 178
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    move-result v1

    .line 180
    .line 181
    if-nez v1, :cond_8

    .line 182
    .line 183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const/16 v2, 0x18

    .line 186
    .line 187
    if-lt v1, v2, :cond_6

    .line 188
    .line 189
    sget-object v1, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->b(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 197
    goto :goto_4

    .line 198
    .line 199
    .line 200
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 201
    move-result-object v1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Landroidx/compose/ui/text/intl/LocaleList;->isEmpty()Z

    .line 205
    move-result v1

    .line 206
    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    sget-object v1, Landroidx/compose/ui/text/intl/Locale;->Companion:Landroidx/compose/ui/text/intl/Locale$Companion;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Landroidx/compose/ui/text/intl/Locale$Companion;->a()Landroidx/compose/ui/text/intl/Locale;

    .line 213
    move-result-object v1

    .line 214
    goto :goto_3

    .line 215
    .line 216
    .line 217
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 218
    move-result-object v1

    .line 219
    const/4 v2, 0x0

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/intl/LocaleList;->c(I)Landroidx/compose/ui/text/intl/Locale;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    .line 226
    :goto_3
    invoke-static {v1}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->a(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 234
    move-result-wide v1

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 238
    move-result-wide v1

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 242
    move-result-wide v5

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 246
    move-result v5

    .line 247
    .line 248
    if-eqz v5, :cond_9

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 252
    move-result-wide v1

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 256
    move-result v1

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 260
    goto :goto_5

    .line 261
    .line 262
    .line 263
    :cond_9
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 264
    move-result-wide v5

    .line 265
    .line 266
    .line 267
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 268
    .line 269
    .line 270
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    .line 273
    if-eqz v1, :cond_a

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 277
    move-result-object v1

    .line 278
    .line 279
    const-string v2, ""

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    move-result v1

    .line 284
    .line 285
    if-nez v1, :cond_a

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 289
    move-result-object v1

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    if-eqz v1, :cond_b

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 302
    move-result-object v1

    .line 303
    .line 304
    sget-object v2, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->a()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 308
    move-result-object v2

    .line 309
    .line 310
    .line 311
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    move-result v1

    .line 313
    .line 314
    if-nez v1, :cond_b

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 318
    move-result v1

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 322
    move-result-object v2

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;->b()F

    .line 326
    move-result v2

    .line 327
    mul-float/2addr v1, v2

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 331
    .line 332
    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 334
    move-result v1

    .line 335
    .line 336
    .line 337
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 338
    move-result-object v2

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;->c()F

    .line 342
    move-result v2

    .line 343
    add-float/2addr v1, v2

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 347
    .line 348
    .line 349
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->f()J

    .line 350
    move-result-wide v1

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->e()Landroidx/compose/ui/graphics/Brush;

    .line 357
    move-result-object v1

    .line 358
    .line 359
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 363
    move-result-wide v5

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1, v5, v6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a(Landroidx/compose/ui/graphics/Brush;J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->p()Landroidx/compose/ui/graphics/Shadow;

    .line 370
    move-result-object v1

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Shadow;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 377
    move-result-object v1

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 384
    move-result-wide v0

    .line 385
    .line 386
    .line 387
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 388
    move-result-wide v0

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 392
    move-result-wide v2

    .line 393
    .line 394
    .line 395
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 396
    move-result v0

    .line 397
    .line 398
    if-eqz v0, :cond_d

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 402
    move-result-wide v0

    .line 403
    .line 404
    .line 405
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 406
    move-result v0

    .line 407
    const/4 v1, 0x0

    .line 408
    .line 409
    cmpg-float v0, v0, v1

    .line 410
    .line 411
    if-nez v0, :cond_c

    .line 412
    goto :goto_7

    .line 413
    .line 414
    .line 415
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 416
    move-result-wide v0

    .line 417
    :goto_6
    move-wide v12, v0

    .line 418
    goto :goto_8

    .line 419
    .line 420
    :cond_d
    :goto_7
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->a()J

    .line 424
    move-result-wide v0

    .line 425
    goto :goto_6

    .line 426
    .line 427
    .line 428
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 429
    move-result-wide v0

    .line 430
    .line 431
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->e()J

    .line 435
    move-result-wide v5

    .line 436
    .line 437
    .line 438
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 439
    move-result v0

    .line 440
    .line 441
    if-eqz v0, :cond_e

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 445
    move-result-wide v0

    .line 446
    .line 447
    :goto_9
    move-wide/from16 v17, v0

    .line 448
    goto :goto_a

    .line 449
    .line 450
    .line 451
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 452
    move-result-wide v0

    .line 453
    goto :goto_9

    .line 454
    .line 455
    .line 456
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 457
    move-result-object v0

    .line 458
    .line 459
    sget-object v1, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->a()F

    .line 463
    move-result v1

    .line 464
    .line 465
    if-nez v0, :cond_f

    .line 466
    goto :goto_c

    .line 467
    .line 468
    .line 469
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift;->h()F

    .line 470
    move-result v0

    .line 471
    .line 472
    .line 473
    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/BaselineShift;->e(FF)Z

    .line 474
    move-result v0

    .line 475
    .line 476
    if-eqz v0, :cond_10

    .line 477
    const/4 v0, 0x0

    .line 478
    :goto_b
    move-object v14, v0

    .line 479
    goto :goto_d

    .line 480
    .line 481
    .line 482
    :cond_10
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 483
    move-result-object v0

    .line 484
    goto :goto_b

    .line 485
    .line 486
    :goto_d
    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    .line 487
    move-object v2, v0

    .line 488
    .line 489
    const-wide/16 v3, 0x0

    .line 490
    .line 491
    const-wide/16 v5, 0x0

    .line 492
    const/4 v7, 0x0

    .line 493
    const/4 v8, 0x0

    .line 494
    const/4 v9, 0x0

    .line 495
    const/4 v10, 0x0

    .line 496
    const/4 v11, 0x0

    .line 497
    const/4 v15, 0x0

    .line 498
    .line 499
    const/16 v16, 0x0

    .line 500
    .line 501
    const/16 v19, 0x0

    .line 502
    .line 503
    const/16 v20, 0x0

    .line 504
    .line 505
    const/16 v21, 0x367f

    .line 506
    .line 507
    const/16 v22, 0x0

    .line 508
    .line 509
    .line 510
    invoke-direct/range {v2 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/k;)V

    .line 511
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/text/SpanStyle;)Z
    .locals 1
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
.end method
