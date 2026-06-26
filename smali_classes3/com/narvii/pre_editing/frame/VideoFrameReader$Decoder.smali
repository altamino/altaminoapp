.class final Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;
.super Ljava/lang/Object;
.source "VideoFrameReader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/frame/VideoFrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Decoder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoFrameReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoFrameReader.kt\ncom/narvii/pre_editing/frame/VideoFrameReader$Decoder\n*L\n1#1,326:1\n*E\n"
.end annotation


# instance fields
.field private final bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private codec:Landroid/media/MediaCodec;

.field private decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

.field private final rotation:I

.field private videoBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;I)V
    .locals 7

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string v0, "width"

    .line 175
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    .line 176
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "rotation-degrees"

    .line 177
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 178
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 179
    invoke-virtual {p1, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 177
    :goto_0
    iput v5, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->rotation:I

    .line 184
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int v1, v1, p2

    .line 185
    div-int/2addr v1, v3

    .line 186
    new-instance v3, Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    invoke-direct {v3, v1, p2}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;-><init>(II)V

    iput-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    const-string v3, "mime"

    .line 188
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 193
    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 195
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    invoke-virtual {p2}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {v3, p1, p2, v0, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string p1, "mediaCodec"

    .line 196
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 197
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 198
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string p2, "codec.inputBuffers"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final dequeueInputBuffer(J)I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1

    return p1
.end method

.method public final flush()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public final getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getVideoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->videoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final release()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method

.method public final setVideoBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->videoBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final tryExtractFrame(ZJ)Z
    .locals 10

    .line 213
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, -0x3

    if-ne v0, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    if-gez v0, :cond_3

    return v2

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 227
    :goto_0
    iget-object v4, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    .line 228
    :cond_5
    iget-object v4, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v1, :cond_8

    if-nez p1, :cond_6

    .line 229
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long p1, v0, p2

    if-ltz p1, :cond_8

    .line 231
    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    invoke-virtual {p1}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->awaitNewImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 235
    :goto_1
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    invoke-virtual {p1, v2}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->drawImage(Z)V

    .line 236
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    iget p2, p1, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 237
    iget p1, p1, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 236
    invoke-static {p2, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 238
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    invoke-virtual {p2, p1}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    iget p2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->rotation:I

    if-eqz p2, :cond_7

    .line 241
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    iget p2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->rotation:I

    int-to-float p2, p2

    invoke-virtual {v8, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string p2, "rawOutput"

    .line 243
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p2

    .line 240
    :cond_7
    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->videoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    move v1, v3

    :goto_2
    return v1
.end method
