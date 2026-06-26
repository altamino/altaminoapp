.class public Lcom/cdv/io/NvAndroidAudioFileReader;
.super Ljava/lang/Object;
.source "NvAndroidAudioFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;
    }
.end annotation


# static fields
.field private static final ERROR_EOF:I = 0x1

.field private static final ERROR_FAIL:I = 0x2

.field private static final ERROR_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NvAndroidAudioFileReader"

.field private static final m_verbose:Z


# instance fields
.field private m_audioTrackIndex:I

.field private m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private m_channelCount:I

.field private m_decoder:Landroid/media/MediaCodec;

.field m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private m_decoderSetupFailed:Z

.field private m_decoderStarted:Z

.field private m_duration:J

.field private m_extractor:Landroid/media/MediaExtractor;

.field private m_format:Landroid/media/MediaFormat;

.field private m_inputBufferQueued:Z

.field private m_pcmEncoding:I

.field private m_pendingInputFrameCount:I

.field private m_sampleRate:I

.field private m_sawInputEOS:Z

.field private m_sawOutputEOS:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    .line 40
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_channelCount:I

    const v1, 0xac44

    .line 43
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sampleRate:I

    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pcmEncoding:I

    .line 46
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    .line 50
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    .line 51
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 52
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 54
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 55
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 56
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    .line 57
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    .line 61
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private cleanupDecoder()V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 271
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 273
    :try_start_0
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 275
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    :catch_0
    :try_start_2
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NvAndroidAudioFileReader"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    :goto_0
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    .line 289
    iput-object v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 292
    iput-object v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 295
    :cond_2
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 296
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    .line 297
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    return-void
.end method

.method private decodeNextFrame()Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;
    .locals 19

    move-object/from16 v1, p0

    .line 302
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    const/4 v2, 0x3

    .line 303
    div-int/2addr v0, v2

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 307
    new-instance v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;

    invoke-direct {v5}, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;-><init>()V

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 309
    :goto_0
    iget-boolean v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    const/4 v8, 0x1

    if-nez v7, :cond_10

    .line 310
    iget-boolean v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    const-string v9, "NvAndroidAudioFileReader"

    if-nez v7, :cond_2

    .line 312
    iget-object v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    if-ltz v13, :cond_2

    .line 314
    iget-object v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v13

    .line 316
    iget-object v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v7, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    if-gez v15, :cond_0

    .line 319
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 320
    iput-boolean v8, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    goto :goto_1

    .line 324
    :cond_0
    iget-object v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7

    iget v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    if-eq v7, v10, :cond_1

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WEIRD: got sample from track "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 326
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", expected "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 325
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    iget-object v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v16

    .line 330
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 334
    iput-boolean v8, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 335
    iget v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    add-int/2addr v7, v8

    iput v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 339
    iget-object v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    .line 349
    :cond_2
    :goto_1
    iget v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    if-gt v7, v4, :cond_4

    iget-boolean v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v7, 0x1f4

    .line 358
    :goto_3
    iget-object v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v11, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v12, v7

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    add-int/lit8 v10, v0, 0x1

    const/4 v0, -0x1

    const/4 v11, 0x0

    if-ne v7, v0, :cond_5

    goto/16 :goto_8

    :cond_5
    const/4 v0, -0x3

    if-ne v7, v0, :cond_6

    .line 367
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto/16 :goto_8

    :cond_6
    const/4 v0, -0x2

    if-ne v7, v0, :cond_7

    .line 369
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 372
    invoke-direct {v1, v0}, Lcom/cdv/io/NvAndroidAudioFileReader;->parseMediaFormat(Landroid/media/MediaFormat;)V

    goto/16 :goto_8

    :cond_7
    if-gez v7, :cond_8

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 382
    :cond_8
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x4

    and-int/2addr v0, v12

    if-eqz v0, :cond_9

    .line 385
    iput-boolean v8, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    goto :goto_4

    .line 387
    :cond_9
    iget v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    sub-int/2addr v0, v8

    iput v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 390
    :goto_4
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_d

    .line 392
    iget v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_channelCount:I

    iput v0, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->channelCount:I

    .line 393
    iget v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sampleRate:I

    iput v0, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleRate:I

    const/16 v0, 0x10

    .line 394
    iput v0, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    .line 395
    iget v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pcmEncoding:I

    const/16 v13, 0x8

    if-ne v0, v2, :cond_b

    .line 396
    iput v13, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    goto :goto_6

    :cond_b
    if-ne v0, v12, :cond_c

    const/16 v0, 0x20

    .line 398
    iput v0, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    .line 400
    :cond_c
    :goto_6
    iget v0, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    div-int/2addr v0, v13

    iget v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->channelCount:I

    mul-int v0, v0, v12

    .line 401
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    div-int/2addr v12, v0

    iput v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleCount:I

    .line 403
    :try_start_0
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v7

    .line 404
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 405
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 406
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 407
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 408
    iput-object v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->audioFrame:Ljava/nio/ByteBuffer;

    .line 409
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->pts:J

    .line 410
    iput v6, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    iput v3, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I

    const/4 v8, 0x0

    .line 418
    :cond_d
    :goto_7
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v8, :cond_e

    return-object v5

    :cond_e
    :goto_8
    const/16 v0, 0x64

    if-le v10, v0, :cond_f

    const-string v0, "We have tried too many times and can\'t decode a frame!"

    .line 424
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_f
    move v0, v10

    goto/16 :goto_0

    .line 429
    :cond_10
    iput v8, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I

    return-object v5
