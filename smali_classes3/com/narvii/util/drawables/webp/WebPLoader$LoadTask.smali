.class Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;
.super Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;
.source "WebPLoader.java"


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

    move-object v8, p0

    move-object v1, p1

    .line 230
    iput-object v1, v8, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    .line 231
    invoke-direct/range {v0 .. v7}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    move-object v0, p4

    .line 232
    iput-object v0, v8, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->file:Ljava/io/File;

    move/from16 v0, p8

    .line 233
    iput-boolean v0, v8, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->doRtl:Z

    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$000(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$100(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 13

    const-string v0, "file://"

    const-string v1, "mediastore://"

    const-string v2, "photo://"

    const-string v3, "assets://"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 247
    :try_start_0
    iget-object v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 248
    iget-object v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v7}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$200(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/app/NVContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 249
    iget-object v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_0

    .line 251
    :cond_0
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->file:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :goto_0
    :try_start_1
    invoke-static {v7}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 254
    invoke-virtual {v8}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 255
    new-instance v9, Landroid/support/rastermill/FrameSequenceDrawable;

    iget-object v10, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {v9, v8, v10}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    .line 256
    iget-boolean v10, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->doRtl:Z

    invoke-virtual {v9, v10}, Landroid/support/rastermill/FrameSequenceDrawable;->setDoRtl(Z)V

    .line 257
    invoke-virtual {v8}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v8

    if-ne v8, v4, :cond_1

    .line 258
    invoke-virtual {v9, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    goto :goto_1

    .line 259
    :cond_1
    iget v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    if-lez v8, :cond_2

    .line 260
    invoke-virtual {v9, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 261
    iget v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    invoke-virtual {v9, v8}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopCount(I)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    .line 263
    invoke-virtual {v9, v8}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 264
    invoke-virtual {v9}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 267
    :goto_1
    :try_start_2
    new-instance v6, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-direct {v6, v9}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    invoke-virtual {p0, v6}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    move-object v4, v6

    const/4 v6, 0x1

    goto/16 :goto_a

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    :goto_2
    move-object v4, v6

    const/4 v6, 0x1

    goto :goto_6

    :cond_3
    const/4 v4, 0x0

    .line 273
    :goto_3
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-nez v4, :cond_9

    .line 277
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_8

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    if-eqz v0, :cond_5

    .line 285
    :goto_4
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    return-void

    .line 289
    :cond_5
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    iget v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    iget v9, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    goto :goto_7

    :catch_2
    move-exception v4

    goto :goto_6

    :catch_3
    move-exception v4

    goto :goto_6

    :catchall_1
    move-exception v4

    move-object v7, v5

    goto/16 :goto_a

    :catch_4
    move-exception v4

    goto :goto_5

    :catch_5
    move-exception v4

    :goto_5
    move-object v7, v5

    .line 271
    :goto_6
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 273
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-nez v6, :cond_9

    .line 277
    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_8

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    if-eqz v0, :cond_7

    goto :goto_4

    .line 289
    :cond_7
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    iget v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    iget v9, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    .line 290
    :goto_7
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    .line 291
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$400(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 279
    :cond_8
    :goto_8
    invoke-virtual {p0, v5}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 296
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$000(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_2
    move-exception v4

    .line 273
    :goto_a
    invoke-static {v7}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-nez v6, :cond_c

    .line 277
    iget-object v6, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 283
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    if-eqz v0, :cond_a

    goto/16 :goto_4

    .line 289
    :cond_a
    new-instance v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    iget-object v6, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    iget-object v7, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    iget-object v8, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->width:I

    iget v11, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->height:I

    iget v12, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    .line 290
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListeners(Ljava/util/ArrayList;)V

    .line 291
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$400(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 279
    :cond_b
    invoke-virtual {p0, v5}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 296
    :cond_c
    :goto_b
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$000(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    goto :goto_d

    :goto_c
    throw v4

    :goto_d
    goto :goto_c
.end method
