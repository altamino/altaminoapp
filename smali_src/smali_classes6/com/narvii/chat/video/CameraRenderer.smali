.class public Lcom/narvii/chat/video/CameraRenderer;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/CameraRenderer$FaceTrackingStatusChanged;,
        Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;,
        Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;
    }
.end annotation


# static fields
.field private static final FRAME_NEED_TO_SKIP:I = 0x3

.field public static final RECORD_STATUS_NONE:I = 0x0

.field public static final RECORD_STATUS_RECORDING:I = 0x3

.field public static final RECORD_STATUS_STARTING:I = 0x2

.field public static final RECORD_STATUS_STOPING:I = 0x1


# instance fields
.field actualPreviewHeight:I

.field actualPreviewWidth:I

.field volatile blockingRender:Z

.field cameraHandlerThread:Lcom/narvii/chat/video/CameraHandlerThread;

.field private cameraId:I

.field private cameraOrientation:I

.field faceTrackingStatus:I

.field faceTrackingStatusChanged:Lcom/narvii/chat/video/CameraRenderer$FaceTrackingStatusChanged;

.field private forceAvatar:Z

.field private framePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

.field private frameSkiped:I

.field private isAvatarReady:Z

.field private isLandscape:Z

.field private isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastDisplayRotation:I

.field private lastScreenSotProId:Ljava/lang/String;

