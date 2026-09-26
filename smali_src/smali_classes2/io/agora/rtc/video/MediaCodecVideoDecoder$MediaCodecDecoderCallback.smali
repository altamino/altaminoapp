.class Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaCodecDecoderCallback"
.end annotation


# instance fields
.field final availableInputIndexes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field isObsolete:Z

.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/MediaCodecVideoDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->isObsolete:Z

    .line 9
    .line 10
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 16
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "e"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "onError "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "MediaCodecVideoDecoder"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "index"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 3
    monitor-enter p1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p2

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "info"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v15, p2

    .line 5
    .line 6
    move-object/from16 v0, p3

    .line 7
    monitor-enter p0

    .line 8
    .line 9
    :try_start_0
    iget-boolean v2, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->isObsolete:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v0, "MediaCodecVideoDecoder"

    .line 14
    .line 15
    const-string v2, "discarding output as this callback is obsolete."

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    :try_start_1
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$000(Lio/agora/rtc/video/MediaCodecVideoDecoder;)Landroid/media/MediaCodec;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v15}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    const-string v0, "MediaCodecVideoDecoder"

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v3, "failed to get output buffer, index: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    move v3, v15

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_1
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$400(Lio/agora/rtc/video/MediaCodecVideoDecoder;)Ljava/util/Queue;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    move-result v2

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    const-string v0, "MediaCodecVideoDecoder"

    .line 78
    .line 79
    const-string v2, "decodeStartTimeMs empty, dropping decoded output"

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_2
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$400(Lio/agora/rtc/video/MediaCodecVideoDecoder;)Ljava/util/Queue;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    check-cast v2, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;

    .line 97
    .line 98
    iget-object v3, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 99
    const/4 v5, 0x1

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v5}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$502(Lio/agora/rtc/video/MediaCodecVideoDecoder;Z)Z

    .line 103
    .line 104
    iget-object v3, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$400(Lio/agora/rtc/video/MediaCodecVideoDecoder;)Ljava/util/Queue;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 112
    move-result v3

    .line 113
    int-to-long v13, v3

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 117
    move-result-wide v5

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->access$100(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J

    .line 121
    move-result-wide v7

    .line 122
    sub-long/2addr v5, v7

    .line 123
    .line 124
    const-wide/16 v7, 0x7d0

    .line 125
    .line 126
    cmp-long v3, v5, v7

    .line 127
    .line 128
    if-lez v3, :cond_3

    .line 129
    .line 130
    const-string v3, "MediaCodecVideoDecoder"

    .line 131
    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    const-string v10, "Very high decode time: "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v5, "ms."

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v5

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v5}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    move-wide/from16 v16, v7

    .line 158
    goto :goto_0

    .line 159
    .line 160
    :cond_3
    move-wide/from16 v16, v5

    .line 161
    .line 162
    :goto_0
    new-instance v11, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 163
    .line 164
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 165
    .line 166
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 167
    .line 168
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 169
    .line 170
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 174
    move-result-wide v7

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->access$200(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J

    .line 178
    move-result-wide v9

    .line 179
    .line 180
    .line 181
    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->access$300(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J

    .line 182
    move-result-wide v18

    .line 183
    .line 184
    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 186
    move-result-wide v20

    .line 187
    move-object v2, v11

    .line 188
    .line 189
    move/from16 v3, p2

    .line 190
    move-object v0, v11

    .line 191
    .line 192
    move-wide/from16 v11, v18

    .line 193
    .line 194
    move-wide/from16 v18, v13

    .line 195
    .line 196
    move-wide/from16 v13, v16

    .line 197
    .line 198
    move-wide/from16 v15, v20

    .line 199
    .line 200
    move-wide/from16 v17, v18

    .line 201
    .line 202
    .line 203
    invoke-direct/range {v2 .. v18}, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;-><init>(ILjava/nio/ByteBuffer;IIJJJJJJ)V

    .line 204
    .line 205
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 206
    .line 207
    .line 208
    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoDecoder;)J

    .line 209
    move-result-wide v3

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v0, v3, v4}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$700(Lio/agora/rtc/video/MediaCodecVideoDecoder;Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;J)V

    .line 213
    .line 214
    :goto_1
    iget-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$000(Lio/agora/rtc/video/MediaCodecVideoDecoder;)Landroid/media/MediaCodec;

    .line 218
    move-result-object v0

    .line 219
    const/4 v2, 0x0

    .line 220
    .line 221
    move/from16 v3, p2

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 227
    .line 228
    :goto_2
    const-string v2, "MediaCodecVideoDecoder"

    .line 229
    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    const-string v5, "getOutputBuffer exception, index: "

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object v3

    .line 246
    .line 247
    .line 248
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    monitor-exit p0

    .line 250
    return-void

    .line 251
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    throw v0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "format"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "onOutputFormatChanged "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string v0, "MediaCodecVideoDecoder"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->access$800(Lio/agora/rtc/video/MediaCodecVideoDecoder;Landroid/media/MediaFormat;)V

    .line 28
    return-void
.end method
