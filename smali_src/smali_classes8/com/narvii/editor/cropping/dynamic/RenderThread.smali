.class public final Lcom/narvii/editor/cropping/dynamic/RenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RenderThread"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private anotherSurface:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

.field private editorRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private filterNeedReset:Z

.field private filterType:I

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDisplayProjectionMatrix:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDroppedFrames:I

.field private mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

.field public mHandler:Lcom/narvii/editor/cropping/dynamic/RenderHandler;

.field private mOESTextureId:I

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPreviousWasDropped:Z

.field private mReady:Z

.field private mRefreshPeriod:J

.field private final mStartLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

.field private renderAnotherSurfaceEnable:Z

.field private transformArray:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoHeight:I

.field private videoWidth:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->Companion:Lcom/narvii/editor/cropping/dynamic/RenderThread$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Surface;JLcom/narvii/nvplayer/INVPlayer;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/nvplayer/INVPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "surface"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "player"

    .line 13
    .line 14
    .line 15
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "type"

    .line 18
    .line 19
    .line 20
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurface:Landroid/view/Surface;

    .line 33
    .line 34
    iput-object p5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iput-wide p3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mRefreshPeriod:J

    .line 39
    .line 40
    const/16 p1, 0x10

    .line 41
    .line 42
    new-array p2, p1, [F

    .line 43
    const/4 p3, 0x0

    .line 44
    .line 45
    :goto_0
    if-ge p3, p1, :cond_0

    .line 46
    const/4 p4, 0x0

    .line 47
    .line 48
    aput p4, p2, p3

    .line 49
    .line 50
    add-int/lit8 p3, p3, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDisplayProjectionMatrix:[F

    .line 54
    .line 55
    iput-object p6, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mType:Ljava/lang/String;

    .line 56
    const/4 p1, -0x1

    .line 57
    .line 58
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 59
    .line 60
    new-instance p2, Landroid/graphics/Rect;

    .line 61
    .line 62
    .line 63
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .line 65
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->editorRect:Landroid/graphics/Rect;

    .line 66
    .line 67
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    .line 68
    .line 69
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    .line 70
    .line 71
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoWidth:I

    .line 72
    .line 73
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoHeight:I

    .line 74
    .line 75
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    .line 76
    const/4 p1, 0x2

    .line 77
    .line 78
    new-array p1, p1, [F

    .line 79
    .line 80
    .line 81
    fill-array-data p1, :array_0

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->transformArray:[F

    .line 84
    return-void

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->prepareGL$lambda$3(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->startPlay$lambda$4(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    return-void
.end method

.method private final draw()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 3
    .line 4
    const-string v1, "draw start"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->checkGlError(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 14
    .line 15
    const/16 v0, 0x4000

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "mSurfaceTexture"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    move-object v0, v1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "filter"

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v1, v0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->drawFrame()V

    .line 47
    return-void
.end method

.method private final prepareGL(Landroid/view/Surface;I)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "RenderThread"

    .line 3
    .line 4
    const-string v1, "prepareGl"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "mEglCore"

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1, v2}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;Landroid/view/Surface;Z)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    .line 29
    .line 30
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createOESTextureObject()I

    .line 34
    move-result p1

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 37
    .line 38
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 39
    .line 40
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 46
    .line 47
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->getLIST()Ljava/util/List;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mType:Ljava/lang/String;

    .line 60
    .line 61
    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setFilter(Ljava/lang/String;I)V

    .line 65
    .line 66
    new-instance p1, Landroid/os/Handler;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    .line 77
    new-instance p2, Lcom/narvii/editor/cropping/dynamic/e;

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, p0}, Lcom/narvii/editor/cropping/dynamic/e;-><init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    const/high16 p1, 0x3f800000    # 1.0f

    .line 86
    const/4 p2, 0x0

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p2, p2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 90
    .line 91
    const/16 p1, 0xb71

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 95
    .line 96
    const/16 p1, 0xb44

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 100
    .line 101
    const/16 p1, 0xbe2

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 105
    .line 106
    const/16 p1, 0x302

    .line 107
    .line 108
    const/16 p2, 0x303

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 112
    return-void
.end method

.method private static final prepareGL$lambda$3(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 8
    .line 9
    new-instance v1, Landroid/view/Surface;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, "mSurfaceTexture"

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    const/4 p0, 0x0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {v1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 26
    return-void
.end method

.method private final releaseGL()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 3
    .line 4
    const-string v1, "releaseGl start"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->checkGlError(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "mWindowSurface"

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    move-object v0, v1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;->release()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "mEglCore"

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v1, v0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->makeNothingCurrent()V

    .line 36
    return-void
.end method

.method private final setFilter(Ljava/lang/String;I)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->setFilter(Ljava/lang/String;ILandroid/content/Context;)Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "filter"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    .line 22
    return-void
.end method

.method private final setSizeAndTransform()V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoHeight:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-le v0, v1, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoWidth:I

    .line 8
    .line 9
    if-le v0, v1, :cond_2

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    .line 12
    .line 13
    if-le v0, v1, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    .line 16
    .line 17
    if-le v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    const-string v2, "filter"

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    move-object v0, v1

    .line 29
    .line 30
    :cond_0
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoWidth:I

    .line 31
    .line 32
    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoHeight:I

    .line 33
    .line 34
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    .line 35
    .line 36
    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setVideoAndViewSize(IIII)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v1, v0

    .line 49
    .line 50
    :goto_0
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    .line 51
    mul-int/2addr v0, v0

    .line 52
    int-to-float v0, v0

    .line 53
    .line 54
    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    mul-float/2addr v0, v2

    .line 56
    .line 57
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    .line 58
    int-to-float v3, v2

    .line 59
    div-float/2addr v0, v3

    .line 60
    int-to-float v3, v2

    .line 61
    sub-float/2addr v0, v3

    .line 62
    const/4 v3, 0x2

    .line 63
    int-to-float v3, v3

    .line 64
    div-float/2addr v0, v3

    .line 65
    int-to-float v2, v2

    .line 66
    div-float/2addr v0, v2

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    .line 71
    :cond_2
    return-void
.end method

.method private static final startPlay$lambda$4(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 12
    return-void
.end method


# virtual methods
.method public final anotherSurfaceChanged(II)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-lez p1, :cond_3

    .line 7
    .line 8
    if-lez p2, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "anotherFilter"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    move-object v0, v1

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 22
    .line 23
    const-string v3, "mWindowSurface"

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    move-object v2, v1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    .line 36
    const/high16 v4, 0x3f800000    # 1.0f

    .line 37
    mul-float/2addr v2, v4

    .line 38
    int-to-float p1, p1

    .line 39
    div-float/2addr v2, p1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v1, p1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 52
    move-result p1

    .line 53
    int-to-float p1, p1

    .line 54
    mul-float/2addr p1, v4

    .line 55
    int-to-float p2, p2

    .line 56
    div-float/2addr p1, p2

    .line 57
    const/4 p2, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, p1, p2, p2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    .line 61
    :cond_3
    return-void
.end method

.method public final doFrame(J)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mRefreshPeriod:J

    .line 8
    .line 9
    .line 10
    const v4, 0x1e8480

    .line 11
    int-to-long v4, v4

    .line 12
    sub-long/2addr v2, v4

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mPreviousWasDropped:Z

    .line 20
    .line 21
    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDroppedFrames:I

    .line 22
    add-int/2addr p2, p1

    .line 23
    .line 24
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDroppedFrames:I

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterNeedReset:Z

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    .line 33
    const/4 v2, -0x1

    .line 34
    .line 35
    if-eq v0, v2, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "filter"

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 45
    move-object v0, v1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->release()V

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->getLIST()Ljava/util/List;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Ljava/lang/String;

    .line 63
    .line 64
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v0, v3}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setFilter(Ljava/lang/String;I)V

    .line 68
    const/4 v0, 0x0

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterNeedReset:Z

    .line 71
    .line 72
    iput v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->draw()V

    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    .line 78
    .line 79
    const-string v2, "mWindowSurface"

    .line 80
    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 84
    .line 85
    const-string v3, "anotherWindowSurface"

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 91
    move-object v0, v1

    .line 92
    .line 93
    :cond_3
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 94
    .line 95
    if-nez v4, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 99
    move-object v4, v1

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {v0, v4}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrentReadFrom(Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;)V

    .line 103
    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    .line 105
    const/4 v4, 0x0

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 109
    .line 110
    const/16 v0, 0x4000

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 116
    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    const-string v0, "anotherFilter"

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 123
    move-object v0, v1

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->drawFrame()V

    .line 127
    .line 128
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 129
    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    .line 133
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 134
    move-object v0, v1

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->setPresentationTime(J)V

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 140
    .line 141
    if-nez p1, :cond_7

    .line 142
    .line 143
    .line 144
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 145
    move-object p1, v1

    .line 146
    .line 147
    .line 148
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 151
    .line 152
    if-nez p1, :cond_8

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 156
    move-object p1, v1

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    .line 160
    .line 161
    :cond_9
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 162
    .line 163
    if-nez p1, :cond_a

    .line 164
    .line 165
    .line 166
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 167
    goto :goto_0

    .line 168
    :cond_a
    move-object v1, p1

    .line 169
    .line 170
    .line 171
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    .line 172
    move-result p1

    .line 173
    .line 174
    if-nez p1, :cond_b

    .line 175
    .line 176
    const-string p1, "RenderThread"

    .line 177
    .line 178
    const-string p2, "swapBuffers failed, killing renderer thread"

    .line 179
    .line 180
    .line 181
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->shutDown()V

    .line 185
    :cond_b
    return-void
.end method

.method public final getMHandler()Lcom/narvii/editor/cropping/dynamic/RenderHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mHandler:Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "mHandler"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final renderAnotherSurface(Landroid/view/Surface;)V
    .locals 8
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "surface"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurface:Landroid/view/Surface;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "mEglCore"

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 23
    move-object v0, v1

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurface:Landroid/view/Surface;

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0, v2, v3}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;Landroid/view/Surface;Z)V

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 32
    .line 33
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    .line 34
    .line 35
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mOESTextureId:I

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-string v4, "BaseFilter"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v4, v0, v2}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;->setFilter(Ljava/lang/String;ILandroid/content/Context;)Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 46
    .line 47
    const-string v0, "anotherFilter"

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 53
    move-object p1, v1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 64
    .line 65
    const-string v4, "mWindowSurface"

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 71
    move-object v2, v1

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 75
    move-result v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const/16 v2, 0x20

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 86
    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 91
    move-object v5, v1

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 95
    move-result v5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 104
    .line 105
    const-string v6, "anotherWindowSurface"

    .line 106
    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 111
    move-object v5, v1

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 115
    move-result v5

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 124
    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 129
    move-object v2, v1

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 133
    move-result v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    const-string v2, "RenderThread"

    .line 143
    .line 144
    .line 145
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 148
    .line 149
    if-nez p1, :cond_6

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 153
    move-object p1, v1

    .line 154
    .line 155
    :cond_6
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 156
    .line 157
    if-nez v0, :cond_7

    .line 158
    .line 159
    .line 160
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 161
    move-object v0, v1

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 165
    move-result v0

    .line 166
    int-to-float v0, v0

    .line 167
    .line 168
    const/high16 v2, 0x3f800000    # 1.0f

    .line 169
    mul-float/2addr v0, v2

    .line 170
    .line 171
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 172
    .line 173
    if-nez v5, :cond_8

    .line 174
    .line 175
    .line 176
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 177
    move-object v5, v1

    .line 178
    .line 179
    .line 180
    :cond_8
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 181
    move-result v5

    .line 182
    int-to-float v5, v5

    .line 183
    div-float/2addr v0, v5

    .line 184
    .line 185
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 186
    .line 187
    if-nez v5, :cond_9

    .line 188
    .line 189
    .line 190
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 191
    move-object v5, v1

    .line 192
    .line 193
    .line 194
    :cond_9
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 195
    move-result v5

    .line 196
    int-to-float v5, v5

    .line 197
    mul-float/2addr v5, v2

    .line 198
    .line 199
    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 200
    .line 201
    if-nez v7, :cond_a

    .line 202
    .line 203
    .line 204
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 205
    move-object v7, v1

    .line 206
    .line 207
    .line 208
    :cond_a
    invoke-virtual {v7}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 209
    move-result v7

    .line 210
    int-to-float v7, v7

    .line 211
    div-float/2addr v5, v7

    .line 212
    const/4 v7, 0x0

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0, v5, v7, v7}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    .line 216
    .line 217
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 218
    .line 219
    if-nez p1, :cond_b

    .line 220
    .line 221
    const-string p1, "filter"

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 225
    move-object p1, v1

    .line 226
    .line 227
    :cond_b
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->transformArray:[F

    .line 228
    .line 229
    aget v0, v0, v3

    .line 230
    .line 231
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 232
    .line 233
    if-nez v3, :cond_c

    .line 234
    .line 235
    .line 236
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 237
    move-object v3, v1

    .line 238
    .line 239
    .line 240
    :cond_c
    invoke-virtual {v3}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 241
    move-result v3

    .line 242
    int-to-float v3, v3

    .line 243
    mul-float/2addr v3, v2

    .line 244
    .line 245
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 246
    .line 247
    if-nez v5, :cond_d

    .line 248
    .line 249
    .line 250
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 251
    move-object v5, v1

    .line 252
    .line 253
    .line 254
    :cond_d
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 255
    move-result v5

    .line 256
    int-to-float v5, v5

    .line 257
    div-float/2addr v3, v5

    .line 258
    .line 259
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 260
    .line 261
    if-nez v5, :cond_e

    .line 262
    .line 263
    .line 264
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 265
    move-object v5, v1

    .line 266
    .line 267
    .line 268
    :cond_e
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 269
    move-result v5

    .line 270
    int-to-float v5, v5

    .line 271
    mul-float/2addr v5, v2

    .line 272
    .line 273
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 274
    .line 275
    if-nez v2, :cond_f

    .line 276
    .line 277
    .line 278
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 279
    goto :goto_0

    .line 280
    :cond_f
    move-object v1, v2

    .line 281
    .line 282
    .line 283
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 284
    move-result v1

    .line 285
    int-to-float v1, v1

    .line 286
    div-float/2addr v5, v1

    .line 287
    div-float/2addr v3, v5

    .line 288
    mul-float/2addr v0, v3

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v0, v7}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    .line 292
    return-void
.end method

.method public final resetFilter(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterNeedReset:Z

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filterType:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/RenderHandler;-><init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setMHandler(Lcom/narvii/editor/cropping/dynamic/RenderHandler;)V

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 14
    const/4 v1, 0x3

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    :try_start_0
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mReady:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 32
    .line 33
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    monitor-exit v0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 38
    .line 39
    const-string v0, "RenderThread"

    .line 40
    .line 41
    const-string v1, "looper quit"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->releaseGL()V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    const-string v0, "mEglCore"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v2, v0

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->release()V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 64
    monitor-enter v0

    .line 65
    const/4 v1, 0x0

    .line 66
    .line 67
    :try_start_1
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0

    .line 72
    throw v1

    .line 73
    :catchall_1
    move-exception v1

    .line 74
    monitor-exit v0

    .line 75
    throw v1
.end method

.method public final setMHandler(Lcom/narvii/editor/cropping/dynamic/RenderHandler;)V
    .locals 1
    .param p1    # Lcom/narvii/editor/cropping/dynamic/RenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mHandler:Lcom/narvii/editor/cropping/dynamic/RenderHandler;

    return-void
.end method

.method public final setVideoEditorRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->editorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setVideoSizeChanged(II)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoWidth:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->videoHeight:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setSizeAndTransform()V

    .line 8
    return-void
.end method

.method public final setVideoTransform([F)V
    .locals 6
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
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->transformArray:[F

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 14
    .line 15
    const-string v1, "anotherWindowSurface"

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "filter"

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 31
    move-object v0, v2

    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    .line 34
    aget p1, p1, v3

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 42
    move-object v3, v2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    .line 49
    const/high16 v4, 0x3f800000    # 1.0f

    .line 50
    mul-float/2addr v3, v4

    .line 51
    .line 52
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 53
    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 58
    move-object v5, v2

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 62
    move-result v1

    .line 63
    int-to-float v1, v1

    .line 64
    div-float/2addr v3, v1

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 67
    .line 68
    const-string v5, "mWindowSurface"

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 74
    move-object v1, v2

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 78
    move-result v1

    .line 79
    int-to-float v1, v1

    .line 80
    mul-float/2addr v1, v4

    .line 81
    .line 82
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 83
    .line 84
    if-nez v4, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    move-object v2, v4

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 93
    move-result v2

    .line 94
    int-to-float v2, v2

    .line 95
    div-float/2addr v1, v2

    .line 96
    div-float/2addr v3, v1

    .line 97
    mul-float/2addr p1, v3

    .line 98
    const/4 v1, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1, v1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    .line 102
    :cond_6
    return-void
.end method

.method public final shutDown()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "RenderThread"

    .line 3
    .line 4
    const-string v1, "shutdown"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 17
    :cond_0
    return-void
.end method

.method public final startPlay()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/editor/cropping/dynamic/d;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/dynamic/d;-><init>(Lcom/narvii/editor/cropping/dynamic/RenderThread;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method

.method public final stopRenderAnotherSurface()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->renderAnotherSurfaceEnable:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherSurface:Landroid/view/Surface;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->anotherWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "anotherWindowSurface"

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;->release()V

    .line 25
    :cond_1
    return-void
.end method

.method public final surfaceChanged(II)V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "surfaceChanged "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 v1, 0x78

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "RenderThread"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mDisplayProjectionMatrix:[F

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    int-to-float v4, p1

    .line 40
    const/4 v5, 0x0

    .line 41
    int-to-float v6, p2

    .line 42
    .line 43
    const/high16 v7, -0x40800000    # -1.0f

    .line 44
    .line 45
    const/high16 v8, 0x3f800000    # 1.0f

    .line 46
    .line 47
    .line 48
    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 49
    .line 50
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewWidth:I

    .line 51
    .line 52
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->viewHeight:I

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->setSizeAndTransform()V

    .line 56
    return-void
.end method

.method public final surfaceCreated(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/cropping/dynamic/RenderThread;->prepareGL(Landroid/view/Surface;I)V

    .line 6
    return-void
.end method

.method public final waitUtilReady()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mReady:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/RenderThread;->mStartLock:Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0

    .line 21
    throw v1
.end method
