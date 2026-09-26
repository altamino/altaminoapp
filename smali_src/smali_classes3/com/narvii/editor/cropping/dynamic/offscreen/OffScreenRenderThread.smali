.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HEIGHT:I = 0x500

.field private static final TAG:Ljava/lang/String; = "OffScreenRenderThread"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WIDTH:I = 0x2d0


# instance fields
.field private beginTime:J

.field private filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private fixRatio:F

.field private frames:I

.field private lastRatio:F

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDestFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

.field private mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

.field private mOESTextureId:I

.field private mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

.field private mOutOutSurface:Landroid/view/Surface;

.field private mReady:Z

.field private mRecordWidth:F

.field public mRenderHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

.field private mSourceFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mStartLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

.field private mVideoEditorPosArray:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

.field private recordingEnable:Z

.field private final size:I

.field private totalFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;[FII)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [F
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
    const-string v0, "source"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "dest"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "offScreenActivityHandler"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "videoEditorPosArray"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSourceFile:Ljava/io/File;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mDestFile:Ljava/io/File;

    .line 35
    .line 36
    iput-object p4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 37
    const/4 p1, -0x1

    .line 38
    .line 39
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    .line 40
    .line 41
    new-instance p2, Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    .line 47
    .line 48
    iput-object p5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEditorPosArray:[F

    .line 49
    int-to-float p2, p6

    .line 50
    .line 51
    const/high16 p3, 0x3f800000    # 1.0f

    .line 52
    mul-float/2addr p2, p3

    .line 53
    int-to-float p3, p7

    .line 54
    div-float/2addr p2, p3

    .line 55
    .line 56
    const/high16 p3, 0x3f100000    # 0.5625f

    .line 57
    div-float/2addr p2, p3

    .line 58
    .line 59
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->fixRatio:F

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 63
    move-result-wide p2

    .line 64
    .line 65
    iput-wide p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->beginTime:J

    .line 66
    .line 67
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEditorPosArray:[F

    .line 68
    const/4 p3, 0x0

    .line 69
    .line 70
    aget p3, p2, p3

    .line 71
    const/4 p4, 0x0

    .line 72
    .line 73
    cmpl-float p5, p3, p4

    .line 74
    .line 75
    if-lez p5, :cond_0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move p3, p4

    .line 78
    .line 79
    :goto_0
    iput p3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    .line 80
    array-length p2, p2

    .line 81
    .line 82
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->size:I

    .line 83
    .line 84
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    .line 85
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
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

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
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

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

.method private final muxerVideoAndAudio()V
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;->INSTANCE:Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSourceFile:Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "getPath(...)"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance v3, Ljava/io/File;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    const-string v5, "gltest.mp4"

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mDestFile:Ljava/io/File;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v3, v4}, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;->muxeVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 48
    .line 49
    const/16 v1, 0x64

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->sendOffscreenProgress(I)V

    .line 53
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
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "mOffScreenWindowSurface"

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
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;->release()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

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


# virtual methods
.method public decodeFrameBegin()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;->decodeFrameBegin(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->beginTime:J

    .line 10
    return-void
.end method

.method public decodeFrameEnd()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;->decodeFrameEnd(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 6
    .line 7
    const-string v1, "mVideoEncoder"

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    move-object v0, v2

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->drainEncoderWithNoTimeOut(Z)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "mInputWindowSurface"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    move-object v0, v2

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;->release()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object v2, v0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->release()V

    .line 44
    .line 45
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->getStopRenderThread()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->muxerVideoAndAudio()V

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->sendOffscreenEnd()V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    .line 72
    return-void
.end method

.method public decodeOneFrame(J)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    .line 7
    .line 8
    rem-int/lit8 v2, v1, 0x1e

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x64

    .line 15
    div-int/2addr v1, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->sendOffscreenProgress(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->draw()V

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->recordingEnable:Z

    .line 24
    .line 25
    const-string v1, "mOffScreenWindowSurface"

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-eqz v0, :cond_b

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 31
    .line 32
    const-string v3, "mInputWindowSurface"

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 38
    move-object v0, v2

    .line 39
    .line 40
    :cond_1
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 46
    move-object v4, v2

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0, v4}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrentReadFrom(Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;)V

    .line 50
    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    const/4 v4, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 56
    .line 57
    const/16 v0, 0x4000

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 61
    .line 62
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    .line 63
    .line 64
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    .line 65
    .line 66
    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->size:I

    .line 67
    .line 68
    if-ge v5, v6, :cond_4

    .line 69
    .line 70
    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEditorPosArray:[F

    .line 71
    .line 72
    aget v5, v6, v5

    .line 73
    .line 74
    cmpg-float v6, v5, v4

    .line 75
    .line 76
    if-gez v6, :cond_3

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v0, v5

    .line 79
    .line 80
    :goto_0
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    .line 81
    .line 82
    :cond_4
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 83
    .line 84
    const-string v5, "mEncoderFilter"

    .line 85
    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 90
    move-object v0, v2

    .line 91
    .line 92
    :cond_5
    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    .line 93
    .line 94
    iget v7, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->fixRatio:F

    .line 95
    mul-float/2addr v6, v7

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v6, v4}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 101
    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    .line 105
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 106
    move-object v0, v2

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->drawFrame()V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 112
    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 117
    move-object v0, v2

    .line 118
    .line 119
    :cond_7
    const/16 v4, 0x3e8

    .line 120
    int-to-long v4, v4

    .line 121
    mul-long/2addr p1, v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->setPresentationTime(J)V

    .line 125
    .line 126
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 127
    .line 128
    if-nez p1, :cond_8

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 132
    move-object p1, v2

    .line 133
    .line 134
    .line 135
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    .line 136
    .line 137
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 138
    .line 139
    if-nez p1, :cond_9

    .line 140
    .line 141
    const-string p1, "mVideoEncoder"

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 145
    move-object p1, v2

    .line 146
    :cond_9
    const/4 p2, 0x0

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->drainEncoderWithNoTimeOut(Z)V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 152
    .line 153
    if-nez p1, :cond_a

    .line 154
    .line 155
    .line 156
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 157
    move-object p1, v2

    .line 158
    .line 159
    .line 160
    :cond_a
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    .line 161
    .line 162
    :cond_b
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    .line 163
    .line 164
    add-int/lit8 p1, p1, 0x1

    .line 165
    .line 166
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 169
    .line 170
    if-nez p1, :cond_c

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 174
    goto :goto_1

    .line 175
    :cond_c
    move-object v2, p1

    .line 176
    .line 177
    .line 178
    :goto_1
    invoke-virtual {v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    .line 179
    move-result p1

    .line 180
    .line 181
    if-nez p1, :cond_d

    .line 182
    .line 183
    const-string p1, "OffScreenRenderThread"

    .line 184
    .line 185
    const-string p2, "swapBuffers failed, killing renderer thread"

    .line 186
    .line 187
    .line 188
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->shutDown()V

    .line 192
    :cond_d
    return-void
.end method

.method public final getFrames()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    return v0
.end method

.method public final getLastRatio()F
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    return v0
.end method

.method public final getMRenderHandler()Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mRenderHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "mRenderHandler"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->size:I

    return v0
.end method

.method public final getTotalFrames()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    return v0
.end method

.method public final initEncoder()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "gltest.mp4"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 23
    .line 24
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    :cond_0
    new-instance v1, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 36
    .line 37
    const/16 v2, 0x2d0

    .line 38
    .line 39
    const/16 v3, 0x500

    .line 40
    .line 41
    .line 42
    const v4, 0x5b8d80

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;-><init>(IIILjava/io/File;)V

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->getMInputSurface()Landroid/view/Surface;

    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 59
    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    const-string v4, "mEglCore"

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 66
    move-object v4, v1

    .line 67
    .line 68
    :cond_1
    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 69
    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    const-string v5, "mVideoEncoder"

    .line 73
    .line 74
    .line 75
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 76
    move-object v5, v1

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {v5}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->getMInputSurface()Landroid/view/Surface;

    .line 80
    move-result-object v5

    .line 81
    const/4 v6, 0x1

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v4, v5, v6}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;Landroid/view/Surface;Z)V

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 87
    .line 88
    iput-boolean v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->recordingEnable:Z

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 91
    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    const-string v0, "mOffScreenWindowSurface"

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 98
    move-object v0, v1

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 102
    move-result v0

    .line 103
    int-to-float v0, v0

    .line 104
    .line 105
    const/high16 v4, 0x41800000    # 16.0f

    .line 106
    div-float/2addr v0, v4

    .line 107
    .line 108
    const/high16 v4, 0x41100000    # 9.0f

    .line 109
    mul-float/2addr v0, v4

    .line 110
    .line 111
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mRecordWidth:F

    .line 112
    .line 113
    :cond_4
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v4, v5}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;-><init>(Landroid/content/Context;I)V

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 128
    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    const-string v0, "mEncoderFilter"

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 135
    move-object v0, v1

    .line 136
    .line 137
    :cond_5
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 138
    .line 139
    const-string v5, "mVideoDecoder"

    .line 140
    .line 141
    if-nez v4, :cond_6

    .line 142
    .line 143
    .line 144
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 145
    move-object v4, v1

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-virtual {v4}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->getMVideoWidth()I

    .line 149
    move-result v4

    .line 150
    .line 151
    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 152
    .line 153
    if-nez v6, :cond_7

    .line 154
    .line 155
    .line 156
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 157
    goto :goto_0

    .line 158
    :cond_7
    move-object v1, v6

    .line 159
    .line 160
    .line 161
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->getMVideoHeight()I

    .line 162
    move-result v1

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setVideoAndViewSize(IIII)V

    .line 166
    return-void
.end method

.method public final prepareGL()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSourceFile:Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "mEglCore"

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    move-object v1, v2

    .line 23
    .line 24
    :cond_0
    const/16 v3, 0x2d0

    .line 25
    .line 26
    const/16 v4, 0x500

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v3, v4}, Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;II)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    .line 35
    .line 36
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createOESTextureObject()I

    .line 40
    move-result v0

    .line 41
    .line 42
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    .line 43
    .line 44
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 45
    .line 46
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 52
    .line 53
    new-instance v0, Landroid/view/Surface;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const-string v1, "mSurfaceTexture"

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 63
    move-object v1, v2

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOutOutSurface:Landroid/view/Surface;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    const-string v0, "mVideoDecoder"

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 78
    move-object v0, v2

    .line 79
    .line 80
    :cond_2
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOutOutSurface:Landroid/view/Surface;

    .line 81
    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    const-string v1, "mOutOutSurface"

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move-object v2, v1

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->setMOutputSurface(Landroid/view/Surface;)V

    .line 93
    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    const/4 v1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 99
    .line 100
    const/16 v0, 0xb71

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 104
    .line 105
    const/16 v0, 0xb44

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 109
    .line 110
    const/16 v0, 0xbe2

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 114
    .line 115
    const/16 v0, 0x302

    .line 116
    .line 117
    const/16 v1, 0x303

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->initEncoder()V

    .line 124
    .line 125
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;-><init>(Landroid/content/Context;I)V

    .line 133
    .line 134
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    .line 138
    return-void
