.class public final Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_CLASS:Ljava/lang/String; = "TextInputServiceAndroid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final a(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Landroid/view/inputmethod/EditorInfo;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 7
    .param p0    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/input/ImeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/TextFieldValue;
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
    const-string v0, "imeOptions"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "textFieldValue"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->d()I

    .line 19
    move-result v0

    .line 20
    .line 21
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->a()I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x6

    .line 33
    const/4 v6, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->f()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v5, 0x0

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->e()I

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    move v5, v6

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->c()I

    .line 60
    move-result v2

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 64
    move-result v2

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    move v5, v4

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->d()I

    .line 72
    move-result v2

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    const/4 v5, 0x5

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->f()I

    .line 84
    move-result v2

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    const/4 v5, 0x7

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->g()I

    .line 96
    move-result v2

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 100
    move-result v2

    .line 101
    .line 102
    if-eqz v2, :cond_6

    .line 103
    move v5, v3

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->h()I

    .line 108
    move-result v2

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_7

    .line 115
    const/4 v5, 0x4

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->b()I

    .line 120
    move-result v2

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-eqz v0, :cond_16

    .line 127
    .line 128
    :goto_0
    iput v5, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->e()I

    .line 132
    move-result v0

    .line 133
    .line 134
    sget-object v2, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->h()I

    .line 138
    move-result v5

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 142
    move-result v5

    .line 143
    .line 144
    if-eqz v5, :cond_8

    .line 145
    .line 146
    iput v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    .line 151
    :cond_8
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->a()I

    .line 152
    move-result v5

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 156
    move-result v5

    .line 157
    .line 158
    if-eqz v5, :cond_9

    .line 159
    .line 160
    iput v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 161
    .line 162
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 163
    .line 164
    const/high16 v2, -0x80000000

    .line 165
    or-int/2addr v0, v2

    .line 166
    .line 167
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 168
    goto :goto_1

    .line 169
    .line 170
    .line 171
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->d()I

    .line 172
    move-result v5

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 176
    move-result v5

    .line 177
    .line 178
    if-eqz v5, :cond_a

    .line 179
    .line 180
    iput v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 181
    goto :goto_1

    .line 182
    .line 183
    .line 184
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->g()I

    .line 185
    move-result v4

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v4}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 189
    move-result v4

    .line 190
    .line 191
    if-eqz v4, :cond_b

    .line 192
    .line 193
    iput v3, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 194
    goto :goto_1

    .line 195
    .line 196
    .line 197
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->i()I

    .line 198
    move-result v3

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 202
    move-result v3

    .line 203
    .line 204
    if-eqz v3, :cond_c

    .line 205
    .line 206
    const/16 v0, 0x11

    .line 207
    .line 208
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 209
    goto :goto_1

    .line 210
    .line 211
    .line 212
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->c()I

    .line 213
    move-result v3

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 217
    move-result v3

    .line 218
    .line 219
    if-eqz v3, :cond_d

    .line 220
    .line 221
    const/16 v0, 0x21

    .line 222
    .line 223
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 224
    goto :goto_1

    .line 225
    .line 226
    .line 227
    :cond_d
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->f()I

    .line 228
    move-result v3

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 232
    move-result v3

    .line 233
    .line 234
    if-eqz v3, :cond_e

    .line 235
    .line 236
    const/16 v0, 0x81

    .line 237
    .line 238
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 239
    goto :goto_1

    .line 240
    .line 241
    .line 242
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->e()I

    .line 243
    move-result v3

    .line 244
    .line 245
    .line 246
    invoke-static {v0, v3}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 247
    move-result v3

    .line 248
    .line 249
    if-eqz v3, :cond_f

    .line 250
    .line 251
    const/16 v0, 0x12

    .line 252
    .line 253
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 254
    goto :goto_1

    .line 255
    .line 256
    .line 257
    :cond_f
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->b()I

    .line 258
    move-result v2

    .line 259
    .line 260
    .line 261
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardType;->l(II)Z

    .line 262
    move-result v0

    .line 263
    .line 264
    if-eqz v0, :cond_15

    .line 265
    .line 266
    const/16 v0, 0x2002

    .line 267
    .line 268
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 269
    .line 270
    .line 271
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->f()Z

    .line 272
    move-result v0

    .line 273
    .line 274
    if-nez v0, :cond_10

    .line 275
    .line 276
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v6}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->a(II)Z

    .line 280
    move-result v0

    .line 281
    .line 282
    if-eqz v0, :cond_10

    .line 283
    .line 284
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 285
    .line 286
    const/high16 v2, 0x20000

    .line 287
    or-int/2addr v0, v2

    .line 288
    .line 289
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->d()I

    .line 293
    move-result v0

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->a()I

    .line 297
    move-result v1

    .line 298
    .line 299
    .line 300
    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->l(II)Z

    .line 301
    move-result v0

    .line 302
    .line 303
    if-eqz v0, :cond_10

    .line 304
    .line 305
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 306
    .line 307
    const/high16 v1, 0x40000000    # 2.0f

    .line 308
    or-int/2addr v0, v1

    .line 309
    .line 310
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 311
    .line 312
    :cond_10
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 313
    .line 314
    .line 315
    invoke-static {v0, v6}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->a(II)Z

    .line 316
    move-result v0

    .line 317
    .line 318
    if-eqz v0, :cond_14

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->c()I

    .line 322
    move-result v0

    .line 323
    .line 324
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->a()I

    .line 328
    move-result v2

    .line 329
    .line 330
    .line 331
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->g(II)Z

    .line 332
    move-result v2

    .line 333
    .line 334
    if-eqz v2, :cond_11

    .line 335
    .line 336
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 337
    .line 338
    or-int/lit16 v0, v0, 0x1000

    .line 339
    .line 340
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 341
    goto :goto_2

    .line 342
    .line 343
    .line 344
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->d()I

    .line 345
    move-result v2

    .line 346
    .line 347
    .line 348
    invoke-static {v0, v2}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->g(II)Z

    .line 349
    move-result v2

    .line 350
    .line 351
    if-eqz v2, :cond_12

    .line 352
    .line 353
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 354
    .line 355
    or-int/lit16 v0, v0, 0x2000

    .line 356
    .line 357
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 358
    goto :goto_2

    .line 359
    .line 360
    .line 361
    :cond_12
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->c()I

    .line 362
    move-result v1

    .line 363
    .line 364
    .line 365
    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->g(II)Z

    .line 366
    move-result v0

    .line 367
    .line 368
    if-eqz v0, :cond_13

    .line 369
    .line 370
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 371
    .line 372
    or-int/lit16 v0, v0, 0x4000

    .line 373
    .line 374
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 375
    .line 376
    .line 377
    :cond_13
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->b()Z

    .line 378
    move-result p1

    .line 379
    .line 380
    if-eqz p1, :cond_14

    .line 381
    .line 382
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 383
    .line 384
    .line 385
    const v0, 0x8000

    .line 386
    or-int/2addr p1, v0

    .line 387
    .line 388
    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 389
    .line 390
    .line 391
    :cond_14
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 392
    move-result-wide v0

    .line 393
    .line 394
    .line 395
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 396
    move-result p1

    .line 397
    .line 398
    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 402
    move-result-wide v0

    .line 403
    .line 404
    .line 405
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 406
    move-result p1

    .line 407
    .line 408
    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 409
    .line 410
    .line 411
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->h()Ljava/lang/String;

    .line 412
    move-result-object p1

    .line 413
    .line 414
    .line 415
    invoke-static {p0, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->f(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 418
    .line 419
    const/high16 p2, 0x2000000

    .line 420
    or-int/2addr p1, p2

    .line 421
    .line 422
    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 423
    return-void

    .line 424
    .line 425
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 426
    .line 427
    const-string p1, "Invalid Keyboard Type"

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 431
    move-result-object p1

    .line 432
    .line 433
    .line 434
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 435
    throw p0

    .line 436
    .line 437
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 438
    .line 439
    const-string p1, "invalid ImeAction"

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 443
    move-result-object p1

    .line 444
    .line 445
    .line 446
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 447
    throw p0
.end method
