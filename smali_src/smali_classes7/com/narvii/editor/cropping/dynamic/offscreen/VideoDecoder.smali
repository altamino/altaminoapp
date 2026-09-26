.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VideoDecoder"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mMediaFormat:Landroid/media/MediaFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOutputSurface:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVideoHeight:I

.field private mVideoTrack:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "file"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFile:Ljava/io/File;

    .line 11
    .line 12
    new-instance v0, Landroid/media/MediaExtractor;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 18
    const/4 v1, -0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    .line 23
    .line 24
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 37
    move-result p1

    .line 38
    .line 39
    const-string v0, "getTrackFormat(...)"

    .line 40
    .line 41
    if-ltz p1, :cond_1

    .line 42
    const/4 v2, 0x0

    .line 43
    move v3, v2

    .line 44
    .line 45
    :goto_0
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    const-string v5, "mime"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    const/4 v5, 0x2

    .line 62
    const/4 v6, 0x0

    .line 63
    .line 64
    const-string v7, "video/"

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v7, v2, v5, v6}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x1

    .line 70
    .line 71
    if-ne v4, v5, :cond_0

    .line 72
    .line 73
    iput v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_0
    if-eq v3, p1, :cond_1

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    :goto_1
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    .line 82
    .line 83
    if-eq p1, v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 91
    .line 92
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 102
    .line 103
    const-string v0, "width"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 107
    move-result p1

    .line 108
    .line 109
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 112
    .line 113
    const-string v0, "height"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 117
    move-result p1

    .line 118
    .line 119
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    .line 120
    return-void

    .line 121
    .line 122
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 123
    .line 124
    const-string v0, "file contains no video track, please check"

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p1
.end method