.end method

.method public final renderFrame()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "mVideoEncoder"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->getMediaCodecInitFailed()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    sget v1, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping:I

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 33
    .line 34
    const-string v2, "mVideoDecoder"

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 40
    move-object v0, v1

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {v0, p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->setMFrameCallback(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V

    .line 44
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v1, v0

    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->decode(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :goto_1
    const-string v1, "OffScreenRenderThread videoDecoder decode method exception"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :goto_2
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
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;-><init>(Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->setMRenderHandler(Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;)V

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
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    :try_start_0
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mReady:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

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
    const-string v0, "OffScreenRenderThread"

    .line 40
    .line 41
    const-string v1, "looper quit"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->releaseGL()V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

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
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    .line 64
    monitor-enter v0

    .line 65
    const/4 v1, 0x0

    .line 66
    .line 67
    :try_start_1
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mReady:Z
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

.method public final setFrames(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    return-void
.end method

.method public final setLastRatio(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    return-void
.end method

.method public final setMRenderHandler(Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;)V
    .locals 1
    .param p1    # Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mRenderHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    return-void
.end method

.method public final setTotalFrames(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    return-void
.end method

.method public final shutDown()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "OffScreenRenderThread"

    .line 3
    .line 4
    const-string v1, "shutdown"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

.method public final waitUntilReady()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mReady:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

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
