.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;

.field private static final TAG:Ljava/lang/String; = "VideoDecoder"


# instance fields
.field private mFile:Ljava/io/File;

.field private mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mOutputSurface:Landroid/view/Surface;

.field private mVideoHeight:I

.field private mVideoTrack:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 7

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFile:Ljava/io/File;

    .line 20
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    .line 23
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    .line 24
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    .line 29
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 32
    :goto_0
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 33
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string/jumbo v6, "video/"

    invoke-static {v3, v6, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    iput v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    goto :goto_1

    :cond_0
    if-eq v2, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    if-eq p1, v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 43
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "mMediaExtractor.getTrackFormat(mVideoTrack)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 44
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    .line 45
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "file contains no video track, please check"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final decode()V
    .locals 18

    move-object/from16 v0, p0

    .line 49
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 56
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const-string v2, "MediaCodec.createDecoder\u2026ng(MediaFormat.KEY_MIME))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 57
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const-string v2, "mMediaCodec"

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 58
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_14

    iget-object v4, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    iget-object v5, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mOutputSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 59
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 63
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 66
    iget-object v4, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;->decodeFrameBegin()V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-nez v4, :cond_f

    .line 68
    sget-object v7, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    invoke-virtual {v7}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->getStopRenderThread()Z

    move-result v7

    if-nez v7, :cond_f

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_7

    .line 71
    iget-object v10, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v10, :cond_6

    invoke-virtual {v10, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    if-lez v12, :cond_7

    .line 73
    iget-object v10, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v10, :cond_5

    invoke-virtual {v10, v12}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 76
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v10, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    if-gez v14, :cond_3

    .line 79
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v11, :cond_2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x4

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_3
    iget-object v10, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    iget v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoTrack:I

    .line 86
    iget-object v10, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v15

    .line 87
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v11, :cond_4

    const/4 v13, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 88
    iget-object v10, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 87
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_1
    if-nez v4, :cond_1

    .line 96
    iget-object v10, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v10, :cond_e

    invoke-virtual {v10, v1, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    const/4 v11, -0x2

    if-ne v10, v11, :cond_9

    .line 101
    iget-object v7, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    const/4 v11, -0x3

    if-eq v10, v11, :cond_1

    if-ltz v10, :cond_d

    .line 110
    iget v11, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_a

    const-string v4, "VideoDecoder"

    const-string v11, "output EOS"

    .line 111
    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 115
    :cond_a
    iget v11, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v11, :cond_b

    goto :goto_2

    :cond_b
    const/4 v9, 0x0

    .line 116
    :goto_2
    iget-object v11, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v11, :cond_c

    invoke-virtual {v11, v10, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v9, :cond_1

    .line 117
    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v11, v9, v7

    if-ltz v11, :cond_1

    .line 118
    iget-object v7, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    if-eqz v7, :cond_1

    invoke-interface {v7, v9, v10}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;->decodeOneFrame(J)V

    goto/16 :goto_0

    .line 116
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_f
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 124
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 125
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 126
    iget-object v1, v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;->decodeFrameEnd()V

    :cond_10
    return-void

    .line 124
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_12
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_16
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "video file not exist"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final getMFrameCallback()Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    return-object v0
.end method

.method public final getMOutputSurface()Landroid/view/Surface;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mOutputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public final getMVideoHeight()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    return v0
.end method

.method public final getMVideoWidth()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    return v0
.end method

.method public final setMFrameCallback(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mFrameCallback:Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;

    return-void
.end method

.method public final setMOutputSurface(Landroid/view/Surface;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mOutputSurface:Landroid/view/Surface;

    return-void
.end method

.method public final setMVideoHeight(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoHeight:I

    return-void
.end method

.method public final setMVideoWidth(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->mVideoWidth:I

    return-void
.end method
