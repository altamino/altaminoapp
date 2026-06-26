.class public final Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SimpleGLSurfaceView.kt"

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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;

.field private isPlaying:Z

.field private mFilterType:I

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private mSurface:Landroid/view/Surface;

.field private renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final startPlayWhenResume()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->startPlay()V

    :cond_1
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final anotherSurfaceChanged(II)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->anotherSurfaceChanged(II)V

    :cond_1
    return-void
.end method

.method public changeFilter(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mFilterType:I

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->changeFilter(I)V

    :cond_1
    return-void
.end method

.method public doFrame(J)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendDoFrame(J)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;->surfaceDoFrame()V

    :cond_2
    return-void
.end method

.method public final getGlSurfaceDoFrameListener()Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public initViews(Lcom/narvii/nvplayer/INVPlayer;I)V
    .locals 1

    const-string v0, "playerTool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 24
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mFilterType:I

    .line 25
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public final isPlaying()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    return v0
.end method

.method public renderAnotherSurface(Landroid/view/Surface;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->renderAnotherSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public final setGlSurfaceDoFrameListener(Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->glSurfaceDoFrameListener:Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView$IGLSurfaceDoFrame;

    return-void
.end method

.method public final setPlaying(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    return-void
.end method

.method public final setTransform([F)V
    .locals 1

    const-string v0, "floatArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->setVideoTransform([F)V

    :cond_1
    return-void
.end method

.method public setVideoEditorRect(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->setVideoEditorRect(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final setVideoSize(II)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->setVideoSizeChanged(II)V

    :cond_1
    return-void
.end method

.method public stopRenderAnotherSurface()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->stopRenderAnotherSurface()V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendSurfaceChanged(III)V

    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mSurface:Landroid/view/Surface;

    .line 31
    new-instance v1, Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 32
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v2, "context"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 33
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const-string p1, "holder!!.surface"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->getDisplayRefreshNsec(Landroid/app/Activity;)J

    move-result-wide v5

    .line 35
    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz v7, :cond_6

    const-string v8, "BaseFilter"

    move-object v2, v1

    .line 31
    invoke-direct/range {v2 .. v8}, Lcom/narvii/editor/cropping/dynamic/RenderThread;-><init>(Landroid/content/Context;Landroid/view/Surface;JLcom/narvii/nvplayer/INVPlayer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 38
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->waitUtilReady()V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 41
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mFilterType:I

    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendSurfaceCreated(I)V

    .line 42
    :cond_4
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 44
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->isPlaying:Z

    if-eqz p1, :cond_5

    .line 45
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->startPlayWhenResume()V

    :cond_5
    return-void

    :cond_6
    const-string p1, "mPlayer"

    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->mSurface:Landroid/view/Surface;

    .line 63
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;->sendShutDown()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 66
    :cond_2
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/SimpleGLSurfaceView;->renderThread:Lcom/narvii/editor/cropping/dynamic/RenderThread;

    .line 67
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
