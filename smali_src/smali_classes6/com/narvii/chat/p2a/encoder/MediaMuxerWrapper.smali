.class public Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 12
    .line 13
    new-instance v1, Landroid/media/MediaMuxer;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 19
    return-void
.end method


# virtual methods
.method declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    const-string v1, "MediaMuxerWrapper"

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v3, "addTrack:trackNum="

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget v3, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, ",trackIx="

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, ",format="

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    .line 53
    return v0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "muxer already started"

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    .line 65
    throw p1
.end method

.method declared-synchronized isStarted()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method declared-synchronized start()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "MediaMuxerWrapper"

    .line 4
    .line 5
    const-string v1, "start:"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 11
    const/4 v1, 0x1

    .line 12
    add-int/2addr v0, v1

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 17
    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 31
    .line 32
    const-string v0, "MediaMuxerWrapper"

    .line 33
    .line 34
    const-string v1, "MediaMuxer started:"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return v0

    .line 45
    :goto_1
    monitor-exit p0

    .line 46
    throw v0
.end method

.method declared-synchronized stop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "MediaMuxerWrapper"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v2, "stop:mStatredCount="

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    iget v2, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 34
    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    if-gtz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 46
    .line 47
    const-string v0, "MediaMuxerWrapper"

    .line 48
    .line 49
    const-string v1, "MediaMuxer stopped:"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p0

    .line 59
    throw v0
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw p1
.end method
