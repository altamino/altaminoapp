.class public Lio/agora/rtc/mediaio/AgoraTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoSink;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigAttributes:[I

.field private mDrawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

.field private mEglContext:Lio/agora/rtc/gl/EglBase$Context;

.field private mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroid/view/TextureView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lio/agora/rtc/mediaio/AgoraTextureView;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lio/agora/rtc/mediaio/BaseVideoRenderer;

    sget-object v0, Lio/agora/rtc/mediaio/AgoraTextureView;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    invoke-virtual {p1, p0, p0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setRenderView(Landroid/view/TextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lio/agora/rtc/mediaio/BaseVideoRenderer;

    sget-object p2, Lio/agora/rtc/mediaio/AgoraTextureView;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Lio/agora/rtc/mediaio/BaseVideoRenderer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 6
    invoke-virtual {p1, p0, p0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setRenderView(Landroid/view/TextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public consumeByteArrayFrame([BIIIIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move-wide v6, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->consume([BIIIIJ)V

    .line 12
    return-void
.end method

.method public consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move-wide v6, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->consume(Ljava/nio/ByteBuffer;IIIIJ)V

    .line 12
    return-void
.end method

.method public consumeTextureFrame(IIIIIJ[F)V
    .locals 10
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
            "texId",
            "format",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move v6, p5

    .line 9
    .line 10
    move-wide/from16 v7, p6

    .line 11
    .line 12
    move-object/from16 v9, p8

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v1 .. v9}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->consume(IIIIIJ[F)V

    .line 16
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "io.agora"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getBufferType()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getBufferType()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Buffer type is not set"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0
.end method

.method public getEGLContextHandle()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getEGLContextHandle()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPixelFormat()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getPixelFormat()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Pixel format is not set"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    return-void
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "sharedContext",
            "configAttributes",
            "drawer"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    iput-object p2, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mConfigAttributes:[I

    iput-object p3, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mDrawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    return-void
.end method

.method public onDispose()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->release()V

    .line 6
    return-void
.end method

.method public onInitialize()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mConfigAttributes:[I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mDrawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 11
    .line 12
    iget-object v3, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3, v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 19
    .line 20
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;)V

    .line 24
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 4
    .line 5
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getEglRender()Lio/agora/rtc/gl/EglRenderer;

    .line 9
    move-result-object p1

    .line 10
    sub-int/2addr p4, p2

    .line 11
    int-to-float p2, p4

    .line 12
    sub-int/2addr p5, p3

    .line 13
    int-to-float p3, p5

    .line 14
    div-float/2addr p2, p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lio/agora/rtc/gl/EglRenderer;->setLayoutAspectRatio(F)V

    .line 18
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const-string v0, "io.agora"

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lio/agora/rtc/mediaio/AgoraTextureView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onStart()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->start()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->stop()V

    .line 6
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lio/agora/rtc/mediaio/AgoraTextureView;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "onSurfaceTextureSizeChanged: width- "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p2, ", height: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    return-void
.end method

.method public setBufferType(Lio/agora/rtc/mediaio/MediaIO$BufferType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setBufferType(Lio/agora/rtc/mediaio/MediaIO$BufferType;)V

    .line 6
    return-void
.end method

.method public setMirror(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mirror"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getEglRender()Lio/agora/rtc/gl/EglRenderer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->setMirror(Z)V

    .line 10
    return-void
.end method

.method public setPixelFormat(Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixelFormat"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraTextureView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setPixelFormat(Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V

    .line 6
    return-void
.end method
