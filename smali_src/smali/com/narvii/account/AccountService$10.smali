.class Lcom/narvii/account/AccountService$10;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->crossAppsWriteKeychain(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$secret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/account/AccountService$10;->val$secret:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "cross-apps delete"

    .line 9
    :goto_0
    move-object v2, v0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "cross-apps update "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :goto_1
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/account/AccountService;->d(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    new-instance v4, Lcom/narvii/util/PackageUtils;

    .line 47
    .line 48
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/account/AccountService;->d(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/account/AccountService;->d(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/narvii/util/PackageUtils;->listAminoPackages()[Lcom/narvii/util/PackageUtils$AminoPackage;

    .line 77
    move-result-object v6

    .line 78
    array-length v7, v6

    .line 79
    const/4 v8, 0x0

    .line 80
    move-object v0, v8

    .line 81
    const/4 v10, 0x0

    .line 82
    const/4 v11, 0x0

    .line 83
    const/4 v12, 0x0

    .line 84
    const/4 v13, 0x0

    .line 85
    .line 86
    :goto_2
    if-ge v10, v7, :cond_8

    .line 87
    .line 88
    aget-object v15, v6, v10

    .line 89
    .line 90
    iget-object v14, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v14

    .line 95
    .line 96
    if-eqz v14, :cond_1

    .line 97
    goto :goto_3

    .line 98
    .line 99
    :cond_1
    iget-object v14, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v14}, Lcom/narvii/util/PackageUtils;->verifyPackageSignature(Ljava/lang/String;)Z

    .line 103
    move-result v14

    .line 104
    .line 105
    if-nez v14, :cond_2

    .line 106
    .line 107
    new-instance v14, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v9, "package signature mismatch: "

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    iget-object v9, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v9

    .line 125
    .line 126
    .line 127
    invoke-static {v9}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 128
    .line 129
    :goto_3
    move-object/from16 v16, v4

    .line 130
    move-object v4, v8

    .line 131
    .line 132
    goto/16 :goto_9

    .line 133
    .line 134
    :cond_2
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const/16 v14, 0x2e

    .line 137
    .line 138
    .line 139
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 140
    .line 141
    const-string v14, "content://"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v15}, Lcom/narvii/util/PackageUtils;->getKeychainAuthorities(Lcom/narvii/util/PackageUtils$AminoPackage;)Ljava/lang/String;

    .line 148
    move-result-object v14

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v14, "/keychain"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v9

    .line 161
    .line 162
    .line 163
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 164
    move-result-object v9

    .line 165
    .line 166
    iget-object v14, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    .line 167
    .line 168
    if-nez v14, :cond_4

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v9, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    move-result v9

    .line 173
    .line 174
    if-lez v9, :cond_3

    .line 175
    const/4 v14, 0x1

    .line 176
    goto :goto_4

    .line 177
    :cond_3
    const/4 v14, 0x0

    .line 178
    .line 179
    :goto_4
    move-object/from16 v16, v4

    .line 180
    move-object v4, v8

    .line 181
    goto :goto_5

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .line 184
    move-object/from16 v16, v4

    .line 185
    move-object v4, v8

    .line 186
    goto :goto_7

    .line 187
    .line 188
    :cond_4
    new-instance v14, Landroid/content/ContentValues;

    .line 189
    .line 190
    .line 191
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    :try_start_1
    const-string v8, "EMAIL"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 194
    .line 195
    move-object/from16 v16, v4

    .line 196
    .line 197
    :try_start_2
    iget-object v4, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v14, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    const-string v4, "SECRET"

    .line 203
    .line 204
    iget-object v8, v1, Lcom/narvii/account/AccountService$10;->val$secret:Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v14, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    const/4 v4, 0x0

    .line 209
    .line 210
    .line 211
    :try_start_3
    invoke-virtual {v3, v9, v14, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 213
    .line 214
    if-lez v8, :cond_5

    .line 215
    const/4 v14, 0x1

    .line 216
    goto :goto_5

    .line 217
    :cond_5
    const/4 v14, 0x0

    .line 218
    .line 219
    :goto_5
    if-eqz v14, :cond_6

    .line 220
    .line 221
    add-int/lit8 v11, v11, 0x1

    .line 222
    goto :goto_8

    .line 223
    .line 224
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 225
    goto :goto_8

    .line 226
    :catch_1
    move-exception v0

    .line 227
    goto :goto_7

    .line 228
    :catch_2
    move-exception v0

    .line 229
    :goto_6
    const/4 v4, 0x0

    .line 230
    goto :goto_7

    .line 231
    :catch_3
    move-exception v0

    .line 232
    .line 233
    move-object/from16 v16, v4

    .line 234
    goto :goto_6

    .line 235
    .line 236
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 237
    const/4 v14, 0x0

    .line 238
    .line 239
    :goto_8
    if-eqz v14, :cond_7

    .line 240
    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v9, " succeed "

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    iget-object v9, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v8

    .line 262
    .line 263
    .line 264
    invoke-static {v8}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 265
    goto :goto_9

    .line 266
    .line 267
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v9, " failed "

    .line 276
    .line 277
    .line 278
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    iget-object v9, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v8

    .line 288
    .line 289
    .line 290
    invoke-static {v8, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 293
    move-object v8, v4

    .line 294
    .line 295
    move-object/from16 v4, v16

    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    :cond_8
    move-object v4, v8

    .line 299
    .line 300
    if-eqz v0, :cond_9

    .line 301
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    move-result-object v3

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 313
    move-result-object v3

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v3, " "

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v8

    .line 333
    goto :goto_a

    .line 334
    :cond_9
    move-object v8, v4

    .line 335
    .line 336
    :goto_a
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    .line 337
    .line 338
    .line 339
    invoke-static {v0}, Lcom/narvii/account/AccountService;->d(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    .line 340
    move-result-object v0

    .line 341
    .line 342
    const-string v2, "logging"

    .line 343
    .line 344
    .line 345
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    move-result-object v0

    .line 347
    .line 348
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 349
    .line 350
    const/16 v2, 0xa

    .line 351
    .line 352
    new-array v2, v2, [Ljava/lang/Object;

    .line 353
    .line 354
    const-string v3, "method"

    .line 355
    const/4 v4, 0x0

    .line 356
    .line 357
    aput-object v3, v2, v4

    .line 358
    .line 359
    .line 360
    const-string/jumbo v3, "write"

    .line 361
    const/4 v4, 0x1

    .line 362
    .line 363
    aput-object v3, v2, v4

    .line 364
    const/4 v3, 0x2

    .line 365
    .line 366
    const-string/jumbo v4, "success"

    .line 367
    .line 368
    aput-object v4, v2, v3

    .line 369
    const/4 v3, 0x3

    .line 370
    .line 371
    .line 372
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    move-result-object v4

    .line 374
    .line 375
    aput-object v4, v2, v3

    .line 376
    const/4 v3, 0x4

    .line 377
    .line 378
    const-string v4, "fails"

    .line 379
    .line 380
    aput-object v4, v2, v3

    .line 381
    const/4 v3, 0x5

    .line 382
    .line 383
    .line 384
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    move-result-object v4

    .line 386
    .line 387
    aput-object v4, v2, v3

    .line 388
    const/4 v3, 0x6

    .line 389
    .line 390
    const-string v4, "errors"

    .line 391
    .line 392
    aput-object v4, v2, v3

    .line 393
    const/4 v3, 0x7

    .line 394
    .line 395
    .line 396
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    move-result-object v4

    .line 398
    .line 399
    aput-object v4, v2, v3

    .line 400
    .line 401
    const/16 v3, 0x8

    .line 402
    .line 403
    const-string v4, "message"

    .line 404
    .line 405
    aput-object v4, v2, v3

    .line 406
    .line 407
    const/16 v3, 0x9

    .line 408
    .line 409
    aput-object v8, v2, v3

    .line 410
    .line 411
    const-string v3, "AndroidKeychain"

    .line 412
    .line 413
    .line 414
    invoke-interface {v0, v3, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    return-void
.end method
