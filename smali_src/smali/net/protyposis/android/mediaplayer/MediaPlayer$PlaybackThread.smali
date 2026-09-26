.class Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackThread"
.end annotation


# static fields
.field static final DECODER_SET_SURFACE:I = 0x64

.field private static final PLAYBACK_LOOP:I = 0x4

.field private static final PLAYBACK_PAUSE:I = 0x3

.field private static final PLAYBACK_PAUSE_AUDIO:I = 0x7

.field private static final PLAYBACK_PLAY:I = 0x2

.field private static final PLAYBACK_PREPARE:I = 0x1

.field private static final PLAYBACK_RELEASE:I = 0x6

.field private static final PLAYBACK_SEEK:I = 0x5


# instance fields
.field private mAVLocked:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastBufferingUpdateTime:J

.field private volatile mPaused:Z

.field private mPlaybackSpeed:D

.field private mReleasing:Z

.field private mRenderModeApi21:Z

.field private mRenderingStarted:Z

.field private mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

.field final synthetic this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;


# direct methods
.method public constructor <init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "#"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-class v1, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const/16 v1, -0x10

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mReleasing:Z

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$VideoRenderTimingMode;->isRenderModeApi21()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    iput-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderModeApi21:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderingStarted:Z

    .line 56
    .line 57
    iput-boolean v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mAVLocked:Z

    .line 58
    .line 59
    const-wide/16 v0, 0x0

    .line 60
    .line 61
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mLastBufferingUpdateTime:J

    .line 62
    return-void
.end method

