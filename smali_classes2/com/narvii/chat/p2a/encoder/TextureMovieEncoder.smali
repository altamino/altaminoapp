.class public Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;
.super Ljava/lang/Object;
.source "TextureMovieEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field public static final IN_RECORDING:I = 0x1

.field private static final MSG_FRAME_AVAILABLE:I = 0x2

.field private static final MSG_QUIT:I = 0x5

.field private static final MSG_SET_TEXTURE_ID:I = 0x3

.field private static final MSG_START_RECORDING:I = 0x0

.field private static final MSG_STOP_RECORDING:I = 0x1

.field private static final MSG_UPDATE_SHARED_CONTEXT:I = 0x4

.field public static final NONE_RECORDING:I = 0x4

.field public static final PREPARE_RECORDING:I = 0x5

.field public static final START_RECORDING:I = 0x2

.field public static final STOP_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TextureMovieEncoder"

.field private static final VERBOSE:Z


# instance fields
.field private config:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

.field private firstNanoTime:J

.field private firstTimeStampBase:J

.field private frameBuffer:I

.field private mAudioEncoder:Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

.field private mEglCore:Lcom/narvii/video/gles/EglCore;

.field private mFrameNum:I

.field private mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

.field private volatile mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

.field private mHeight:I

.field private mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

.field private mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

.field private mReady:Z

.field private mReadyFence:Ljava/lang/Object;

.field private mRecordingStatus:I

.field private mRequestStop:Z

.field private mRunning:Z

.field private mTextureId:I

