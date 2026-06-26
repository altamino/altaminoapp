.class public Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"

.field private static final VERBOSE:Z = true


# instance fields
.field private mEncoderCount:I

.field private mIsStarted:Z

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStatredCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 19
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 22
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    return-void
.end method


# virtual methods
.method declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    const-string v1, "MediaMuxerWrapper"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack:trackNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",trackIx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return v0

    .line 67
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaMuxerWrapper"

    const-string v1, "start:"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 34
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    iget v2, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-ne v0, v2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 36
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "MediaMuxerWrapper"

    const-string v1, "MediaMuxer started:"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaMuxerWrapper"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop:mStatredCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 50
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-gtz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    const-string v0, "MediaMuxerWrapper"

    const-string v1, "MediaMuxer stopped:"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
