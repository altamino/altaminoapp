.class public Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 11
    .line 12
    const-string v0, "audio/mp4a-latm"

    .line 13
    .line 14
    .line 15
    const v1, 0xac44

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v3, "aac-profile"

    .line 23
    const/4 v4, 0x2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 27
    .line 28
    const-string v3, "channel-mask"

    .line 29
    .line 30
    const/16 v4, 0x10

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 34
    .line 35
    const-string v3, "bitrate"

    .line 36
    .line 37
    .line 38
    const v4, 0x1f400

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 42
    .line 43
    const-string v3, "channel-count"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 60
    const/4 v3, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 69
    const/4 v0, -0x1

    .line 70
    .line 71
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mTrackIndex:I

    .line 72
    const/4 v0, 0x0

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    .line 75
    .line 76
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 77
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 11
    .line 12
    const-wide/16 v3, 0x2710

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    :cond_1
    const/4 v2, -0x3

    .line 23
    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v2, -0x2

    .line 33
    .line 34
    if-ne v1, v2, :cond_6

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    .line 37
    .line 38
    if-nez v1, :cond_5

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-string v2, "AudioEncoder"

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v4, "encoder output format changed: "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    .line 72
    move-result v1

    .line 73
    .line 74
    iput v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mTrackIndex:I

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->start()Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 85
    monitor-enter v1

    .line 86
    .line 87
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->isStarted()Z

    .line 91
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 96
    .line 97
    const-wide/16 v3, 0x64

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_2

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .line 106
    .line 107
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    monitor-exit v1

    .line 110
    goto :goto_3

    .line 111
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    throw v0

    .line 113
    :cond_4
    :goto_3
    const/4 v1, 0x1

    .line 114
    .line 115
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    const-string v1, "format changed twice"

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0

    .line 125
    .line 126
    :cond_6
    if-gez v1, :cond_7

    .line 127
    .line 128
    const-string v2, "AudioEncoder"

    .line 129
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_7
    aget-object v2, v0, v1

    .line 153
    .line 154
    if-eqz v2, :cond_b

    .line 155
    .line 156
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 157
    .line 158
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 159
    .line 160
    and-int/lit8 v4, v4, 0x2

    .line 161
    const/4 v5, 0x0

    .line 162
    .line 163
    if-eqz v4, :cond_8

    .line 164
    .line 165
    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 166
    .line 167
    :cond_8
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 168
    .line 169
    if-eqz v4, :cond_a

    .line 170
    .line 171
    iget-boolean v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxerStarted:Z

    .line 172
    .line 173
    if-eqz v4, :cond_9

    .line 174
    .line 175
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    .line 180
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 181
    .line 182
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 183
    .line 184
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 185
    add-int/2addr v4, v3

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    .line 190
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 191
    .line 192
    iget v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mTrackIndex:I

    .line 193
    .line 194
    iget-object v6, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v4, v2, v6}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 198
    goto :goto_4

    .line 199
    .line 200
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 201
    .line 202
    const-string v1, "muxer hasn\'t started"

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 206
    throw v0

    .line 207
    .line 208
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 212
    .line 213
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 214
    .line 215
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 216
    .line 217
    and-int/lit8 v1, v1, 0x4

    .line 218
    .line 219
    if-eqz v1, :cond_0

    .line 220
    :goto_5
    return-void

    .line 221
    .line 222
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    const-string v3, "encoderOutputBuffer "

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v1, " was null"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    .line 247
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 248
    throw v0
.end method

.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 9
    .line 10
    const-wide/16 v2, 0x2710

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 14
    move-result v5

    .line 15
    .line 16
    if-ltz v5, :cond_0

    .line 17
    .line 18
    aget-object v0, v0, v5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    :cond_1
    if-gtz p2, :cond_2

    .line 29
    .line 30
    iget-object v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v10, 0x4

    .line 34
    move-wide v8, p3

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    move v7, p2

    .line 44
    move-wide v8, p3

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 48
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->stop()V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 25
    :cond_1
    return-void
.end method
