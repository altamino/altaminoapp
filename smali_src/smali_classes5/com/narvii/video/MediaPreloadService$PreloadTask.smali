.class Lcom/narvii/video/MediaPreloadService$PreloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/MediaPreloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadTask"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field filew:Ljava/io/File;

.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/video/MediaPreloadService;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->url:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    new-instance p3, Ljava/io/File;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, ".w"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    iput-object p3, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    .line 40
    .line 41
    new-instance p3, Ljava/io/File;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 44
    .line 45
    .line 46
    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    iput-object p3, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    .line 2
    const-string v0, "ms: "

    .line 3
    .line 4
    const-string v1, "mediapreload"

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 16
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    const-wide/16 v8, 0x0

    .line 19
    .line 20
    cmp-long v6, v6, v8

    .line 21
    .line 22
    if-lez v6, :cond_0

    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/video/MediaPreloadService;->b(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 36
    .line 37
    iget v1, v0, Lcom/narvii/video/MediaPreloadService;->keep:I

    .line 38
    .line 39
    iget-wide v2, v0, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 46
    .line 47
    iget-object v6, v6, Lcom/narvii/video/MediaPreloadService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 48
    .line 49
    new-instance v7, Ljava/net/URL;

    .line 50
    .line 51
    iget-object v10, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->url:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-direct {v7, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v7}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    const/16 v7, 0x2710

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 70
    move-result-wide v10

    .line 71
    .line 72
    const-wide/16 v12, 0x5

    .line 73
    div-long/2addr v10, v12

    .line 74
    .line 75
    const-wide/16 v12, 0x800

    .line 76
    rem-long/2addr v10, v12

    .line 77
    long-to-int v7, v10

    .line 78
    .line 79
    .line 80
    const v10, 0xc7c00

    .line 81
    add-int/2addr v10, v7

    .line 82
    .line 83
    const-string v11, "Range"

    .line 84
    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string v13, "bytes=0-"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const v13, 0xc7bff

    .line 97
    add-int/2addr v7, v13

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v7

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v11, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 111
    move-result v7

    .line 112
    .line 113
    const/16 v11, 0xc8

    .line 114
    .line 115
    if-ne v7, v11, :cond_1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    .line 119
    move-result v7

    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    :catch_0
    move-exception v6

    .line 125
    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 130
    move-result v7

    .line 131
    .line 132
    const/16 v11, 0xce

    .line 133
    .line 134
    if-ne v7, v11, :cond_6

    .line 135
    .line 136
    const-string v7, "Content-Range"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object v7

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 144
    move-result-object v7

    .line 145
    .line 146
    const/16 v11, 0x2f

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 150
    move-result v11

    .line 151
    .line 152
    add-int/lit8 v11, v11, 0x1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 156
    move-result-object v7

    .line 157
    .line 158
    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 160
    move-result v7

    .line 161
    .line 162
    .line 163
    :goto_1
    invoke-static {v6}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 164
    move-result-object v11

    .line 165
    .line 166
    iget-object v12, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12}, Ljava/io/File;->length()J

    .line 170
    move-result-wide v12

    .line 171
    .line 172
    cmp-long v8, v12, v8

    .line 173
    .line 174
    if-lez v8, :cond_2

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_2
    const/16 v8, 0x3c0

    .line 179
    .line 180
    new-array v9, v8, [B

    .line 181
    .line 182
    iget-object v12, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 183
    .line 184
    iget-object v12, v12, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 188
    .line 189
    new-instance v12, Ljava/io/FileOutputStream;

    .line 190
    .line 191
    iget-object v13, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    .line 192
    .line 193
    .line 194
    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 196
    :try_start_2
    iget-object v13, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v13, v12, v7}, Lcom/narvii/video/MediaPreloadService;->writePreloadHeader(Ljava/io/OutputStream;I)V

    .line 200
    move v7, v4

    .line 201
    .line 202
    :cond_3
    sub-int v13, v10, v7

    .line 203
    .line 204
    .line 205
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    .line 206
    move-result v13

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v9, v4, v13}, Ljava/io/InputStream;->read([BII)I

    .line 210
    move-result v13

    .line 211
    const/4 v14, -0x1

    .line 212
    .line 213
    if-eq v13, v14, :cond_4

    .line 214
    .line 215
    .line 216
    invoke-virtual {v12, v9, v4, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 217
    add-int/2addr v7, v13

    .line 218
    .line 219
    if-lt v7, v10, :cond_3

    .line 220
    goto :goto_2

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    move-object v5, v12

    .line 223
    .line 224
    goto/16 :goto_6

    .line 225
    :catch_1
    move-exception v6

    .line 226
    move-object v5, v12

    .line 227
    goto :goto_4

    .line 228
    .line 229
    .line 230
    :cond_4
    :goto_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    .line 232
    :try_start_3
    iget-object v7, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    .line 233
    .line 234
    iget-object v8, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 244
    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    const-string v7, "media preload finished in "

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 257
    move-result-wide v7

    .line 258
    sub-long/2addr v7, v2

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    iget-object v7, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v6

    .line 274
    .line 275
    .line 276
    invoke-static {v1, v6}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    .line 278
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 279
    .line 280
    .line 281
    invoke-static {v0}, Lcom/narvii/video/MediaPreloadService;->b(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 290
    .line 291
    iget v1, v0, Lcom/narvii/video/MediaPreloadService;->keep:I

    .line 292
    .line 293
    iget-wide v2, v0, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    .line 297
    goto :goto_5

    .line 298
    .line 299
    :cond_6
    :try_start_4
    new-instance v7, Ljava/io/IOException;

    .line 300
    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    const-string v9, "http code "

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 313
    move-result v6

    .line 314
    .line 315
    .line 316
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v6

    .line 321
    .line 322
    .line 323
    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 324
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    .line 326
    :goto_4
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    const-string v8, "media preload failed in "

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 338
    move-result-wide v8

    .line 339
    sub-long/2addr v8, v2

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object v0

    .line 355
    .line 356
    .line 357
    invoke-static {v1, v0, v6}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    .line 359
    if-eqz v5, :cond_5

    .line 360
    .line 361
    .line 362
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 363
    .line 364
    :catch_2
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 368
    goto :goto_3

    .line 369
    :goto_5
    return-void

    .line 370
    .line 371
    :goto_6
    if-eqz v5, :cond_7

    .line 372
    .line 373
    .line 374
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 375
    .line 376
    :catch_3
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 380
    .line 381
    :cond_7
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 382
    .line 383
    .line 384
    invoke-static {v1}, Lcom/narvii/video/MediaPreloadService;->b(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 385
    move-result-object v1

    .line 386
    .line 387
    iget-object v2, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    .line 393
    .line 394
    iget v2, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    .line 395
    .line 396
    iget-wide v5, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v2, v5, v6, v4}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    .line 400
    throw v0
.end method