.end method

.method private isValid()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseMediaFormat(Landroid/media/MediaFormat;)V
    .locals 2

    const-string v0, "channel-count"

    .line 435
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_channelCount:I

    :cond_0
    const-string/jumbo v0, "sample-rate"

    .line 437
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sampleRate:I

    :cond_1
    const-string/jumbo v0, "pcm-encoding"

    .line 439
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pcmEncoding:I

    :cond_2
    return-void
.end method

.method private setupDecoder(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 246
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 247
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 248
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    .line 252
    iget-object v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 253
    iget-object v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NvAndroidAudioFileReader"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    return v0
.end method


# virtual methods
.method public closeFile()V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    .line 144
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 147
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    .line 148
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v0, 0x0

    .line 149
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    :cond_0
    return-void
.end method

.method public getNextAudioFrameForPlayback()Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;
    .locals 3

    .line 218
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;

    invoke-direct {v0}, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;-><init>()V

    const/4 v1, 0x1

    .line 220
    iput v1, v0, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I

    return-object v0

    .line 225
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->decodeNextFrame()Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NvAndroidAudioFileReader"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDecoderSetupFailed()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    return v0
.end method

.method public openFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Z
    .locals 9

    .line 67
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->isValid()Z

    move-result v0

    const-string v1, "NvAndroidAudioFileReader"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "You can\'t call OpenFile() twice!"

    .line 68
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    if-nez p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    .line 81
    iget-object v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 83
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    const-string v3, "mime"

    if-ge v0, p2, :cond_3

    .line 96
    iget-object v4, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 97
    invoke-virtual {v4, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/"

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iput v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_3
    :goto_2
    iget p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    if-gez p2, :cond_4

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find a audio track from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->closeFile()V

    return v2

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 113
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    iget p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    .line 115
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const-string p2, "durationUs"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    .line 121
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    .line 126
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidAudioFileReader;->setupDecoder(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_5

    .line 127
    iput-boolean p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    .line 128
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->closeFile()V

    return v2

    :cond_5
    return p2

    :catch_0
    move-exception p1

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->closeFile()V

    return v2
.end method

.method public startPlayback(J)I
    .locals 4

    .line 158
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 161
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 162
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x2

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 171
    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 183
    :cond_2
    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    .line 185
    :try_start_1
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :catch_0
    :try_start_2
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 191
    iput v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    goto :goto_1

    .line 175
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    .line 176
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidAudioFileReader;->setupDecoder(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_1
    return v2

    :catch_1
    move-exception p1

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NvAndroidAudioFileReader"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
