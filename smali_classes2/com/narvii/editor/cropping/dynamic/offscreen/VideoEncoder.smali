.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;

.field public static final FRAME_RATE:I = 0x1e

.field public static final I_FRAME_INTERVAL:I = 0x1

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "VideoEncoder"


# instance fields
.field private format:Landroid/media/MediaFormat;

.field private final height:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mFrameIndex:I

.field private mInputSurface:Landroid/view/Surface;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mTrackIndex:I

.field private mediaCodecInitFailed:Z

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder$Companion;

    return-void
.end method

.method public constructor <init>(IIILjava/io/File;)V
    .locals 3

    const-string v0, "outputFile"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->width:I

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->height:I

    .line 24
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 25
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->width:I

    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->height:I

    const-string/jumbo v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "MediaFormat.createVideoF\u2026MIME_TYPE, width, height)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    .line 32
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {p2, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 33
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    invoke-virtual {p2, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 34
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    const-string p3, "frame-rate"

    const/16 v1, 0x1e

    invoke-virtual {p2, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 35
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    const/4 p3, 0x1

    const-string v1, "i-frame-interval"

    invoke-virtual {p2, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    const-string v1, "bitrate-mode"

    invoke-virtual {p2, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 37
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    const-string v0, "MediaCodec.createEncoderByType(MIME_TYPE)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 38
    new-instance p2, Landroid/media/MediaMuxer;

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-direct {p2, p4, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 40
    :try_start_0
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object p4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->format:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-virtual {p2, p4, v1, v1, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p4, "Video Encoder configure exception"

    .line 42
    invoke-static {p4, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iput-boolean p3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    .line 44
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Landroid/media/MediaMuxer;->release()V

    .line 46
    :goto_0
    iget-boolean p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    if-nez p2, :cond_0

    .line 47
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    .line 48
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    .line 49
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    .line 50
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final drainEncoderWithNoTimeOut(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 76
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    .line 81
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    goto :goto_0

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "format changed twice"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ltz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 90
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 91
    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_6

    .line 94
    iget-boolean v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_5

    .line 98
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 100
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mTrackIndex:I

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v1, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "muxer hasn\'t started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 103
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    :goto_2
    return-void

    .line 88
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final getHeight()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->height:I

    return v0
.end method

.method public final getMInputSurface()Landroid/view/Surface;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getMediaCodecInitFailed()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->width:I

    return v0
.end method

.method public final release()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 57
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 58
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 59
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    return-void
.end method

.method public final setMInputSurface(Landroid/view/Surface;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mInputSurface:Landroid/view/Surface;

    return-void
.end method

.method public final setMediaCodecInitFailed(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->mediaCodecInitFailed:Z

    return-void
.end method
