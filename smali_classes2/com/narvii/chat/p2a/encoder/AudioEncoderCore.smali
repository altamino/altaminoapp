.class public Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;
.super Ljava/lang/Object;
.source "AudioEncoderCore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final BIT_RATE:I = 0x1f400

.field private static final FRAMES_PER_BUFFER:I = 0x18

.field private static final MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final SAMPLES_PER_FRAME:I = 0x800

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final TAG:Ljava/lang/String; = "AudioEncoder"

.field private static final TIMEOUT_USEC:I = 0x2710

.field private static final VERBOSE:Z


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

.field private mMuxerStarted:Z

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;)V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string v0, "audio/mp4a-latm"

    const/4 v1, 0x1

    const v2, 0xac44

    .line 39
    invoke-static {v0, v2, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "aac-profile"

    const/4 v4, 0x2

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "channel-mask"

    const/16 v4, 0x10

    .line 41
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "bitrate"

    const v4, 0x1f400

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "channel-count"

    .line 43
    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 46
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 51
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mTrackIndex:I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    .line 55
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    return-void
.end method


# virtual methods
.method public drainEncoder()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 117
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    .line 120
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    if-nez v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoder output format changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioEncoder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-virtual {v2, v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mTrackIndex:I

    .line 129
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->start()Z

    move-result v1

    if-nez v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    monitor-enter v1

    .line 131
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-virtual {v2}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 133
    :try_start_1
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 135
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 138
    :cond_3
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_2
    const/4 v1, 0x1

    .line 140
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    goto :goto_0

    .line 121
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-gez v1, :cond_7

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioEncoder"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    :cond_7
    aget-object v2, v0, v1

    if-eqz v2, :cond_b

    .line 152
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 156
    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 159
    :cond_8
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_a

    .line 160
    iget-boolean v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    if-eqz v4, :cond_9

    .line 165
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 168
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    iget v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mTrackIndex:I

    iget-object v6, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v2, v6}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_3

    .line 161
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 177
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    :goto_4
    return-void

    .line 148
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_0

    .line 71
    aget-object v0, v0, v5

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_1
    if-gtz p2, :cond_2

    .line 80
    iget-object v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 191
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 192
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->stop()V

    .line 199
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    :cond_1
    return-void
.end method
