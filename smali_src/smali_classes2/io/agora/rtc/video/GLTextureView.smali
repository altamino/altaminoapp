.class public Lio/agora/rtc/video/GLTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/GLTextureView$GLThreadManager;,
        Lio/agora/rtc/video/GLTextureView$LogWriter;,
        Lio/agora/rtc/video/GLTextureView$GLThread;,
        Lio/agora/rtc/video/GLTextureView$EglHelper;,
        Lio/agora/rtc/video/GLTextureView$SimpleEGLConfigChooser;,
        Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;,
        Lio/agora/rtc/video/GLTextureView$BaseConfigChooser;,
        Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;,
        Lio/agora/rtc/video/GLTextureView$DefaultWindowSurfaceFactory;,
        Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;,
        Lio/agora/rtc/video/GLTextureView$DefaultContextFactory;,
        Lio/agora/rtc/video/GLTextureView$EGLContextFactory;,
        Lio/agora/rtc/video/GLTextureView$Renderer;,
        Lio/agora/rtc/video/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_GL_STATE:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lio/agora/rtc/video/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lio/agora/rtc/video/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

.field private mGLWrapper:Lio/agora/rtc/video/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lio/agora/rtc/video/GLTextureView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/video/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/agora/rtc/video/GLTextureView$GLThreadManager;-><init>(Lio/agora/rtc/video/GLTextureView$1;)V

    .line 7
    .line 8
    sput-object v0, Lio/agora/rtc/video/GLTextureView;->sGLThreadManager:Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
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
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView;->init()V

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
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView;->init()V

    return-void
.end method

