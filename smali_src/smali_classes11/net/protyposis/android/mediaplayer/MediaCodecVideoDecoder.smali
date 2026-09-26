.class Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;
.super Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;-><init>(Lnet/protyposis/android/mediaplayer/MediaExtractor;ZILnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;)V

    .line 4
    .line 5
    iput-object p5, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mVideoSurface:Landroid/view/Surface;

    .line 6
    .line 7
    iput-boolean p6, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mRenderModeApi21:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    .line 11
    return-void
.end method

.method private fastSeek(JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p4}, Landroid/media/MediaCodec;->flush()V

    .line 4
    const/4 p4, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p1, p2, p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    cmp-long v0, v0, p1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p3, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p4, "skip fastseek, already there"

    .line 20
    .line 21
    .line 22
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-wide p1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->skipToNextSample()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p4}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->queueSampleToCodec(Z)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1, p2, p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const-wide v2, 0x7fffffffffffffffL

    .line 40
    move v4, p4

    .line 41
    move-wide v5, v0

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    .line 45
    move-result v7

    .line 46
    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    const/16 v7, 0x14

    .line 50
    .line 51
    if-ge v4, v7, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    .line 55
    move-result-wide v7

    .line 56
    .line 57
    sub-long v7, p1, v7

    .line 58
    .line 59
    cmp-long v9, v7, v0

    .line 60
    .line 61
    if-ltz v9, :cond_2

    .line 62
    .line 63
    cmp-long v10, v7, v2

    .line 64
    .line 65
    if-gez v10, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    .line 69
    move-result-wide v5

    .line 70
    move-wide v2, v7

    .line 71
    .line 72
    :cond_2
    if-gez v9, :cond_1

    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p3, v5, v6, p4}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->seekTo(JI)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    .line 82
    move-result-wide p1

    .line 83
    .line 84
    cmp-long p1, p1, v5

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->advance()Z

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_4
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string p4, "exact fastseek match:       "

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3}, Lnet/protyposis/android/mediaplayer/MediaExtractor;->getSampleTime()J

    .line 106
    move-result-wide p3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-wide v5
.end method


# virtual methods
.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mVideoSurface:Landroid/view/Surface;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    return-void
.end method

