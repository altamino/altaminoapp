.class Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$100()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    new-instance p1, Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->mPaused:Z

    .line 20
    return-void
.end method


# virtual methods
.method public notifyOfNewBufferInQueue()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public run()V
    .locals 5

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->mPaused:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_4

    .line 18
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    :try_start_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    .line 21
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    .line 23
    :goto_2
    :try_start_3
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$200(Lnet/protyposis/android/mediaplayer/AudioPlayback;)Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->take()Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->SYNC:Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 39
    goto :goto_2

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    goto :goto_3

    .line 42
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    :try_start_4
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 45
    .line 46
    iget-object v2, v1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iget-wide v3, v1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->presentationTimeUs:J

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2, v3, v4}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$300(Lnet/protyposis/android/mediaplayer/AudioPlayback;Ljava/nio/ByteBuffer;J)V

    .line 52
    .line 53
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->this$0:Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->access$200(Lnet/protyposis/android/mediaplayer/AudioPlayback;)Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->put(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 64
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 65
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method

.method setPaused(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$AudioThread;->mPaused:Z

    .line 3
    monitor-enter p0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method
