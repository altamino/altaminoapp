.class Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;
.super Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;
.source "MediaCodecVideoDecoder.java"


# instance fields
.field private mRenderModeApi21:Z

.field private mVideoSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;Landroid/view/Surface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;-><init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;)V

    .line 40
    iput-object p5, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mVideoSurface:Landroid/view/Surface;

    .line 41
    iput-boolean p6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mRenderModeApi21:Z

    .line 42
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    return-void
.end method

.method private fastSeek(JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p4}, Landroid/media/MediaCodec;->flush()V

    const/4 p4, 0x0

    .line 249
    invoke-virtual {p3, p1, p2, p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    .line 251
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 252
    iget-object p3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string p4, "skip fastseek, already there"

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    .line 257
    :cond_0
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->skipToNextSample()V

    .line 258
    invoke-virtual {p0, p4}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->queueSampleToCodec(Z)Z

    .line 264
    invoke-virtual {p3, p1, p2, p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    const/16 v0, 0x14

    const-wide v1, 0x7fffffffffffffffL

    const-wide/16 v3, 0x0

    move-wide v7, v1

    move-wide v5, v3

    const/4 v1, 0x0

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ge v1, v0, :cond_3

    .line 275
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    sub-long v9, p1, v9

    cmp-long v2, v9, v3

    if-ltz v2, :cond_2

    cmp-long v2, v9, v7

    if-gez v2, :cond_2

    .line 278
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    move-wide v7, v9

    :cond_2
    cmp-long v2, v9, v3

    if-gez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p3, v5, v6, p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    .line 289
    :goto_1
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    cmp-long p4, p1, v5

    if-eqz p4, :cond_4

    .line 290
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    goto :goto_1

    .line 292
    :cond_4
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exact fastseek match:       "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v5
.end method


# virtual methods
.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mVideoSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public getVideoHeight()I
    .locals 2

    .line 66
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "height"

    .line 67
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoRotation()I
    .locals 3

    .line 76
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rotation-degrees"

    .line 78
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    .line 60
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "height"

    .line 61
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const-string v2, "mpx-dar"

    .line 62
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 115
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p2, p2, v2

    add-long/2addr v0, p2

    .line 116
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCodec()Landroid/media/MediaCodec;

    move-result-object p2

    iget p3, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    invoke-virtual {p2, p3, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 117
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrameInfo(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method public releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    iget v1, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 98
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrameInfo(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method public renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mRenderModeApi21:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 89
    invoke-virtual {p0, p1, p2}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    :goto_0
    return-void
.end method

.method protected seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x3e8

    .line 128
    div-long v7, v2, v4

    .line 130
    invoke-super/range {p0 .. p5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    .line 132
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const-string v10, " arrived at "

    const-wide/16 v11, -0x1

    if-eq v1, v9, :cond_9

    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_CLOSEST_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    if-eq v1, v9, :cond_9

    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    if-eq v1, v9, :cond_9

    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_NEXT_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    if-ne v1, v9, :cond_0

    goto/16 :goto_1

    .line 138
    :cond_0
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v1, v9, :cond_2

    .line 139
    invoke-virtual {v6, v0, v14}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    move-object/from16 v9, p4

    move-object/from16 v15, p5

    .line 140
    invoke-direct {v6, v2, v3, v9, v15}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->fastSeek(JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)J

    .line 142
    invoke-virtual {v6, v13, v13}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->decodeFrame(ZZ)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    .line 143
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fast_exact seek to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-wide v4, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 146
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v2, "presentation is behind..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    move-object/from16 v9, p4

    move-object/from16 v15, p5

    .line 151
    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->PRECISE:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    if-eq v1, v2, :cond_3

    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    if-ne v1, v2, :cond_a

    .line 175
    :cond_3
    iget-wide v2, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    div-long/2addr v2, v4

    move-wide/from16 p2, v11

    move-wide v11, v2

    const/4 v2, 0x0

    :goto_0
    cmp-long v3, v11, v7

    if-gez v3, :cond_7

    if-nez v2, :cond_4

    .line 179
    iget-object v3, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v10, "skipping frames..."

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 183
    invoke-virtual/range {p0 .. p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isOutputEos()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    iget-wide v7, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 189
    div-long/2addr v7, v4

    .line 192
    :cond_5
    iget-boolean v3, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->endOfStream:Z

    if-eqz v3, :cond_6

    .line 193
    iget-object v2, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v3, "end of stream reached, seeking to last frame"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v6, v0, v14}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 195
    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    return-object v0

    .line 198
    :cond_6
    iget-wide v10, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 199
    invoke-virtual {v6, v0, v14}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    .line 201
    invoke-virtual {v6, v13, v13}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->decodeFrame(ZZ)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    .line 202
    iget-wide v13, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    div-long v12, v13, v4

    move-wide/from16 p2, v10

    move-wide v11, v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_0

    .line 205
    :cond_7
    iget-object v3, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame new position:         "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seeking finished, skipped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " frames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v3, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    if-ne v1, v3, :cond_a

    cmp-long v3, v11, v7

    if-lez v3, :cond_a

    if-nez v2, :cond_8

    .line 218
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v2, "this should never happen"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 229
    :cond_8
    iget-object v2, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exact seek: repeat seek for previous frame at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p2

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 230
    invoke-virtual {v6, v0, v2}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v10

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 231
    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    move-result-object v0

    return-object v0

    .line 136
    :cond_9
    :goto_1
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fast seek to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    cmp-long v1, v11, v7

    if-nez v1, :cond_b

    .line 237
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v2, "exact seek match!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object v0
.end method

.method public updateSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mVideoSurface:Landroid/view/Surface;

    .line 56
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface must not be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
