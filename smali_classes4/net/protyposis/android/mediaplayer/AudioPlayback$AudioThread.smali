.class Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;
.super Ljava/lang/Thread;
.source "AudioPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/AudioPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioThread"
.end annotation


# instance fields
.field private final SYNC:Ljava/lang/Object;

.field private mPaused:Z

.field final synthetic this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;


# direct methods
.method constructor <init>(Lnet/protyposis/android/mediaplayer/AudioPlayback;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 437
    invoke-static {}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 433
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 438
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->mPaused:Z

    return-void
.end method


# virtual methods
.method public notifyOfNewBufferInQueue()V
    .locals 2

    .line 449
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 451
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 5

    .line 456
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->mPaused:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 462
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    :try_start_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 466
    :goto_2
    :try_start_3
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$200(Lnet/protyposis/android/mediaplayer/AudioPlayback;)Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    move-result-object v1

    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->take()Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    move-result-object v1

    if-nez v1, :cond_1

    .line 467
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 469
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    :try_start_4
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    iget-object v2, v1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v3, v1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->presentationTimeUs:J

    invoke-static {v0, v2, v3, v4}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$300(Lnet/protyposis/android/mediaplayer/AudioPlayback;Ljava/nio/ByteBuffer;J)V

    .line 472
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$200(Lnet/protyposis/android/mediaplayer/AudioPlayback;)Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->put(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 469
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    .line 462
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 474
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method setPaused(Z)V
    .locals 0

    .line 442
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->mPaused:Z

    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 445
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
