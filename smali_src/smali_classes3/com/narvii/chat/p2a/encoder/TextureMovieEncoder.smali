.class public Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;,
        Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;
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
    .locals 5

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->AUDIO_SOURCES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstTimeStampBase:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    new-array v2, v2, [F

    .line 21
    .line 22
    iput-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTransform:[F

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    iput-object v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->config:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    iput-object v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    iput-boolean v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    .line 36
    .line 37
    new-instance v4, Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    iput-object v4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    .line 43
    .line 44
    iput-boolean v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    .line 45
    .line 46
    iput-boolean v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prevOutputPTSUs:J

    .line 49
    const/4 v0, 0x2

    .line 50
    .line 51
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 55
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mAudioEncoder:Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    return p0
.end method

.method public static checkAudioPermission()Z
    .locals 15

    .line 1
    .line 2
    .line 3
    const v6, 0xac44

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    .line 9
    invoke-static {v6, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 10
    move-result v0

    .line 11
    const/4 v7, 0x1

    .line 12
    .line 13
    .line 14
    const v1, 0xc000

    .line 15
    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    div-int/lit16 v0, v0, 0x800

    .line 19
    add-int/2addr v0, v7

    .line 20
    .line 21
    mul-int/lit16 v1, v0, 0x1000

    .line 22
    :cond_0
    move v8, v1

    .line 23
    .line 24
    sget-object v9, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->AUDIO_SOURCES:[I

    .line 25
    array-length v10, v9

    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v12, 0x0

    .line 28
    move v13, v11

    .line 29
    move-object v0, v12

    .line 30
    .line 31
    :goto_0
    if-ge v13, v10, :cond_3

    .line 32
    .line 33
    aget v1, v9, v13

    .line 34
    .line 35
    :try_start_0
    new-instance v14, Landroid/media/AudioRecord;

    .line 36
    .line 37
    const/16 v3, 0x10

    .line 38
    const/4 v4, 0x2

    .line 39
    move-object v0, v14

    .line 40
    move v2, v6

    .line 41
    move v5, v8

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v14}, Landroid/media/AudioRecord;->getState()I

    .line 48
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    if-eq v0, v7, :cond_1

    .line 51
    move-object v14, v12

    .line 52
    :cond_1
    move-object v0, v14

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-object v0, v12

    .line 55
    .line 56
    :goto_1
    if-eqz v0, :cond_2

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 66
    return v7

    .line 67
    :cond_4
    return v11
.end method

.method static bridge synthetic d(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z

    return-void
.end method

.method private handleFrameAvailable([FJ)V
    .locals 2

    .line 1
    .line 2
    iget p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p2}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p3

    .line 13
    .line 14
    const-string v0, "TextureMovieEncoder"

    .line 15
    .line 16
    const-string v1, "drainEncoder() fail"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    :goto_0
    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->config:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    .line 22
    .line 23
    iget v0, p3, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    .line 24
    .line 25
    iget p3, p3, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p2, v0, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 29
    .line 30
    const-class p2, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 31
    monitor-enter p2

    .line 32
    .line 33
    :try_start_1
    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    .line 34
    .line 35
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTextureId:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v0, p1}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->watermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    .line 45
    .line 46
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3, v0}, Lcom/narvii/chat/p2a/encoder/Watermark;->prepare(II)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->watermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/chat/p2a/encoder/Watermark;->draw()V

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->getPTSUs()J

    .line 67
    move-result-wide p2

    .line 68
    .line 69
    const-wide/16 v0, 0x3e8

    .line 70
    mul-long/2addr p2, v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Lcom/narvii/video/gles/EglSurfaceBase;->setPresentationTime(J)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/video/gles/EglSurfaceBase;->swapBuffers()Z

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p1

    .line 82
    :cond_1
    :goto_3
    return-void
.end method

.method private handleSetTexture(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTextureId:I

    return-void
.end method

.method private handleStartRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "handleStartRecording "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "TextureMovieEncoder"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->config:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFrameNum:I

    .line 28
    .line 29
    iget-object v2, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    .line 30
    .line 31
    iget v3, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    .line 32
    .line 33
    iget v4, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    .line 34
    .line 35
    iget v5, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mFrameRate:I

    .line 36
    .line 37
    iget v6, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mBitRate:I

    .line 38
    .line 39
    iget-object v7, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mOutputFile:Ljava/io/File;

    .line 40
    move-object v1, p0

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoder(Landroid/opengl/EGLContext;IIIILjava/io/File;)V

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->onEncoderStatusUpdateListener:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;->onStartSuccess()V

    .line 53
    :cond_0
    return-void
.end method

.method private handleStopRecording()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "TextureMovieEncoder"

    .line 3
    .line 4
    const-string v1, "handleStopRecording"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    .line 17
    const-string v2, "TextureMovieEncoder"

    .line 18
    .line 19
    const-string v3, "drainEncoder() fail"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRequestStop:Z

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->releaseEncoder()V

    .line 28
    .line 29
    :goto_1
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    .line 34
    monitor-enter v0

    .line 35
    .line 36
    :try_start_1
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderFence:Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_3

    .line 43
    :catch_1
    :goto_2
    :try_start_2
    monitor-exit v0

    .line 44
    goto :goto_1

    .line 45
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw v1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->onEncoderStatusUpdateListener:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;->onStopSuccess()V

    .line 57
    :cond_1
    return-void
.end method

.method private handleUpdateSharedContext(Landroid/opengl/EGLContext;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "handleUpdatedSharedContext "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "TextureMovieEncoder"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/video/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/video/gles/EglCore;->release()V

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/video/gles/EglCore;

    .line 41
    const/4 v1, 0x1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p1, v1}, Lcom/narvii/video/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/video/gles/WindowSurface;->recreate(Lcom/narvii/video/gles/EglCore;)V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/video/gles/EglSurfaceBase;->makeCurrent()V

    .line 57
    .line 58
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    .line 59
    .line 60
    new-instance v0, Lcom/narvii/video/gles/Texture2dProgram;

    .line 61
    .line 62
    sget-object v1, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v0}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    .line 71
    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopEncoderSuccess:Z

    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;[FJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleFrameAvailable([FJ)V

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleSetTexture(I)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleStartRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleStopRecording()V

    return-void
.end method

.method private prepareEncoder(Landroid/opengl/EGLContext;IIIILjava/io/File;)V
    .locals 6

    .line 1
    .line 2
    :try_start_0
    new-instance v5, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p6}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 6
    move-result-object p6

    .line 7
    .line 8
    .line 9
    invoke-direct {v5, p6}, Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    iput-object v5, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 12
    .line 13
    new-instance p6, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    .line 14
    move-object v0, p6

    .line 15
    move v1, p2

    .line 16
    move v2, p3

    .line 17
    move v3, p4

    .line 18
    move v4, p5

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;-><init>(IIIILcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;)V

    .line 22
    .line 23
    iput-object p6, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 26
    .line 27
    iget-object p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mMuxer:Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p3}, Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;-><init>(Lcom/narvii/chat/p2a/encoder/MediaMuxerWrapper;)V

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mAudioEncoder:Lcom/narvii/chat/p2a/encoder/AudioEncoderCore;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    .line 35
    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 p3, 0x1

    .line 37
    .line 38
    :try_start_1
    iput-boolean p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderReady:Z

    .line 39
    .line 40
    iget-object p4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prepareEncoderFence:Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 44
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    new-instance p2, Lcom/narvii/video/gles/EglCore;

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p1, p3}, Lcom/narvii/video/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 50
    .line 51
    iput-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/video/gles/WindowSurface;

    .line 54
    .line 55
    iget-object p4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->getInputSurface()Landroid/view/Surface;

    .line 59
    move-result-object p4

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2, p4, p3}, Lcom/narvii/video/gles/WindowSurface;-><init>(Lcom/narvii/video/gles/EglCore;Landroid/view/Surface;Z)V

    .line 63
    .line 64
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/video/gles/EglSurfaceBase;->makeCurrent()V

    .line 68
    .line 69
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    .line 70
    .line 71
    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    .line 72
    .line 73
    sget-object p3, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p3}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    throw p2
