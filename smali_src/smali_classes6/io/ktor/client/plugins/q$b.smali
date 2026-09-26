.class public final Lio/ktor/client/plugins/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/m<",
        "Lio/ktor/client/plugins/q$a;",
        "Lio/ktor/client/plugins/q;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpRedirect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRedirect.kt\nio/ktor/client/plugins/HttpRedirect$Plugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1#2:129\n*E\n"
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
    invoke-direct {p0}, Lio/ktor/client/plugins/q$b;-><init>()V

    return-void
.end method

.method public static final synthetic c(Lio/ktor/client/plugins/q$b;Lio/ktor/client/plugins/e0;Li7/d;Lio/ktor/client/call/b;ZLio/ktor/client/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lio/ktor/client/plugins/q$b;->e(Lio/ktor/client/plugins/e0;Li7/d;Lio/ktor/client/call/b;ZLio/ktor/client/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Lio/ktor/client/plugins/e0;Li7/d;Lio/ktor/client/call/b;ZLio/ktor/client/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/e0;",
            "Li7/d;",
            "Lio/ktor/client/call/b;",
            "Z",
            "Lio/ktor/client/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p3

    .line 3
    .line 4
    move-object/from16 v1, p6

    .line 5
    .line 6
    instance-of v2, v1, Lio/ktor/client/plugins/q$b$a;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    move-object v2, v1

    .line 10
    .line 11
    check-cast v2, Lio/ktor/client/plugins/q$b$a;

    .line 12
    .line 13
    iget v3, v2, Lio/ktor/client/plugins/q$b$a;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    sub-int/2addr v3, v4

    .line 21
    .line 22
    iput v3, v2, Lio/ktor/client/plugins/q$b$a;->label:I

    .line 23
    .line 24
    move-object/from16 v3, p0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance v2, Lio/ktor/client/plugins/q$b$a;

    .line 28
    .line 29
    move-object/from16 v3, p0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v1}, Lio/ktor/client/plugins/q$b$a;-><init>(Lio/ktor/client/plugins/q$b;Lkotlin/coroutines/d;)V

    .line 33
    .line 34
    :goto_0
    iget-object v1, v2, Lio/ktor/client/plugins/q$b$a;->result:Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    iget v5, v2, Lio/ktor/client/plugins/q$b$a;->label:I

    .line 41
    const/4 v6, 0x1

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    if-ne v5, v6, :cond_1

    .line 46
    .line 47
    iget-boolean v0, v2, Lio/ktor/client/plugins/q$b$a;->Z$0:Z

    .line 48
    .line 49
    iget-object v5, v2, Lio/ktor/client/plugins/q$b$a;->L$8:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Lkotlin/jvm/internal/p0;

    .line 52
    .line 53
    iget-object v7, v2, Lio/ktor/client/plugins/q$b$a;->L$7:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v8, v2, Lio/ktor/client/plugins/q$b$a;->L$6:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v8, Lio/ktor/http/l0;

    .line 60
    .line 61
    iget-object v9, v2, Lio/ktor/client/plugins/q$b$a;->L$5:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v9, Lkotlin/jvm/internal/p0;

    .line 64
    .line 65
    iget-object v10, v2, Lio/ktor/client/plugins/q$b$a;->L$4:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v10, Lkotlin/jvm/internal/p0;

    .line 68
    .line 69
    iget-object v11, v2, Lio/ktor/client/plugins/q$b$a;->L$3:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v11, Lio/ktor/client/a;

    .line 72
    .line 73
    iget-object v12, v2, Lio/ktor/client/plugins/q$b$a;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v12, Li7/d;

    .line 76
    .line 77
    iget-object v13, v2, Lio/ktor/client/plugins/q$b$a;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v13, Lio/ktor/client/plugins/e0;

    .line 80
    .line 81
    iget-object v14, v2, Lio/ktor/client/plugins/q$b$a;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v14, Lio/ktor/client/plugins/q$b;

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 87
    move-object v3, v4

    .line 88
    move-object v4, v2

    .line 89
    move v2, v0

    .line 90
    move-object v0, v13

    .line 91
    .line 92
    move-object/from16 v16, v9

    .line 93
    move-object v9, v7

    .line 94
    move-object v7, v12

    .line 95
    .line 96
    move-object/from16 v12, v16

    .line 97
    .line 98
    move-object/from16 v17, v10

    .line 99
    move-object v10, v8

    .line 100
    .line 101
    move-object/from16 v8, v17

    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v0

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lio/ktor/client/plugins/r;->c(Lio/ktor/http/v;)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    if-nez v1, :cond_3

    .line 129
    return-object v0

    .line 130
    .line 131
    :cond_3
    new-instance v1, Lkotlin/jvm/internal/p0;

    .line 132
    .line 133
    .line 134
    invoke-direct {v1}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 135
    .line 136
    iput-object v0, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 137
    .line 138
    new-instance v5, Lkotlin/jvm/internal/p0;

    .line 139
    .line 140
    .line 141
    invoke-direct {v5}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 142
    .line 143
    move-object/from16 v7, p2

    .line 144
    .line 145
    iput-object v7, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 149
    move-result-object v8

    .line 150
    .line 151
    .line 152
    invoke-interface {v8}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 153
    move-result-object v8

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8}, Lio/ktor/http/p0;->k()Lio/ktor/http/l0;

    .line 157
    move-result-object v8

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p3 .. p3}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Lio/ktor/http/s0;->a(Lio/ktor/http/p0;)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    move-object v9, v0

    .line 171
    move-object v14, v3

    .line 172
    move-object v11, v5

    .line 173
    move-object v10, v8

    .line 174
    .line 175
    move-object/from16 v0, p1

    .line 176
    move-object v8, v1

    .line 177
    move-object v5, v4

    .line 178
    .line 179
    move/from16 v1, p4

    .line 180
    move-object v4, v2

    .line 181
    .line 182
    move-object/from16 v2, p5

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-virtual {v2}, Lio/ktor/client/a;->l()Lj7/b;

    .line 186
    move-result-object v12

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14}, Lio/ktor/client/plugins/q$b;->d()Lj7/a;

    .line 190
    move-result-object v13

    .line 191
    .line 192
    iget-object v15, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v15, Lio/ktor/client/call/b;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v15}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 198
    move-result-object v15

    .line 199
    .line 200
    .line 201
    invoke-virtual {v12, v13, v15}, Lj7/b;->a(Lj7/a;Ljava/lang/Object;)V

    .line 202
    .line 203
    iget-object v12, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v12, Lio/ktor/client/call/b;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 209
    move-result-object v12

    .line 210
    .line 211
    .line 212
    invoke-interface {v12}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    .line 213
    move-result-object v12

    .line 214
    .line 215
    sget-object v13, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13}, Lio/ktor/http/o;->r()Ljava/lang/String;

    .line 219
    move-result-object v15

    .line 220
    .line 221
    .line 222
    invoke-interface {v12, v15}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v12

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lio/ktor/client/plugins/r;->b()Lorg/slf4j/a;

    .line 227
    move-result-object v15

    .line 228
    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    const-string v3, "Received redirect response to "

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v3, " for request "

    .line 243
    .line 244
    .line 245
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7}, Li7/d;->h()Lio/ktor/http/f0;

    .line 249
    move-result-object v3

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v3

    .line 257
    .line 258
    .line 259
    invoke-interface {v15, v3}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 260
    .line 261
    new-instance v3, Li7/d;

    .line 262
    .line 263
    .line 264
    invoke-direct {v3}, Li7/d;-><init>()V

    .line 265
    .line 266
    iget-object v6, v11, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v6, Li7/d;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v6}, Li7/d;->o(Li7/d;)Li7/d;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Li7/d;->h()Lio/ktor/http/f0;

    .line 275
    move-result-object v6

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6}, Lio/ktor/http/f0;->k()Lio/ktor/http/a0;

    .line 279
    move-result-object v6

    .line 280
    .line 281
    .line 282
    invoke-interface {v6}, Lio/ktor/util/u;->clear()V

    .line 283
    .line 284
    if-eqz v12, :cond_4

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Li7/d;->h()Lio/ktor/http/f0;

    .line 288
    move-result-object v6

    .line 289
    .line 290
    .line 291
    invoke-static {v6, v12}, Lio/ktor/http/k0;->j(Lio/ktor/http/f0;Ljava/lang/String;)Lio/ktor/http/f0;

    .line 292
    .line 293
    :cond_4
    if-nez v1, :cond_5

    .line 294
    .line 295
    .line 296
    invoke-static {v10}, Lio/ktor/http/m0;->a(Lio/ktor/http/l0;)Z

    .line 297
    move-result v6

    .line 298
    .line 299
    if-eqz v6, :cond_5

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3}, Li7/d;->h()Lio/ktor/http/f0;

    .line 303
    move-result-object v6

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6}, Lio/ktor/http/f0;->o()Lio/ktor/http/l0;

    .line 307
    move-result-object v6

    .line 308
    .line 309
    .line 310
    invoke-static {v6}, Lio/ktor/http/m0;->a(Lio/ktor/http/l0;)Z

    .line 311
    move-result v6

    .line 312
    .line 313
    if-nez v6, :cond_5

    .line 314
    .line 315
    .line 316
    invoke-static {}, Lio/ktor/client/plugins/r;->b()Lorg/slf4j/a;

    .line 317
    move-result-object v0

    .line 318
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    const-string v2, "Can not redirect "

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7}, Li7/d;->h()Lio/ktor/http/f0;

    .line 331
    move-result-object v2

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v2, " because of security downgrade"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object v1

    .line 344
    .line 345
    .line 346
    invoke-interface {v0, v1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 347
    .line 348
    iget-object v0, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 349
    return-object v0

    .line 350
    .line 351
    .line 352
    :cond_5
    invoke-virtual {v3}, Li7/d;->h()Lio/ktor/http/f0;

    .line 353
    move-result-object v6

    .line 354
    .line 355
    .line 356
    invoke-static {v6}, Lio/ktor/http/h0;->e(Lio/ktor/http/f0;)Ljava/lang/String;

    .line 357
    move-result-object v6

    .line 358
    .line 359
    .line 360
    invoke-static {v9, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    move-result v6

    .line 362
    .line 363
    if-nez v6, :cond_6

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 367
    move-result-object v6

    .line 368
    .line 369
    .line 370
    invoke-virtual {v13}, Lio/ktor/http/o;->e()Ljava/lang/String;

    .line 371
    move-result-object v12

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6, v12}, Lio/ktor/util/v;->j(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {}, Lio/ktor/client/plugins/r;->b()Lorg/slf4j/a;

    .line 378
    move-result-object v6

    .line 379
    .line 380
    new-instance v12, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    const-string v13, "Removing Authorization header from redirect for "

    .line 386
    .line 387
    .line 388
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7}, Li7/d;->h()Lio/ktor/http/f0;

    .line 392
    move-result-object v13

    .line 393
    .line 394
    .line 395
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object v12

    .line 400
    .line 401
    .line 402
    invoke-interface {v6, v12}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 403
    .line 404
    :cond_6
    iput-object v3, v11, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 405
    .line 406
    iput-object v14, v4, Lio/ktor/client/plugins/q$b$a;->L$0:Ljava/lang/Object;

    .line 407
    .line 408
    iput-object v0, v4, Lio/ktor/client/plugins/q$b$a;->L$1:Ljava/lang/Object;

    .line 409
    .line 410
    iput-object v7, v4, Lio/ktor/client/plugins/q$b$a;->L$2:Ljava/lang/Object;

    .line 411
    .line 412
    iput-object v2, v4, Lio/ktor/client/plugins/q$b$a;->L$3:Ljava/lang/Object;

    .line 413
    .line 414
    iput-object v8, v4, Lio/ktor/client/plugins/q$b$a;->L$4:Ljava/lang/Object;

    .line 415
    .line 416
    iput-object v11, v4, Lio/ktor/client/plugins/q$b$a;->L$5:Ljava/lang/Object;

    .line 417
    .line 418
    iput-object v10, v4, Lio/ktor/client/plugins/q$b$a;->L$6:Ljava/lang/Object;

    .line 419
    .line 420
    iput-object v9, v4, Lio/ktor/client/plugins/q$b$a;->L$7:Ljava/lang/Object;

    .line 421
    .line 422
    iput-object v8, v4, Lio/ktor/client/plugins/q$b$a;->L$8:Ljava/lang/Object;

    .line 423
    .line 424
    iput-boolean v1, v4, Lio/ktor/client/plugins/q$b$a;->Z$0:Z

    .line 425
    const/4 v6, 0x1

    .line 426
    .line 427
    iput v6, v4, Lio/ktor/client/plugins/q$b$a;->label:I

    .line 428
    .line 429
    .line 430
    invoke-interface {v0, v3, v4}, Lio/ktor/client/plugins/e0;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 431
    move-result-object v3

    .line 432
    .line 433
    if-ne v3, v5, :cond_7

    .line 434
    return-object v5

    .line 435
    :cond_7
    move-object v12, v11

    .line 436
    move-object v11, v2

    .line 437
    move v2, v1

    .line 438
    move-object v1, v3

    .line 439
    move-object v3, v5

    .line 440
    move-object v5, v8

    .line 441
    .line 442
    :goto_2
    iput-object v1, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 443
    .line 444
    iget-object v1, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v1, Lio/ktor/client/call/b;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 450
    move-result-object v1

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 454
    move-result-object v1

    .line 455
    .line 456
    .line 457
    invoke-static {v1}, Lio/ktor/client/plugins/r;->c(Lio/ktor/http/v;)Z

    .line 458
    move-result v1

    .line 459
    .line 460
    if-nez v1, :cond_8

    .line 461
    .line 462
    iget-object v0, v8, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 463
    return-object v0

    .line 464
    :cond_8
    move v1, v2

    .line 465
    move-object v5, v3

    .line 466
    move-object v2, v11

    .line 467
    move-object v11, v12

    .line 468
    .line 469
    move-object/from16 v3, p0

    .line 470
    goto/16 :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Le8/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/q$b;->g(Le8/l;)Lio/ktor/client/plugins/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/a;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/q;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/q$b;->f(Lio/ktor/client/plugins/q;Lio/ktor/client/a;)V

    .line 6
    return-void
.end method

.method public final d()Lj7/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj7/a<",
            "Lio/ktor/client/statement/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/client/plugins/q;->c()Lj7/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f(Lio/ktor/client/plugins/q;Lio/ktor/client/a;)V
    .locals 3
    .param p1    # Lio/ktor/client/plugins/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "plugin"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Lio/ktor/client/plugins/x;->Plugin:Lio/ktor/client/plugins/x$d;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lio/ktor/client/plugins/n;->b(Lio/ktor/client/a;Lio/ktor/client/plugins/m;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lio/ktor/client/plugins/x;

    .line 19
    .line 20
    new-instance v1, Lio/ktor/client/plugins/q$b$b;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p1, p2, v2}, Lio/ktor/client/plugins/q$b$b;-><init>(Lio/ktor/client/plugins/q;Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lio/ktor/client/plugins/x;->d(Le8/q;)V

    .line 28
    return-void
.end method

.method public g(Le8/l;)Lio/ktor/client/plugins/q;
    .locals 3
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lio/ktor/client/plugins/q$a;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/plugins/q;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/client/plugins/q$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lio/ktor/client/plugins/q$a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Lio/ktor/client/plugins/q;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lio/ktor/client/plugins/q$a;->b()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/ktor/client/plugins/q$a;->a()Z

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v1, v0, v2}, Lio/ktor/client/plugins/q;-><init>(ZZLkotlin/jvm/internal/k;)V

    .line 28
    return-object p1
.end method

.method public getKey()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/q;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/client/plugins/q;->d()Lio/ktor/util/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
