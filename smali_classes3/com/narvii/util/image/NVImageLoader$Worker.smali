.class Lcom/narvii/util/image/NVImageLoader$Worker;
.super Ljava/lang/Thread;
.source "NVImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/image/NVImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/image/NVImageLoader;


# direct methods
.method public constructor <init>(Lcom/narvii/util/image/NVImageLoader;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    const-string p1, "imagelocal"

    .line 471
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    const/4 v0, 0x0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    invoke-static {v1}, Lcom/narvii/util/image/NVImageLoader;->access$000(Lcom/narvii/util/image/NVImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    .line 484
    iget-object v2, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    monitor-enter v2

    .line 485
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    invoke-static {v1}, Lcom/narvii/util/image/NVImageLoader;->access$000(Lcom/narvii/util/image/NVImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    monitor-exit v2

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    invoke-static {v1}, Lcom/narvii/util/image/NVImageLoader;->access$100(Lcom/narvii/util/image/NVImageLoader;)Lcom/narvii/util/image/NVImageLoader$Worker;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 488
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    invoke-static {v1, v0}, Lcom/narvii/util/image/NVImageLoader;->access$102(Lcom/narvii/util/image/NVImageLoader;Lcom/narvii/util/image/NVImageLoader$Worker;)Lcom/narvii/util/image/NVImageLoader$Worker;

    .line 490
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 494
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->run()V

    goto :goto_0
.end method