.end method

.method static bridge synthetic q(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Landroid/opengl/EGLContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->handleUpdateSharedContext(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method static bridge synthetic r()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->AUDIO_SOURCES:[I

    return-object v0
.end method

.method private releaseEncoder()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mVideoEncoder:Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/p2a/encoder/VideoEncoderCore;->release()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/video/gles/WindowSurface;->release()V

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mInputWindowSurface:Lcom/narvii/video/gles/WindowSurface;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mFullScreen:Lcom/narvii/video/gles/FullFrameRect;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/video/gles/EglCore;->release()V

    .line 33
    .line 34
    iput-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mEglCore:Lcom/narvii/video/gles/EglCore;

    .line 35
    :cond_2
    return-void
.end method


# virtual methods
.method public checkRecordingStatus(I)Z
    .locals 1

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
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 18
    move-result-wide v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    :goto_0
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long p1, v0, v2

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    const-string p1, "TextureMovieEncoder"

    .line 32
    .line 33
    const-string p2, "HEY: got SurfaceTexture with timestamp of zero"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTransform:[F

    .line 40
    array-length v2, p1

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 49
    .line 50
    const/16 v2, 0x20

    .line 51
    .line 52
    shr-long v2, v0, v2

    .line 53
    long-to-int v2, v2

    .line 54
    long-to-int v0, v0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mTransform:[F

    .line 57
    const/4 v3, 0x2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v3, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p1
.end method

.method protected getPTSUs()J
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstTimeStampBase:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v6, v2, v4

    .line 11
    .line 12
    if-nez v6, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-wide v6, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    .line 16
    .line 17
    cmp-long v4, v6, v4

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    .line 22
    .line 23
    :cond_1
    iget-wide v4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    .line 24
    sub-long/2addr v0, v4

    .line 25
    add-long/2addr v0, v2

    .line 26
    .line 27
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 28
    div-long/2addr v0, v2

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prevOutputPTSUs:J

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-gez v4, :cond_2

    .line 35
    .line 36
    sub-long v4, v2, v0

    .line 37
    add-long/2addr v0, v4

    .line 38
    .line 39
    :cond_2
    cmp-long v2, v0, v2

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    const-wide/16 v2, 0x64

    .line 44
    add-long/2addr v0, v2

    .line 45
    .line 46
    :cond_3
    iput-wide v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->prevOutputPTSUs:J

    .line 47
    return-wide v0
.end method

.method public isRecording()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public setOnEncoderStatusUpdateListener(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->onEncoderStatusUpdateListener:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;

    return-void
.end method

.method public setTextureId(Lcom/narvii/video/gles/FullFrameRect;I[F)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    const/4 v0, 0x4

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    const/16 v1, 0xba2

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    .line 16
    .line 17
    .line 18
    const v3, 0x8d40

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 22
    .line 23
    const/16 v1, 0xde1

    .line 24
    .line 25
    iget v4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 26
    .line 27
    .line 28
    const v5, 0x8ce0

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v5, v1, v4, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    .line 34
    .line 35
    iget v4, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v2, v1, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 47
    .line 48
    aget p1, v0, v2

    .line 49
    const/4 p2, 0x1

    .line 50
    .line 51
    aget p2, v0, p2

    .line 52
    const/4 p3, 0x2

    .line 53
    .line 54
    aget p3, v0, p3

    .line 55
    const/4 v1, 0x3

    .line 56
    .line 57
    aget v0, v0, v1

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2, p3, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    .line 63
    monitor-enter p1

    .line 64
    .line 65
    :try_start_0
    iget-boolean p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    monitor-exit p1

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 77
    .line 78
    iget p3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 79
    const/4 v0, 0x0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v1, p3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    goto :goto_1

    .line 88
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p2

    .line 90
    :cond_2
    :goto_1
    return-void
.end method

.method public setWatermark(Lcom/narvii/chat/p2a/encoder/Watermark;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->watermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    return-void
.end method

.method public startRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V
    .locals 14

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mWidth:I

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    .line 5
    .line 6
    iget v0, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->mHeight:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 16
    .line 17
    aget v1, v1, v2

    .line 18
    .line 19
    iput v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 20
    .line 21
    const/16 v3, 0xde1

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 25
    .line 26
    const/16 v1, 0x2801

    .line 27
    .line 28
    const/16 v4, 0x2601

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 32
    .line 33
    const/16 v1, 0x2800

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 37
    .line 38
    const/16 v5, 0xde1

    .line 39
    const/4 v6, 0x0

    .line 40
    .line 41
    const/16 v7, 0x1908

    .line 42
    .line 43
    iget v8, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mWidth:I

    .line 44
    .line 45
    iget v9, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHeight:I

    .line 46
    const/4 v10, 0x0

    .line 47
    .line 48
    const/16 v11, 0x1908

    .line 49
    .line 50
    const/16 v12, 0x1401

    .line 51
    const/4 v13, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    .line 59
    new-array v1, v0, [I

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 63
    .line 64
    aget v1, v1, v2

    .line 65
    .line 66
    iput v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    .line 67
    .line 68
    const-string v1, "TextureMovieEncoder"

    .line 69
    .line 70
    const-string v3, "Encoder: startRecording()"

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x5

    .line 75
    .line 76
    iput v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    .line 77
    .line 78
    iget-wide v3, p1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;->firstTimeStampBase:J

    .line 79
    .line 80
    iput-wide v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstTimeStampBase:J

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 84
    move-result-wide v3

    .line 85
    .line 86
    iput-wide v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->firstNanoTime:J

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    .line 89
    monitor-enter v1

    .line 90
    .line 91
    :try_start_0
    iget-boolean v3, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    .line 92
    .line 93
    if-eqz v3, :cond_0

    .line 94
    .line 95
    const-string p1, "TextureMovieEncoder"

    .line 96
    .line 97
    const-string v0, "Encoder thread already running"

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRunning:Z

    .line 107
    .line 108
    new-instance v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;

    .line 109
    .line 110
    const-string v3, "TextureMovieVideoEncoder"

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, p0, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoThread;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    .line 118
    new-instance v0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;

    .line 119
    const/4 v3, 0x0

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, p0, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$AudioThread;-><init>(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;Lcom/narvii/chat/p2a/encoder/a;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    .line 127
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    if-nez v0, :cond_1

    .line 130
    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mReadyFence:Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 139
    .line 140
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void

    .line 149
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    throw p1
.end method

.method public stopRecording()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    .line 3
    .line 4
    .line 5
    filled-new-array {v0}, [I

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 21
    .line 22
    iput v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameBuffer:I

    .line 23
    .line 24
    iput v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->texture:I

    .line 25
    const/4 v0, 0x4

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mRecordingStatus:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 43
    const/4 v2, 0x5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    return-void
.end method

.method public updateSharedContext(Landroid/opengl/EGLContext;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->mHandler:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$VideoEncoderHandler;

    .line 5
    const/4 v2, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    return-void
.end method