.method static synthetic access$500(Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->release()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private loopInternal()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getCachedDuration()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getDuration()I

    .line 22
    move-result v3

    .line 23
    .line 24
    mul-int/lit16 v3, v3, 0x3e8

    .line 25
    int-to-double v3, v3

    .line 26
    .line 27
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 28
    div-double/2addr v5, v3

    .line 29
    .line 30
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1000(Lnet/protyposis/android/mediaplayer/MediaPlayer;)J

    .line 34
    move-result-wide v3

    .line 35
    add-long/2addr v3, v0

    .line 36
    long-to-double v3, v3

    .line 37
    mul-double/2addr v5, v3

    .line 38
    double-to-int v3, v5

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->updateBufferPercentage(I)V

    .line 42
    .line 43
    :cond_0
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x4

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    if-lez v2, :cond_1

    .line 53
    .line 54
    .line 55
    const-wide/32 v2, 0x1e8480

    .line 56
    .line 57
    cmp-long v0, v0, v2

    .line 58
    .line 59
    if-gez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->hasCacheReachedEndOfStream()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    const-wide/16 v1, 0x64

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    return-void

    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    const-wide/16 v1, 0xa

    .line 92
    const/4 v3, 0x0

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 97
    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Lnet/protyposis/android/mediaplayer/Decoders;->decodeFrame(Z)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 111
    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->isEOS()Z

    .line 122
    move-result v0

    .line 123
    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    return-void

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 134
    move-result-wide v5

    .line 135
    .line 136
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    .line 140
    move-result v0

    .line 141
    .line 142
    const/16 v7, 0xc8

    .line 143
    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$202(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z

    .line 150
    .line 151
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 158
    .line 159
    .line 160
    invoke-static {v8}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 161
    move-result-object v8

    .line 162
    .line 163
    const/16 v9, 0x2be

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v7, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 167
    move-result-object v8

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    .line 172
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 179
    .line 180
    .line 181
    invoke-static {v8}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 182
    move-result-object v8

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    .line 186
    move-result-wide v8

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v8, v9}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 190
    .line 191
    :cond_3
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 192
    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 202
    .line 203
    iget-wide v8, v8, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v8, v9}, Lnet/protyposis/android/mediaplayer/TimeBase;->getOffsetFrom(J)J

    .line 207
    move-result-wide v8

    .line 208
    .line 209
    .line 210
    const-wide/32 v10, 0xea60

    .line 211
    .line 212
    cmp-long v0, v8, v10

    .line 213
    .line 214
    if-lez v0, :cond_4

    .line 215
    .line 216
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 217
    .line 218
    const-wide/16 v1, 0x32

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    return-void

    .line 223
    .line 224
    :cond_4
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 225
    .line 226
    .line 227
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 228
    move-result-object v8

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    .line 232
    move-result-wide v8

    .line 233
    .line 234
    .line 235
    invoke-static {v0, v8, v9}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1002(Lnet/protyposis/android/mediaplayer/MediaPlayer;J)J

    .line 236
    .line 237
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 238
    .line 239
    .line 240
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    if-eqz v0, :cond_5

    .line 248
    .line 249
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 250
    .line 251
    if-eqz v0, :cond_5

    .line 252
    .line 253
    .line 254
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->renderVideoFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    .line 255
    const/4 v0, 0x0

    .line 256
    .line 257
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 258
    .line 259
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderingStarted:Z

    .line 260
    .line 261
    if-eqz v0, :cond_5

    .line 262
    .line 263
    iput-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderingStarted:Z

    .line 264
    .line 265
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 266
    .line 267
    .line 268
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    iget-object v8, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 272
    .line 273
    .line 274
    invoke-static {v8}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 275
    move-result-object v8

    .line 276
    const/4 v9, 0x3

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8, v7, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 280
    move-result-object v7

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    .line 285
    :cond_5
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 286
    .line 287
    .line 288
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 289
    move-result-object v0

    .line 290
    .line 291
    if-eqz v0, :cond_7

    .line 292
    .line 293
    iget-wide v7, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    .line 294
    .line 295
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 296
    .line 297
    .line 298
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 299
    move-result-object v0

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    .line 303
    move-result-wide v9

    .line 304
    .line 305
    cmpl-double v0, v7, v9

    .line 306
    .line 307
    if-eqz v0, :cond_6

    .line 308
    .line 309
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 310
    .line 311
    .line 312
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 313
    move-result-object v0

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    .line 317
    move-result-wide v7

    .line 318
    .line 319
    iput-wide v7, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    .line 320
    .line 321
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 322
    .line 323
    .line 324
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    iget-wide v7, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    .line 328
    double-to-float v7, v7

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v7}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setPlaybackSpeed(F)V

    .line 332
    .line 333
    :cond_6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getCurrentPresentationTimeUs()J

    .line 341
    move-result-wide v7

    .line 342
    .line 343
    sget-wide v9, Lnet/protyposis/android/mediaplayer/AudioPlayback;->PTS_NOT_SET:J

    .line 344
    .line 345
    cmp-long v0, v7, v9

    .line 346
    .line 347
    if-lez v0, :cond_7

    .line 348
    .line 349
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 350
    .line 351
    .line 352
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 353
    move-result-object v0

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->suspectAudioEOS()Z

    .line 357
    move-result v0

    .line 358
    .line 359
    if-nez v0, :cond_7

    .line 360
    .line 361
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 362
    .line 363
    .line 364
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 365
    move-result-object v0

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v7, v8}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 369
    .line 370
    :cond_7
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 371
    .line 372
    .line 373
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 374
    move-result-object v0

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->isEOS()Z

    .line 378
    move-result v0

    .line 379
    .line 380
    const-wide/16 v7, 0x0

    .line 381
    .line 382
    if-eqz v0, :cond_a

    .line 383
    .line 384
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 385
    .line 386
    .line 387
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 388
    move-result-object v0

    .line 389
    const/4 v3, 0x2

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 393
    .line 394
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 395
    .line 396
    .line 397
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    .line 398
    move-result v0

    .line 399
    .line 400
    if-eqz v0, :cond_9

    .line 401
    .line 402
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 403
    .line 404
    .line 405
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 406
    move-result-object v0

    .line 407
    .line 408
    if-eqz v0, :cond_8

    .line 409
    .line 410
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 411
    .line 412
    .line 413
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 414
    move-result-object v0

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->flush()V

    .line 418
    .line 419
    :cond_8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 420
    .line 421
    .line 422
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 423
    move-result-object v0

    .line 424
    .line 425
    sget-object v3, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v3, v7, v8}, Lnet/protyposis/android/mediaplayer/Decoders;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 429
    .line 430
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 431
    .line 432
    .line 433
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 434
    move-result-object v0

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->renderFrames()V

    .line 438
    goto :goto_0

    .line 439
    :cond_9
    const/4 v0, 0x1

    .line 440
    .line 441
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 442
    .line 443
    .line 444
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternal(Z)V

    .line 445
    goto :goto_0

    .line 446
    .line 447
    :cond_a
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 448
    .line 449
    .line 450
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 451
    move-result-object v0

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v3}, Lnet/protyposis/android/mediaplayer/Decoders;->decodeFrame(Z)Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 455
    move-result-object v0

    .line 456
    .line 457
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 458
    .line 459
    :goto_0
    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 460
    .line 461
    if-nez v0, :cond_c

    .line 462
    long-to-double v0, v1

    .line 463
    .line 464
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 465
    .line 466
    .line 467
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 468
    move-result-object v2

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    .line 472
    move-result-wide v2

    .line 473
    div-double/2addr v0, v2

    .line 474
    double-to-long v0, v0

    .line 475
    .line 476
    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 478
    move-result-wide v2

    .line 479
    sub-long/2addr v2, v5

    .line 480
    sub-long/2addr v0, v2

    .line 481
    .line 482
    cmp-long v2, v0, v7

    .line 483
    .line 484
    if-lez v2, :cond_b

    .line 485
    .line 486
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 490
    goto :goto_1

    .line 491
    .line 492
    :cond_b
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    :cond_c
    :goto_1
    return-void
