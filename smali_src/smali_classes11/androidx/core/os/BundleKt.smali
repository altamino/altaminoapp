.class public final Landroidx/core/os/BundleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final varargs a([Lw7/u;)Landroid/os/Bundle;
    .locals 9
    .param p0    # [Lw7/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw7/u<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "pairs"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    array-length v1, p0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v2, v1, :cond_1d

    .line 16
    .line 17
    aget-object v3, p0, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lw7/u;->a()Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lw7/u;->b()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_0
    instance-of v5, v3, Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    check-cast v3, Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    instance-of v5, v3, Ljava/lang/Byte;

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    check-cast v3, Ljava/lang/Number;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_2
    instance-of v5, v3, Ljava/lang/Character;

    .line 68
    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    check-cast v3, Ljava/lang/Character;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 75
    move-result v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_3
    instance-of v5, v3, Ljava/lang/Double;

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    check-cast v3, Ljava/lang/Number;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 90
    move-result-wide v5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_4
    instance-of v5, v3, Ljava/lang/Float;

    .line 98
    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    check-cast v3, Ljava/lang/Number;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 105
    move-result v3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_5
    instance-of v5, v3, Ljava/lang/Integer;

    .line 113
    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    check-cast v3, Ljava/lang/Number;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 120
    move-result v3

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_6
    instance-of v5, v3, Ljava/lang/Long;

    .line 128
    .line 129
    if-eqz v5, :cond_7

    .line 130
    .line 131
    check-cast v3, Ljava/lang/Number;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 135
    move-result-wide v5

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :cond_7
    instance-of v5, v3, Ljava/lang/Short;

    .line 143
    .line 144
    if-eqz v5, :cond_8

    .line 145
    .line 146
    check-cast v3, Ljava/lang/Number;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 150
    move-result v3

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_8
    instance-of v5, v3, Landroid/os/Bundle;

    .line 158
    .line 159
    if-eqz v5, :cond_9

    .line 160
    .line 161
    check-cast v3, Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_9
    instance-of v5, v3, Ljava/lang/CharSequence;

    .line 169
    .line 170
    if-eqz v5, :cond_a

    .line 171
    .line 172
    check-cast v3, Ljava/lang/CharSequence;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_a
    instance-of v5, v3, Landroid/os/Parcelable;

    .line 180
    .line 181
    if-eqz v5, :cond_b

    .line 182
    .line 183
    check-cast v3, Landroid/os/Parcelable;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_b
    instance-of v5, v3, [Z

    .line 191
    .line 192
    if-eqz v5, :cond_c

    .line 193
    .line 194
    check-cast v3, [Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_c
    instance-of v5, v3, [B

    .line 202
    .line 203
    if-eqz v5, :cond_d

    .line 204
    .line 205
    check-cast v3, [B

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_d
    instance-of v5, v3, [C

    .line 213
    .line 214
    if-eqz v5, :cond_e

    .line 215
    .line 216
    check-cast v3, [C

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_e
    instance-of v5, v3, [D

    .line 224
    .line 225
    if-eqz v5, :cond_f

    .line 226
    .line 227
    check-cast v3, [D

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_f
    instance-of v5, v3, [F

    .line 235
    .line 236
    if-eqz v5, :cond_10

    .line 237
    .line 238
    check-cast v3, [F

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_10
    instance-of v5, v3, [I

    .line 246
    .line 247
    if-eqz v5, :cond_11

    .line 248
    .line 249
    check-cast v3, [I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_11
    instance-of v5, v3, [J

    .line 257
    .line 258
    if-eqz v5, :cond_12

    .line 259
    .line 260
    check-cast v3, [J

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_12
    instance-of v5, v3, [S

    .line 268
    .line 269
    if-eqz v5, :cond_13

    .line 270
    .line 271
    check-cast v3, [S

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_13
    instance-of v5, v3, [Ljava/lang/Object;

    .line 279
    .line 280
    const/16 v6, 0x22

    .line 281
    .line 282
    const-string v7, " for key \""

    .line 283
    .line 284
    if-eqz v5, :cond_18

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    move-result-object v5

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 292
    move-result-object v5

    .line 293
    .line 294
    .line 295
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 296
    .line 297
    const-class v8, Landroid/os/Parcelable;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 301
    move-result v8

    .line 302
    .line 303
    if-eqz v8, :cond_14

    .line 304
    .line 305
    const-string v5, "null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>"

    .line 306
    .line 307
    .line 308
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    check-cast v3, [Landroid/os/Parcelable;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :cond_14
    const-class v8, Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 321
    move-result v8

    .line 322
    .line 323
    if-eqz v8, :cond_15

    .line 324
    .line 325
    const-string v5, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    .line 326
    .line 327
    .line 328
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    .line 330
    check-cast v3, [Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    goto :goto_1

    .line 335
    .line 336
    :cond_15
    const-class v8, Ljava/lang/CharSequence;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 340
    move-result v8

    .line 341
    .line 342
    if-eqz v8, :cond_16

    .line 343
    .line 344
    const-string v5, "null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>"

    .line 345
    .line 346
    .line 347
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    check-cast v3, [Ljava/lang/CharSequence;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 353
    goto :goto_1

    .line 354
    .line 355
    :cond_16
    const-class v8, Ljava/io/Serializable;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 359
    move-result v8

    .line 360
    .line 361
    if-eqz v8, :cond_17

    .line 362
    .line 363
    check-cast v3, Ljava/io/Serializable;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 367
    goto :goto_1

    .line 368
    .line 369
    .line 370
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 371
    move-result-object p0

    .line 372
    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 374
    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    const-string v2, "Illegal value array type "

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object p0

    .line 400
    .line 401
    .line 402
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 403
    throw v0

    .line 404
    .line 405
    :cond_18
    instance-of v5, v3, Ljava/io/Serializable;

    .line 406
    .line 407
    if-eqz v5, :cond_19

    .line 408
    .line 409
    check-cast v3, Ljava/io/Serializable;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 413
    goto :goto_1

    .line 414
    .line 415
    :cond_19
    instance-of v5, v3, Landroid/os/IBinder;

    .line 416
    .line 417
    if-eqz v5, :cond_1a

    .line 418
    .line 419
    check-cast v3, Landroid/os/IBinder;

    .line 420
    .line 421
    .line 422
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi18ImplKt;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 423
    goto :goto_1

    .line 424
    .line 425
    :cond_1a
    instance-of v5, v3, Landroid/util/Size;

    .line 426
    .line 427
    if-eqz v5, :cond_1b

    .line 428
    .line 429
    check-cast v3, Landroid/util/Size;

    .line 430
    .line 431
    .line 432
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi21ImplKt;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V

    .line 433
    goto :goto_1

    .line 434
    .line 435
    :cond_1b
    instance-of v5, v3, Landroid/util/SizeF;

    .line 436
    .line 437
    if-eqz v5, :cond_1c

    .line 438
    .line 439
    check-cast v3, Landroid/util/SizeF;

    .line 440
    .line 441
    .line 442
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi21ImplKt;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V

    .line 443
    .line 444
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 445
    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    .line 449
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    move-result-object p0

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 454
    move-result-object p0

    .line 455
    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 457
    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    const-string v2, "Illegal value type "

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    move-result-object p0

    .line 483
    .line 484
    .line 485
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 486
    throw v0

    .line 487
    :cond_1d
    return-object v0
.end method
