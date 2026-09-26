.class Lcom/github/mmin18/widget/FlexLayout$n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n0"
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private orig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$n0;->list:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 8
    return-void
.end method

.method static bridge synthetic a(Lcom/github/mmin18/widget/FlexLayout$n0;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/mmin18/widget/FlexLayout$n0;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_17

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lcom/github/mmin18/widget/FlexLayout$p0;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, Lcom/github/mmin18/widget/FlexLayout$p0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    new-instance v3, Ljava/util/Stack;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Lcom/github/mmin18/widget/FlexLayout$p0;->c(Landroid/content/Context;)Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    const-string v5, "parentheses mismatched: "

    .line 33
    .line 34
    const-string v6, "="

    .line 35
    .line 36
    if-eqz v4, :cond_11

    .line 37
    .line 38
    instance-of v7, v4, Ljava/lang/Number;

    .line 39
    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    instance-of v7, v4, Lcom/github/mmin18/widget/FlexLayout$o0;

    .line 47
    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_3
    instance-of v7, v4, Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 55
    .line 56
    if-eqz v7, :cond_10

    .line 57
    .line 58
    check-cast v4, Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 59
    .line 60
    iget v7, v4, Lcom/github/mmin18/widget/FlexLayout$m0;->flag:I

    .line 61
    const/4 v8, 0x1

    .line 62
    and-int/2addr v7, v8

    .line 63
    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_4
    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->COMMA:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 71
    .line 72
    if-ne v4, v7, :cond_7

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 76
    move-result v4

    .line 77
    .line 78
    if-nez v4, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    sget-object v5, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 85
    .line 86
    if-eq v4, v5, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 98
    move-result v4

    .line 99
    .line 100
    if-nez v4, :cond_6

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    const-string v1, "comma misplaced or parentheses mismatched: "

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p0

    .line 131
    .line 132
    :cond_7
    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 133
    .line 134
    if-ne v4, v7, :cond_8

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    goto :goto_0

    .line 139
    .line 140
    :cond_8
    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->BR:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 141
    .line 142
    if-ne v4, v7, :cond_b

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 146
    move-result v4

    .line 147
    .line 148
    if-nez v4, :cond_9

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 155
    .line 156
    if-eq v4, v7, :cond_9

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    goto :goto_2

    .line 165
    .line 166
    .line 167
    :cond_9
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 168
    move-result v4

    .line 169
    .line 170
    if-nez v4, :cond_a

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 177
    move-result v4

    .line 178
    .line 179
    if-nez v4, :cond_1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    check-cast v4, Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 186
    .line 187
    iget v4, v4, Lcom/github/mmin18/widget/FlexLayout$m0;->flag:I

    .line 188
    and-int/2addr v4, v8

    .line 189
    .line 190
    if-eqz v4, :cond_1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 194
    move-result-object v4

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    throw p0

    .line 227
    .line 228
    :cond_b
    iget v5, v4, Lcom/github/mmin18/widget/FlexLayout$m0;->argc:I

    .line 229
    .line 230
    if-nez v5, :cond_c

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    .line 238
    :cond_c
    :goto_3
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 239
    move-result v5

    .line 240
    .line 241
    if-nez v5, :cond_f

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 245
    move-result-object v5

    .line 246
    .line 247
    check-cast v5, Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 248
    .line 249
    iget v6, v4, Lcom/github/mmin18/widget/FlexLayout$m0;->assoc:I

    .line 250
    .line 251
    if-ne v6, v8, :cond_d

    .line 252
    .line 253
    iget v7, v4, Lcom/github/mmin18/widget/FlexLayout$m0;->prec:I

    .line 254
    .line 255
    iget v9, v5, Lcom/github/mmin18/widget/FlexLayout$m0;->prec:I

    .line 256
    .line 257
    if-le v7, v9, :cond_e

    .line 258
    :cond_d
    const/4 v7, 0x2

    .line 259
    .line 260
    if-ne v6, v7, :cond_f

    .line 261
    .line 262
    iget v6, v4, Lcom/github/mmin18/widget/FlexLayout$m0;->prec:I

    .line 263
    .line 264
    iget v5, v5, Lcom/github/mmin18/widget/FlexLayout$m0;->prec:I

    .line 265
    .line 266
    if-ge v6, v5, :cond_f

    .line 267
    .line 268
    .line 269
    :cond_e
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 270
    move-result-object v5

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    goto :goto_3

    .line 275
    .line 276
    .line 277
    :cond_f
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 282
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    const-string v1, "unknown token "

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v1, ", "

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object p1

    .line 313
    .line 314
    .line 315
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 316
    throw p0

    .line 317
    .line 318
    .line 319
    :cond_11
    :goto_4
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    .line 320
    move-result p0

    .line 321
    .line 322
    if-nez p0, :cond_14

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 326
    move-result-object p0

    .line 327
    .line 328
    check-cast p0, Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 329
    .line 330
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 331
    .line 332
    if-eq p0, v1, :cond_13

    .line 333
    .line 334
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$m0;->assoc:I

    .line 335
    .line 336
    if-eqz v1, :cond_12

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    goto :goto_4

    .line 341
    .line 342
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 343
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    const-string v1, "syntax error: "

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object p1

    .line 366
    .line 367
    .line 368
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 369
    throw p0

    .line 370
    .line 371
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 372
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object p1

    .line 393
    .line 394
    .line 395
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 396
    throw p0

    .line 397
    .line 398
    .line 399
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 400
    move-result p0

    .line 401
    .line 402
    if-eqz p0, :cond_15

    .line 403
    return-object v0

    .line 404
    .line 405
    :cond_15
    new-instance p0, Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 406
    .line 407
    .line 408
    invoke-static {v0}, Lcom/github/mmin18/widget/FlexLayout;->isDebug(Landroid/content/Context;)Z

    .line 409
    move-result v1

    .line 410
    .line 411
    if-eqz v1, :cond_16

    .line 412
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v0

    .line 430
    .line 431
    .line 432
    :cond_16
    invoke-direct {p0, v2, v0}, Lcom/github/mmin18/widget/FlexLayout$n0;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 433
    return-object p0

    .line 434
    :cond_17
    :goto_5
    return-object v0
.end method


# virtual methods
.method public b(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    iget-object v2, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->list:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    new-array v2, v2, [F

    .line 13
    .line 14
    iget-object v3, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->list:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v6

    .line 25
    .line 26
    const-string v7, ""

    .line 27
    .line 28
    const-string v8, ")"

    .line 29
    .line 30
    const-string v9, " ("

    .line 31
    const/4 v10, 0x1

    .line 32
    .line 33
    const-string v11, ":"

    .line 34
    .line 35
    if-eqz v6, :cond_12

    .line 36
    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    instance-of v12, v6, Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 42
    .line 43
    if-eqz v12, :cond_b

    .line 44
    move-object v13, v6

    .line 45
    .line 46
    check-cast v13, Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 47
    .line 48
    iget v6, v13, Lcom/github/mmin18/widget/FlexLayout$m0;->argc:I

    .line 49
    .line 50
    if-ge v5, v6, :cond_2

    .line 51
    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v4, "arg error "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v4, :cond_0

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v7

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v2

    .line 110
    .line 111
    :cond_2
    const/high16 v12, 0x7fc00000    # Float.NaN

    .line 112
    .line 113
    if-nez v6, :cond_3

    .line 114
    .line 115
    move/from16 v17, v12

    .line 116
    .line 117
    move/from16 v18, v17

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_3
    if-ne v6, v10, :cond_4

    .line 121
    .line 122
    add-int/lit8 v5, v5, -0x1

    .line 123
    .line 124
    aget v6, v2, v5

    .line 125
    .line 126
    move/from16 v17, v6

    .line 127
    .line 128
    move/from16 v18, v12

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 v10, 0x2

    .line 131
    .line 132
    if-ne v6, v10, :cond_5

    .line 133
    .line 134
    add-int/lit8 v6, v5, -0x1

    .line 135
    .line 136
    aget v6, v2, v6

    .line 137
    .line 138
    add-int/lit8 v5, v5, -0x2

    .line 139
    .line 140
    aget v7, v2, v5

    .line 141
    .line 142
    move/from16 v18, v6

    .line 143
    .line 144
    move/from16 v17, v7

    .line 145
    .line 146
    :goto_2
    move-object/from16 v14, p1

    .line 147
    .line 148
    move/from16 v15, p2

    .line 149
    .line 150
    move/from16 v16, p3

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {v13 .. v18}, Lcom/github/mmin18/widget/FlexLayout$m0;->a(Lcom/github/mmin18/widget/FlexLayout;IIFF)F

    .line 154
    move-result v6

    .line 155
    .line 156
    add-int/lit8 v7, v5, 0x1

    .line 157
    .line 158
    aput v6, v2, v5

    .line 159
    .line 160
    :goto_3
    move-object/from16 v10, p1

    .line 161
    .line 162
    move/from16 v12, p2

    .line 163
    .line 164
    move/from16 v13, p3

    .line 165
    :goto_4
    move v5, v7

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_5
    sget-object v6, Lcom/github/mmin18/widget/FlexLayout;->X_COND2:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 170
    .line 171
    if-ne v13, v6, :cond_8

    .line 172
    .line 173
    add-int/lit8 v6, v5, -0x1

    .line 174
    .line 175
    aget v6, v2, v6

    .line 176
    .line 177
    add-int/lit8 v7, v5, -0x2

    .line 178
    .line 179
    aget v7, v2, v7

    .line 180
    .line 181
    add-int/lit8 v8, v5, -0x3

    .line 182
    .line 183
    aget v9, v2, v8

    .line 184
    .line 185
    cmpl-float v10, v9, v9

    .line 186
    .line 187
    if-nez v10, :cond_7

    .line 188
    const/4 v10, 0x0

    .line 189
    .line 190
    cmpl-float v9, v9, v10

    .line 191
    .line 192
    if-eqz v9, :cond_6

    .line 193
    move v12, v7

    .line 194
    goto :goto_5

    .line 195
    :cond_6
    move v12, v6

    .line 196
    .line 197
    :cond_7
    :goto_5
    add-int/lit8 v5, v5, -0x2

    .line 198
    .line 199
    aput v12, v2, v8

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    const-string v4, "argc>2 not supported"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    if-eqz v1, :cond_a

    .line 216
    .line 217
    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 218
    .line 219
    if-nez v4, :cond_9

    .line 220
    goto :goto_6

    .line 221
    .line 222
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v7

    .line 247
    .line 248
    .line 249
    :cond_a
    :goto_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    .line 255
    .line 256
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    throw v2

    .line 258
    .line 259
    :cond_b
    instance-of v10, v6, Ljava/lang/Float;

    .line 260
    .line 261
    if-eqz v10, :cond_c

    .line 262
    .line 263
    add-int/lit8 v7, v5, 0x1

    .line 264
    .line 265
    check-cast v6, Ljava/lang/Float;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 269
    move-result v6

    .line 270
    .line 271
    aput v6, v2, v5

    .line 272
    goto :goto_3

    .line 273
    .line 274
    :cond_c
    instance-of v10, v6, Lcom/github/mmin18/widget/FlexLayout$o0;

    .line 275
    .line 276
    if-eqz v10, :cond_f

    .line 277
    .line 278
    check-cast v6, Lcom/github/mmin18/widget/FlexLayout$o0;

    .line 279
    .line 280
    if-eqz v1, :cond_e

    .line 281
    .line 282
    iget-object v7, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 283
    .line 284
    if-nez v7, :cond_d

    .line 285
    goto :goto_8

    .line 286
    .line 287
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    iget-object v8, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object v7

    .line 306
    .line 307
    :goto_7
    move-object/from16 v10, p1

    .line 308
    .line 309
    move/from16 v12, p2

    .line 310
    .line 311
    move/from16 v13, p3

    .line 312
    goto :goto_9

    .line 313
    :cond_e
    :goto_8
    const/4 v7, 0x0

    .line 314
    goto :goto_7

    .line 315
    .line 316
    .line 317
    :goto_9
    invoke-virtual {v6, v10, v12, v13, v7}, Lcom/github/mmin18/widget/FlexLayout$o0;->a(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    .line 318
    move-result v6

    .line 319
    .line 320
    add-int/lit8 v7, v5, 0x1

    .line 321
    .line 322
    aput v6, v2, v5

    .line 323
    .line 324
    goto/16 :goto_4

    .line 325
    .line 326
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 327
    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    const-string v4, "unknown token "

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    if-eqz v1, :cond_11

    .line 342
    .line 343
    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 344
    .line 345
    if-nez v4, :cond_10

    .line 346
    goto :goto_a

    .line 347
    .line 348
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    move-result-object v7

    .line 373
    .line 374
    .line 375
    :cond_11
    :goto_a
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    .line 381
    .line 382
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 383
    throw v2

    .line 384
    .line 385
    :cond_12
    if-eq v5, v10, :cond_15

    .line 386
    .line 387
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 388
    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    const-string v4, "syntax error"

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    if-eqz v1, :cond_14

    .line 400
    .line 401
    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 402
    .line 403
    if-nez v4, :cond_13

    .line 404
    goto :goto_b

    .line 405
    .line 406
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$n0;->orig:Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v7

    .line 431
    .line 432
    .line 433
    :cond_14
    :goto_b
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    move-result-object v1

    .line 438
    .line 439
    .line 440
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 441
    throw v2

    .line 442
    .line 443
    :cond_15
    aget v1, v2, v4

    .line 444
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/FlexLayout$n0;->list:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