# virtual methods
.method public final decode(Landroid/content/Context;)V
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "context"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v2, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFile:Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_18

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$decode$logEvent$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$decode$logEvent$1;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 25
    .line 26
    const-string v3, "mime"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const-string v1, "mime type is null"

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    const-string v3, "createDecoderByType(...)"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    iput-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 50
    .line 51
    const-string v3, "mMediaCodec"

    .line 52
    const/4 v4, 0x0

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 58
    move-object v1, v4

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 62
    .line 63
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 69
    move-object v1, v4

    .line 70
    .line 71
    :cond_2
    iget-object v5, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 72
    .line 73
    iget-object v6, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mOutputSurface:Landroid/view/Surface;

    .line 74
    const/4 v7, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 78
    .line 79
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 80
    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 85
    move-object v1, v4

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 89
    .line 90
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 94
    .line 95
    iget-object v5, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    .line 96
    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-interface {v5}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;->decodeFrameBegin()V

    .line 101
    :cond_4
    move v5, v7

    .line 102
    move v6, v5

    .line 103
    .line 104
    :cond_5
    :goto_0
    if-nez v5, :cond_14

    .line 105
    .line 106
    sget-object v8, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->getStopRenderThread()Z

    .line 110
    move-result v8

    .line 111
    .line 112
    if-nez v8, :cond_14

    .line 113
    .line 114
    const-wide/16 v8, 0x0

    .line 115
    const/4 v10, 0x1

    .line 116
    .line 117
    if-nez v6, :cond_c

    .line 118
    .line 119
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 120
    .line 121
    if-nez v11, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 125
    move-object v11, v4

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {v11, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 129
    move-result v13

    .line 130
    .line 131
    if-lez v13, :cond_c

    .line 132
    .line 133
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 134
    .line 135
    if-nez v11, :cond_7

    .line 136
    .line 137
    .line 138
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 139
    move-object v11, v4

    .line 140
    .line 141
    .line 142
    :cond_7
    invoke-virtual {v11, v13}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 143
    move-result-object v11

    .line 144
    .line 145
    if-nez v11, :cond_8

    .line 146
    .line 147
    const-string v1, "input buffer is null"

    .line 148
    .line 149
    .line 150
    invoke-interface {v2, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void

    .line 152
    .line 153
    :cond_8
    iget-object v12, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12, v11, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 157
    move-result v15

    .line 158
    .line 159
    if-gez v15, :cond_a

    .line 160
    .line 161
    iget-object v6, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 162
    .line 163
    if-nez v6, :cond_9

    .line 164
    .line 165
    .line 166
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 167
    move-object v12, v4

    .line 168
    goto :goto_1

    .line 169
    :cond_9
    move-object v12, v6

    .line 170
    :goto_1
    const/4 v14, 0x0

    .line 171
    const/4 v15, 0x0

    .line 172
    .line 173
    const-wide/16 v16, 0x0

    .line 174
    .line 175
    const/16 v18, 0x4

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 179
    move v6, v10

    .line 180
    goto :goto_3

    .line 181
    .line 182
    :cond_a
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    .line 186
    .line 187
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 191
    move-result-wide v16

    .line 192
    .line 193
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 194
    .line 195
    if-nez v11, :cond_b

    .line 196
    .line 197
    .line 198
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 199
    move-object v12, v4

    .line 200
    goto :goto_2

    .line 201
    :cond_b
    move-object v12, v11

    .line 202
    :goto_2
    const/4 v14, 0x0

    .line 203
    .line 204
    const/16 v18, 0x0

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 208
    .line 209
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z

    .line 213
    .line 214
    :cond_c
    :goto_3
    if-nez v5, :cond_5

    .line 215
    .line 216
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 217
    .line 218
    if-nez v11, :cond_d

    .line 219
    .line 220
    .line 221
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 222
    move-object v11, v4

    .line 223
    .line 224
    .line 225
    :cond_d
    invoke-virtual {v11, v1, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 226
    move-result v11

    .line 227
    const/4 v12, -0x1

    .line 228
    .line 229
    if-eq v11, v12, :cond_5

    .line 230
    const/4 v12, -0x2

    .line 231
    .line 232
    if-ne v11, v12, :cond_f

    .line 233
    .line 234
    iget-object v8, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 235
    .line 236
    if-nez v8, :cond_e

    .line 237
    .line 238
    .line 239
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 240
    move-object v8, v4

    .line 241
    .line 242
    .line 243
    :cond_e
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 244
    move-result-object v8

    .line 245
    .line 246
    const-string v9, "getOutputFormat(...)"

    .line 247
    .line 248
    .line 249
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    :cond_f
    const/4 v12, -0x3

    .line 253
    .line 254
    if-eq v11, v12, :cond_5

    .line 255
    .line 256
    if-ltz v11, :cond_13

    .line 257
    .line 258
    iget v12, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 259
    .line 260
    and-int/lit8 v12, v12, 0x4

    .line 261
    .line 262
    if-eqz v12, :cond_10

    .line 263
    .line 264
    const-string v5, "VideoDecoder"

    .line 265
    .line 266
    const-string v12, "output EOS"

    .line 267
    .line 268
    .line 269
    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move v5, v10

    .line 271
    .line 272
    :cond_10
    iget v12, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 273
    .line 274
    if-eqz v12, :cond_11

    .line 275
    goto :goto_4

    .line 276
    :cond_11
    move v10, v7

    .line 277
    .line 278
    :goto_4
    iget-object v12, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 279
    .line 280
    if-nez v12, :cond_12

    .line 281
    .line 282
    .line 283
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 284
    move-object v12, v4

    .line 285
    .line 286
    .line 287
    :cond_12
    invoke-virtual {v12, v11, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 288
    .line 289
    if-eqz v10, :cond_5

    .line 290
    .line 291
    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 292
    .line 293
    cmp-long v8, v10, v8

    .line 294
    .line 295
    if-ltz v8, :cond_5

    .line 296
    .line 297
    iget-object v8, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    .line 298
    .line 299
    if-eqz v8, :cond_5

    .line 300
    .line 301
    .line 302
    invoke-interface {v8, v10, v11}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;->decodeOneFrame(J)V

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 307
    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    const-string v3, "unexpected result from decoder.dequeueOutputBuffer: "

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v2

    .line 324
    .line 325
    .line 326
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 327
    throw v1

    .line 328
    .line 329
    :cond_14
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 330
    .line 331
    if-nez v1, :cond_15

    .line 332
    .line 333
    .line 334
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 335
    move-object v1, v4

    .line 336
    .line 337
    .line 338
    :cond_15
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 339
    .line 340
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 341
    .line 342
    if-nez v1, :cond_16

    .line 343
    .line 344
    .line 345
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 346
    goto :goto_5

    .line 347
    :cond_16
    move-object v4, v1

    .line 348
    .line 349
    .line 350
    :goto_5
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 351
    .line 352
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 356
    .line 357
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    .line 358
    .line 359
    if-eqz v1, :cond_17

    .line 360
    .line 361
    .line 362
    invoke-interface {v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;->decodeFrameEnd()V

    .line 363
    :cond_17
    return-void

    .line 364
    .line 365
    :cond_18
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 366
    .line 367
    const-string v2, "video file not exist"

    .line 368
    .line 369
    .line 370
    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 371
    throw v1
.end method

.method public final getMFrameCallback()Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    return-object v0
.end method

.method public final getMOutputSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mOutputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getMVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    return v0
.end method

.method public final getMVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    return v0
.end method

.method public final setMFrameCallback(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    return-void
.end method

.method public final setMOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mOutputSurface:Landroid/view/Surface;

    return-void
.end method

.method public final setMVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    return-void
.end method

.method public final setMVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    return-void
.end method
