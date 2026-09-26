.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FRAME_RATE:I = 0x1e

.field public static final I_FRAME_INTERVAL:I = 0x1

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VideoEncoder"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private format:Landroid/media/MediaFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final height:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mEncoder:Landroid/media/MediaCodec;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mFrameIndex:I

.field private mInputSurface:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mMuxer:Landroid/media/MediaMuxer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mMuxerStarted:Z

.field private mTrackIndex:I

.field private mediaCodecInitFailed:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;

    return-void
.end method

.method public constructor <init>(IIILjava/io/File;)V
    .locals 3
    .param p4    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outputFile"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->width:I

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->height:I

    .line 13
    .line 14
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 20
    .line 21
    const-string v0, "video/avc"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string p2, "createVideoFormat(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    .line 33
    const/4 p2, -0x1

    .line 34
    .line 35
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    .line 36
    .line 37
    const-string v1, "color-format"

    .line 38
    .line 39
    .line 40
    const v2, 0x7f000789

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    .line 46
    .line 47
    const-string v1, "bitrate"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    .line 53
    .line 54
    const-string p3, "frame-rate"

    .line 55
    .line 56
    const/16 v1, 0x1e

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    .line 62
    .line 63
    const-string p3, "i-frame-interval"

    .line 64
    const/4 v1, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    .line 70
    .line 71
    const-string p3, "bitrate-mode"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-string p3, "createEncoderByType(...)"

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 86
    .line 87
    new-instance p1, Landroid/media/MediaMuxer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 91
    move-result-object p3

    .line 92
    const/4 p4, 0x0

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p3, p4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 98
    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 100
    .line 101
    iget-object p3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    .line 102
    const/4 v0, 0x0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p3, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    .line 109
    const-string p3, "Video Encoder configure exception"

    .line 110
    .line 111
    .line 112
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/media/MediaMuxer;->release()V

    .line 120
    .line 121
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    .line 122
    .line 123
    if-nez p1, :cond_0

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 137
    .line 138
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    .line 139
    .line 140
    iput-boolean p4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public final drainEncoderWithNoTimeOut(Z)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 8
    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    :cond_1
    const/4 v1, -0x2

    .line 26
    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "getOutputFormat(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 48
    move-result v0

    .line 49
    .line 50
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 56
    const/4 v0, 0x1

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string v0, "format changed twice"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    .line 69
    :cond_3
    if-ltz v0, :cond_0

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    if-eqz v1, :cond_7

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 80
    .line 81
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 82
    .line 83
    and-int/lit8 v3, v3, 0x2

    .line 84
    const/4 v4, 0x0

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 89
    .line 90
    :cond_4
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 91
    .line 92
    if-eqz v3, :cond_6

    .line 93
    .line 94
    iget-boolean v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 104
    .line 105
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 106
    .line 107
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 108
    add-int/2addr v3, v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 114
    .line 115
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    .line 116
    .line 117
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3, v1, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 124
    .line 125
    const-string v0, "muxer hasn\'t started"

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1

    .line 130
    .line 131
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 137
    .line 138
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 139
    .line 140
    and-int/lit8 v0, v0, 0x4

    .line 141
    .line 142
    if-eqz v0, :cond_0

    .line 143
    :goto_2
    return-void

    .line 144
    .line 145
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    const-string v2, "encoderOutputBuffer "

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v0, " is null"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    throw p1
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->height:I

    return v0
.end method

.method public final getMInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getMediaCodecInitFailed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->width:I

    return v0
.end method

.method public final release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 28
    return-void
.end method

.method public final setMInputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    return-void
.end method

.method public final setMediaCodecInitFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    return-void
.end method