.end method

.method private pauseInternal()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternal(Z)V

    return-void
.end method

.method private pauseInternal(Z)V
    .locals 4

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 2
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v0

    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getQueueBufferTimeUs()J

    move-result-wide v0

    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object v2

    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->getPlaybackBufferTimeUs()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 5
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private pauseInternalAudio()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause()V

    .line 18
    :cond_0
    return-void
.end method

.method private playInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->isEOS()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1002(Lnet/protyposis/android/mediaplayer/MediaPlayer;J)J

    .line 20
    .line 21
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sget-object v3, Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;->FAST_TO_PREVIOUS_SYNC:Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v1, v2}, Lnet/protyposis/android/mediaplayer/Decoders;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    .line 46
    move-result-wide v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 50
    .line 51
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 60
    const/4 v1, 0x7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    .line 65
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->play()V

    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/TimeBase;->getSpeed()D

    .line 82
    move-result-wide v0

    .line 83
    .line 84
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    .line 85
    .line 86
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    iget-wide v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPlaybackSpeed:D

    .line 101
    double-to-float v1, v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->setPlaybackSpeed(F)V

    .line 105
    .line 106
    :cond_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 107
    const/4 v1, 0x4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->loopInternal()V

    .line 114
    return-void
.end method

.method private prepareInternal()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    :try_start_0
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 7
    .line 8
    .line 9
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$800(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 10
    .line 11
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 12
    .line 13
    sget-object v4, Lnet/protyposis/android/mediaplayer/MediaPlayer$State;->PREPARED:Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$902(Lnet/protyposis/android/mediaplayer/MediaPlayer;Lnet/protyposis/android/mediaplayer/MediaPlayer$State;)Lnet/protyposis/android/mediaplayer/MediaPlayer$State;

    .line 17
    .line 18
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_3

    .line 27
    :catch_0
    move-exception v3

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception v3

    .line 30
    goto :goto_1

    .line 31
    :catch_2
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    const-string v5, "prepareAsync() failed: surface might be gone"

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    .line 64
    goto :goto_3

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    const-string v5, "prepareAsync() failed: something is in a wrong state"

    .line 71
    .line 72
    .line 73
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    .line 96
    goto :goto_3

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    const-string v4, "prepareAsync() failed: cannot decode stream(s)"

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    const/16 v4, -0x3ec

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v1, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    .line 130
    :goto_3
    return-void
.end method

.method private release()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mReleasing:Z

    .line 14
    .line 15
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    const/4 v2, 0x6

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    :cond_1
    return v0
.end method

.method private releaseInternal()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->releaseFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    :catch_0
    iput-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->release()V

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->stopAndRelease()V

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1600(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    const-string v2, "PlaybackThread destroyed"

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    monitor-enter v0

    .line 100
    .line 101
    :try_start_1
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1700(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 109
    .line 110
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1702(Lnet/protyposis/android/mediaplayer/MediaPlayer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v0

    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw v1

    .line 119
    :cond_3
    :goto_0
    return-void
.end method

.method private renderVideoFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->endOfStream:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-wide v1, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->presentationTimeUs:J

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lnet/protyposis/android/mediaplayer/TimeBase;->getOffsetFrom(J)J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    const-wide/16 v2, -0x3e8

    .line 33
    .line 34
    cmp-long v2, v0, v2

    .line 35
    .line 36
    if-gez v2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v4, "LAGGING "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    const/16 v4, 0x2bc

    .line 75
    const/4 v5, 0x0

    .line 76
    .line 77
    const/16 v6, 0xc8

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    :cond_1
    iget-boolean v2, p1, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;->representationChanged:Z

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 97
    .line 98
    .line 99
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    iget-object v4, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->getVideoWidth()I

    .line 114
    move-result v4

    .line 115
    .line 116
    iget-object v5, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 117
    .line 118
    .line 119
    invoke-static {v5}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 120
    move-result-object v5

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 124
    move-result-object v5

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->getVideoHeight()I

    .line 128
    move-result v5

    .line 129
    const/4 v6, 0x5

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    .line 138
    :cond_2
    iget-boolean v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mRenderModeApi21:Z

    .line 139
    .line 140
    if-nez v2, :cond_3

    .line 141
    .line 142
    const-wide/16 v2, 0x1388

    .line 143
    .line 144
    cmp-long v2, v0, v2

    .line 145
    .line 146
    if-lez v2, :cond_3

    .line 147
    .line 148
    const-wide/16 v2, 0x3e8

    .line 149
    .line 150
    div-long v2, v0, v2

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 154
    .line 155
    :cond_3
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p1, v0, v1}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->renderFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;J)V

    .line 167
    return-void
.end method

.method private seekInternal(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/AudioPlayback;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/AudioPlayback;->pause(Z)V

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, p1, p2}, Lnet/protyposis/android/mediaplayer/Decoders;->seekTo(Lnet/protyposis/android/mediaplayer/MediaPlayer$SeekMode;J)V

    .line 56
    .line 57
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/TimeBase;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 64
    .line 65
    .line 66
    invoke-static {p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    .line 71
    move-result-wide v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lnet/protyposis/android/mediaplayer/TimeBase;->startAt(J)V

    .line 75
    .line 76
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 77
    const/4 p2, 0x5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 86
    .line 87
    .line 88
    invoke-static {p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->dismissFrames()V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_2
    iget-object p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 96
    .line 97
    .line 98
    invoke-static {p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->renderFrames()V

    .line 103
    .line 104
    :goto_0
    if-nez p1, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lnet/protyposis/android/mediaplayer/Decoders;->getCurrentDecodingPTS()J

    .line 114
    move-result-wide v0

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1002(Lnet/protyposis/android/mediaplayer/MediaPlayer;J)J

    .line 118
    .line 119
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 120
    const/4 p2, 0x0

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1502(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z

    .line 124
    .line 125
    iput-boolean p2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mAVLocked:Z

    .line 126
    .line 127
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 131
    move-result-object p1

    .line 132
    const/4 p2, 0x4

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    .line 137
    iget-boolean p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 138
    .line 139
    if-nez p1, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->playInternal()V

    .line 143
    :cond_3
    return-void
.end method

.method private setVideoSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;->dismissFrame(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mVideoFrameInfo:Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$FrameInfo;

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lnet/protyposis/android/mediaplayer/Decoders;->getVideoDecoder()Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaCodecVideoDecoder;->updateSurface(Landroid/view/Surface;)V

    .line 56
    :cond_1
    return-void
.end method

.method private updateBufferPercentage(I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mLastBufferingUpdateTime:J

    .line 7
    .line 8
    sub-long v2, v0, v2

    .line 9
    .line 10
    const-wide/16 v4, 0x3e8

    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1800(Lnet/protyposis/android/mediaplayer/MediaPlayer;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    iput-wide v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mLastBufferingUpdateTime:J

    .line 25
    .line 26
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1802(Lnet/protyposis/android/mediaplayer/MediaPlayer;I)I

    .line 51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    :try_start_0
    iget-boolean v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mReleasing:Z

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    .line 12
    return v2

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :catch_2
    move-exception p1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    :catch_3
    move-exception p1

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    .line 25
    .line 26
    if-eq v3, v1, :cond_1

    .line 27
    .line 28
    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string/jumbo v3, "unknown/invalid message"

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v0

    .line 40
    .line 41
    .line 42
    :pswitch_0
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternalAudio()V

    .line 43
    return v2

    .line 44
    .line 45
    .line 46
    :pswitch_1
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    .line 47
    return v2

    .line 48
    .line 49
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 55
    move-result-wide v3

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v3, v4}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->seekInternal(J)V

    .line 59
    return v2

    .line 60
    .line 61
    .line 62
    :pswitch_3
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->loopInternal()V

    .line 63
    return v2

    .line 64
    .line 65
    .line 66
    :pswitch_4
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->pauseInternal()V

    .line 67
    return v2

    .line 68
    .line 69
    .line 70
    :pswitch_5
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->playInternal()V

    .line 71
    return v2

    .line 72
    .line 73
    .line 74
    :pswitch_6
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->prepareInternal()V

    .line 75
    return v2

    .line 76
    .line 77
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Landroid/view/Surface;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->setVideoSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return v2

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    const-string v4, "decoder exception"

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    goto :goto_4

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    const-string v3, "decoder error, codec can not be created"

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    const/16 v3, -0x3ec

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    goto :goto_4

    .line 144
    .line 145
    .line 146
    :goto_2
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    const-string v4, "decoder error, too many instances?"

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 161
    .line 162
    .line 163
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    goto :goto_4

    .line 173
    .line 174
    .line 175
    :goto_3
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    const-string v4, "decoder interrupted"

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 184
    .line 185
    .line 186
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    iget-object v3, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 190
    .line 191
    .line 192
    invoke-static {v3}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 193
    move-result-object v3

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .line 202
    .line 203
    :goto_4
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->releaseInternal()V

    .line 204
    return v2

    nop

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 4
    .line 5
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 6
    const/4 v1, 0x3

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mPaused:Z

    .line 4
    .line 5
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 20
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 14
    .line 15
    iput-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "PlaybackThread started"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method