.field private mTransform:[F

.field private mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

.field private mWidth:I

.field private onEncoderStatusUpdateListener:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;

.field private final prepareEncoderFence:Ljava/lang/Object;

.field private prepareEncoderReady:Z

.field private prevOutputPTSUs:J

.field private final stopEncoderFence:Ljava/lang/Object;

.field private stopEncoderSuccess:Z

.field private texture:I

.field private watermark:Lcom/narvii/chat/p2a/encoder/Watermark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 570
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->AUDIO_SOURCES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x5
        0x7
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    const/4 v0, 0x4

    .line 99
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstTimeStampBase:J

    .line 104
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 108
    iput-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTransform:[F

    const/4 v2, 0x0

    .line 399
    iput-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->config:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    .line 508
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 509
    iput-boolean v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    .line 510
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    .line 511
    iput-boolean v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    .line 568
    iput-boolean v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    .line 710
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prevOutputPTSUs:J

    const/4 v0, 0x2

    .line 119
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    .line 120
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTransform:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    return p1
.end method

.method static synthetic access$1200()[I
    .locals 1

    .line 66
    sget-object v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->AUDIO_SOURCES:[I

    return-object v0
.end method

.method static synthetic access$1302(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mAudioEncoder:Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    return p1
.end method

.method static synthetic access$202(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;)Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    return-object p1
.end method

.method static synthetic access$302(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z

    return p1
.end method

.method static synthetic access$402(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleStartRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleStopRecording()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;[FJ)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleFrameAvailable([FJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleSetTexture(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Landroid/opengl/EGLContext;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleUpdateSharedContext(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method public static checkAudioPermission()Z
    .locals 14

    const/4 v0, 0x2

    const v1, 0xac44

    const/16 v2, 0x10

    .line 582
    invoke-static {v1, v2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    const/4 v2, 0x1

    const v3, 0xc000

    if-ge v3, v1, :cond_0

    .line 587
    div-int/lit16 v1, v1, 0x800

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x800

    mul-int/lit8 v3, v1, 0x2

    .line 590
    :cond_0
    sget-object v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->AUDIO_SOURCES:[I

    array-length v1, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v11

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_3

    aget v5, v0, v12

    .line 592
    :try_start_0
    new-instance v13, Landroid/media/AudioRecord;

    const/16 v7, 0x10

    const/4 v8, 0x2

    const v6, 0xac44

    move-object v4, v13

    move v9, v3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 596
    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v2, :cond_1

    move-object v13, v11

    :cond_1
    move-object v4, v13

    goto :goto_1

    :catch_0
    move-object v4, v11

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 604
    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    return v2

    :cond_4
    return v10
.end method

.method private handleFrameAvailable([FJ)V
    .locals 2

    .line 426
    iget p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 429
    :try_start_0
    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    invoke-virtual {p3, p2}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v0, "TextureMovieEncoder"

    const-string v1, "drainEncoder() fail"

    .line 431
    invoke-static {v0, v1, p3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    :goto_0
    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->config:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    iget v0, p3, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    iget p3, p3, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    invoke-static {p2, p2, v0, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 436
    const-class p2, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    monitor-enter p2

    .line 437
    :try_start_1
    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTextureId:I

    invoke-virtual {p3, v0, p1}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 439
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->watermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->watermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    iget p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    invoke-virtual {p1, p3, v0}, Lcom/narvii/chat/p2a/encoder/Watermark;->prepare(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->watermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    invoke-virtual {p1}, Lcom/narvii/chat/p2a/encoder/Watermark;->draw()V

    .line 442
    :cond_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    invoke-virtual {p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->getPTSUs()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/video/gles/EglSurfaceBase;->setPresentationTime(J)V

    .line 445
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    invoke-virtual {p1}, Lcom/narvii/video/gles/EglSurfaceBase;->swapBuffers()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 442
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method private handleSetTexture(I)V
    .locals 0

    .line 480
    iput p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTextureId:I

    return-void
.end method

.method private handleStartRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V
    .locals 8

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartRecording "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureMovieEncoder"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->config:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    const/4 v0, 0x0

    .line 407
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFrameNum:I

    .line 408
    iget-object v2, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    iget v3, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    iget v4, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    iget v5, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mFrameRate:I

    iget v6, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mBitRate:I

    iget-object v7, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mOutputFile:Ljava/io/File;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoder(Landroid/opengl/EGLContext;IIIILjava/io/File;)V

    .line 410
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    .line 411
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->onEncoderStatusUpdateListener:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;

    if-eqz p1, :cond_0

    .line 412
    invoke-interface {p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;->onStartSuccess()V

    :cond_0
    return-void
.end method

.method private handleStopRecording()V
    .locals 4

    const-string v0, "TextureMovieEncoder"

    const-string v1, "handleStopRecording"

    .line 453
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TextureMovieEncoder"

    const-string v3, "drainEncoder() fail"

    .line 457
    invoke-static {v2, v3, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    .line 460
    invoke-direct {p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->releaseEncoder()V

    .line 461
    :goto_1
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_1
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 467
    :catch_1
    :goto_2
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 469
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    .line 470
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->onEncoderStatusUpdateListener:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;

    if-eqz v0, :cond_1

    .line 471
    invoke-interface {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;->onStopSuccess()V

    :cond_1
    return-void
.end method

.method private handleUpdateSharedContext(Landroid/opengl/EGLContext;)V
    .locals 2

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdatedSharedContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureMovieEncoder"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    invoke-virtual {v0}, Lcom/narvii/video/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 495
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 496
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    invoke-virtual {v0}, Lcom/narvii/video/gles/EglCore;->release()V

    .line 499
    new-instance v0, Lcom/narvii/video/gles/EglCore;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/narvii/video/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 500
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    invoke-virtual {p1, v0}, Lcom/narvii/video/gles/WindowSurface;->recreate(Lcom/narvii/video/gles/EglCore;)V

    .line 501
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    invoke-virtual {p1}, Lcom/narvii/video/gles/EglSurfaceBase;->makeCurrent()V

    .line 504
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    new-instance v0, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object v1, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, v0}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    return-void
.end method

.method private prepareEncoder(Landroid/opengl/EGLContext;IIIILjava/io/File;)V
    .locals 7

    .line 532
    :try_start_0
    new-instance v0, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-virtual {p6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {v0, p6}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 533
    new-instance p6, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    iget-object v6, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    move-object v1, p6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;-><init>(IIIILcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;)V

    iput-object p6, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    .line 534
    new-instance p2, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    invoke-direct {p2, p3}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;-><init>(Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;)V

    iput-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mAudioEncoder:Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 535
    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x1

    .line 536
    :try_start_1
    iput-boolean p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    .line 537
    iget-object p4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 538
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    new-instance p2, Lcom/narvii/video/gles/EglCore;

    invoke-direct {p2, p1, p3}, Lcom/narvii/video/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 543
    new-instance p1, Lcom/narvii/video/gles/WindowSurface;

    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    iget-object p4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    invoke-virtual {p4}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->getInputSurface()Landroid/view/Surface;

    move-result-object p4

    invoke-direct {p1, p2, p4, p3}, Lcom/narvii/video/gles/WindowSurface;-><init>(Lcom/narvii/video/gles/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 544
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    invoke-virtual {p1}, Lcom/narvii/video/gles/EglSurfaceBase;->makeCurrent()V

    .line 546
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object p3, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {p2, p3}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    return-void

    :catchall_0
    move-exception p1

    .line 538
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 540
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private releaseEncoder()V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->release()V

    .line 552
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/narvii/video/gles/WindowSurface;->release()V

    .line 554
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 557
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 558
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {v0}, Lcom/narvii/video/gles/EglCore;->release()V

    .line 562
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    :cond_2
    return-void
.end method


# virtual methods
.method public checkRecordingStatus(I)Z
    .locals 1

    .line 115
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;[F)V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z

    if-nez v1, :cond_0

    .line 270
    monitor-exit v0

    return-void

    .line 272
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 274
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const-string p1, "TextureMovieEncoder"

    const-string p2, "HEY: got SurfaceTexture with timestamp of zero"

    .line 281
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTransform:[F

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p2, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    const/4 v2, 0x2

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v4, v3

    long-to-int v1, v0

    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTransform:[F

    invoke-virtual {p2, v2, v4, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 272
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected getPTSUs()J
    .locals 7

    .line 718
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 720
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstTimeStampBase:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    .line 724
    :cond_1
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    sub-long/2addr v0, v2

    .line 725
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstTimeStampBase:J

    add-long/2addr v0, v2

    :goto_0
    const-wide/16 v2, 0x3e8

    .line 728
    div-long/2addr v0, v2

    .line 730
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prevOutputPTSUs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    .line 734
    :cond_2
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prevOutputPTSUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    .line 738
    :cond_3
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prevOutputPTSUs:J

    return-wide v0
.end method

.method public isRecording()Z
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnEncoderStatusUpdateListener(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->onEncoderStatusUpdateListener:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;

    return-void
.end method

.method public setTextureId(Lcom/narvii/video/gles/FullFrameRect;I[F)V
    .locals 6

    .line 297
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xba2

    const/4 v2, 0x0

    .line 299
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 301
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    const/16 v4, 0xde1

    .line 302
    iget v5, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    invoke-static {v3, v1, v4, v5, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 304
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    iget v4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    invoke-static {v2, v2, v1, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1, p2, p3}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 308
    :cond_0
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 310
    aget p1, v0, v2

    const/4 p2, 0x1

    aget p2, v0, p2

    const/4 p3, 0x2

    aget p3, v0, p3

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {p1, p2, p3, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 312
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    monitor-enter p1

    .line 313
    :try_start_0
    iget-boolean p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z

    if-nez p2, :cond_1

    .line 314
    monitor-exit p1

    return-void

    .line 316
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 316
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public setWatermark(Lcom/narvii/chat/p2a/encoder/Watermark;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->watermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    return-void
.end method

.method public startRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V
    .locals 14

    .line 173
    iget v0, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    .line 174
    iget v0, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 177
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 178
    aget v1, v1, v2

    iput v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 179
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2601

    const/16 v4, 0x2801

    .line 180
    invoke-static {v3, v4, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    .line 181
    invoke-static {v3, v4, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 182
    iget v8, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    iget v9, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 183
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    new-array v1, v0, [I

    .line 186
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 188
    aget v1, v1, v2

    iput v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    const-string v1, "TextureMovieEncoder"

    const-string v3, "Encoder: startRecording()"

    .line 190
    invoke-static {v1, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 191
    iput v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    .line 192
    iget-wide v3, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->firstTimeStampBase:J

    iput-wide v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstTimeStampBase:J

    .line 193
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    .line 195
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-boolean v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    if-eqz v3, :cond_0

    const-string p1, "TextureMovieEncoder"

    const-string v0, "Encoder thread already running"

    .line 197
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    monitor-exit v1

    return-void

    .line 200
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    .line 201
    new-instance v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;

    const-string v3, "TextureMovieVideoEncoder"

    invoke-direct {v0, p0, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    new-instance v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$1;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 210
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public stopRecording()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 225
    iget v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    new-array v1, v0, [I

    .line 226
    iget v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 227
    iput v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    .line 228
    iput v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    const/4 v1, 0x4

    .line 230
    iput v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    .line 232
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateSharedContext(Landroid/opengl/EGLContext;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
