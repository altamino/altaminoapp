.class final Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/frame/VideoFrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Decoder"
.end annotation


# instance fields
.field private final bufferInfo:Landroid/media/MediaCodec$BufferInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private codec:Landroid/media/MediaCodec;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private decoderInputBuffers:[Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rotation:I

.field private videoBitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;I)V
    .locals 7
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "format"

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
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 16
    .line 17
    const-string v0, "width"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 21
    move-result v1

    .line 22
    .line 23
    const-string v2, "height"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 27
    move-result v3

    .line 28
    .line 29
    const-string v4, "rotation-degrees"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x0

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 40
    move-result v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v5, v6

    .line 46
    .line 47
    :goto_0
    iput v5, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->rotation:I

    .line 48
    .line 49
    .line 50
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    .line 51
    move-result p2

    .line 52
    mul-int/2addr v1, p2

    .line 53
    div-int/2addr v1, v3

    .line 54
    .line 55
    new-instance v3, Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v1, p2}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;-><init>(II)V

    .line 59
    .line 60
    iput-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    .line 61
    .line 62
    const-string v3, "mime"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    const-string v3, ""

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    const-string v4, "createDecoderByType(...)"

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    .line 87
    iget-object p2, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->getSurface()Landroid/view/Surface;

    .line 91
    move-result-object p2

    .line 92
    const/4 v0, 0x0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, p1, p2, v0, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 96
    .line 97
    iput-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    const-string p2, "getInputBuffers(...)"

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 114
    return-void
.end method


# virtual methods
.method public final dequeueInputBuffer(J)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final flush()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 6
    return-void
.end method

.method public final getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public final getVideoBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->videoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 11
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 6
    return-void
.end method

.method public final setVideoBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->videoBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final tryExtractFrame(ZJ)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 5
    .line 6
    const-wide/16 v2, 0x2710

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eq v0, v1, :cond_6

    .line 15
    const/4 v1, -0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_6

    .line 18
    const/4 v1, -0x2

    .line 19
    .line 20
    if-eq v0, v1, :cond_6

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    return v1

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 27
    .line 28
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 29
    .line 30
    and-int/lit8 v4, v4, 0x4

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    move v4, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v4, v2

    .line 36
    .line 37
    :goto_0
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    move v2, v1

    .line 41
    .line 42
    :cond_2
    iget-object v3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->codec:Landroid/media/MediaCodec;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 46
    .line 47
    if-eqz v2, :cond_5

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    .line 53
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 54
    .line 55
    cmp-long p1, v2, p2

    .line 56
    .line 57
    if-ltz p1, :cond_5

    .line 58
    .line 59
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->awaitNewImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    :catch_0
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->drawImage(Z)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    .line 70
    .line 71
    iget p2, p1, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 72
    .line 73
    iget p1, p1, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 74
    .line 75
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 76
    .line 77
    .line 78
    invoke-static {p2, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    const-string p2, "createBitmap(...)"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    iget-object p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->outputSurface:Lcom/narvii/pre_editing/frame/CodecOutputSurface;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p1}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    iget p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->rotation:I

    .line 92
    .line 93
    if-eqz p3, :cond_4

    .line 94
    .line 95
    new-instance v7, Landroid/graphics/Matrix;

    .line 96
    .line 97
    .line 98
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 99
    .line 100
    iget p3, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->rotation:I

    .line 101
    int-to-float p3, p3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v4, 0x0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 110
    move-result v5

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 114
    move-result v6

    .line 115
    const/4 v8, 0x1

    .line 116
    move-object v2, p1

    .line 117
    .line 118
    .line 119
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 120
    move-result-object p3

    .line 121
    .line 122
    .line 123
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    move-object p1, p3

    .line 128
    .line 129
    :cond_4
    iput-object p1, p0, Lcom/narvii/pre_editing/frame/VideoFrameReader$Decoder;->videoBitmap:Landroid/graphics/Bitmap;

    .line 130
    move v2, v1

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    move v2, v4

    .line 133
    :cond_6
    :goto_1
    return v2
.end method
