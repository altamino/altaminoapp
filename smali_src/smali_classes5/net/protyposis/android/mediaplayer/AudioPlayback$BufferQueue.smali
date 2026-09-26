.class Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I

    .line 3
    return p0
.end method


# virtual methods
.method declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->put(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;)V

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw v0
.end method

.method declared-synchronized put(Ljava/nio/ByteBuffer;J)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferSize:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iput v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferSize:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;-><init>(I)V

    .line 7
    :goto_1
    iget-object v1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object v1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 9
    iget-object v1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p1, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 11
    iput-wide p2, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->presentationTimeUs:J

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I

    .line 13
    iget-object p2, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized put(Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;)V
    .locals 2

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 16
    monitor-exit p0

    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p1, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->emptyBuffers:Ljava/util/List;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized take()Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->bufferQueue:Ljava/util/Queue;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I

    .line 14
    .line 15
    iget-object v2, v0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue$Item;->buffer:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    .line 22
    iput v1, p0, Lnet/protyposis/android/mediaplayer/AudioPlayback$BufferQueue;->mQueuedDataSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0
.end method
