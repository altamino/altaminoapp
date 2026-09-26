.class public abstract Lio/agora/rtc/mediaio/TextureSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoSource;
.implements Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# instance fields
.field protected mConsumer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/mediaio/IVideoFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeight:I

.field protected mPixelFormat:I

.field protected mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    iput p3, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    const/16 v0, 0xb

    iput v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mPixelFormat:I

    const-string v0, "TexCamThread"

    .line 2
    invoke-static {v0, p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 4
    invoke-virtual {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->startListening(Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "width",
            "height",
            "copyOesTo2DTex"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    iput p3, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    const/16 v0, 0xb

    iput v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mPixelFormat:I

    const-string v0, "TexCamThreadOesTo2D"

    .line 6
    invoke-static {v0, p1, p4, p2, p3}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;ZII)Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 7
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 8
    invoke-virtual {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->startListening(Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    return-void
.end method


# virtual methods
.method public getBufferType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getCaptureType()I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->CAMERA:Lio/agora/rtc/mediaio/MediaIO$CaptureType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->intValue()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContentHint()I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->NONE:Lio/agora/rtc/mediaio/MediaIO$ContentHint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->intValue()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected abstract onCapturerClosed()V
.end method

.method protected abstract onCapturerOpened()Z
.end method

.method protected abstract onCapturerStarted()Z
.end method

.method protected abstract onCapturerStopped()V
.end method

.method public onDispose()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerClosed()V

    .line 7
    return-void
.end method

.method public onInitialize(Lio/agora/rtc/mediaio/IVideoFrameConsumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerOpened()Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onStart()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerStarted()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onStop()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerStopped()V

    .line 4
    return-void
.end method

.method public onTextureFrameAvailable(ILio/agora/rtc/mediaio/MediaIO$PixelFormat;[FJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "format",
            "transformMatrix",
            "timestampNs"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 2
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oesTextureId",
            "transformMatrix",
            "timestampNs"
        }
    .end annotation

    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 1
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->stopListening()V

    .line 6
    .line 7
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->dispose()V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 14
    return-void
.end method
