.class Lcom/narvii/youtube/YoutubeService$InitTask;
.super Ljava/lang/Thread;
.source "YoutubeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/youtube/YoutubeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTask"
.end annotation


# instance fields
.field extractor:Lcom/narvii/youtube/Extractor;

.field result:Ljava/lang/Boolean;

.field tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/youtube/YoutubeService$Task;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/youtube/YoutubeService;


# direct methods
.method constructor <init>(Lcom/narvii/youtube/YoutubeService;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 310
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/youtube/YoutubeService$Task;

    if-eqz p1, :cond_0

    .line 314
    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    if-ne v2, p3, :cond_0

    .line 315
    iget p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    return-void

    .line 319
    :cond_1
    new-instance v0, Lcom/narvii/youtube/YoutubeService$Task;

    invoke-direct {v0}, Lcom/narvii/youtube/YoutubeService$Task;-><init>()V

    .line 320
    iput-object p1, v0, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    .line 321
    iput-object p3, v0, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 322
    iput-object p2, v0, Lcom/narvii/youtube/YoutubeService$Task;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    .line 323
    iput p4, v0, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    .line 324
    iget-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoCallback;)V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/youtube/YoutubeService$Task;

    if-eqz p1, :cond_0

    .line 329
    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    if-ne v2, p2, :cond_0

    const/4 p1, 0x0

    .line 330
    iput-object p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 331
    iget p1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    if-nez p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public run()V
    .locals 15

    const-string v0, "ms"

    const-string v1, "youtube"

    .line 341
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->result:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 342
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->result:Ljava/lang/Boolean;

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    .line 345
    :try_start_0
    iget-object v7, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v7, v7, Lcom/narvii/youtube/YoutubeService;->dexDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 346
    iget-object v7, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v7, v7, Lcom/narvii/youtube/YoutubeService;->optDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 347
    iget-object v7, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v7, v7, Lcom/narvii/youtube/YoutubeService;->dexFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    .line 348
    iget-object v7, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v7, v7, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "youtube.srv"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 349
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v9, v9, Lcom/narvii/youtube/YoutubeService;->dexFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x1000

    new-array v9, v9, [B

    .line 352
    :goto_0
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    const/4 v11, 0x0

    .line 354
    :goto_1
    div-int/lit8 v12, v10, 0x2

    if-ge v11, v12, :cond_0

    .line 355
    aget-byte v12, v9, v11

    sub-int v13, v10, v11

    sub-int/2addr v13, v4

    .line 356
    aget-byte v14, v9, v13

    aput-byte v14, v9, v11

    .line 357
    aput-byte v12, v9, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 359
    :cond_0
    invoke-virtual {v8, v9, v2, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 362
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x1

    :goto_2
    const/16 v7, 0xb

    if-ge v2, v7, :cond_2

    .line 364
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v8, v8, Lcom/narvii/youtube/YoutubeService;->dexDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "yt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 368
    :cond_2
    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v7, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v7, v7, Lcom/narvii/youtube/YoutubeService;->dexFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v8, v8, Lcom/narvii/youtube/YoutubeService;->optDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v9, v9, Lcom/narvii/youtube/YoutubeService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v9}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v2, v7, v8, v3, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v3, "com.narvii.youtube.impl.YoutubeExtractor"

    .line 369
    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/youtube/Extractor;

    iput-object v2, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->extractor:Lcom/narvii/youtube/Extractor;

    .line 371
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->result:Ljava/lang/Boolean;

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "youtube extractor loaded in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 374
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to load youtube extractor in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    :goto_3
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 377
    throw v0

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iput-boolean v4, v0, Lcom/narvii/youtube/YoutubeService;->inited:Z

    .line 380
    iput-object v3, v0, Lcom/narvii/youtube/YoutubeService;->initTask:Lcom/narvii/youtube/YoutubeService$InitTask;

    .line 381
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->extractor:Lcom/narvii/youtube/Extractor;

    iput-object v1, v0, Lcom/narvii/youtube/YoutubeService;->extractor:Lcom/narvii/youtube/Extractor;

    if-eqz v1, :cond_4

    .line 383
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/youtube/YoutubeService$Task;

    .line 384
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$InitTask;->this$0:Lcom/narvii/youtube/YoutubeService;

    iget-object v3, v1, Lcom/narvii/youtube/YoutubeService$Task;->videoId:Ljava/lang/String;

    iget-object v4, v1, Lcom/narvii/youtube/YoutubeService$Task;->loggingStub:Lcom/narvii/youtube/YoutubeLoggingStub;

    iget-object v5, v1, Lcom/narvii/youtube/YoutubeService$Task;->callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    iget v1, v1, Lcom/narvii/youtube/YoutubeService$Task;->preloadOrder:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V

    goto :goto_4

    :cond_4
    :goto_5
    return-void
.end method
