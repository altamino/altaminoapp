.class public final Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;
.super Ljava/lang/Thread;
.source "OffScreenRenderThread.kt"

# interfaces
.implements Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOffScreenRenderThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OffScreenRenderThread.kt\ncom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread\n*L\n1#1,255:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;

.field private static final HEIGHT:I = 0x500

.field private static final TAG:Ljava/lang/String; = "OffScreenRenderThread"

.field private static final WIDTH:I = 0x2d0


# instance fields
.field private beginTime:J

.field private filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private fixRatio:F

.field private frames:I

.field private lastRatio:F

.field private mContext:Landroid/content/Context;

.field private mDestFile:Ljava/io/File;

.field private mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

.field private mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

.field private mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

.field private mOESTextureId:I

.field private mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

.field private mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

.field private mOutOutSurface:Landroid/view/Surface;

.field private mReady:Z

.field private mRecordWidth:F

.field public mRenderHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

.field private mSourceFile:Ljava/io/File;

.field private mStartLock:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

.field private mVideoEditorPosArray:[F

.field private mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

.field private recordingEnable:Z

.field private final size:I

.field private totalFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;[FII)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offScreenActivityHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoEditorPosArray"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSourceFile:Ljava/io/File;

    .line 39
    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mDestFile:Ljava/io/File;

    .line 40
    iput-object p4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    .line 47
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    .line 59
    iput-object p5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEditorPosArray:[F

    int-to-float p2, p6

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    int-to-float p3, p7

    div-float/2addr p2, p3

    const/high16 p3, 0x3f100000    # 0.5625f

    div-float/2addr p2, p3

    .line 61
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->fixRatio:F

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->beginTime:J

    .line 145
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEditorPosArray:[F

    const/4 p3, 0x0

    aget p4, p2, p3

    int-to-float p5, p3

    cmpl-float p4, p4, p5

    if-lez p4, :cond_0

    aget p2, p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    .line 146
    iget-object p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEditorPosArray:[F

    array-length p2, p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->size:I

    .line 147
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    return-void
.end method

.method private final draw()V
    .locals 2

    .line 242
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    const-string v1, "draw start"

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->checkGlError(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 243
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 244
    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 246
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 247
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->drawFrame()V

    return-void

    :cond_0
    const-string v0, "filter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "mSurfaceTexture"

    .line 246
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final muxerVideoAndAudio()V
    .locals 5

    .line 251
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;->INSTANCE:Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSourceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSourceFile.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "gltest.mp4"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "File(mContext.cacheDir, \"gltest.mp4\").path"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mDestFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mDestFile.path"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/editor/cropping/dynamic/offscreen/FileMuxer;->muxeVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->sendOffscreenProgress(I)V

    return-void
.end method

.method private final releaseGL()V
    .locals 2

    .line 236
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    const-string v1, "releaseGl start"

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->checkGlError(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;->release()V

    .line 238
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->makeNothingCurrent()V

    return-void

    :cond_0
    const-string v0, "mEglCore"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "mOffScreenWindowSurface"

    .line 237
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decodeFrameBegin()V
    .locals 2

    .line 127
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;->decodeFrameBegin(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->beginTime:J

    return-void
.end method

.method public decodeFrameEnd()V
    .locals 4

    .line 132
    invoke-static {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback$DefaultImpls;->decodeFrameEnd(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V

    .line 133
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    const-string v1, "mVideoEncoder"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->drainEncoderWithNoTimeOut(Z)V

    .line 134
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;->release()V

    .line 135
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->release()V

    .line 136
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag;->Companion:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenFlag$Companion;->getStopRenderThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->muxerVideoAndAudio()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->sendOffscreenEnd()V

    .line 140
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 141
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    return-void

    .line 135
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "mInputWindowSurface"

    .line 134
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public decodeOneFrame(J)V
    .locals 9

    .line 151
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    rem-int/lit8 v2, v1, 0x1e

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenActivityHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenActivityHandler;->sendOffscreenProgress(I)V

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->draw()V

    .line 157
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->recordingEnable:Z

    const-string v1, "mOffScreenWindowSurface"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 158
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    const-string v3, "mInputWindowSurface"

    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    if-eqz v4, :cond_9

    invoke-virtual {v0, v4}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrentReadFrom(Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 159
    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 160
    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 162
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    .line 163
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->size:I

    const/4 v7, 0x0

    if-ge v5, v6, :cond_2

    .line 164
    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEditorPosArray:[F

    aget v5, v6, v5

    int-to-float v6, v7

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    .line 168
    :goto_0
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    const-string v5, "mEncoderFilter"

    if-eqz v0, :cond_8

    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    iget v8, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->fixRatio:F

    mul-float v6, v6, v8

    invoke-virtual {v0, v6, v4}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setTransform(FF)V

    .line 172
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->drawFrame()V

    .line 192
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz v0, :cond_6

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long p1, p1, v4

    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->setPresentationTime(J)V

    .line 193
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    .line 194
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v7}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->drainEncoderWithNoTimeOut(Z)V

    .line 195
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "mVideoEncoder"

    .line 194
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_b
    :goto_1
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    .line 198
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->swapBuffers()Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "OffScreenRenderThread"

    const-string p2, "swapBuffers failed, killing renderer thread"

    .line 200
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->shutDown()V

    :cond_c
    return-void

    .line 198
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getFrames()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    return v0
.end method

.method public final getLastRatio()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    return v0
.end method

.method public final getMRenderHandler()Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mRenderHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mRenderHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSize()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->size:I

    return v0
.end method

.method public final getTotalFrames()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    return v0
.end method

.method public final initEncoder()V
    .locals 7

    .line 214
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "gltest.mp4"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    :cond_0
    new-instance v1, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    const v4, 0x5b8d80

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;-><init>(IIILjava/io/File;)V

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    .line 225
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    const-string v1, "mVideoEncoder"

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->getMInputSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 226
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->getMInputSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {v0, v5, v1, v6}, Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mInputWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/WindowSurface;

    .line 227
    iput-boolean v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->recordingEnable:Z

    .line 228
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mRecordWidth:F

    goto :goto_0

    :cond_1
    const-string v0, "mOffScreenWindowSurface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string v0, "mEglCore"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_4
    :goto_0
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    invoke-direct {v0, v1, v5}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 231
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    const-string v1, "mEncoderFilter"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    .line 232
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEncoderFilter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    const-string v5, "mVideoDecoder"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->getMVideoWidth()I

    move-result v1

    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->getMVideoHeight()I

    move-result v4

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setVideoAndViewSize(IIII)V

    return-void

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 225
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final prepareGL()V
    .locals 5

    .line 89
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSourceFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    .line 91
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    invoke-direct {v0, v1, v3, v4}, Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;-><init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;II)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    .line 93
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOffScreenWindowSurface:Lcom/narvii/editor/cropping/dynamic/egl/OffscreenSurface;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->makeCurrent()V

    .line 95
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createOESTextureObject()I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    .line 96
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 97
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOutOutSurface:Landroid/view/Surface;

    .line 98
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOutOutSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->setMOutputSurface(Landroid/view/Surface;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 100
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 v0, 0xb71

    .line 101
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xb44

    .line 102
    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 103
    invoke-static {v0}, Landroid/opengl/GLES30;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 104
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    .line 106
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->initEncoder()V

    .line 108
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mOESTextureId:I

    invoke-direct {v0, v1, v3}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    .line 109
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->filter:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->initProgram()V

    return-void

    :cond_0
    const-string v0, "filter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "mOutOutSurface"

    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "mVideoDecoder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "mSurfaceTexture"

    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string v0, "mOffScreenWindowSurface"

    .line 93
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v0, "mEglCore"

    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final renderFrame()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoEncoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoEncoder;->getMediaCodecInitFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mContext:Landroid/content/Context;

    sget v1, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    const-string v2, "mVideoDecoder"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->setMFrameCallback(Lcom/narvii/editor/cropping/dynamic/offscreen/FrameCallback;)V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mVideoDecoder:Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/offscreen/VideoDecoder;->decode()V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "OffScreenRenderThread videoDecoder decode method exception"

    .line 121
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "mVideoEncoder"

    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public run()V
    .locals 3

    .line 64
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 65
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;-><init>(Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mRenderHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    .line 66
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 67
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 68
    :try_start_0
    iput-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mReady:Z

    .line 69
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 70
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    monitor-exit v0

    .line 71
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "OffScreenRenderThread"

    const-string v2, "looper quit"

    .line 72
    invoke-static {v0, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->releaseGL()V

    .line 74
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->release()V

    .line 75
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 76
    :try_start_1
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mReady:Z

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

.method public final setFrames(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->frames:I

    return-void
.end method

.method public final setLastRatio(F)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->lastRatio:F

    return-void
.end method

.method public final setMRenderHandler(Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mRenderHandler:Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderHandler;

    return-void
.end method

.method public final setTotalFrames(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->totalFrames:I

    return-void
.end method

.method public final shutDown()V
    .locals 2

    const-string v0, "OffScreenRenderThread"

    const-string v1, "shutdown"

    .line 207
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method public final waitUntilReady()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mReady:Z

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/offscreen/OffScreenRenderThread;->mStartLock:Ljava/lang/Object;

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
