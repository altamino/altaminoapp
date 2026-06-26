.class Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;
.super Ljava/lang/Object;
.source "AudioPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/AudioPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;
    }
.end annotation


# instance fields
.field private bufferQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;",
            ">;"
        }
    .end annotation
.end field

.field private bufferSize:I

.field private emptyBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mQueuedDataSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;)I
    .locals 0

    .line 487
    iget p0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I

    return p0
.end method


# virtual methods
.method declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 566
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->put(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 569
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method declared-synchronized put(Ljava/nio/ByteBuffer;J)V
    .locals 3

    monitor-enter p0

    .line 510
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferSize:I

    if-le v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferSize:I

    .line 518
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    goto :goto_0

    .line 521
    :cond_1
    new-instance v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;-><init>(I)V

    .line 524
    :goto_0
    iget-object v1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 525
    iget-object v1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 526
    iget-object v1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 527
    iget-object p1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 528
    iput-wide p2, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->presentationTimeUs:J

    .line 530
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 531
    iget p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I

    iget-object p2, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized put(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;)V
    .locals 2

    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 554
    monitor-exit p0

    return-void

    .line 557
    :cond_0
    :try_start_1
    iget-object v0, p1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 558
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized take()Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;
    .locals 3

    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    if-eqz v0, :cond_0

    .line 542
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I

    iget-object v2, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
