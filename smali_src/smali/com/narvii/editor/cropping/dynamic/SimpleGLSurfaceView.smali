.class public final Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/Choreographer$FrameCallback;
.implements Lcom/narvii/editor/cropping/dynamic/SimpleGLView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;
    }
.end annotation


# instance fields
.field private glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isPlaying:Z

.field private mFilterType:I

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private mSurface:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final startPlayWhenResume()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->startPlay()V

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    .line 19
    return-void
.end method


# virtual methods
.method public final anotherSurfaceChanged(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->anotherSurfaceChanged(II)V

    .line 16
    :cond_1
    return-void
.end method

.method public changeFilter(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mFilterType:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->changeFilter(I)V

    .line 18
    :cond_1
    return-void
.end method

.method public doFrame(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendDoFrame(J)V

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;->surfaceDoFrame()V

    .line 30
    :cond_2
    return-void
.end method

.method public final getGlSurfaceDoFrameListener()Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public initViews(Lcom/narvii/nvplayer/INVPlayer;I)V
    .locals 1
    .param p1    # Lcom/narvii/nvplayer/INVPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "playerTool"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 8
    .line 9
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mFilterType:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 17
    return-void
.end method

.method public final isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    return v0
.end method

.method public renderAnotherSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->renderAnotherSurface(Landroid/view/Surface;)V

    .line 16
    :cond_1
    return-void
.end method

.method public final setGlSurfaceDoFrameListener(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;)V
    .locals 0
    .param p1    # Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;

    return-void
.end method

.method public final setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    return-void
.end method

.method public final setTransform([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "floatArray"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->setVideoTransform([F)V

    .line 21
    :cond_1
    return-void
.end method

.method public setVideoEditorRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->setVideoEditorRect(Landroid/graphics/Rect;)V

    .line 21
    :cond_1
    return-void
.end method

.method public final setVideoSize(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->setVideoSizeChanged(II)V

    .line 16
    :cond_1
    return-void
.end method

.method public stopRenderAnotherSurface()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->stopRenderAnotherSurface()V

    .line 16
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendSurfaceChanged(III)V

    .line 21
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 9
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mSurface:Landroid/view/Surface;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const-string v1, "getContext(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    const-string p1, "getSurface(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    const-string v4, "null cannot be cast to non-null type android.app.Activity"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v1, Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->getDisplayRefreshNsec(Landroid/app/Activity;)J

    .line 48
    move-result-wide v4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 51
    const/4 v8, 0x0

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    const-string p1, "mPlayer"

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 59
    move-object v6, v8

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v6, p1

    .line 62
    .line 63
    :goto_0
    const-string v7, "BaseFilter"

    .line 64
    move-object v1, v0

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/narvii/editor/cropping/dynamic/RenderThread;-><init>(Landroid/content/Context;Landroid/view/Surface;JLcom/narvii/nvplayer/INVPlayer;Ljava/lang/String;)V

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->waitUtilReady()V

    .line 80
    .line 81
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 87
    move-result-object v8

    .line 88
    .line 89
    :cond_2
    if-eqz v8, :cond_3

    .line 90
    .line 91
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mFilterType:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendSurfaceCreated(I)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 102
    .line 103
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->startPlayWhenResume()V

    .line 109
    :cond_4
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mSurface:Landroid/view/Surface;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p1

    .line 19
    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendShutDown()V

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 31
    .line 32
    :cond_2
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 40
    return-void
.end method
