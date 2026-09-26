.class public Lcom/narvii/youtube/Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/youtube/DownloaderImpl;->init(Lokhttp3/OkHttpClient$Builder;)Lcom/narvii/youtube/DownloaderImpl;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lx9/p;->e(Lz9/a;)V

    .line 12
    return-void
.end method


# virtual methods
.method extract(Ljava/lang/String;)Lcom/narvii/youtube/ExtractResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, ")"

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    const-string v2, ": "

    .line 7
    .line 8
    const-string v3, "Error ("

    .line 9
    .line 10
    const-string v4, "Could not get any stream"

    .line 11
    .line 12
    new-instance v5, Lcom/narvii/youtube/ExtractResult;

    .line 13
    .line 14
    .line 15
    invoke-direct {v5}, Lcom/narvii/youtube/ExtractResult;-><init>()V

    .line 16
    .line 17
    const/16 v6, 0xf

    .line 18
    .line 19
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v8, "https://www.youtube.com/watch?v="

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Loa/i;->g(Ljava/lang/String;)Loa/i;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Loa/i;->k()Ljava/util/List;

    .line 42
    move-result-object v7

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Loa/i;->j()Ljava/util/List;

    .line 46
    move-result-object v8

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Loa/i;->f()Ljava/util/List;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 56
    move-result v9

    .line 57
    .line 58
    if-eqz v9, :cond_1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    :catch_0
    move-exception p1

    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_0
    :goto_0
    if-eqz v8, :cond_7

    .line 68
    .line 69
    .line 70
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 71
    move-result v9

    .line 72
    .line 73
    if-eqz v9, :cond_1

    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    new-instance v9, Lcom/narvii/youtube/YoutubeVideoList;

    .line 78
    .line 79
    .line 80
    invoke-direct {v9}, Lcom/narvii/youtube/YoutubeVideoList;-><init>()V

    .line 81
    .line 82
    iput-object v9, v5, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 83
    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 88
    move-result v9

    .line 89
    .line 90
    if-eqz v9, :cond_3

    .line 91
    :cond_2
    move-object v7, v8

    .line 92
    .line 93
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v7

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v10

    .line 105
    .line 106
    if-eqz v10, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v10

    .line 111
    .line 112
    check-cast v10, Loa/s;

    .line 113
    .line 114
    new-instance v11, Lcom/narvii/youtube/YoutubeVideo;

    .line 115
    .line 116
    .line 117
    invoke-direct {v11}, Lcom/narvii/youtube/YoutubeVideo;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Loa/g;->c()Ljava/lang/String;

    .line 121
    move-result-object v12

    .line 122
    .line 123
    iput-object v12, v11, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10}, Loa/s;->f()Ljava/lang/String;

    .line 127
    move-result-object v12

    .line 128
    .line 129
    iput-object v12, v11, Lcom/narvii/youtube/YoutubeVideo;->resolution:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10}, Loa/g;->e()I

    .line 133
    move-result v12

    .line 134
    .line 135
    iput v12, v11, Lcom/narvii/youtube/YoutubeVideo;->type:I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10}, Loa/g;->d()Lx9/m;

    .line 139
    move-result-object v10

    .line 140
    .line 141
    iget-object v10, v10, Lx9/m;->mimeType:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v10, v11, Lcom/narvii/youtube/YoutubeVideo;->mimeType:Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_4
    iget-object v7, v5, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 150
    .line 151
    iput-object v9, v7, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 152
    .line 153
    new-instance v7, Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    if-eqz v8, :cond_5

    .line 159
    .line 160
    .line 161
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    move-result-object v8

    .line 163
    .line 164
    .line 165
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    move-result v9

    .line 167
    .line 168
    if-eqz v9, :cond_5

    .line 169
    .line 170
    .line 171
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    move-result-object v9

    .line 173
    .line 174
    check-cast v9, Loa/s;

    .line 175
    .line 176
    new-instance v10, Lcom/narvii/youtube/YoutubeVideo;

    .line 177
    .line 178
    .line 179
    invoke-direct {v10}, Lcom/narvii/youtube/YoutubeVideo;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9}, Loa/g;->c()Ljava/lang/String;

    .line 183
    move-result-object v11

    .line 184
    .line 185
    iput-object v11, v10, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9}, Loa/s;->f()Ljava/lang/String;

    .line 189
    move-result-object v11

    .line 190
    .line 191
    iput-object v11, v10, Lcom/narvii/youtube/YoutubeVideo;->resolution:Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9}, Loa/g;->e()I

    .line 195
    move-result v11

    .line 196
    .line 197
    iput v11, v10, Lcom/narvii/youtube/YoutubeVideo;->type:I

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9}, Loa/g;->d()Lx9/m;

    .line 201
    move-result-object v9

    .line 202
    .line 203
    iget-object v9, v9, Lx9/m;->mimeType:Ljava/lang/String;

    .line 204
    .line 205
    iput-object v9, v10, Lcom/narvii/youtube/YoutubeVideo;->mimeType:Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    goto :goto_2

    .line 210
    .line 211
    :cond_5
    iget-object v8, v5, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 212
    .line 213
    iput-object v7, v8, Lcom/narvii/youtube/YoutubeVideoList;->videoOnlyList:Ljava/util/List;

    .line 214
    .line 215
    new-instance v7, Ljava/util/ArrayList;

    .line 216
    .line 217
    .line 218
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    if-eqz p1, :cond_6

    .line 221
    .line 222
    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    move-result v8

    .line 229
    .line 230
    if-eqz v8, :cond_6

    .line 231
    .line 232
    .line 233
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    move-result-object v8

    .line 235
    .line 236
    check-cast v8, Loa/a;

    .line 237
    .line 238
    new-instance v9, Lcom/narvii/youtube/YoutubeVideo;

    .line 239
    .line 240
    .line 241
    invoke-direct {v9}, Lcom/narvii/youtube/YoutubeVideo;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8}, Loa/g;->c()Ljava/lang/String;

    .line 245
    move-result-object v10

    .line 246
    .line 247
    iput-object v10, v9, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8}, Loa/a;->f()I

    .line 251
    move-result v10

    .line 252
    .line 253
    iput v10, v9, Lcom/narvii/youtube/YoutubeVideo;->averageBitrate:I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8}, Loa/g;->e()I

    .line 257
    move-result v10

    .line 258
    .line 259
    iput v10, v9, Lcom/narvii/youtube/YoutubeVideo;->type:I

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8}, Loa/g;->d()Lx9/m;

    .line 263
    move-result-object v8

    .line 264
    .line 265
    iget-object v8, v8, Lx9/m;->mimeType:Ljava/lang/String;

    .line 266
    .line 267
    iput-object v8, v9, Lcom/narvii/youtube/YoutubeVideo;->mimeType:Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    goto :goto_3

    .line 272
    .line 273
    :cond_6
    iget-object p1, v5, Lcom/narvii/youtube/ExtractResult;->result:Lcom/narvii/youtube/YoutubeVideoList;

    .line 274
    .line 275
    iput-object v7, p1, Lcom/narvii/youtube/YoutubeVideoList;->audioList:Ljava/util/List;

    .line 276
    .line 277
    goto/16 :goto_9

    .line 278
    .line 279
    :cond_7
    :goto_4
    iput v6, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 280
    .line 281
    iput-object v4, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_5
    .catch Laa/b; {:try_start_0 .. :try_end_0} :catch_4
    .catch Loa/i$a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .line 283
    goto/16 :goto_9

    .line 284
    :goto_5
    const/4 v4, 0x1

    .line 285
    .line 286
    iput v4, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    move-result-object v4

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 294
    move-result-object v4

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 298
    move-result-object p1

    .line 299
    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    if-eqz p1, :cond_9

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 315
    move-result v3

    .line 316
    .line 317
    if-nez v3, :cond_8

    .line 318
    goto :goto_6

    .line 319
    .line 320
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v1

    .line 334
    .line 335
    .line 336
    :cond_9
    :goto_6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object p1

    .line 344
    .line 345
    iput-object p1, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 346
    goto :goto_9

    .line 347
    :goto_7
    const/4 v4, 0x2

    .line 348
    .line 349
    iput v4, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    move-result-object v4

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 357
    move-result-object v4

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 361
    move-result-object p1

    .line 362
    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    if-eqz p1, :cond_b

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 378
    move-result v3

    .line 379
    .line 380
    if-nez v3, :cond_a

    .line 381
    goto :goto_8

    .line 382
    .line 383
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v1

    .line 397
    .line 398
    .line 399
    :cond_b
    :goto_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object p1

    .line 407
    .line 408
    iput-object p1, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 409
    goto :goto_9

    .line 410
    .line 411
    :catch_1
    const/16 p1, 0x12

    .line 412
    .line 413
    iput p1, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 414
    .line 415
    const-string p1, "Error NPE"

    .line 416
    .line 417
    iput-object p1, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 418
    goto :goto_9

    .line 419
    .line 420
    :catch_2
    const/16 p1, 0x10

    .line 421
    .line 422
    iput p1, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 423
    .line 424
    const-string p1, "Could not parse website"

    .line 425
    .line 426
    iput-object p1, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 427
    goto :goto_9

    .line 428
    .line 429
    :catch_3
    iput v6, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 430
    .line 431
    iput-object v4, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 432
    goto :goto_9

    .line 433
    .line 434
    :catch_4
    const/16 p1, 0xe

    .line 435
    .line 436
    iput p1, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 437
    .line 438
    const-string p1, "Content not available"

    .line 439
    .line 440
    iput-object p1, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 441
    goto :goto_9

    .line 442
    .line 443
    :catch_5
    const/16 p1, 0x11

    .line 444
    .line 445
    iput p1, v5, Lcom/narvii/youtube/ExtractResult;->errorCode:I

    .line 446
    .line 447
    const-string p1, "Re-Captcha"

    .line 448
    .line 449
    iput-object p1, v5, Lcom/narvii/youtube/ExtractResult;->errorMsg:Ljava/lang/String;

    .line 450
    :goto_9
    return-object v5
.end method