.method static synthetic access$1000(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$Renderer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/GLTextureView;->mRenderer:Lio/agora/rtc/video/GLTextureView$Renderer;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lio/agora/rtc/video/GLTextureView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLContextClientVersion:I

    .line 3
    return p0
.end method

.method static synthetic access$300(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLConfigChooser:Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$EGLContextFactory;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLContextFactory:Lio/agora/rtc/video/GLTextureView$EGLContextFactory;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLWindowSurfaceFactory:Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;

    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lio/agora/rtc/video/GLTextureView;)Lio/agora/rtc/video/GLTextureView$GLWrapper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/GLTextureView;->mGLWrapper:Lio/agora/rtc/video/GLTextureView$GLWrapper;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lio/agora/rtc/video/GLTextureView;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/video/GLTextureView;->mDebugFlags:I

    .line 3
    return p0
.end method

.method static synthetic access$800()Lio/agora/rtc/video/GLTextureView$GLThreadManager;
    .locals 1

    sget-object v0, Lio/agora/rtc/video/GLTextureView;->sGLThreadManager:Lio/agora/rtc/video/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lio/agora/rtc/video/GLTextureView;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/video/GLTextureView;->mPreserveEGLContextOnPause:Z

    .line 3
    return p0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "setRenderer has already been called for this instance."

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private init()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "io.agora"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 18
    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/video/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->getRenderMode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/agora/rtc/video/GLTextureView;->mDetached:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mRenderer:Lio/agora/rtc/video/GLTextureView$Renderer;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->getRenderMode()I

    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    .line 24
    :goto_0
    new-instance v2, Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 25
    .line 26
    iget-object v3, p0, Lio/agora/rtc/video/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lio/agora/rtc/video/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 30
    .line 31
    iput-object v2, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->setRenderMode(I)V

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    .line 44
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView;->mDetached:Z

    .line 45
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->requestExitAndWait()V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/agora/rtc/video/GLTextureView;->mDetached:Z

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 14
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
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
            "v",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 4
    move-result-object p1

    .line 5
    sub-int/2addr p4, p2

    .line 6
    sub-int/2addr p5, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p4, p5}, Lio/agora/rtc/video/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 11
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

    invoke-virtual {p0, v0, v0}, Lio/agora/rtc/video/GLTextureView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->onPause()V

    .line 6
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->onResume()V

    .line 6
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
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
    .line 3
    invoke-virtual {p0, p1}, Lio/agora/rtc/video/GLTextureView;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/agora/rtc/video/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/agora/rtc/video/GLTextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
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
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/agora/rtc/video/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 5
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

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/agora/rtc/video/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/video/GLTextureView$GLThread;->requestRender()V

    .line 6
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugFlags"
        }
    .end annotation

    iput p1, p0, Lio/agora/rtc/video/GLTextureView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9
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
            "redSize",
            "greenSize",
            "blueSize",
            "alphaSize",
            "depthSize",
            "stencilSize"
        }
    .end annotation

    .line 3
    new-instance v8, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;-><init>(Lio/agora/rtc/video/GLTextureView;IIIIII)V

    invoke-virtual {p0, v8}, Lio/agora/rtc/video/GLTextureView;->setEGLConfigChooser(Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configChooser"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView;->checkRenderThreadState()V

    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mEGLConfigChooser:Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needDepth"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/agora/rtc/video/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/video/GLTextureView$SimpleEGLConfigChooser;-><init>(Lio/agora/rtc/video/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lio/agora/rtc/video/GLTextureView;->setEGLConfigChooser(Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView;->checkRenderThreadState()V

    .line 4
    .line 5
    iput p1, p0, Lio/agora/rtc/video/GLTextureView;->mEGLContextClientVersion:I

    .line 6
    return-void
.end method

.method public setEGLContextFactory(Lio/agora/rtc/video/GLTextureView$EGLContextFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView;->checkRenderThreadState()V

    .line 4
    .line 5
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mEGLContextFactory:Lio/agora/rtc/video/GLTextureView$EGLContextFactory;

    .line 6
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factory"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView;->checkRenderThreadState()V

    .line 4
    .line 5
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mEGLWindowSurfaceFactory:Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;

    .line 6
    return-void
.end method

.method public setGLWrapper(Lio/agora/rtc/video/GLTextureView$GLWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "glWrapper"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mGLWrapper:Lio/agora/rtc/video/GLTextureView$GLWrapper;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preserveOnPause"
        }
    .end annotation

    iput-boolean p1, p0, Lio/agora/rtc/video/GLTextureView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMode"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/agora/rtc/video/GLTextureView$GLThread;->setRenderMode(I)V

    .line 6
    return-void
.end method

.method public setRenderer(Lio/agora/rtc/video/GLTextureView$Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/GLTextureView;->checkRenderThreadState()V

    .line 4
    .line 5
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLConfigChooser:Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lio/agora/rtc/video/GLTextureView$SimpleEGLConfigChooser;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lio/agora/rtc/video/GLTextureView$SimpleEGLConfigChooser;-><init>(Lio/agora/rtc/video/GLTextureView;Z)V

    .line 14
    .line 15
    iput-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLConfigChooser:Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLContextFactory:Lio/agora/rtc/video/GLTextureView$EGLContextFactory;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lio/agora/rtc/video/GLTextureView$DefaultContextFactory;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lio/agora/rtc/video/GLTextureView$DefaultContextFactory;-><init>(Lio/agora/rtc/video/GLTextureView;Lio/agora/rtc/video/GLTextureView$1;)V

    .line 26
    .line 27
    iput-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLContextFactory:Lio/agora/rtc/video/GLTextureView$EGLContextFactory;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLWindowSurfaceFactory:Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Lio/agora/rtc/video/GLTextureView$DefaultWindowSurfaceFactory;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lio/agora/rtc/video/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lio/agora/rtc/video/GLTextureView$1;)V

    .line 37
    .line 38
    iput-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mEGLWindowSurfaceFactory:Lio/agora/rtc/video/GLTextureView$EGLWindowSurfaceFactory;

    .line 39
    .line 40
    :cond_2
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mRenderer:Lio/agora/rtc/video/GLTextureView$Renderer;

    .line 41
    .line 42
    new-instance p1, Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 43
    .line 44
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Lio/agora/rtc/video/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 48
    .line 49
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texture",
            "format",
            "w",
            "h"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3, p4}, Lio/agora/rtc/video/GLTextureView$GLThread;->onWindowResize(II)V

    .line 6
    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lio/agora/rtc/video/GLTextureView$GLThread;->surfaceCreated()V

    .line 6
    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/GLTextureView;->mGLThread:Lio/agora/rtc/video/GLTextureView$GLThread;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lio/agora/rtc/video/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 6
    return-void
.end method
