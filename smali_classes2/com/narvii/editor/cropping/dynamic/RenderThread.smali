.class public final Lcom/narvii/editor/cropping/dynamic/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderThread.kt\ncom/narvii/editor/cropping/dynamic/RenderThread\n*L\n1#1,271:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;

.field private static final TAG:Ljava/lang/String; = "RenderThread"


# instance fields
.field private anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private anotherSurface:Landroid/view/Surface;

.field private anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

.field private editorRect:Landroid/graphics/Rect;

.field private filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private filterNeedReset:Z

.field private filterType:I

.field private mContext:Landroid/content/Context;

.field private mDisplayProjectionMatrix:[F

.field private mDroppedFrames:I

.field private mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

.field public mHandler:Lcom/narvii/editor/cropping/dynamic/RenderHandler;

.field private mOESTextureId:I

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private mPreviousWasDropped:Z

.field private mReady:Z

.field private mRefreshPeriod:J

.field private final mStartLock:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mType:Ljava/lang/String;

.field private mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

.field private renderAnotherSurfaceEnable:Z

.field private transformArray:[F

.field private videoHeight:I

.field private videoWidth:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->Companion:Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Surface;JLcom/narvii/nvplayer/INVPlayer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurface:Landroid/view/Surface;

    .line 38
    iput-object p5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 39
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    .line 40
    iput-wide p3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mRefreshPeriod:J

    const/16 p1, 0x10

    new-array p2, p1, [F

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    const/4 p4, 0x0

    .line 42
    aput p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDisplayProjectionMatrix:[F

    .line 43
    iput-object p6, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mType:Ljava/lang/String;

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 61
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->editorRect:Landroid/graphics/Rect;

    .line 114
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    .line 115
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    .line 125
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoWidth:I

    .line 126
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoHeight:I

    .line 141
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 238
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->transformArray:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final synthetic access$getMPlayer$p(Lcom/narvii/editor/cropping/dynamic/RenderThread;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-object p0
.end method

.method public static final synthetic access$getMSurfaceTexture$p(Lcom/narvii/editor/cropping/dynamic/RenderThread;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mSurfaceTexture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setMPlayer$p(Lcom/narvii/editor/cropping/dynamic/RenderThread;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-void
.end method

.method public static final synthetic access$setMSurfaceTexture$p(Lcom/narvii/editor/cropping/dynamic/RenderThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private final draw()V
    .locals 2

    .line 253
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    const-string v1, "draw start"

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->checkGlError(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 254
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 255
    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 256
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 257
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->drawFrame()V

    return-void

    :cond_0
    const-string v0, "filter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "mSurfaceTexture"

    .line 256
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final prepareGL(Landroid/view/Surface;I)V
    .locals 4

    const-string v0, "RenderThread"

    const-string v1, "prepareGl"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 95
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    .line 97
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createOESTextureObject()I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 98
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 100
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->getLIST()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mType:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mType:Ljava/lang/String;

    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setFilter(Ljava/lang/String;I)V

    .line 103
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/narvii/editor/cropping/dynamic/RenderThread$prepareGL$1;

    invoke-direct {p2, p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread$prepareGL$1;-><init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    .line 107
    invoke-static {p2, p2, p2, p1}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 p1, 0xb71

    .line 108
    invoke-static {p1}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 p1, 0xb44

    .line 109
    invoke-static {p1}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 p1, 0xbe2

    .line 110
    invoke-static {p1}, Landroid/opengl/GLES30;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 111
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    return-void

    :cond_0
    const-string p1, "mWindowSurface"

    .line 95
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "mEglCore"

    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final releaseGL()V
    .locals 2

    .line 247
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    const-string v1, "releaseGl start"

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->checkGlError(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;->release()V

    .line 249
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->makeNothingCurrent()V

    return-void

    :cond_0
    const-string v0, "mEglCore"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "mWindowSurface"

    .line 248
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setFilter(Ljava/lang/String;I)V
    .locals 2

    .line 261
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->setFilter(Ljava/lang/String;ILandroid/content/Context;)Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 262
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    return-void

    :cond_0
    const-string p1, "filter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final setSizeAndTransform()V
    .locals 7

    .line 134
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoHeight:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoWidth:I

    if-le v2, v1, :cond_2

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    if-le v3, v1, :cond_2

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    if-le v4, v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    const/4 v5, 0x0

    const-string v6, "filter"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setVideoAndViewSize(IIII)V

    .line 136
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    mul-int v1, v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    int-to-float v3, v2

    sub-float/2addr v1, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final anotherSurfaceChanged(II)V
    .locals 5

    .line 229
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    if-eqz v0, :cond_3

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 230
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const-string v3, "mWindowSurface"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v2, v2, v4

    int-to-float p1, p1

    div-float/2addr v2, p1

    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, v2, p1, p2, p2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "anotherFilter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public final doFrame(J)V
    .locals 6

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 149
    iget-wide v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mRefreshPeriod:J

    const v4, 0x1e8480

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPreviousWasDropped:Z

    .line 152
    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDroppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDroppedFrames:I

    return-void

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterNeedReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 158
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->release()V

    .line 159
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->getLIST()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    invoke-direct {p0, v0, v3}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setFilter(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterNeedReset:Z

    .line 161
    iput v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    goto :goto_0

    :cond_1
    const-string p1, "filter"

    .line 158
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->draw()V

    .line 168
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    const-string v2, "mWindowSurface"

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const-string v3, "anotherWindowSurface"

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v4, :cond_7

    invoke-virtual {v0, v4}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrentReadFrom(Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 170
    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 171
    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 172
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->drawFrame()V

    .line 189
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->setPresentationTime(J)V

    .line 190
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    .line 192
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "anotherFilter"

    .line 172
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "RenderThread"

    const-string p2, "swapBuffers failed, killing renderer thread"

    .line 198
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->shutDown()V

    :cond_a
    return-void

    .line 195
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mHandler:Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final renderAnotherSurface(Landroid/view/Surface;)V
    .locals 8

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    .line 211
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurface:Landroid/view/Surface;

    .line 212
    new-instance p1, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v2, v3}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 213
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    const-string v4, "BaseFilter"

    invoke-virtual {p1, v4, v0, v2}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->setFilter(Ljava/lang/String;ILandroid/content/Context;)Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 214
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    const-string v0, "anotherFilter"

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const-string v4, "mWindowSurface"

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const-string v6, "anotherWindowSurface"

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RenderThread"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v5, v7, v7}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    .line 217
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->transformArray:[F

    aget v0, v0, v3

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    div-float/2addr v3, v5

    mul-float v0, v0, v3

    invoke-virtual {p1, v0, v7}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p1, "filter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    const-string p1, "mEglCore"

    .line 212
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final resetFilter(I)V
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterNeedReset:Z

    .line 144
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 64
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 65
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;-><init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mHandler:Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 66
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 67
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 68
    :try_start_0
    iput-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mReady:Z

    .line 69
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 70
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    monitor-exit v0

    .line 71
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "RenderThread"

    const-string v2, "looper quit"

    .line 72
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->releaseGL()V

    .line 74
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->release()V

    .line 75
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 76
    :try_start_1
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mReady:Z

    .line 77
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const-string v0, "mEglCore"

    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 67
    monitor-exit v0

    throw v1
.end method

.method public final setMHandler(Lcom/narvii/editor/cropping/dynamic/RenderHandler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mHandler:Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    return-void
.end method

.method public final setVideoEditorRect(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->editorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setVideoSizeChanged(II)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoWidth:I

    .line 129
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoHeight:I

    .line 130
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setSizeAndTransform()V

    return-void
.end method

.method public final setVideoTransform([F)V
    .locals 6

    const-string v0, "floatArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->transformArray:[F

    .line 241
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const-string v1, "anotherWindowSurface"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz v0, :cond_6

    .line 242
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    aget p1, p1, v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v0, v0, v4

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const-string v5, "mWindowSurface"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "filter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_0
    return-void
.end method

.method public final shutDown()V
    .locals 2

    const-string v0, "RenderThread"

    const-string v1, "shutdown"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public final startPlay()V
    .locals 2

    .line 266
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/narvii/editor/cropping/dynamic/RenderThread$startPlay$1;

    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread$startPlay$1;-><init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stopRenderAnotherSurface()V
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurface:Landroid/view/Surface;

    .line 224
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;->release()V

    goto :goto_0

    :cond_0
    const-string v1, "anotherWindowSurface"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final surfaceChanged(II)V
    .locals 9

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 118
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 119
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDisplayProjectionMatrix:[F

    int-to-float v4, p1

    int-to-float v6, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 120
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    .line 121
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    .line 122
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setSizeAndTransform()V

    return-void
.end method

.method public final surfaceCreated(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->prepareGL(Landroid/view/Surface;I)V

    return-void
.end method

.method public final waitUtilReady()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mReady:Z

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 85
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
