.class Lcom/narvii/util/image/NVImageLoader$Worker;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 3
    .line 4
    const-string p1, "imagelocal"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/narvii/util/image/NVImageLoader;->d(Lcom/narvii/util/image/NVImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v3, 0x1f4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-object v1, v0

    .line 20
    .line 21
    :goto_1
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 24
    monitor-enter v2

    .line 25
    .line 26
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/util/image/NVImageLoader;->d(Lcom/narvii/util/image/NVImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    monitor-exit v2

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/util/image/NVImageLoader;->e(Lcom/narvii/util/image/NVImageLoader;)Lcom/narvii/util/image/NVImageLoader$Worker;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-ne v1, p0, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$Worker;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/narvii/util/image/NVImageLoader;->f(Lcom/narvii/util/image/NVImageLoader;Lcom/narvii/util/image/NVImageLoader$Worker;)V

    .line 54
    :cond_1
    monitor-exit v2

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw v0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->run()V

    .line 61
    goto :goto_0
.end method