.field private mBuffer:[B

.field private mCamera:Landroid/hardware/Camera;

.field mCameraNV21Byte:[B

.field private mCameraNotAvailable:Z

.field private mCameraPreviewHeight:I

.field private mCameraPreviewWidth:I

.field private mCameraRotation:I

.field protected mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mCameraTextureId:I

.field private mContext:Landroid/content/Context;

.field public mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mFramebuffer:I

.field protected mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

.field protected mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

.field protected mFullScreenFiltered:Lcom/narvii/video/gles/FullFrameRect;

.field volatile mIsNeedCaptureShot:Z

.field private mOffscreenTexture:I

.field private mPushFrameTexture:I

.field private mPushFramebuffer:I

.field private mRequestedFps:F

.field private volatile mUpdateTexture:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field mtx:[F

.field private oldPreViewHeight:I

.field private oldPreViewWidth:I

.field private volatile openCameraRequestSent:Z

.field private points:Lcom/narvii/chat/p2a/render/LandmarksPoints;

.field private realFaceHeight:I

.field private realFaceMarginLeft:I

.field private realFaceMarginTop:I

.field private realFaceWidth:I

.field private recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

.field private recordDuration:J

.field private final recordDurationStop:Ljava/lang/Runnable;

.field private recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

.field private recordFile:Ljava/io/File;

.field private recordListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final recordLock:Ljava/lang/Object;

.field private recordStartTime:J

.field private recordStatus:I

.field private recordStopTime:J

.field private recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

.field renderHeight:I

.field renderScaleFactor:F

.field renderWidth:I

.field volatile showBlockRender:Z

.field private showRealFace:Z

.field statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

.field takeShotCaptureListener:Lcom/narvii/chat/video/TakeShotCaptureListener;

.field private targetHeight:I

.field private targetWidth:I

.field private viewHeight:I

.field private volatile viewPortSeted:Z

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    iput p3, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x500

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    const/16 p2, 0x2d0

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    const/high16 p2, 0x41c00000    # 24.0f

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mRequestedFps:F

    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    const/16 p2, 0x10

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mtx:[F

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    const p2, 0x3f333333    # 0.7f

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->renderScaleFactor:F

    .line 5
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    .line 6
    new-instance p2, Lcom/narvii/chat/video/CameraRenderer$3;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/CameraRenderer$3;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDurationStop:Ljava/lang/Runnable;

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/narvii/chat/video/CameraRenderer;->forceAvatar:Z

    .line 7
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->initSurfaceView()V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraRenderer --> new  Thread -- >"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/narvii/chat/video/CameraHandlerThread;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/CameraHandlerThread;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraHandlerThread:Lcom/narvii/chat/video/CameraHandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/video/gles/FullFrameRect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    return-object p0
.end method

.method private static adjustOrigin([F)V
    .locals 7

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    aget v1, p0, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget v2, p0, v2

    .line 8
    const/4 v3, 0x4

    .line 9
    .line 10
    aget v3, p0, v3

    .line 11
    add-float/2addr v2, v3

    .line 12
    .line 13
    const/high16 v3, 0x3f000000    # 0.5f

    .line 14
    mul-float/2addr v2, v3

    .line 15
    sub-float/2addr v1, v2

    .line 16
    .line 17
    aput v1, p0, v0

    .line 18
    .line 19
    const/16 v2, 0xd

    .line 20
    .line 21
    aget v4, p0, v2

    .line 22
    const/4 v5, 0x1

    .line 23
    .line 24
    aget v5, p0, v5

    .line 25
    const/4 v6, 0x5

    .line 26
    .line 27
    aget v6, p0, v6

    .line 28
    add-float/2addr v5, v6

    .line 29
    mul-float/2addr v5, v3

    .line 30
    sub-float/2addr v4, v5

    .line 31
    .line 32
    aput v4, p0, v2

    .line 33
    add-float/2addr v1, v3

    .line 34
    .line 35
    aput v1, p0, v0

    .line 36
    add-float/2addr v4, v3

    .line 37
    .line 38
    aput v4, p0, v2

    .line 39
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/CameraRenderer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDuration:J

    return-wide v0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDurationStop:Ljava/lang/Runnable;

    return-object p0
.end method

.method private configCameraParameters(Landroid/content/Context;Landroid/hardware/Camera;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "continuous-video"

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 20
    .line 21
    :cond_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 28
    .line 29
    const-string p3, "window"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Landroid/view/WindowManager;

    .line 36
    .line 37
    new-instance p3, Landroid/graphics/Point;

    .line 38
    .line 39
    .line 40
    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iget p3, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 54
    .line 55
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p3, v1}, Lcom/narvii/video/ui/camera/CameraUtils;->findSuitablePreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/graphics/Point;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget p3, p1, Landroid/graphics/Point;->x:I

    .line 64
    .line 65
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p3, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 69
    .line 70
    :cond_1
    const/16 p1, 0x11

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 77
    return-void
.end method

.method private configRealFacePosition()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewWidth:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewWidth:I

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    const v1, 0x7f070460

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result v0

    .line 44
    .line 45
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceWidth:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    const v1, 0x7f07045d

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceHeight:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 78
    move-result v1

    .line 79
    add-int/2addr v0, v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    const v2, 0x7f07045f

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v1

    .line 95
    add-int/2addr v0, v1

    .line 96
    .line 97
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    .line 98
    .line 99
    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceHeight:I

    .line 100
    sub-int/2addr v1, v2

    .line 101
    sub-int/2addr v1, v0

    .line 102
    .line 103
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceMarginTop:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    const v1, 0x7f07045e

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    move-result v0

    .line 119
    .line 120
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceMarginLeft:I

    .line 121
    return-void
.end method

.method private configViewPort()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    .line 3
    .line 4
    rem-int/lit16 v1, v0, 0xb4

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    .line 12
    .line 13
    :goto_0
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    .line 14
    .line 15
    rem-int/lit16 v0, v0, 0xb4

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 23
    .line 24
    :goto_1
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/narvii/chat/video/CameraRenderer;->isLandscape:Z

    .line 27
    .line 28
    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    int-to-float v1, v1

    .line 32
    int-to-float v0, v0

    .line 33
    mul-float/2addr v0, v3

    .line 34
    div-float/2addr v1, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    int-to-float v0, v0

    .line 37
    int-to-float v1, v1

    .line 38
    mul-float/2addr v1, v3

    .line 39
    .line 40
    div-float v1, v0, v1

    .line 41
    .line 42
    :goto_2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    .line 43
    int-to-float v2, v0

    .line 44
    .line 45
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    .line 46
    int-to-float v5, v4

    .line 47
    mul-float/2addr v5, v3

    .line 48
    div-float/2addr v2, v5

    .line 49
    .line 50
    cmpl-float v2, v1, v2

    .line 51
    .line 52
    if-ltz v2, :cond_3

    .line 53
    .line 54
    iput v4, p0, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    .line 55
    int-to-float v0, v4

    .line 56
    mul-float/2addr v0, v1

    .line 57
    float-to-int v0, v0

    .line 58
    .line 59
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_3
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    .line 63
    int-to-float v0, v0

    .line 64
    div-float/2addr v0, v1

    .line 65
    float-to-int v0, v0

    .line 66
    .line 67
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    .line 68
    :goto_3
    return-void
.end method

.method private createPreviewBuffer()[B
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x11

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    .line 11
    mul-int/2addr v1, v2

    .line 12
    mul-int/2addr v1, v0

    .line 13
    int-to-long v0, v1

    .line 14
    long-to-double v0, v0

    .line 15
    .line 16
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 17
    div-double/2addr v0, v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 21
    move-result-wide v0

    .line 22
    double-to-int v0, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    new-array v0, v0, [B

    .line 27
    return-object v0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/video/CameraRenderer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/p2a/encoder/Watermark;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    return-object p0
.end method

.method public static getFlipMatrix([F)[F
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    .line 10
    const/high16 v2, -0x40800000    # -1.0f

    .line 11
    .line 12
    const/high16 v3, 0x3f800000    # 1.0f

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/chat/video/CameraRenderer;->adjustOrigin([F)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/narvii/chat/video/CameraRenderer;->multiplyMatrices([F[F)[F

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/video/gles/FullFrameRect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/chat/video/CameraRenderer;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    return-void
.end method

.method private initSurfaceView()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;-><init>(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/chat/video/CameraRenderer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 24
    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/chat/video/CameraRenderer;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/chat/video/CameraRenderer;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStopTime:J

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/chat/p2a/encoder/Watermark;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    return-void
.end method

.method public static multiplyMatrices([F[F)[F
    .locals 7

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v0

    .line 9
    move-object v3, p0

    .line 10
    move-object v5, p1

    .line 11
    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 14
    return-object v0
.end method

.method private openCamera(I)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    .line 3
    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    const-string v0, "begin open camera"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->releaseCamera()V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraHandlerThread:Lcom/narvii/chat/video/CameraHandlerThread;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/CameraHandlerThread;->startCamera(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v1, "window"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/view/WindowManager;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 40
    move-result p1

    .line 41
    .line 42
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    const/4 v0, 0x2

    .line 48
    .line 49
    if-eq p1, v0, :cond_1

    .line 50
    const/4 v0, 0x3

    .line 51
    .line 52
    if-eq p1, v0, :cond_0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    const/16 p1, 0x10e

    .line 56
    .line 57
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    const/16 p1, 0xb4

    .line 61
    .line 62
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    const/16 p1, 0x5a

    .line 66
    .line 67
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p1, 0x0

    .line 70
    .line 71
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_4
    const-string p1, "try to open camera , ignore"

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void
.end method

.method private prepareFramebuffer(II)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "prepareFramebuffer start"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    new-array v2, v1, [I

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    .line 16
    const-string v4, "glGenTextures"

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 20
    .line 21
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 22
    .line 23
    aget v5, v2, v3

    .line 24
    .line 25
    iput v5, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 26
    .line 27
    const/16 v6, 0xde1

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v7, "glBindTexture "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget v7, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-static {v5}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 53
    .line 54
    if-lez v4, :cond_0

    .line 55
    .line 56
    .line 57
    filled-new-array {v4}, [I

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 62
    .line 63
    :cond_0
    const/16 v7, 0xde1

    .line 64
    const/4 v8, 0x0

    .line 65
    .line 66
    const/16 v9, 0x1908

    .line 67
    const/4 v12, 0x0

    .line 68
    .line 69
    const/16 v13, 0x1908

    .line 70
    .line 71
    const/16 v14, 0x1401

    .line 72
    const/4 v15, 0x0

    .line 73
    .line 74
    move/from16 v10, p1

    .line 75
    .line 76
    move/from16 v11, p2

    .line 77
    .line 78
    .line 79
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 80
    .line 81
    const/16 v4, 0x2801

    .line 82
    .line 83
    const/high16 v5, 0x46180000    # 9728.0f

    .line 84
    .line 85
    .line 86
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 87
    .line 88
    const/16 v4, 0x2800

    .line 89
    .line 90
    .line 91
    const v5, 0x46180400    # 9729.0f

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 95
    .line 96
    const/16 v4, 0x2802

    .line 97
    .line 98
    .line 99
    const v5, 0x812f

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 103
    .line 104
    const/16 v4, 0x2803

    .line 105
    .line 106
    .line 107
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 108
    .line 109
    const-string v4, "glTexParameter"

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 116
    .line 117
    const-string v4, "glGenFramebuffers"

    .line 118
    .line 119
    .line 120
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 121
    .line 122
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 123
    .line 124
    aget v2, v2, v3

    .line 125
    .line 126
    iput v2, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 127
    .line 128
    if-lez v4, :cond_1

    .line 129
    .line 130
    .line 131
    filled-new-array {v4}, [I

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 136
    .line 137
    :cond_1
    iget v1, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 138
    .line 139
    .line 140
    const v2, 0x8d40

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    const-string v4, "glBindFramebuffer "

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 166
    .line 167
    const-string v1, "glFramebufferRenderbuffer"

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const v1, 0x8ce0

    .line 174
    .line 175
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 176
    .line 177
    .line 178
    invoke-static {v2, v1, v6, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 179
    .line 180
    const-string v1, "glFramebufferTexture2D"

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 187
    move-result v1

    .line 188
    .line 189
    .line 190
    const v4, 0x8cd5

    .line 191
    .line 192
    if-eq v1, v4, :cond_2

    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    const-string v5, "Framebuffer not complete, status="

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    .line 212
    invoke-static {v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 216
    .line 217
    const-string v1, "prepareFramebuffer done"

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private preparePushFrameBuffer(II)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "prepareFramebuffer start"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    new-array v2, v1, [I

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    .line 16
    const-string v4, "glGenTextures"

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 20
    .line 21
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 22
    .line 23
    aget v5, v2, v3

    .line 24
    .line 25
    iput v5, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 26
    .line 27
    const/16 v6, 0xde1

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v7, "glBindTexture "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget v7, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-static {v5}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 53
    .line 54
    if-lez v4, :cond_0

    .line 55
    .line 56
    .line 57
    filled-new-array {v4}, [I

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 62
    .line 63
    :cond_0
    const/16 v7, 0xde1

    .line 64
    const/4 v8, 0x0

    .line 65
    .line 66
    const/16 v9, 0x1908

    .line 67
    const/4 v12, 0x0

    .line 68
    .line 69
    const/16 v13, 0x1908

    .line 70
    .line 71
    const/16 v14, 0x1401

    .line 72
    const/4 v15, 0x0

    .line 73
    .line 74
    move/from16 v10, p1

    .line 75
    .line 76
    move/from16 v11, p2

    .line 77
    .line 78
    .line 79
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 80
    .line 81
    const/16 v4, 0x2801

    .line 82
    .line 83
    const/high16 v5, 0x46180000    # 9728.0f

    .line 84
    .line 85
    .line 86
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 87
    .line 88
    const/16 v4, 0x2800

    .line 89
    .line 90
    .line 91
    const v5, 0x46180400    # 9729.0f

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 95
    .line 96
    const/16 v4, 0x2802

    .line 97
    .line 98
    .line 99
    const v5, 0x812f

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 103
    .line 104
    const/16 v4, 0x2803

    .line 105
    .line 106
    .line 107
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 108
    .line 109
    const-string v4, "glTexParameter"

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 116
    .line 117
    const-string v4, "glGenFramebuffers"

    .line 118
    .line 119
    .line 120
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 121
    .line 122
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 123
    .line 124
    aget v2, v2, v3

    .line 125
    .line 126
    iput v2, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 127
    .line 128
    if-lez v4, :cond_1

    .line 129
    .line 130
    .line 131
    filled-new-array {v4}, [I

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 136
    .line 137
    :cond_1
    iget v1, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 138
    .line 139
    .line 140
    const v2, 0x8d40

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    const-string v4, "glBindFramebuffer "

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 166
    .line 167
    const-string v1, "glFramebufferRenderbuffer"

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const v1, 0x8ce0

    .line 174
    .line 175
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 176
    .line 177
    .line 178
    invoke-static {v2, v1, v6, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 179
    .line 180
    const-string v1, "glFramebufferTexture2D"

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 187
    move-result v1

    .line 188
    .line 189
    .line 190
    const v4, 0x8cd5

    .line 191
    .line 192
    if-eq v1, v4, :cond_2

    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    const-string v5, "Framebuffer not complete, status="

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    .line 212
    invoke-static {v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 216
    .line 217
    const-string v1, "prepareFramebuffer done"

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private releaseCamera()V
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
    const-string v1, "CameraRenderer --> releaseCamera  Thread -- >"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v1, "release camera"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 79
    :cond_0
    return-void
.end method

.method private selectPreviewFpsRange(Landroid/hardware/Camera;F)[I
    .locals 5

    .line 1
    .line 2
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 3
    mul-float/2addr p2, v0

    .line 4
    float-to-int p2, p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    const v1, 0x7fffffff

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, [I

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    aget v3, v2, v3

    .line 36
    .line 37
    sub-int v3, p2, v3

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    aget v4, v2, v4

    .line 41
    .line 42
    sub-int v4, p2, v4

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 50
    move-result v4

    .line 51
    add-int/2addr v3, v4

    .line 52
    .line 53
    if-ge v3, v1, :cond_0

    .line 54
    move-object v0, v2

    .line 55
    move v1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-object v0
.end method

.method private takeShotCapture()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v2, v0, v1}, Lcom/narvii/util/image/BitmapUtils;->createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->takeShotCaptureListener:Lcom/narvii/chat/video/TakeShotCaptureListener;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Lcom/narvii/chat/video/TakeShotCaptureListener;->onShotCaptureReady(Landroid/graphics/Bitmap;)V

    .line 17
    :cond_0
    return-void
.end method

.method private tryTakeShotCapture()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mIsNeedCaptureShot:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mIsNeedCaptureShot:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->showBlockRender:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->takeShotCapture()V

    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method protected customDrawFrame(I[F)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v0, p1

    .line 5
    .line 6
    iget-object v2, v1, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v2}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onPreDraw()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 15
    .line 16
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    .line 17
    .line 18
    iget v3, v1, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 23
    .line 24
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    iget-boolean v2, v1, Lcom/narvii/chat/video/CameraRenderer;->isLandscape:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    .line 34
    .line 35
    add-int/lit16 v2, v2, 0x10e

    .line 36
    .line 37
    rem-int/lit16 v2, v2, 0x168

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v4

    .line 40
    :goto_0
    int-to-float v2, v2

    .line 41
    .line 42
    move-object/from16 v5, p2

    .line 43
    .line 44
    .line 45
    invoke-static {v5, v2}, Lcom/narvii/video/RendererCommon;->rotateTextureMatrix([FF)[F

    .line 46
    move-result-object v2

    .line 47
    .line 48
    iget v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 49
    .line 50
    .line 51
    const v6, 0x8d40

    .line 52
    .line 53
    .line 54
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 55
    .line 56
    iget-object v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/narvii/chat/video/CameraRenderer;->getFlipMatrix([F)[F

    .line 60
    move-result-object v7

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v0, v7}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 64
    .line 65
    .line 66
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 67
    .line 68
    iget v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 69
    .line 70
    .line 71
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 72
    .line 73
    iget-object v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 77
    .line 78
    .line 79
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 80
    .line 81
    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    .line 82
    .line 83
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    .line 84
    sub-int/2addr v0, v2

    .line 85
    const/4 v4, 0x2

    .line 86
    div-int/2addr v0, v4

    .line 87
    .line 88
    iget v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    .line 89
    .line 90
    iget v6, v1, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    .line 91
    sub-int/2addr v5, v6

    .line 92
    div-int/2addr v5, v4

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v5, v2, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 96
    .line 97
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 98
    .line 99
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 100
    .line 101
    sget-object v12, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2, v12}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 105
    .line 106
    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/narvii/chat/video/CameraRenderer;->tryTakeShotCapture()V

    .line 108
    .line 109
    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    .line 110
    const/4 v2, -0x1

    .line 111
    .line 112
    if-eq v0, v2, :cond_2

    .line 113
    .line 114
    iput v2, v1, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    .line 115
    .line 116
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    .line 117
    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v2}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onTrackStatusChange(I)V

    .line 122
    .line 123
    :cond_2
    iget-object v5, v1, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    .line 124
    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    iget v6, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 128
    .line 129
    iget-object v7, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 130
    .line 131
    iget v8, v1, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 132
    .line 133
    iget v9, v1, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    .line 134
    .line 135
    iget v10, v1, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    .line 136
    .line 137
    .line 138
    invoke-interface/range {v5 .. v10}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;III)V

    .line 139
    .line 140
    :cond_3
    iget-object v5, v1, Lcom/narvii/chat/video/CameraRenderer;->framePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    .line 141
    .line 142
    if-eqz v5, :cond_4

    .line 143
    .line 144
    iget-object v6, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 145
    .line 146
    iget v7, v1, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 147
    const/4 v8, 0x0

    .line 148
    .line 149
    iget v9, v1, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    .line 150
    .line 151
    iget v10, v1, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    .line 152
    move-object v11, v12

    .line 153
    .line 154
    .line 155
    invoke-interface/range {v5 .. v11}, Lcom/narvii/video/framepusher/MediaFramePusher;->pushVideoFrame(Ljavax/microedition/khronos/egl/EGLContext;IIII[F)V

    .line 156
    .line 157
    :cond_4
    iget-object v2, v1, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    .line 158
    monitor-enter v2

    .line 159
    .line 160
    :try_start_0
    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 161
    .line 162
    if-ltz v0, :cond_7

    .line 163
    .line 164
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    iget v5, v1, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 169
    .line 170
    if-ne v5, v4, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v4}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->checkRecordingStatus(I)Z

    .line 174
    move-result v0

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    const/4 v0, 0x5

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    .line 181
    move-result v4

    .line 182
    .line 183
    if-eqz v4, :cond_5

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    .line 187
    move-result-object v0

    .line 188
    goto :goto_1

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    goto :goto_2

    .line 191
    :cond_5
    const/4 v0, 0x4

    .line 192
    .line 193
    .line 194
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    :goto_1
    iget-object v4, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 198
    .line 199
    new-instance v5, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    .line 200
    .line 201
    iget-object v14, v1, Lcom/narvii/chat/video/CameraRenderer;->recordFile:Ljava/io/File;

    .line 202
    .line 203
    iget v15, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 204
    .line 205
    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 206
    .line 207
    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 208
    .line 209
    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 210
    .line 211
    .line 212
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 213
    move-result-object v19

    .line 214
    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 217
    move-result-wide v20

    .line 218
    move-object v13, v5

    .line 219
    .line 220
    move/from16 v16, v6

    .line 221
    .line 222
    move/from16 v17, v7

    .line 223
    .line 224
    move/from16 v18, v0

    .line 225
    .line 226
    .line 227
    invoke-direct/range {v13 .. v21}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;-><init>(Ljava/io/File;IIIILandroid/opengl/EGLContext;J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v5}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->startRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V

    .line 231
    .line 232
    new-instance v0, Lcom/narvii/video/gles/FullFrameRect;

    .line 233
    .line 234
    new-instance v4, Lcom/narvii/video/gles/Texture2dProgram;

    .line 235
    .line 236
    sget-object v5, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 237
    .line 238
    .line 239
    invoke-direct {v4, v5}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v4}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 243
    .line 244
    iput-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 245
    .line 246
    :cond_6
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->checkRecordingStatus(I)Z

    .line 250
    move-result v0

    .line 251
    .line 252
    if-eqz v0, :cond_7

    .line 253
    .line 254
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 255
    .line 256
    iget-object v3, v1, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 257
    .line 258
    iget v4, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3, v4, v12}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->setTextureId(Lcom/narvii/video/gles/FullFrameRect;I[F)V

    .line 262
    .line 263
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 264
    const/4 v3, 0x0

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v3, v12}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameAvailable(Landroid/graphics/SurfaceTexture;[F)V

    .line 268
    :cond_7
    monitor-exit v2

    .line 269
    return-void

    .line 270
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    throw v0
.end method

.method public getRecordDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDuration:J

    return-wide v0
.end method

.method public getRecordStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    return v0
.end method

.method public getRecordTime()J
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    .line 20
    :goto_0
    sub-long/2addr v0, v2

    .line 21
    return-wide v0

    .line 22
    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStopTime:J

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-lez v4, :cond_1

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-wide v2
.end method

.method protected getRotDelta()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getScaleDelta()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCameraNotAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraNotAvailable:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isLandmarksZero([F)Z
    .locals 8

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v4, v0

    .line 5
    move v3, v2

    .line 6
    .line 7
    :goto_0
    const/16 v6, 0x96

    .line 8
    .line 9
    if-ge v3, v6, :cond_0

    .line 10
    .line 11
    aget v6, p1, v3

    .line 12
    float-to-double v6, v6

    .line 13
    add-double/2addr v4, v6

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    cmpl-double p1, v4, v0

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    const/4 v2, 0x1

    .line 22
    :cond_1
    return v2
.end method

.method protected notifyCameraChange()V
    .locals 0

    return-void
.end method

.method public notifyShotCapture(Lcom/narvii/chat/video/TakeShotCaptureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/video/CameraRenderer;->notifyShotCapture(ZLcom/narvii/chat/video/TakeShotCaptureListener;)V

    return-void
.end method

.method public notifyShotCapture(ZLcom/narvii/chat/video/TakeShotCaptureListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->takeShotCaptureListener:Lcom/narvii/chat/video/TakeShotCaptureListener;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mIsNeedCaptureShot:Z

    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->showBlockRender:Z

    return-void
.end method

.method public notifyShotCaptureFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    const-string v3, "CameraRenderer --> onDestroy  Thread -- >"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/chat/video/CameraRenderer;->onPause()V

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/narvii/chat/video/CameraRenderer;->mUpdateTexture:Z

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->release()V

    .line 51
    .line 52
    :cond_0
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 53
    const/4 v5, -0x1

    .line 54
    .line 55
    if-lez v4, :cond_1

    .line 56
    .line 57
    aput v4, v1, v2

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 61
    .line 62
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 63
    .line 64
    :cond_1
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 65
    .line 66
    if-lez v4, :cond_2

    .line 67
    .line 68
    aput v4, v1, v2

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 72
    .line 73
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 74
    .line 75
    :cond_2
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 76
    .line 77
    if-lez v4, :cond_3

    .line 78
    .line 79
    aput v4, v1, v2

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 83
    .line 84
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 85
    .line 86
    :cond_3
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 87
    .line 88
    if-lez v4, :cond_4

    .line 89
    .line 90
    aput v4, v1, v2

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 94
    .line 95
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 103
    .line 104
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 112
    .line 113
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 114
    .line 115
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFiltered:Lcom/narvii/video/gles/FullFrameRect;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 121
    .line 122
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFiltered:Lcom/narvii/video/gles/FullFrameRect;

    .line 123
    .line 124
    :cond_7
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mBuffer:[B

    .line 125
    .line 126
    iput v2, p0, Lcom/narvii/chat/video/CameraRenderer;->frameSkiped:I

    .line 127
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mUpdateTexture:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    return-void

    .line 20
    .line 21
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mtx:[F

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    .line 39
    .line 40
    if-nez p1, :cond_5

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->configViewPort()V

    .line 44
    .line 45
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    .line 46
    .line 47
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewWidth:I

    .line 48
    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    .line 52
    .line 53
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewHeight:I

    .line 54
    .line 55
    if-eq v0, v1, :cond_4

    .line 56
    .line 57
    :cond_3
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->prepareFramebuffer(II)V

    .line 61
    .line 62
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    .line 63
    .line 64
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->preparePushFrameBuffer(II)V

    .line 68
    .line 69
    :cond_4
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    .line 70
    .line 71
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewWidth:I

    .line 72
    .line 73
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    .line 74
    .line 75
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewHeight:I

    .line 76
    const/4 p1, 0x1

    .line 77
    .line 78
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    .line 79
    .line 80
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->forceAvatar:Z

    .line 81
    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->isAvatarReady:Z

    .line 85
    .line 86
    if-nez p1, :cond_6

    .line 87
    return-void

    .line 88
    .line 89
    :cond_6
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraTextureId:I

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mtx:[F

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->customDrawFrame(I[F)V

    .line 95
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mUpdateTexture:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 12
    return-void
.end method

.method public onInitFuSourceResult(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->isAvatarReady:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->forceAvatar:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/chat/video/CameraRenderer$4;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/CameraRenderer$4;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->releaseCamera()V

    .line 11
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraNV21Byte:[B

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mBuffer:[B

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 8
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    .line 17
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewWidth:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->configRealFacePosition()V

    .line 11
    return-void
.end method

.method public onStartSuccess()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/CameraRenderer$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/CameraRenderer$1;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onStopSuccess()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/CameraRenderer$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/CameraRenderer$2;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    .line 3
    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    .line 7
    .line 8
    if-ne v0, p3, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    int-to-float v0, p2

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->renderScaleFactor:F

    .line 13
    mul-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->renderWidth:I

    .line 17
    int-to-float v0, p3

    .line 18
    mul-float/2addr v0, v1

    .line 19
    float-to-int v0, v0

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->renderHeight:I

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v1, "CameraRenderer --> onSurfaceChanged "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p1, " "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, " Thread -- >"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 68
    .line 69
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    .line 70
    .line 71
    iput p3, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    .line 72
    .line 73
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 77
    .line 78
    :try_start_0
    iget p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 79
    .line 80
    .line 81
    invoke-static {p2, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    :catch_0
    iget p2, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 84
    const/4 p3, 0x1

    .line 85
    .line 86
    if-ne p2, p3, :cond_1

    .line 87
    .line 88
    iget p2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 89
    .line 90
    rsub-int p2, p2, 0x168

    .line 91
    .line 92
    rem-int/lit16 p2, p2, 0x168

    .line 93
    .line 94
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_1
    iget p2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 98
    .line 99
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    .line 100
    .line 101
    :goto_0
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 102
    .line 103
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraOrientation:I

    .line 104
    const/4 p1, 0x0

    .line 105
    .line 106
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    .line 107
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v0, "CameraRenderer --> onSurfaceCreated "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, " Thread -- >"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 47
    .line 48
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    .line 49
    .line 50
    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    .line 51
    .line 52
    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 61
    .line 62
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    .line 63
    .line 64
    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFiltered:Lcom/narvii/video/gles/FullFrameRect;

    .line 73
    .line 74
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    .line 75
    .line 76
    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    .line 77
    .line 78
    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 87
    .line 88
    new-instance p1, Lcom/narvii/chat/p2a/render/LandmarksPoints;

    .line 89
    .line 90
    .line 91
    invoke-direct {p1}, Lcom/narvii/chat/p2a/render/LandmarksPoints;-><init>()V

    .line 92
    .line 93
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->points:Lcom/narvii/chat/p2a/render/LandmarksPoints;

    .line 94
    .line 95
    const/high16 p2, 0x40a00000    # 5.0f

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lcom/narvii/chat/p2a/render/LandmarksPoints;->setPointSize(F)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/video/gles/FullFrameRect;->createTextureObject()I

    .line 104
    move-result p1

    .line 105
    .line 106
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraTextureId:I

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 109
    .line 110
    if-eqz p1, :cond_0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/chat/video/CameraRenderer;->notifyCameraChange()V

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 119
    .line 120
    :cond_0
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 121
    .line 122
    iget p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraTextureId:I

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 126
    .line 127
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 131
    .line 132
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    .line 136
    .line 137
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    .line 138
    .line 139
    if-eqz p1, :cond_1

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, p2}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onEglContextReady(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 145
    :cond_1
    return-void
.end method

.method public setBeautyEnlargeValue(F)V
    .locals 0

    return-void
.end method

.method public setBeautySmoothValue(F)V
    .locals 0

    return-void
.end method

.method public setBeautyThinValue(F)V
    .locals 0

    return-void
.end method

.method public setCameraFramePusher(Lcom/narvii/video/framepusher/MediaFramePusher;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->framePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    return-void
.end method

.method public setCameraRendererStatusListener(Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    return-void
.end method

.method public setFaceTrackingStatusChanged(Lcom/narvii/chat/video/CameraRenderer$FaceTrackingStatusChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatusChanged:Lcom/narvii/chat/video/CameraRenderer$FaceTrackingStatusChanged;

    return-void
.end method

.method public setFilterItem(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->isLandscape:Z

    return-void
.end method

.method public setRecordStatusChangeListener(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setShowRealFace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->showRealFace:Z

    return-void
.end method

.method public setupCameraPreview(Landroid/hardware/Camera;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    .line 4
    .line 5
    const-string v1, "end open camera"

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 9
    .line 10
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p2, v0

    .line 18
    .line 19
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraNotAvailable:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 29
    .line 30
    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, v1, v2}, Lcom/narvii/chat/video/CameraRenderer;->configCameraParameters(Landroid/content/Context;Landroid/hardware/Camera;I)V

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    .line 48
    .line 49
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    .line 62
    .line 63
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->createPreviewBuffer()[B

    .line 67
    move-result-object p2

    .line 68
    .line 69
    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mBuffer:[B

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    iget p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p2, v0}, Lcom/narvii/video/ui/camera/CameraUtils;->setCameraDisplayOrientation(Landroid/content/Context;ILandroid/hardware/Camera;)I

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/chat/video/CameraRenderer;->notifyCameraChange()V

    .line 102
    return-void
.end method

.method public shouldShowFaceNotDetectedHint()Z
    .locals 1

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startPreview()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    .line 6
    return-void
.end method

.method public startRecord(Ljava/io/File;Landroid/graphics/Bitmap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-gtz v1, :cond_3

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :try_start_1
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 11
    .line 12
    new-instance v1, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;-><init>()V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->setOnEncoderStatusUpdateListener(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordFile:Ljava/io/File;

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    new-instance p1, Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/narvii/chat/p2a/encoder/Watermark;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->setWatermark(Lcom/narvii/chat/p2a/encoder/Watermark;)V

    .line 47
    .line 48
    const-wide/16 p1, 0x0

    .line 49
    .line 50
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    .line 51
    .line 52
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStopTime:J

    .line 53
    int-to-long p1, p3

    .line 54
    .line 55
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDuration:J

    .line 56
    const/4 p1, 0x2

    .line 57
    .line 58
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    :try_start_2
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    .line 61
    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :goto_1
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    iget p3, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    .line 88
    invoke-interface {p2, p3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 89
    :cond_2
    throw p1

    .line 90
    .line 91
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 95
    throw p1

    .line 96
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    throw p1
.end method

.method public stopPreview()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->releaseCamera()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-lt v1, v2, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->checkRecordingStatus(I)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopRecording()V

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    .line 30
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 31
    .line 32
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 44
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDurationStop:Ljava/lang/Runnable;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    return-void

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw v1
.end method

.method public switchCamera()V
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
    const-string v1, "CameraRenderer --> CameraId "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " Thread -- >"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 38
    move-result v0

    .line 39
    .line 40
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    rem-int/2addr v1, v0

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    .line 47
    return-void
.end method
