.class Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;
.super Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;
.source "WebPLoader.java"


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

    .line 303
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 304
    invoke-direct/range {p0 .. p7}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    return-void
.end method


# virtual methods
.method protected abort()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$400(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$500(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$500(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webp cache dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v3}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$500(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$600(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/util/http/ProxyStack;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 328
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 330
    :try_start_2
    invoke-static {v2}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 331
    invoke-virtual {v3}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_2

    .line 334
    :cond_2
    new-instance v4, Landroid/support/rastermill/FrameSequenceDrawable;

    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->bitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {v4, v3, v5}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    .line 335
    invoke-virtual {v3}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 336
    invoke-virtual {v4, v5}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    goto :goto_1

    .line 337
    :cond_3
    iget v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    if-lez v3, :cond_4

    .line 338
    invoke-virtual {v4, v5}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 339
    iget v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->loopCount:I

    invoke-virtual {v4, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopCount(I)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    .line 341
    invoke-virtual {v4, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 342
    invoke-virtual {v4}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 344
    :goto_1
    new-instance v3, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-direct {v3, v4}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    invoke-virtual {p0, v3}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    goto :goto_3

    .line 332
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 347
    :goto_3
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/narvii/util/drawables/webp/WebPLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x1000

    :try_start_3
    new-array v4, v4, [B

    .line 350
    :goto_4
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x0

    .line 351
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 357
    :cond_6
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 359
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v1, :cond_7

    .line 362
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    goto/16 :goto_b

    :catch_0
    move-exception v4

    goto :goto_5

    :catch_1
    move-exception v4

    :goto_5
    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_9

    :catchall_1
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_c

    :catch_2
    move-exception v3

    goto :goto_6

    :catch_3
    move-exception v3

    :goto_6
    move-object v4, v1

    move-object v1, v3

    move-object v3, v0

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v0

    goto :goto_c

    :catch_4
    move-exception v2

    goto :goto_7

    :catch_5
    move-exception v2

    :goto_7
    move-object v3, v0

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_9

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v4, v2

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    :goto_8
    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    .line 354
    :goto_9
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->postResult(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 355
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 357
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v0}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 359
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v4, :cond_7

    .line 362
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    :cond_7
    :goto_a
    return-void

    :catchall_4
    move-exception v1

    :goto_b
    move-object v0, v3

    .line 357
    :goto_c
    iget-object v3, p0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;->this$0:Lcom/narvii/util/drawables/webp/WebPLoader;

    invoke-static {v3}, Lcom/narvii/util/drawables/webp/WebPLoader;->access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 359
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v4, :cond_8

    .line 362
    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 369
    :catch_9
    :cond_8
    goto :goto_e

    :goto_d
    throw v1

    :goto_e
    goto :goto_d
.end method
