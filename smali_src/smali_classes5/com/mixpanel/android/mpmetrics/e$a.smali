.class Lcom/mixpanel/android/mpmetrics/e$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final mConfig:Lcom/mixpanel/android/mpmetrics/d;

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/d;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mDatabaseFile:Ljava/io/File;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method static synthetic e(Lcom/mixpanel/android/mpmetrics/e$a;)Lcom/mixpanel/android/mpmetrics/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/mixpanel/android/mpmetrics/e$a;)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mDatabaseFile:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "ALTER TABLE "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    sget-object v3, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, " ADD COLUMN "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "automatic_data"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v6, " INTEGER DEFAULT 0"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    sget-object v7, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 57
    move-result-object v8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v5, "token"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v6, " STRING NOT NULL DEFAULT \'\'"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    const-string v2, "SELECT * FROM "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    const/4 v3, 0x0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 172
    move-result v4

    .line 173
    .line 174
    const-string v6, "_id = "

    .line 175
    .line 176
    const-string v7, "\' WHERE _id = "

    .line 177
    .line 178
    const-string v8, " = \'"

    .line 179
    .line 180
    const-string v9, " SET "

    .line 181
    .line 182
    const-string v10, "UPDATE "

    .line 183
    .line 184
    const-string v12, "_id"

    .line 185
    .line 186
    const-string v13, "data"

    .line 187
    const/4 v14, 0x0

    .line 188
    .line 189
    if-eqz v4, :cond_2

    .line 190
    .line 191
    .line 192
    :try_start_0
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 193
    move-result v4

    .line 194
    .line 195
    if-ltz v4, :cond_0

    .line 196
    .line 197
    .line 198
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 199
    move-result v11

    .line 200
    goto :goto_1

    .line 201
    :cond_0
    const/4 v11, 0x1

    .line 202
    .line 203
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 207
    move-result-object v11

    .line 208
    .line 209
    .line 210
    invoke-direct {v4, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    const-string v11, "properties"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 216
    move-result-object v4

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v4

    .line 221
    .line 222
    .line 223
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 224
    move-result v11

    .line 225
    .line 226
    if-ltz v11, :cond_1

    .line 227
    .line 228
    .line 229
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 230
    move-result v11

    .line 231
    goto :goto_2

    .line 232
    :cond_1
    move v11, v14

    .line 233
    .line 234
    .line 235
    :goto_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 236
    move-result v14

    .line 237
    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    sget-object v10, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 250
    move-result-object v10

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v4

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 280
    .line 281
    :catch_0
    sget-object v4, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 285
    move-result-object v4

    .line 286
    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v6

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    sget-object v2, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    .line 333
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 334
    move-result v2

    .line 335
    .line 336
    if-eqz v2, :cond_5

    .line 337
    .line 338
    .line 339
    :try_start_1
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 340
    move-result v2

    .line 341
    .line 342
    if-ltz v2, :cond_3

    .line 343
    .line 344
    .line 345
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 346
    move-result v2

    .line 347
    goto :goto_4

    .line 348
    :catch_1
    move v4, v14

    .line 349
    goto :goto_6

    .line 350
    :cond_3
    const/4 v2, 0x1

    .line 351
    .line 352
    :goto_4
    new-instance v4, Lorg/json/JSONObject;

    .line 353
    .line 354
    .line 355
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 356
    move-result-object v2

    .line 357
    .line 358
    .line 359
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    const-string v2, "$token"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    move-result-object v2

    .line 366
    .line 367
    .line 368
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 369
    move-result v4

    .line 370
    .line 371
    if-ltz v4, :cond_4

    .line 372
    .line 373
    .line 374
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 375
    move-result v4

    .line 376
    goto :goto_5

    .line 377
    :cond_4
    move v4, v14

    .line 378
    .line 379
    .line 380
    :goto_5
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 381
    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    .line 383
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    sget-object v16, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 392
    .line 393
    .line 394
    invoke-virtual/range {v16 .. v16}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 395
    move-result-object v11

    .line 396
    .line 397
    .line 398
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object v2

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 424
    goto :goto_3

    .line 425
    .line 426
    :catch_2
    :goto_6
    sget-object v2, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 430
    move-result-object v2

    .line 431
    .line 432
    new-instance v11, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object v4

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    goto :goto_3

    .line 450
    :cond_5
    return-void
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->h()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private k(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->e()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->i()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "shared_prefs"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-instance v1, Lcom/mixpanel/android/mpmetrics/e$a$a;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/e$a$a;-><init>(Lcom/mixpanel/android/mpmetrics/e$a;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    array-length v1, v0

    .line 52
    const/4 v2, 0x0

    .line 53
    move v3, v2

    .line 54
    .line 55
    :goto_0
    if-ge v3, v1, :cond_2

    .line 56
    .line 57
    aget-object v4, v0, v3

    .line 58
    .line 59
    const-string v5, "\\.xml"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    aget-object v4, v4, v2

    .line 66
    .line 67
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    const-string/jumbo v5, "waiting_array"

    .line 75
    const/4 v6, 0x0

    .line 76
    .line 77
    .line 78
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    if-eqz v7, :cond_1

    .line 82
    .line 83
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    .line 84
    .line 85
    .line 86
    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    move v7, v2

    .line 91
    .line 92
    .line 93
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 94
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    if-ge v7, v9, :cond_0

    .line 97
    .line 98
    .line 99
    :try_start_2
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 100
    move-result-object v9

    .line 101
    .line 102
    const-string v10, "$token"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v10

    .line 107
    .line 108
    new-instance v11, Landroid/content/ContentValues;

    .line 109
    .line 110
    .line 111
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .line 113
    const-string v12, "data"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 117
    move-result-object v9

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    const-string v9, "created_at"

    .line 123
    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    move-result-wide v12

    .line 127
    .line 128
    .line 129
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    move-result-object v12

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    .line 135
    const-string v9, "automatic_data"

    .line 136
    .line 137
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 141
    .line 142
    const-string v9, "token"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    sget-object v9, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v9, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    goto :goto_2

    .line 156
    :catchall_0
    move-exception v6

    .line 157
    goto :goto_3

    .line 158
    .line 159
    :catch_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 160
    goto :goto_1

    .line 161
    .line 162
    .line 163
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .line 165
    .line 166
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 167
    goto :goto_4

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 171
    throw v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 172
    .line 173
    .line 174
    :catch_1
    :goto_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 175
    move-result-object v4

    .line 176
    .line 177
    .line 178
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    .line 180
    .line 181
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    .line 183
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    :cond_2
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mDatabaseFile:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mDatabaseFile:Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mDatabaseFile:Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    .line 21
    move-result-wide v4

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/d;->n()I

    .line 27
    move-result v0

    .line 28
    int-to-long v6, v0

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 32
    move-result-wide v4

    .line 33
    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-gtz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mDatabaseFile:Ljava/io/File;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 42
    move-result-wide v2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/d;->m()I

    .line 48
    move-result v0

    .line 49
    int-to-long v4, v0

    .line 50
    .line 51
    cmp-long v0, v2, v4

    .line 52
    .line 53
    if-lez v0, :cond_1

    .line 54
    :cond_0
    const/4 v1, 0x1

    .line 55
    :cond_1
    return v1
.end method

.method public h()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e$a;->mDatabaseFile:Ljava/io/File;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MixpanelAPI.Database"

    .line 3
    .line 4
    const-string v1, "Creating a new Mixpanel events DB"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->b()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->c()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->d()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->e()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->f()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->g()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->h()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->i()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MixpanelAPI.Database"

    .line 3
    .line 4
    const-string v1, "Upgrading app, replacing Mixpanel events DB"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x4

    .line 9
    .line 10
    if-lt p2, v0, :cond_2

    .line 11
    const/4 v1, 0x7

    .line 12
    .line 13
    if-gt p3, v1, :cond_2

    .line 14
    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/e$a;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/e$a;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/e$a;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    :cond_0
    const/4 p3, 0x5

    .line 26
    .line 27
    if-ne p2, p3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/e$a;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/e$a;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    :cond_1
    const/4 p3, 0x6

    .line 35
    .line 36
    if-ne p2, p3, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/e$a;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string p3, "DROP TABLE IF EXISTS "

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->GROUPS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    sget-object p3, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Lcom/mixpanel/android/mpmetrics/e$b;->a()Ljava/lang/String;

    .line 129
    move-result-object p3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->b()Ljava/lang/String;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->c()Ljava/lang/String;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->d()Ljava/lang/String;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->e()Ljava/lang/String;

    .line 164
    move-result-object p2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->f()Ljava/lang/String;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->g()Ljava/lang/String;

    .line 178
    move-result-object p2

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->h()Ljava/lang/String;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/e;->i()Ljava/lang/String;

    .line 192
    move-result-object p2

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    :cond_3
    :goto_0
    return-void
.end method
