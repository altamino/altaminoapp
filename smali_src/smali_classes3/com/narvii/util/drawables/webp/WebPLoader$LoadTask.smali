.class Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;
.super Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/webp/WebPLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field private doRtl:Z

.field private file:Ljava/io/File;

.field final synthetic this$0:Lcom/narvii/util/drawables/webp/WebPLoader;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V
    .locals 9

    .line 1
    move-object v8, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    iput-object v1, v8, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p5

    .line 9
    move v5, p6

    .line 10
    .line 11
    move/from16 v6, p7

    .line 12
    .line 13
    move/from16 v7, p9

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    .line 17
    move-object v0, p4

    .line 18
    .line 19
    iput-object v0, v8, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->file:Ljava/io/File;

    .line 20
    .line 21
    move/from16 v0, p8

    .line 22
    .line 23
    iput-boolean v0, v8, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->doRtl:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->f(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->e(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

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
    .locals 10

    .line 1
    .line 2
    const-string v1, "file://"

    .line 3
    .line 4
    const-string v2, "mediastore://"

    .line 5
    .line 6
    const-string v3, "photo://"

    .line 7
    .line 8
    const-string v4, "assets://"

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->a(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/app/NVContext;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 35
    .line 36
    const/16 v8, 0x9

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 44
    move-result-object v0

    .line 45
    :goto_0
    move-object v7, v0

    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object v7, v6

    .line 49
    .line 50
    goto/16 :goto_b

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :goto_1
    move-object v7, v6

    .line 53
    .line 54
    goto/16 :goto_9

    .line 55
    :catch_1
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->file:Ljava/io/File;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :goto_2
    :try_start_1
    invoke-static {v7}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 74
    move-result v8

    .line 75
    .line 76
    if-lez v8, :cond_3

    .line 77
    .line 78
    new-instance v8, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 79
    .line 80
    iget-object v9, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 81
    .line 82
    .line 83
    invoke-direct {v8, v0, v9}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    .line 84
    .line 85
    iget-boolean v9, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->doRtl:Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v9}, Landroid/support/rastermill/FrameSequenceDrawable;->setDoRtl(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 92
    move-result v0

    .line 93
    const/4 v9, 0x1

    .line 94
    .line 95
    if-ne v0, v9, :cond_1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v9}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 99
    goto :goto_3

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    .line 102
    goto/16 :goto_b

    .line 103
    :catch_2
    move-exception v0

    .line 104
    .line 105
    goto/16 :goto_9

    .line 106
    :catch_3
    move-exception v0

    .line 107
    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_1
    iget v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 111
    .line 112
    if-lez v0, :cond_2

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v9}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 116
    .line 117
    iget v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v0}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopCount(I)V

    .line 121
    goto :goto_3

    .line 122
    :cond_2
    const/4 v0, 0x2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v0}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    :goto_3
    :try_start_2
    new-instance v0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v8}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 137
    move v5, v9

    .line 138
    goto :goto_5

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    move v5, v9

    .line 141
    .line 142
    goto/16 :goto_b

    .line 143
    :catch_4
    move-exception v0

    .line 144
    :goto_4
    move v5, v9

    .line 145
    .line 146
    goto/16 :goto_9

    .line 147
    :catch_5
    move-exception v0

    .line 148
    goto :goto_4

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_5
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 152
    .line 153
    if-nez v5, :cond_7

    .line 154
    .line 155
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-nez v0, :cond_6

    .line 162
    .line 163
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 167
    move-result v0

    .line 168
    .line 169
    if-nez v0, :cond_6

    .line 170
    .line 171
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    move-result v0

    .line 176
    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 183
    move-result v0

    .line 184
    .line 185
    if-eqz v0, :cond_4

    .line 186
    goto :goto_7

    .line 187
    .line 188
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    .line 201
    .line 202
    if-eqz v0, :cond_5

    .line 203
    .line 204
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    .line 208
    return-void

    .line 209
    .line 210
    :cond_5
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    .line 211
    .line 212
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 213
    .line 214
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 217
    const/4 v6, 0x0

    .line 218
    .line 219
    iget v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    .line 220
    .line 221
    iget v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    .line 222
    .line 223
    iget v9, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 224
    move-object v2, v0

    .line 225
    .line 226
    .line 227
    invoke-direct/range {v2 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    .line 228
    .line 229
    :goto_6
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    .line 233
    .line 234
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 235
    .line 236
    .line 237
    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 246
    .line 247
    .line 248
    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->c(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 249
    move-result-object v1

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 253
    goto :goto_8

    .line 254
    .line 255
    .line 256
    :cond_6
    :goto_7
    invoke-virtual {p0, v6}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 257
    .line 258
    :cond_7
    :goto_8
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 259
    .line 260
    .line 261
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->f(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 262
    move-result-object v0

    .line 263
    .line 264
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    goto :goto_a

    .line 269
    .line 270
    .line 271
    :goto_9
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    .line 273
    .line 274
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 275
    .line 276
    if-nez v5, :cond_7

    .line 277
    .line 278
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 282
    move-result v0

    .line 283
    .line 284
    if-nez v0, :cond_6

    .line 285
    .line 286
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 290
    move-result v0

    .line 291
    .line 292
    if-nez v0, :cond_6

    .line 293
    .line 294
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 298
    move-result v0

    .line 299
    .line 300
    if-nez v0, :cond_6

    .line 301
    .line 302
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 306
    move-result v0

    .line 307
    .line 308
    if-eqz v0, :cond_8

    .line 309
    goto :goto_7

    .line 310
    .line 311
    :cond_8
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 312
    .line 313
    .line 314
    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 315
    move-result-object v0

    .line 316
    .line 317
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-result-object v0

    .line 322
    .line 323
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    .line 324
    .line 325
    if-eqz v0, :cond_9

    .line 326
    .line 327
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    .line 331
    return-void

    .line 332
    .line 333
    :cond_9
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    .line 334
    .line 335
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 336
    .line 337
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 340
    const/4 v6, 0x0

    .line 341
    .line 342
    iget v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    .line 343
    .line 344
    iget v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    .line 345
    .line 346
    iget v9, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 347
    move-object v2, v0

    .line 348
    .line 349
    .line 350
    invoke-direct/range {v2 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    .line 351
    goto :goto_6

    .line 352
    :goto_a
    return-void

    .line 353
    .line 354
    .line 355
    :goto_b
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 356
    .line 357
    if-nez v5, :cond_c

    .line 358
    .line 359
    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 363
    move-result v3

    .line 364
    .line 365
    if-nez v3, :cond_b

    .line 366
    .line 367
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 371
    move-result v2

    .line 372
    .line 373
    if-nez v2, :cond_b

    .line 374
    .line 375
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 379
    move-result v1

    .line 380
    .line 381
    if-nez v1, :cond_b

    .line 382
    .line 383
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 387
    move-result v1

    .line 388
    .line 389
    if-nez v1, :cond_b

    .line 390
    .line 391
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 392
    .line 393
    .line 394
    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 395
    move-result-object v1

    .line 396
    .line 397
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    move-result-object v1

    .line 402
    .line 403
    check-cast v1, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    .line 404
    .line 405
    if-eqz v1, :cond_a

    .line 406
    .line 407
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    .line 411
    return-void

    .line 412
    .line 413
    :cond_a
    new-instance v1, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    .line 414
    .line 415
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 416
    .line 417
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 420
    const/4 v6, 0x0

    .line 421
    .line 422
    iget v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    .line 423
    .line 424
    iget v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    .line 425
    .line 426
    iget v9, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    .line 427
    move-object v2, v1

    .line 428
    .line 429
    .line 430
    invoke-direct/range {v2 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    .line 431
    .line 432
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    .line 436
    .line 437
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 438
    .line 439
    .line 440
    invoke-static {v2}, Lcom/narvii/util/drawables/webp/WebPLoader;->d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 441
    move-result-object v2

    .line 442
    .line 443
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 449
    .line 450
    .line 451
    invoke-static {v2}, Lcom/narvii/util/drawables/webp/WebPLoader;->c(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 452
    move-result-object v2

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 456
    goto :goto_c

    .line 457
    .line 458
    .line 459
    :cond_b
    invoke-virtual {p0, v6}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 460
    .line 461
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 462
    .line 463
    .line 464
    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->f(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 465
    move-result-object v1

    .line 466
    .line 467
    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    throw v0
.end method
