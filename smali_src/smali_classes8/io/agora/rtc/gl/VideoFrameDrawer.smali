.class public Lio/agora/rtc/gl/VideoFrameDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;,
        Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;
    }
.end annotation


# static fields
.field static final srcPoints:[F


# instance fields
.field private final dstPoints:[F

.field private lastI420Frame:Lio/agora/rtc/gl/VideoFrame;

.field private lastRgbaFrame:Lio/agora/rtc/gl/VideoFrame;

.field private renderHeight:I

.field private final renderMatrix:Landroid/graphics/Matrix;

.field private final renderSize:Landroid/graphics/Point;

.field private renderWidth:I

.field private final rgbaUploader:Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;

.field private final yuvUploader:Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lio/agora/rtc/gl/VideoFrameDrawer;->srcPoints:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x6

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->dstPoints:[F

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Point;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderSize:Landroid/graphics/Point;

    .line 16
    .line 17
    new-instance v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;-><init>(Lio/agora/rtc/gl/VideoFrameDrawer$1;)V

    .line 22
    .line 23
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->yuvUploader:Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    .line 30
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 31
    .line 32
    new-instance v0, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;-><init>(Lio/agora/rtc/gl/VideoFrameDrawer$1;)V

    .line 36
    .line 37
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->rgbaUploader:Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;

    .line 38
    return-void
.end method

.method private calculateTransformedRenderSize(IILandroid/graphics/Matrix;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameWidth",
            "frameHeight",
            "renderMatrix"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderWidth:I

    .line 5
    .line 6
    iput p2, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderHeight:I

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->dstPoints:[F

    .line 10
    .line 11
    sget-object v1, Lio/agora/rtc/gl/VideoFrameDrawer;->srcPoints:[F

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 15
    const/4 p3, 0x0

    .line 16
    move v0, p3

    .line 17
    :goto_0
    const/4 v1, 0x3

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->dstPoints:[F

    .line 23
    .line 24
    mul-int/lit8 v3, v0, 0x2

    .line 25
    .line 26
    aget v4, v1, v3

    .line 27
    int-to-float v5, p1

    .line 28
    mul-float/2addr v4, v5

    .line 29
    .line 30
    aput v4, v1, v3

    .line 31
    add-int/2addr v3, v2

    .line 32
    .line 33
    aget v2, v1, v3

    .line 34
    int-to-float v4, p2

    .line 35
    mul-float/2addr v2, v4

    .line 36
    .line 37
    aput v2, v1, v3

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->dstPoints:[F

    .line 43
    .line 44
    aget p2, p1, p3

    .line 45
    .line 46
    aget v0, p1, v2

    .line 47
    const/4 v3, 0x2

    .line 48
    .line 49
    aget v3, p1, v3

    .line 50
    .line 51
    aget p1, p1, v1

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v0, v3, p1}, Lio/agora/rtc/gl/VideoFrameDrawer;->distance(FFFF)I

    .line 55
    move-result p1

    .line 56
    .line 57
    iput p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderWidth:I

    .line 58
    .line 59
    iget-object p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->dstPoints:[F

    .line 60
    .line 61
    aget p2, p1, p3

    .line 62
    .line 63
    aget p3, p1, v2

    .line 64
    const/4 v0, 0x4

    .line 65
    .line 66
    aget v0, p1, v0

    .line 67
    const/4 v1, 0x5

    .line 68
    .line 69
    aget p1, p1, v1

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p3, v0, p1}, Lio/agora/rtc/gl/VideoFrameDrawer;->distance(FFFF)I

    .line 73
    move-result p1

    .line 74
    .line 75
    iput p1, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderHeight:I

    .line 76
    return-void
.end method

.method private static distance(FFFF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x0",
            "y0",
            "x1",
            "y1"
        }
    .end annotation

    .line 1
    sub-float/2addr p2, p0

    .line 2
    float-to-double v0, p2

    .line 3
    sub-float/2addr p3, p1

    .line 4
    float-to-double p0, p3

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    .line 8
    move-result-wide p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 12
    move-result-wide p0

    .line 13
    long-to-int p0, p0

    .line 14
    return p0
.end method

.method static drawTexture(Lio/agora/rtc/gl/RendererCommon$GlDrawer;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawer",
            "buffer",
            "renderMatrix",
            "frameWidth",
            "frameHeight",
            "viewportX",
            "viewportY",
            "viewportWidth",
            "viewportHeight"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 10
    move-object v1, p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    .line 17
    move-result-object v3

    .line 18
    .line 19
    sget-object v0, Lio/agora/rtc/gl/VideoFrameDrawer$1;->$SwitchMap$io$agora$rtc$gl$VideoFrame$TextureBuffer$Type:[I

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v1

    .line 28
    .line 29
    aget v0, v0, v1

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    const/4 v1, 0x2

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTextureId()I

    .line 39
    move-result v2

    .line 40
    move-object v1, p0

    .line 41
    move v4, p3

    .line 42
    move v5, p4

    .line 43
    move v6, p5

    .line 44
    .line 45
    move/from16 v7, p6

    .line 46
    .line 47
    move/from16 v8, p7

    .line 48
    .line 49
    move/from16 v9, p8

    .line 50
    .line 51
    .line 52
    invoke-interface/range {v1 .. v9}, Lio/agora/rtc/gl/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    const-string v1, "Unknown texture type."

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;->getTextureId()I

    .line 65
    move-result v2

    .line 66
    move-object v1, p0

    .line 67
    move v4, p3

    .line 68
    move v5, p4

    .line 69
    move v6, p5

    .line 70
    .line 71
    move/from16 v7, p6

    .line 72
    .line 73
    move/from16 v8, p7

    .line 74
    .line 75
    move/from16 v9, p8

    .line 76
    .line 77
    .line 78
    invoke-interface/range {v1 .. v9}, Lio/agora/rtc/gl/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    .line 79
    :goto_0
    return-void
.end method


# virtual methods
.method public drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frame",
            "drawer"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/agora/rtc/gl/VideoFrameDrawer;->drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "drawer",
            "additionalRenderMatrix"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getRotatedWidth()I

    move-result v6

    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getRotatedHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-virtual/range {v0 .. v7}, Lio/agora/rtc/gl/VideoFrameDrawer;->drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    return-void
.end method

.method public drawFrame(Lio/agora/rtc/gl/VideoFrame;Lio/agora/rtc/gl/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "drawer",
            "additionalRenderMatrix",
            "viewportX",
            "viewportY",
            "viewportWidth",
            "viewportHeight"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 4
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getRotatedWidth()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getRotatedHeight()I

    move-result v4

    .line 6
    invoke-direct {p0, v3, v4, p3}, Lio/agora/rtc/gl/VideoFrameDrawer;->calculateTransformedRenderSize(IILandroid/graphics/Matrix;)V

    .line 7
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getBuffer()Lio/agora/rtc/gl/VideoFrame$Buffer;

    move-result-object v3

    instance-of v3, v3, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    .line 8
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getBuffer()Lio/agora/rtc/gl/VideoFrame$Buffer;

    move-result-object v4

    instance-of v4, v4, Lio/agora/rtc/gl/RgbaBuffer;

    iget-object v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 9
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x3f000000    # 0.5f

    .line 10
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-nez v3, :cond_0

    iget-object v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    .line 11
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_0
    iget-object v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 12
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getRotation()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v6, -0x41000000    # -0.5f

    .line 13
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v2, :cond_1

    iget-object v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 14
    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    if-eqz v3, :cond_2

    const/4 v2, 0x0

    iput-object v2, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastI420Frame:Lio/agora/rtc/gl/VideoFrame;

    iput-object v2, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastRgbaFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 15
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getBuffer()Lio/agora/rtc/gl/VideoFrame$Buffer;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    iget-object v4, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    iget v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lio/agora/rtc/gl/VideoFrameDrawer;->drawTexture(Lio/agora/rtc/gl/RendererCommon$GlDrawer;Lio/agora/rtc/gl/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    goto/16 :goto_0

    :cond_2
    if-eqz v4, :cond_4

    iget-object v2, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastRgbaFrame:Lio/agora/rtc/gl/VideoFrame;

    if-eq v1, v2, :cond_3

    iput-object v1, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastRgbaFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 16
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getBuffer()Lio/agora/rtc/gl/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/gl/RgbaBuffer;

    iget-object v2, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->rgbaUploader:Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;

    .line 17
    invoke-virtual {v1}, Lio/agora/rtc/gl/RgbaBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lio/agora/rtc/gl/RgbaBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lio/agora/rtc/gl/RgbaBuffer;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->uploadData(Ljava/nio/ByteBuffer;II)I

    .line 18
    invoke-virtual {v1}, Lio/agora/rtc/gl/RgbaBuffer;->release()V

    :cond_3
    iget-object v1, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->rgbaUploader:Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;

    .line 19
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->getTextureId()I

    move-result v3

    iget-object v1, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 20
    invoke-static {v1}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v4

    iget v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 21
    invoke-interface/range {v2 .. v10}, Lio/agora/rtc/gl/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastI420Frame:Lio/agora/rtc/gl/VideoFrame;

    if-eq v1, v2, :cond_5

    iput-object v1, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastI420Frame:Lio/agora/rtc/gl/VideoFrame;

    .line 22
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->getBuffer()Lio/agora/rtc/gl/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    move-result-object v1

    iget-object v2, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->yuvUploader:Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;

    .line 23
    invoke-virtual {v2, v1}, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->uploadFromBuffer(Lio/agora/rtc/gl/VideoFrame$I420Buffer;)[I

    .line 24
    invoke-interface {v1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    :cond_5
    iget-object v1, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->yuvUploader:Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;

    .line 25
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->getYuvTextures()[I

    move-result-object v3

    iget-object v1, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 26
    invoke-static {v1}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v4

    iget v5, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lio/agora/rtc/gl/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 27
    invoke-interface/range {v2 .. v10}, Lio/agora/rtc/gl/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->yuvUploader:Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->release()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastI420Frame:Lio/agora/rtc/gl/VideoFrame;

    .line 9
    .line 10
    iget-object v1, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->rgbaUploader:Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrameDrawer$RGBAUploader;->release()V

    .line 14
    .line 15
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer;->lastRgbaFrame:Lio/agora/rtc/gl/VideoFrame;

    .line 16
    return-void
.end method
