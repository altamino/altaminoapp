.class Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;
.super Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/webp/WebPLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/drawables/webp/WebPLoader;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p7}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    .line 6
    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->c(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->b(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->b(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v3, "webp cache dir "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/narvii/util/drawables/webp/WebPLoader;->b(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, " not available"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v1

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    move-object v2, v0

    .line 64
    move-object v3, v1

    .line 65
    move-object v1, v2

    .line 66
    .line 67
    goto/16 :goto_c

    .line 68
    :catch_0
    move-exception v1

    .line 69
    :goto_0
    move-object v2, v0

    .line 70
    move-object v3, v2

    .line 71
    move-object v4, v3

    .line 72
    .line 73
    goto/16 :goto_a

    .line 74
    :catch_1
    move-exception v1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->i(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/util/http/ProxyStack;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    new-instance v2, Ljava/net/URL;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 92
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    :try_start_1
    invoke-static {v1}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 96
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 97
    .line 98
    .line 99
    :try_start_2
    invoke-static {v2}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 106
    move-result v4

    .line 107
    .line 108
    if-gtz v4, :cond_2

    .line 109
    goto :goto_5

    .line 110
    .line 111
    :cond_2
    new-instance v4, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 112
    .line 113
    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 114
    .line 115
    .line 116
    invoke-direct {v4, v3, v5}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 120
    move-result v3

    .line 121
    const/4 v5, 0x1

    .line 122
    .line 123
    if-ne v3, v5, :cond_3

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v5}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 127
    goto :goto_4

    .line 128
    :catchall_1
    move-exception v3

    .line 129
    .line 130
    goto/16 :goto_c

    .line 131
    :catch_2
    move-exception v3

    .line 132
    :goto_2
    move-object v4, v0

    .line 133
    move-object v7, v2

    .line 134
    move-object v2, v1

    .line 135
    move-object v1, v3

    .line 136
    :goto_3
    move-object v3, v7

    .line 137
    .line 138
    goto/16 :goto_a

    .line 139
    :catch_3
    move-exception v3

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_3
    iget v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 143
    .line 144
    if-lez v3, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v5}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 148
    .line 149
    iget v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopCount(I)V

    .line 153
    goto :goto_4

    .line 154
    :cond_4
    const/4 v3, 0x2

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 161
    .line 162
    :goto_4
    new-instance v3, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 163
    .line 164
    .line 165
    invoke-direct {v3, v4}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v3}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 169
    goto :goto_6

    .line 170
    .line 171
    .line 172
    :cond_5
    :goto_5
    invoke-virtual {p0, v0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 173
    .line 174
    :goto_6
    new-instance v3, Ljava/io/FileOutputStream;

    .line 175
    .line 176
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 177
    .line 178
    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Lcom/narvii/util/drawables/webp/WebPLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 182
    move-result-object v4

    .line 183
    .line 184
    .line 185
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    .line 187
    const/16 v4, 0x1000

    .line 188
    .line 189
    :try_start_3
    new-array v4, v4, [B

    .line 190
    .line 191
    .line 192
    :goto_7
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    .line 193
    move-result v5

    .line 194
    const/4 v6, -0x1

    .line 195
    .line 196
    if-eq v5, v6, :cond_6

    .line 197
    const/4 v6, 0x0

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 201
    goto :goto_7

    .line 202
    :catchall_2
    move-exception v0

    .line 203
    move-object v7, v3

    .line 204
    move-object v3, v0

    .line 205
    move-object v0, v7

    .line 206
    .line 207
    goto/16 :goto_c

    .line 208
    :catch_4
    move-exception v4

    .line 209
    :goto_8
    move-object v7, v2

    .line 210
    move-object v2, v1

    .line 211
    move-object v1, v4

    .line 212
    move-object v4, v3

    .line 213
    goto :goto_3

    .line 214
    :catch_5
    move-exception v4

    .line 215
    goto :goto_8

    .line 216
    .line 217
    :cond_6
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 218
    .line 219
    .line 220
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 230
    .line 231
    .line 232
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 233
    .line 234
    if-eqz v1, :cond_7

    .line 235
    .line 236
    .line 237
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 238
    goto :goto_b

    .line 239
    :catchall_3
    move-exception v2

    .line 240
    move-object v3, v2

    .line 241
    move-object v2, v0

    .line 242
    goto :goto_c

    .line 243
    :catch_6
    move-exception v2

    .line 244
    :goto_9
    move-object v3, v0

    .line 245
    move-object v4, v3

    .line 246
    move-object v7, v2

    .line 247
    move-object v2, v1

    .line 248
    move-object v1, v7

    .line 249
    goto :goto_a

    .line 250
    :catch_7
    move-exception v2

    .line 251
    goto :goto_9

    .line 252
    .line 253
    .line 254
    :goto_a
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 258
    .line 259
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 260
    .line 261
    .line 262
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 263
    move-result-object v0

    .line 264
    .line 265
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 272
    .line 273
    .line 274
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 275
    .line 276
    if-eqz v2, :cond_7

    .line 277
    .line 278
    .line 279
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 280
    :catch_8
    :cond_7
    :goto_b
    return-void

    .line 281
    :catchall_4
    move-exception v1

    .line 282
    move-object v0, v4

    .line 283
    move-object v7, v3

    .line 284
    move-object v3, v1

    .line 285
    move-object v1, v2

    .line 286
    move-object v2, v7

    .line 287
    .line 288
    :goto_c
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 289
    .line 290
    .line 291
    invoke-static {v4}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 292
    move-result-object v4

    .line 293
    .line 294
    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 301
    .line 302
    .line 303
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 304
    .line 305
    if-eqz v1, :cond_8

    .line 306
    .line 307
    .line 308
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 309
    :catch_9
    :cond_8
    throw v3
.end method