.method public getVideoHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getFormat()Landroid/media/MediaFormat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "height"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public getVideoRotation()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getFormat()Landroid/media/MediaFormat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "rotation-degrees"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getFormat()Landroid/media/MediaFormat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "height"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    .line 15
    const-string v2, "mpx-dar"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    .line 19
    move-result v0

    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p2, v2

    add-long/2addr v0, p2

    .line 4
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCodec()Landroid/media/MediaCodec;

    move-result-object p2

    iget p3, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    invoke-virtual {p2, p3, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 5
    invoke-virtual {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrameInfo(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    return-void
.end method

.method public releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    iget v1, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->buffer:I

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2
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

    .line 1
    .line 2
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mRenderModeApi21:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    .line 13
    :goto_0
    return-void
.end method

.method protected seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-wide/from16 v2, p2

    .line 7
    .line 8
    const-wide/16 v4, 0x3e8

    .line 9
    .line 10
    div-long v7, v2, v4

    .line 11
    .line 12
    .line 13
    invoke-super/range {p0 .. p5}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 17
    .line 18
    const-string v10, " arrived at "

    .line 19
    .line 20
    const-wide/16 v11, -0x1

    .line 21
    .line 22
    if-eq v1, v9, :cond_9

    .line 23
    .line 24
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_CLOSEST_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 25
    .line 26
    if-eq v1, v9, :cond_9

    .line 27
    .line 28
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 29
    .line 30
    if-eq v1, v9, :cond_9

    .line 31
    .line 32
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_NEXT_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 33
    .line 34
    if-ne v1, v9, :cond_0

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    sget-object v9, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 39
    const/4 v13, 0x1

    .line 40
    const/4 v14, 0x0

    .line 41
    .line 42
    if-ne v1, v9, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v0, v14}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    .line 46
    .line 47
    move-object/from16 v9, p4

    .line 48
    .line 49
    move-object/from16 v15, p5

    .line 50
    .line 51
    .line 52
    invoke-direct {v6, v2, v3, v9, v15}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->fastSeek(JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)J

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v13, v13}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->decodeFrame(ZZ)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v5, "fast_exact seek to "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget-wide v7, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    iget-wide v4, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 89
    .line 90
    cmp-long v1, v4, v2

    .line 91
    .line 92
    if-gez v1, :cond_1

    .line 93
    .line 94
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    const-string v2, "presentation is behind..."

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    return-object v0

    .line 101
    .line 102
    :cond_2
    move-object/from16 v9, p4

    .line 103
    .line 104
    move-object/from16 v15, p5

    .line 105
    .line 106
    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->PRECISE:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 107
    .line 108
    if-eq v1, v2, :cond_3

    .line 109
    .line 110
    sget-object v2, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 111
    .line 112
    if-ne v1, v2, :cond_a

    .line 113
    .line 114
    :cond_3
    iget-wide v2, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 115
    div-long/2addr v2, v4

    .line 116
    move v10, v14

    .line 117
    .line 118
    move-wide/from16 v17, v2

    .line 119
    move-wide v2, v11

    .line 120
    .line 121
    move-wide/from16 v11, v17

    .line 122
    .line 123
    :goto_0
    cmp-long v16, v11, v7

    .line 124
    .line 125
    if-gez v16, :cond_7

    .line 126
    .line 127
    if-nez v10, :cond_4

    .line 128
    .line 129
    iget-object v11, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    const-string v12, "skipping frames..."

    .line 132
    .line 133
    .line 134
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->isOutputEos()Z

    .line 140
    move-result v11

    .line 141
    .line 142
    if-eqz v11, :cond_5

    .line 143
    .line 144
    iget-wide v7, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 145
    div-long/2addr v7, v4

    .line 146
    .line 147
    :cond_5
    iget-boolean v11, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->endOfStream:Z

    .line 148
    .line 149
    if-eqz v11, :cond_6

    .line 150
    .line 151
    iget-object v4, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 152
    .line 153
    const-string v5, "end of stream reached, seeking to last frame"

    .line 154
    .line 155
    .line 156
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v0, v14}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    .line 160
    .line 161
    move-object/from16 v0, p0

    .line 162
    .line 163
    move-object/from16 v1, p1

    .line 164
    .line 165
    move-object/from16 v4, p4

    .line 166
    .line 167
    move-object/from16 v5, p5

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 171
    move-result-object v0

    .line 172
    return-object v0

    .line 173
    .line 174
    :cond_6
    iget-wide v2, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v0, v14}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v13, v13}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->decodeFrame(ZZ)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    iget-wide v11, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 184
    div-long/2addr v11, v4

    .line 185
    goto :goto_0

    .line 186
    .line 187
    :cond_7
    iget-object v4, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 188
    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    const-string v13, "frame new position:         "

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    iget-wide v14, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v5

    .line 207
    .line 208
    .line 209
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    iget-object v4, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    const-string v14, "seeking finished, skipped "

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v14, " frames"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v5

    .line 234
    .line 235
    .line 236
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    sget-object v4, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->EXACT:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 239
    .line 240
    if-ne v1, v4, :cond_a

    .line 241
    .line 242
    if-lez v16, :cond_a

    .line 243
    .line 244
    if-nez v10, :cond_8

    .line 245
    .line 246
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 247
    .line 248
    const-string v2, "this should never happen"

    .line 249
    .line 250
    .line 251
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    goto :goto_2

    .line 253
    .line 254
    :cond_8
    iget-object v4, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 255
    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    const-string v7, "exact seek: repeat seek for previous frame at "

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v5

    .line 272
    .line 273
    .line 274
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v4, 0x0

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v0, v4}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;Z)V

    .line 279
    .line 280
    move-object/from16 v0, p0

    .line 281
    .line 282
    move-object/from16 v1, p1

    .line 283
    .line 284
    move-object/from16 v4, p4

    .line 285
    .line 286
    move-object/from16 v5, p5

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;JLnet/protyposis/android/mediaplayer/MediaExtractor;Landroid/media/MediaCodec;)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 290
    move-result-object v0

    .line 291
    return-object v0

    .line 292
    .line 293
    :cond_9
    :goto_1
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 294
    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    const-string v5, "fast seek to "

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    iget-wide v2, v0, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v2

    .line 319
    .line 320
    .line 321
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    :cond_a
    :goto_2
    cmp-long v1, v11, v7

    .line 324
    .line 325
    if-nez v1, :cond_b

    .line 326
    .line 327
    iget-object v1, v6, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->TAG:Ljava/lang/String;

    .line 328
    .line 329
    const-string v2, "exact seek match!"

    .line 330
    .line 331
    .line 332
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
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

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->mVideoSurface:Landroid/view/Surface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->reinitCodec()V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string v0, "surface must not be null"

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method
