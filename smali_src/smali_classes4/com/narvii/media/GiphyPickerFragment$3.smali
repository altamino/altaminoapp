.class Lcom/narvii/media/GiphyPickerFragment$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/GiphyPickerFragment;->pick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field p:F

.field final synthetic this$0:Lcom/narvii/media/GiphyPickerFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/media/GiphyPickerFragment;Lcom/narvii/util/dialog/ProgressHorizontalDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/GiphyPickerFragment$3;->val$list:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/GiphyPickerFragment$3;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/GiphyPickerFragment$3;->isRunning()Z

    move-result p0

    return p0
.end method

.method private isRunning()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Utils;->getAvailableCacheDir(Landroid/content/Context;)Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v2, Ljava/io/File;

    .line 15
    .line 16
    const-string v3, "giphy"

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    new-instance v3, Lcom/narvii/media/GiphyPickerFragment$3$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v1}, Lcom/narvii/media/GiphyPickerFragment$3$1;-><init>(Lcom/narvii/media/GiphyPickerFragment$3;)V

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    :try_start_0
    iget-object v5, v1, Lcom/narvii/media/GiphyPickerFragment$3;->val$list:Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v5

    .line 40
    .line 41
    iget-object v6, v1, Lcom/narvii/media/GiphyPickerFragment$3;->val$list:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v8, v4

    .line 48
    move v9, v7

    .line 49
    .line 50
    .line 51
    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 53
    .line 54
    if-eqz v10, :cond_7

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v10

    .line 59
    .line 60
    check-cast v10, Lcom/narvii/media/giphy/GiphyItem;

    .line 61
    .line 62
    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/narvii/media/GiphyPickerFragment$3;->isRunning()Z

    .line 64
    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    .line 66
    if-nez v11, :cond_1

    .line 67
    .line 68
    .line 69
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 70
    .line 71
    if-eqz v8, :cond_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 75
    :cond_0
    return-void

    .line 76
    .line 77
    :cond_1
    :try_start_3
    new-instance v11, Ljava/io/File;

    .line 78
    .line 79
    new-instance v12, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 86
    move-result-object v13

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v13, ".gif"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v12

    .line 99
    .line 100
    .line 101
    invoke-direct {v11, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11}, Ljava/io/File;->length()J

    .line 105
    move-result-wide v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 106
    .line 107
    const-wide/16 v14, 0x0

    .line 108
    .line 109
    cmp-long v12, v12, v14

    .line 110
    .line 111
    if-lez v12, :cond_2

    .line 112
    .line 113
    .line 114
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 115
    move-result-object v10

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    .line 120
    move-object/from16 v16, v2

    .line 121
    move-object v13, v6

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    .line 126
    goto/16 :goto_9

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_2
    :try_start_5
    iget-object v12, v1, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 132
    .line 133
    iget v12, v12, Lcom/narvii/media/GiphyPickerFragment;->maxLen:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v12}, Lcom/narvii/media/giphy/GiphyItem;->fullsizeImage(I)Lcom/narvii/media/giphy/GiphyImage;

    .line 137
    move-result-object v12

    .line 138
    .line 139
    new-instance v14, Ljava/net/URL;

    .line 140
    .line 141
    iget-object v15, v12, Lcom/narvii/media/giphy/GiphyImage;->url:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 148
    move-result-object v14

    .line 149
    .line 150
    .line 151
    invoke-static {v14}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object v14

    .line 153
    .line 154
    check-cast v14, Ljava/net/URLConnection;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 158
    move-result-object v14

    .line 159
    .line 160
    new-instance v15, Ljava/io/File;

    .line 161
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    const-string v13, "."

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 174
    move-result-object v10

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-direct {v15, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 185
    .line 186
    :try_start_6
    new-instance v4, Ljava/io/FileOutputStream;

    .line 187
    .line 188
    .line 189
    invoke-direct {v4, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 190
    .line 191
    const/16 v8, 0x1000

    .line 192
    .line 193
    :try_start_7
    new-array v8, v8, [B

    .line 194
    .line 195
    iget v10, v12, Lcom/narvii/media/giphy/GiphyImage;->size:I

    .line 196
    move v12, v7

    .line 197
    .line 198
    .line 199
    :goto_1
    invoke-virtual {v14, v8}, Ljava/io/InputStream;->read([B)I

    .line 200
    move-result v13

    .line 201
    .line 202
    move-object/from16 v16, v2

    .line 203
    const/4 v2, -0x1

    .line 204
    .line 205
    if-eq v13, v2, :cond_5

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v8, v7, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 209
    add-int/2addr v12, v13

    .line 210
    int-to-float v2, v9

    .line 211
    .line 212
    const/high16 v13, 0x3f800000    # 1.0f

    .line 213
    mul-float/2addr v2, v13

    .line 214
    int-to-float v7, v5

    .line 215
    div-float/2addr v2, v7

    .line 216
    .line 217
    div-float v7, v13, v7

    .line 218
    int-to-float v13, v12

    .line 219
    mul-float/2addr v7, v13

    .line 220
    int-to-float v13, v10

    .line 221
    div-float/2addr v7, v13

    .line 222
    add-float/2addr v2, v7

    .line 223
    .line 224
    iget v7, v1, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    .line 225
    .line 226
    sub-float v7, v2, v7

    .line 227
    move-object v13, v6

    .line 228
    float-to-double v6, v7

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    const-wide v17, 0x3f947ae147ae147bL    # 0.02

    .line 234
    .line 235
    cmpl-double v6, v6, v17

    .line 236
    .line 237
    if-lez v6, :cond_3

    .line 238
    .line 239
    iput v2, v1, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    .line 240
    .line 241
    .line 242
    invoke-static {v3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 243
    goto :goto_2

    .line 244
    :catchall_1
    move-exception v0

    .line 245
    move-object v8, v15

    .line 246
    .line 247
    goto/16 :goto_9

    .line 248
    :catch_1
    move-exception v0

    .line 249
    move-object v8, v15

    .line 250
    .line 251
    goto/16 :goto_7

    .line 252
    .line 253
    .line 254
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 255
    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 256
    .line 257
    if-eqz v2, :cond_4

    .line 258
    .line 259
    .line 260
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 264
    return-void

    .line 265
    :cond_4
    move-object v6, v13

    .line 266
    .line 267
    move-object/from16 v2, v16

    .line 268
    const/4 v7, 0x0

    .line 269
    goto :goto_1

    .line 270
    :cond_5
    move-object v13, v6

    .line 271
    .line 272
    .line 273
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 277
    .line 278
    .line 279
    :try_start_9
    invoke-virtual {v15, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 280
    move-result v2

    .line 281
    .line 282
    if-eqz v2, :cond_6

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 286
    move-result-object v2

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 290
    move-object v8, v15

    .line 291
    .line 292
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 293
    int-to-float v2, v9

    .line 294
    .line 295
    const/high16 v4, 0x3f800000    # 1.0f

    .line 296
    mul-float/2addr v2, v4

    .line 297
    int-to-float v4, v5

    .line 298
    div-float/2addr v2, v4

    .line 299
    .line 300
    :try_start_a
    iput v2, v1, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 304
    move-object v6, v13

    .line 305
    .line 306
    move-object/from16 v2, v16

    .line 307
    const/4 v4, 0x0

    .line 308
    const/4 v7, 0x0

    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    :catchall_2
    move-exception v0

    .line 312
    :goto_4
    const/4 v4, 0x0

    .line 313
    .line 314
    goto/16 :goto_9

    .line 315
    :catch_2
    move-exception v0

    .line 316
    :goto_5
    const/4 v4, 0x0

    .line 317
    goto :goto_7

    .line 318
    :catchall_3
    move-exception v0

    .line 319
    move-object v8, v15

    .line 320
    goto :goto_4

    .line 321
    :catch_3
    move-exception v0

    .line 322
    move-object v8, v15

    .line 323
    goto :goto_5

    .line 324
    .line 325
    :cond_6
    :try_start_b
    new-instance v0, Ljava/lang/Exception;

    .line 326
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    const-string v3, "fail to move "

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v3, " to "

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    move-result-object v2

    .line 351
    .line 352
    .line 353
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 354
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 355
    .line 356
    :cond_7
    :try_start_c
    new-instance v2, Lcom/narvii/media/GiphyPickerFragment$3$2;

    .line 357
    .line 358
    .line 359
    invoke-direct {v2, v1, v0}, Lcom/narvii/media/GiphyPickerFragment$3$2;-><init>(Lcom/narvii/media/GiphyPickerFragment$3;Ljava/util/ArrayList;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 363
    const/4 v2, 0x0

    .line 364
    .line 365
    .line 366
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 367
    .line 368
    if-eqz v8, :cond_9

    .line 369
    .line 370
    .line 371
    :goto_6
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 372
    goto :goto_8

    .line 373
    :catchall_4
    move-exception v0

    .line 374
    const/4 v2, 0x0

    .line 375
    move-object v4, v2

    .line 376
    goto :goto_9

    .line 377
    :catch_4
    move-exception v0

    .line 378
    const/4 v2, 0x0

    .line 379
    move-object v4, v2

    .line 380
    goto :goto_7

    .line 381
    :catchall_5
    move-exception v0

    .line 382
    move-object v2, v4

    .line 383
    goto :goto_9

    .line 384
    :catch_5
    move-exception v0

    .line 385
    move-object v2, v4

    .line 386
    goto :goto_7

    .line 387
    :catchall_6
    move-exception v0

    .line 388
    move-object v2, v4

    .line 389
    move-object v8, v4

    .line 390
    goto :goto_9

    .line 391
    :catch_6
    move-exception v0

    .line 392
    move-object v2, v4

    .line 393
    move-object v8, v4

    .line 394
    .line 395
    :goto_7
    :try_start_d
    const-string v2, "fail to download from giphy"

    .line 396
    .line 397
    .line 398
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    .line 400
    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/narvii/media/GiphyPickerFragment$3;->isRunning()Z

    .line 402
    move-result v0

    .line 403
    .line 404
    if-eqz v0, :cond_8

    .line 405
    .line 406
    new-instance v0, Lcom/narvii/media/GiphyPickerFragment$3$3;

    .line 407
    .line 408
    .line 409
    invoke-direct {v0, v1}, Lcom/narvii/media/GiphyPickerFragment$3$3;-><init>(Lcom/narvii/media/GiphyPickerFragment$3;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 413
    .line 414
    .line 415
    :cond_8
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 416
    .line 417
    if-eqz v8, :cond_9

    .line 418
    goto :goto_6

    .line 419
    :cond_9
    :goto_8
    return-void

    .line 420
    .line 421
    .line 422
    :goto_9
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 423
    .line 424
    if-eqz v8, :cond_a

    .line 425
    .line 426
    .line 427
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 428
    :cond_a
    throw v0
.end method
