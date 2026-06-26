.class Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;
.super Ljava/lang/Thread;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/GifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerLoad"
.end annotation


# instance fields
.field session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

.field stoped:Z

.field final synthetic this$0:Lcom/narvii/util/drawables/gif/GifLoader;


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    const-string p1, "gif-load"

    .line 567
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 572
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->stoped:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    monitor-enter v2

    .line 581
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 582
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 586
    :cond_0
    iget-boolean v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "gif load canceled in queue"

    .line 591
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_2
    iput-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    const/4 v2, 0x0

    .line 598
    :try_start_2
    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 601
    :goto_2
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    const/4 v4, 0x3

    .line 602
    :goto_3
    iput v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 603
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 604
    iget-boolean v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    if-eqz v4, :cond_5

    if-nez v3, :cond_6

    .line 606
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->touch(Ljava/io/File;)V

    .line 607
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/narvii/util/drawables/gif/GifLoader;->touch(Ljava/io/File;)V

    goto :goto_4

    .line 610
    :cond_5
    iput v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 616
    :cond_6
    :goto_4
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 618
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-nez v0, :cond_7

    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    if-nez v0, :cond_7

    goto :goto_5

    .line 622
    :cond_7
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v2

    .line 623
    :try_start_3
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    .line 624
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_8
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v2

    goto :goto_6

    .line 614
    :catch_1
    :try_start_4
    iput v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 616
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 618
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    if-nez v0, :cond_9

    .line 619
    :goto_5
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerDownload()V

    goto/16 :goto_0

    .line 622
    :cond_9
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v2

    .line 623
    :try_start_5
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_a

    .line 624
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_a
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 616
    :goto_6
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 618
    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-nez v0, :cond_c

    iget-boolean v0, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->dispatched:Z

    if-eqz v0, :cond_b

    goto :goto_7

    .line 619
    :cond_b
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerDownload()V

    goto :goto_8

    .line 622
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 623
    :try_start_6
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_d

    .line 624
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_d
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 628
    :goto_8
    throw v2

    :catchall_4
    move-exception v1

    .line 626
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    :cond_e
    return-void
.end method
