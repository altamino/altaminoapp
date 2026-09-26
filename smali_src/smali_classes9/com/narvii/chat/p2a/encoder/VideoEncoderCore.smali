.class public Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;
.super Ljava/lang/Object;
.source "SourceFile"


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
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 11
    .line 12
    const-string v0, "video/avc"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string p2, "color-format"

    .line 19
    .line 20
    .line 21
    const v1, 0x7f000789

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 25
    .line 26
    const-string p2, "bitrate"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 30
    .line 31
    const-string p2, "frame-rate"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 35
    .line 36
    const-string p2, "i-frame-interval"

    .line 37
    const/4 p3, 0x5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 47
    const/4 p3, 0x0

    .line 48
    const/4 p4, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1, p3, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 65
    const/4 p1, -0x1

    .line 66
    .line 67
    iput p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mTrackIndex:I

    .line 68
    const/4 p1, 0x0

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    .line 71
    .line 72
    iput-object p5, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 73
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

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 18
    .line 19
    const-wide/16 v3, 0x2710

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    :cond_2
    const/4 v2, -0x3

    .line 32
    .line 33
    if-ne v1, v2, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 v2, -0x2

    .line 42
    .line 43
    if-ne v1, v2, :cond_7

    .line 44
    .line 45
    if-nez p1, :cond_7

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    .line 48
    .line 49
    if-nez v1, :cond_6

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    const-string v2, "VideoEncoder"

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    const-string v4, "encoder output format changed: "

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->addTrack(Landroid/media/MediaFormat;)I

    .line 83
    move-result v1

    .line 84
    .line 85
    iput v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mTrackIndex:I

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->start()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 96
    monitor-enter v1

    .line 97
    .line 98
    :catch_0
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->isStarted()Z

    .line 102
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    :try_start_1
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 107
    .line 108
    const-wide/16 v3, 0x64

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    :try_start_2
    monitor-exit v1

    .line 116
    goto :goto_3

    .line 117
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    throw p1

    .line 119
    :cond_5
    :goto_3
    const/4 v1, 0x1

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    const-string v0, "format changed twice"

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p1

    .line 131
    .line 132
    :cond_7
    if-gez v1, :cond_8

    .line 133
    .line 134
    const-string v2, "VideoEncoder"

    .line 135
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_8
    aget-object v2, v0, v1

    .line 159
    .line 160
    if-eqz v2, :cond_d

    .line 161
    .line 162
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 163
    .line 164
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 165
    .line 166
    and-int/lit8 v4, v4, 0x2

    .line 167
    const/4 v5, 0x0

    .line 168
    .line 169
    if-eqz v4, :cond_9

    .line 170
    .line 171
    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 172
    .line 173
    :cond_9
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 174
    .line 175
    if-eqz v4, :cond_b

    .line 176
    .line 177
    iget-boolean v4, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxerStarted:Z

    .line 178
    .line 179
    if-eqz v4, :cond_a

    .line 180
    .line 181
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    .line 186
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 187
    .line 188
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 189
    .line 190
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 191
    add-int/2addr v4, v3

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 195
    .line 196
    iget-object v3, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 197
    .line 198
    iget v4, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mTrackIndex:I

    .line 199
    .line 200
    iget-object v6, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v4, v2, v6}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 204
    goto :goto_4

    .line 205
    .line 206
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 207
    .line 208
    const-string v0, "muxer hasn\'t started"

    .line 209
    .line 210
    .line 211
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 212
    throw p1

    .line 213
    .line 214
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 218
    .line 219
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 220
    .line 221
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 222
    .line 223
    and-int/lit8 v1, v1, 0x4

    .line 224
    .line 225
    if-eqz v1, :cond_1

    .line 226
    .line 227
    if-nez p1, :cond_c

    .line 228
    .line 229
    const-string p1, "VideoEncoder"

    .line 230
    .line 231
    const-string v0, "reached end of stream unexpectedly"

    .line 232
    .line 233
    .line 234
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_c
    :goto_5
    return-void

    .line 236
    .line 237
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    const-string v2, "encoderOutputBuffer "

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v1, " was null"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    .line 262
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 263
    throw p1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

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
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mEncoder:Landroid/media/MediaCodec;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;->stop()V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 25
    :cond_1
    return-void
.end method
