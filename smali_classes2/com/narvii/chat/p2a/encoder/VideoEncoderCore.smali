.class public Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;
.super Ljava/lang/Object;
.source "VideoEncoderCore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final IFRAME_INTERVAL:I = 0x5

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "VideoEncoder"

.field private static final VERBOSE:Z


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mInputSurface:Landroid/view/Surface;

.field private mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

.field private mMuxerStarted:Z

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(IIIILcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string/jumbo v0, "video/avc"

    .line 64
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "color-format"

    const v1, 0x7f000789

    .line 68
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "bitrate"

    .line 70
    invoke-virtual {p1, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "frame-rate"

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "i-frame-interval"

    const/4 p3, 0x5

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 77
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 78
    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p2, p1, p3, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 79
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mTrackIndex:I

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    .line 85
    iput-object p5, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    return-void
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 145
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_7

    if-nez p1, :cond_7

    .line 148
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    if-nez v1, :cond_6

    .line 151
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoder output format changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoEncoder"

    invoke-static {v3, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-virtual {v2, v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mTrackIndex:I

    .line 156
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->start()Z

    move-result v1

    if-nez v1, :cond_5

    .line 157
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    monitor-enter v1

    .line 158
    :catch_0
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-virtual {v2}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    .line 160
    :try_start_1
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 164
    :cond_4
    :try_start_2
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    goto :goto_0

    .line 149
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "format changed twice"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-gez v1, :cond_8

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoEncoder"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_8
    aget-object v2, v0, v1

    if-eqz v2, :cond_d

    .line 178
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 182
    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 185
    :cond_9
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_b

    .line 186
    iget-boolean v4, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    if-eqz v4, :cond_a

    .line 191
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 194
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    iget v4, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mTrackIndex:I

    iget-object v6, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v2, v6}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_3

    .line 187
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "muxer hasn\'t started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_b
    :goto_3
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 203
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    if-nez p1, :cond_c

    const-string p1, "VideoEncoder"

    const-string v0, "reached end of stream unexpectedly"

    .line 205
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void

    .line 174
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 102
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 103
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->stop()V

    .line 110
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    :cond_1
    return-void
.end method
