.class public Lcom/narvii/chat/video/CameraRenderer;
.super Landroid/opengl/GLSurfaceView;
.source "CameraRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;,
        Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;,
        Lcom/narvii/chat/video/CameraRenderer$FaceTrackingStatusChanged;
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

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    .line 186
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 187
    iput p3, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x500

    .line 73
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    const/16 p2, 0x2d0

    .line 74
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    const/high16 p2, 0x41c00000    # 24.0f

    .line 75
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mRequestedFps:F

    .line 82
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 84
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 85
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    const/16 p2, 0x10

    new-array p2, p2, [F

    .line 89
    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mtx:[F

    const/4 p2, -0x1

    .line 104
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    const p2, 0x3f333333    # 0.7f

    .line 116
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->renderScaleFactor:F

    .line 134
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    .line 344
    new-instance p2, Lcom/narvii/chat/video/CameraRenderer$3;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/CameraRenderer$3;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDurationStop:Ljava/lang/Runnable;

    .line 761
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 762
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 764
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 765
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 196
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mContext:Landroid/content/Context;

    .line 197
    iput-boolean p3, p0, Lcom/narvii/chat/video/CameraRenderer;->forceAvatar:Z

    .line 202
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->initSurfaceView()V

    .line 203
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

    .line 204
    new-instance p1, Lcom/narvii/chat/video/CameraHandlerThread;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/CameraHandlerThread;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraHandlerThread:Lcom/narvii/chat/video/CameraHandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/chat/video/CameraRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/CameraRenderer;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/chat/video/CameraRenderer;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/narvii/chat/video/CameraRenderer;J)J
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/CameraRenderer;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDurationStop:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/chat/video/CameraRenderer;J)J
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStopTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/video/gles/FullFrameRect;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/video/gles/FullFrameRect;)Lcom/narvii/video/gles/FullFrameRect;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/p2a/encoder/Watermark;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/chat/p2a/encoder/Watermark;)Lcom/narvii/chat/p2a/encoder/Watermark;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    return-object p1
.end method

.method private static adjustOrigin([F)V
    .locals 6

    const/16 v0, 0xc

    .line 731
    aget v1, p0, v0

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x4

    aget v3, p0, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v0

    const/16 v1, 0xd

    .line 732
    aget v2, p0, v1

    const/4 v4, 0x1

    aget v4, p0, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    add-float/2addr v4, v5

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    aput v2, p0, v1

    .line 734
    aget v2, p0, v0

    add-float/2addr v2, v3

    aput v2, p0, v0

    .line 735
    aget v0, p0, v1

    add-float/2addr v0, v3

    aput v0, p0, v1

    return-void
.end method

.method private configCameraParameters(Landroid/content/Context;Landroid/hardware/Camera;I)V
    .locals 3

    .line 1099
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-video"

    .line 1101
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1104
    :cond_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1105
    invoke-static {p3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const-string/jumbo p3, "window"

    .line 1106
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1107
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 1108
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1110
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iget p3, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    invoke-static {p1, p3, v1}, Lcom/narvii/video/ui/camera/CameraUtils;->findSuitablePreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1113
    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p3, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :cond_1
    const/16 p1, 0x11

    .line 1123
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 1125
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private configRealFacePosition()V
    .locals 3

    .line 360
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewWidth:I

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewWidth:I

    .line 363
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    if-nez v0, :cond_1

    .line 364
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    .line 367
    :cond_1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070243

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceWidth:I

    .line 368
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceHeight:I

    .line 369
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 370
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceHeight:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceMarginTop:I

    .line 373
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->realFaceMarginLeft:I

    return-void
.end method

.method private configViewPort()V
    .locals 6

    .line 530
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    :goto_0
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    .line 531
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    :goto_1
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    .line 533
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->isLandscape:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    :goto_2
    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v0, v2

    .line 534
    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    int-to-float v5, v4

    mul-float v5, v5, v1

    div-float/2addr v3, v5

    cmpl-float v1, v0, v3

    if-ltz v1, :cond_3

    .line 536
    iput v4, p0, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    int-to-float v1, v4

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 537
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    goto :goto_3

    .line 539
    :cond_3
    iput v2, p0, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 540
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    :goto_3
    return-void
.end method

.method private createPreviewBuffer()[B
    .locals 4

    const/16 v0, 0x11

    .line 1208
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 1209
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    mul-int v1, v1, v2

    mul-int v1, v1, v0

    int-to-long v0, v1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 1210
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 1211
    new-array v0, v0, [B

    return-object v0
.end method

.method public static getFlipMatrix([F)[F
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 718
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 719
    invoke-static {v0, v1, v3, v2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 720
    invoke-static {v0}, Lcom/narvii/chat/video/CameraRenderer;->adjustOrigin([F)V

    .line 721
    invoke-static {p0, v0}, Lcom/narvii/chat/video/CameraRenderer;->multiplyMatrices([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method private initSurfaceView()V
    .locals 1

    .line 208
    new-instance v0, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;

    invoke-direct {v0, p0, p0}, Lcom/narvii/chat/video/CameraRenderer$MyContextFactory;-><init>(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/chat/video/CameraRenderer;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 v0, 0x2

    .line 210
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 211
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public static multiplyMatrices([F[F)[F
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v5, p1

    .line 726
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-object v0
.end method

.method private openCamera(I)V
    .locals 2

    .line 1045
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    if-nez v0, :cond_4

    const-string v0, "begin open camera"

    .line 1046
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->releaseCamera()V

    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    .line 1049
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraHandlerThread:Lcom/narvii/chat/video/CameraHandlerThread;

    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/CameraHandlerThread;->startCamera(I)V

    .line 1050
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1051
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    .line 1052
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    .line 1063
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    .line 1060
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    .line 1057
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1054
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "try to open camera , ignore"

    .line 1067
    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private prepareFramebuffer(II)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "prepareFramebuffer start"

    .line 768
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 773
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v4, "glGenTextures"

    .line 774
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 775
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 776
    aget v5, v2, v3

    iput v5, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 777
    iget v5, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    const/16 v6, 0xde1

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glBindTexture "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    if-lez v4, :cond_0

    new-array v5, v1, [I

    aput v4, v5, v3

    .line 783
    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    const/4 v15, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 787
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v4, 0x2801

    const/high16 v5, 0x46180000    # 9728.0f

    .line 792
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    const v5, 0x46180400    # 9729.0f

    .line 794
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v5, 0x812f

    .line 796
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 798
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v4, "glTexParameter"

    .line 800
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 803
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v4, "glGenFramebuffers"

    .line 804
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 805
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 806
    aget v2, v2, v3

    iput v2, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    if-lez v4, :cond_1

    new-array v2, v1, [I

    aput v4, v2, v3

    .line 810
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 812
    :cond_1
    iget v1, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glBindFramebuffer "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const-string v1, "glFramebufferRenderbuffer"

    .line 815
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v1, 0x8ce0

    .line 816
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    invoke-static {v2, v1, v6, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string v1, "glFramebufferTexture2D"

    .line 818
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 821
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v4, 0x8cd5

    if-eq v1, v4, :cond_2

    .line 823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Framebuffer not complete, status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 827
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v1, "prepareFramebuffer done"

    .line 829
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private preparePushFrameBuffer(II)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "prepareFramebuffer start"

    .line 833
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 838
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v4, "glGenTextures"

    .line 839
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 840
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 841
    aget v5, v2, v3

    iput v5, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 842
    iget v5, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    const/16 v6, 0xde1

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glBindTexture "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    if-lez v4, :cond_0

    new-array v5, v1, [I

    aput v4, v5, v3

    .line 848
    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    const/4 v15, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 852
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v4, 0x2801

    const/high16 v5, 0x46180000    # 9728.0f

    .line 857
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2800

    const v5, 0x46180400    # 9729.0f

    .line 859
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v5, 0x812f

    .line 861
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 863
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v4, "glTexParameter"

    .line 865
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 868
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v4, "glGenFramebuffers"

    .line 869
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 870
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 871
    aget v2, v2, v3

    iput v2, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    if-lez v4, :cond_1

    new-array v2, v1, [I

    aput v4, v2, v3

    .line 875
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 877
    :cond_1
    iget v1, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glBindFramebuffer "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const-string v1, "glFramebufferRenderbuffer"

    .line 880
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v1, 0x8ce0

    .line 881
    iget v4, v0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    invoke-static {v2, v1, v6, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string v1, "glFramebufferTexture2D"

    .line 883
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 886
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v4, 0x8cd5

    if-eq v1, v4, :cond_2

    .line 888
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Framebuffer not complete, status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 892
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v1, "prepareFramebuffer done"

    .line 894
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraRenderer --> releaseCamera  Thread -- >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    .line 1034
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1036
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1038
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1039
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 1040
    iput-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method private selectPreviewFpsRange(Landroid/hardware/Camera;F)[I
    .locals 5

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 1187
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p1

    .line 1188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    .line 1189
    aget v3, v2, v3

    sub-int v3, p2, v3

    const/4 v4, 0x1

    .line 1190
    aget v4, v2, v4

    sub-int v4, p2, v4

    .line 1191
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private takeShotCapture()V
    .locals 3

    .line 508
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/narvii/util/image/BitmapUtils;->createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->takeShotCaptureListener:Lcom/narvii/chat/video/TakeShotCaptureListener;

    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v1, v0}, Lcom/narvii/chat/video/TakeShotCaptureListener;->onShotCaptureReady(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private tryTakeShotCapture()V
    .locals 1

    .line 739
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mIsNeedCaptureShot:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 740
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mIsNeedCaptureShot:Z

    .line 741
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->showBlockRender:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 742
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    .line 744
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 745
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->takeShotCapture()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected customDrawFrame(I[F)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 554
    iget-object v2, v1, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    if-eqz v2, :cond_0

    .line 555
    invoke-interface {v2}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onPreDraw()V

    .line 650
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 655
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    iget v3, v1, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 657
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 658
    iget-boolean v2, v1, Lcom/narvii/chat/video/CameraRenderer;->isLandscape:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->lastDisplayRotation:I

    add-int/lit16 v2, v2, 0x10e

    rem-int/lit16 v2, v2, 0x168

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    int-to-float v2, v2

    move-object/from16 v5, p2

    .line 659
    invoke-static {v5, v2}, Lcom/narvii/video/RendererCommon;->rotateTextureMatrix([FF)[F

    move-result-object v2

    .line 662
    iget v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 663
    iget-object v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    invoke-static {v2}, Lcom/narvii/chat/video/CameraRenderer;->getFlipMatrix([F)[F

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 664
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 667
    iget v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 668
    iget-object v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    invoke-virtual {v5, v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 669
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 672
    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    sub-int/2addr v0, v2

    const/4 v4, 0x2

    div-int/2addr v0, v4

    iget v5, v1, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    iget v6, v1, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v4

    invoke-static {v0, v5, v2, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 674
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    sget-object v5, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {v0, v2, v5}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/narvii/chat/video/CameraRenderer;->tryTakeShotCapture()V

    .line 678
    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 679
    iput v2, v1, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    .line 680
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    if-eqz v0, :cond_3

    .line 681
    iget v2, v1, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatus:I

    invoke-interface {v0, v2}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onTrackStatusChange(I)V

    .line 685
    :cond_3
    iget-object v5, v1, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    if-eqz v5, :cond_4

    .line 686
    iget v6, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    iget-object v7, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget v8, v1, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    iget v9, v1, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    iget v10, v1, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    invoke-interface/range {v5 .. v10}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;III)V

    .line 689
    :cond_4
    iget-object v11, v1, Lcom/narvii/chat/video/CameraRenderer;->framePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    if-eqz v11, :cond_5

    .line 690
    iget-object v12, v1, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget v13, v1, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    const/4 v14, 0x0

    iget v15, v1, Lcom/narvii/chat/video/CameraRenderer;->targetWidth:I

    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->targetHeight:I

    sget-object v17, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    move/from16 v16, v0

    invoke-interface/range {v11 .. v17}, Lcom/narvii/video/framepusher/MediaFramePusher;->pushVideoFrame(Ljavax/microedition/khronos/egl/EGLContext;IIII[F)V

    .line 695
    :cond_5
    iget-object v2, v1, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    monitor-enter v2

    .line 696
    :try_start_0
    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    if-ltz v0, :cond_8

    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    if-eqz v0, :cond_8

    .line 697
    iget v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    if-ne v0, v4, :cond_7

    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-virtual {v0, v4}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->checkRecordingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    .line 699
    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 700
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x4

    .line 702
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 704
    :goto_2
    iget-object v4, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    new-instance v14, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;

    iget-object v6, v1, Lcom/narvii/chat/video/CameraRenderer;->recordFile:Ljava/io/File;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v8, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget v10, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 705
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;-><init>(Ljava/io/File;IIIILandroid/opengl/EGLContext;J)V

    .line 704
    invoke-virtual {v4, v14}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->startRecording(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$EncoderConfig;)V

    .line 706
    new-instance v0, Lcom/narvii/video/gles/FullFrameRect;

    new-instance v4, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object v5, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {v4, v5}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {v0, v4}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 708
    :cond_7
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-virtual {v0, v3}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->checkRecordingStatus(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 709
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    iget-object v3, v1, Lcom/narvii/chat/video/CameraRenderer;->recordDisplay:Lcom/narvii/video/gles/FullFrameRect;

    iget v4, v1, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    sget-object v5, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {v0, v3, v4, v5}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->setTextureId(Lcom/narvii/video/gles/FullFrameRect;I[F)V

    .line 710
    iget-object v0, v1, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    const/4 v3, 0x0

    sget-object v4, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {v0, v3, v4}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->frameAvailable(Landroid/graphics/SurfaceTexture;[F)V

    .line 713
    :cond_8
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecordDuration()J
    .locals 2

    .line 241
    iget-wide v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDuration:J

    return-wide v0
.end method

.method public getRecordStatus()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    return v0
.end method

.method public getRecordTime()J
    .locals 5

    .line 231
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-wide v3, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 234
    :cond_0
    iget-wide v3, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 235
    iget-wide v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    sub-long/2addr v3, v0

    return-wide v3

    :cond_1
    return-wide v1
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

    .line 1095
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraNotAvailable:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .line 912
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

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x96

    if-ge v3, v6, :cond_0

    .line 752
    aget v6, p1, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmpl-double p1, v4, v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected notifyCameraChange()V
    .locals 0

    return-void
.end method

.method public notifyShotCapture(Lcom/narvii/chat/video/TakeShotCaptureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 516
    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/video/CameraRenderer;->notifyShotCapture(ZLcom/narvii/chat/video/TakeShotCaptureListener;)V

    return-void
.end method

.method public notifyShotCapture(ZLcom/narvii/chat/video/TakeShotCaptureListener;)V
    .locals 0

    .line 520
    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->takeShotCaptureListener:Lcom/narvii/chat/video/TakeShotCaptureListener;

    const/4 p2, 0x1

    .line 521
    iput-boolean p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mIsNeedCaptureShot:Z

    .line 522
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->showBlockRender:Z

    return-void
.end method

.method public notifyShotCaptureFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    return-void
.end method

.method public onDestroy()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraRenderer --> onDestroy  Thread -- >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/narvii/chat/video/CameraRenderer;->onPause()V

    const/4 v2, 0x0

    .line 982
    iput-boolean v2, p0, Lcom/narvii/chat/video/CameraRenderer;->mUpdateTexture:Z

    .line 983
    iput-boolean v2, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    .line 984
    iget-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x0

    .line 985
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 986
    iget-object v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_0

    .line 987
    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->release()V

    .line 989
    :cond_0
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    const/4 v5, -0x1

    if-lez v4, :cond_1

    aput v4, v1, v2

    .line 991
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 992
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mOffscreenTexture:I

    .line 994
    :cond_1
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    if-lez v4, :cond_2

    aput v4, v1, v2

    .line 996
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 997
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFrameTexture:I

    .line 999
    :cond_2
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    if-lez v4, :cond_3

    aput v4, v1, v2

    .line 1001
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1002
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mFramebuffer:I

    .line 1004
    :cond_3
    iget v4, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    if-lez v4, :cond_4

    aput v4, v1, v2

    .line 1006
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1007
    iput v5, p0, Lcom/narvii/chat/video/CameraRenderer;->mPushFramebuffer:I

    .line 1009
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    if-eqz v0, :cond_5

    .line 1010
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 1011
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 1013
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    if-eqz v0, :cond_6

    .line 1014
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 1015
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 1017
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFiltered:Lcom/narvii/video/gles/FullFrameRect;

    if-eqz v0, :cond_7

    .line 1018
    invoke-virtual {v0, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 1019
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFiltered:Lcom/narvii/video/gles/FullFrameRect;

    .line 1021
    :cond_7
    iput-object v3, p0, Lcom/narvii/chat/video/CameraRenderer;->mBuffer:[B

    .line 1022
    iput v2, p0, Lcom/narvii/chat/video/CameraRenderer;->frameSkiped:I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 469
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mUpdateTexture:Z

    if-nez p1, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 476
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    if-eqz p1, :cond_2

    return-void

    .line 481
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 482
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mtx:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 484
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    if-nez p1, :cond_5

    .line 488
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->configViewPort()V

    .line 489
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewWidth:I

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewHeight:I

    if-eq p1, v0, :cond_4

    .line 490
    :cond_3
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->prepareFramebuffer(II)V

    .line 491
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->preparePushFrameBuffer(II)V

    .line 493
    :cond_4
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewWidth:I

    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewWidth:I

    .line 494
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->actualPreviewHeight:I

    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->oldPreViewHeight:I

    const/4 p1, 0x1

    .line 495
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    .line 498
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->forceAvatar:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->isAvatarReady:Z

    if-nez p1, :cond_6

    return-void

    .line 502
    :cond_6
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraTextureId:I

    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mtx:[F

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/CameraRenderer;->customDrawFrame(I[F)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 378
    iget-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->blockingRender:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mUpdateTexture:Z

    .line 382
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public onInitFuSourceResult(Z)V
    .locals 1

    .line 392
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->isAvatarReady:Z

    .line 393
    iget-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->forceAvatar:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 394
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    if-eqz p1, :cond_0

    .line 395
    new-instance p1, Lcom/narvii/chat/video/CameraRenderer$4;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/CameraRenderer$4;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 917
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 918
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->releaseCamera()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraNV21Byte:[B

    .line 388
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mBuffer:[B

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 925
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 926
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 353
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 354
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewWidth:I

    .line 355
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->viewHeight:I

    .line 356
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->configRealFacePosition()V

    return-void
.end method

.method public onStartSuccess()V
    .locals 1

    .line 299
    new-instance v0, Lcom/narvii/chat/video/CameraRenderer$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/CameraRenderer$1;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopSuccess()V
    .locals 1

    .line 320
    new-instance v0, Lcom/narvii/chat/video/CameraRenderer$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/CameraRenderer$2;-><init>(Lcom/narvii/chat/video/CameraRenderer;)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 441
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    int-to-float v0, p2

    .line 445
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->renderScaleFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->renderWidth:I

    int-to-float v0, p3

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 446
    iput v0, p0, Lcom/narvii/chat/video/CameraRenderer;->renderHeight:I

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraRenderer --> onSurfaceChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Thread -- >"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 450
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewWidth:I

    .line 451
    iput p3, p0, Lcom/narvii/chat/video/CameraRenderer;->mViewHeight:I

    .line 452
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 454
    :try_start_0
    iget p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    invoke-static {p2, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 458
    :goto_0
    iget p2, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 459
    iget p2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rsub-int p2, p2, 0x168

    rem-int/lit16 p2, p2, 0x168

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    goto :goto_1

    .line 461
    :cond_1
    iget p2, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraRotation:I

    .line 463
    :goto_1
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraOrientation:I

    const/4 p1, 0x0

    .line 464
    iput-boolean p1, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 407
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    .line 408
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->isParamSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraRenderer --> onSurfaceCreated "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Thread -- >"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 410
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFUDisplay:Lcom/narvii/video/gles/FullFrameRect;

    .line 411
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenFiltered:Lcom/narvii/video/gles/FullFrameRect;

    .line 412
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    .line 414
    new-instance p1, Lcom/narvii/chat/p2a/render/LandmarksPoints;

    invoke-direct {p1}, Lcom/narvii/chat/p2a/render/LandmarksPoints;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->points:Lcom/narvii/chat/p2a/render/LandmarksPoints;

    .line 415
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->points:Lcom/narvii/chat/p2a/render/LandmarksPoints;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Lcom/narvii/chat/p2a/render/LandmarksPoints;->setPointSize(F)V

    .line 416
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mFullScreenCamera:Lcom/narvii/video/gles/FullFrameRect;

    invoke-virtual {p1}, Lcom/narvii/video/gles/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraTextureId:I

    .line 417
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/narvii/chat/video/CameraRenderer;->notifyCameraChange()V

    .line 419
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 421
    :cond_0
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraTextureId:I

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 422
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 423
    iget p1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    .line 424
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    if-eqz p1, :cond_1

    .line 425
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onEglContextReady(Ljavax/microedition/khronos/egl/EGLContext;)V

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

    .line 160
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->framePusher:Lcom/narvii/video/framepusher/MediaFramePusher;

    return-void
.end method

.method public setCameraRendererStatusListener(Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    return-void
.end method

.method public setFaceTrackingStatusChanged(Lcom/narvii/chat/video/CameraRenderer$FaceTrackingStatusChanged;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->faceTrackingStatusChanged:Lcom/narvii/chat/video/CameraRenderer$FaceTrackingStatusChanged;

    return-void
.end method

.method public setFilterItem(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    .line 220
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

    .line 245
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setShowRealFace(Z)V
    .locals 0

    .line 216
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

    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->openCameraRequestSent:Z

    const-string v1, "end open camera"

    .line 1073
    invoke-static {v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 1074
    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    .line 1075
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 1076
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraNotAvailable:Z

    .line 1077
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-nez p2, :cond_1

    return-void

    .line 1081
    :cond_1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    invoke-direct {p0, p2, v1, v2}, Lcom/narvii/chat/video/CameraRenderer;->configCameraParameters(Landroid/content/Context;Landroid/hardware/Camera;I)V

    .line 1082
    iput-boolean v0, p0, Lcom/narvii/chat/video/CameraRenderer;->viewPortSeted:Z

    .line 1083
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewHeight:I

    .line 1084
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    iput p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraPreviewWidth:I

    .line 1085
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->createPreviewBuffer()[B

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mBuffer:[B

    .line 1086
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mBuffer:[B

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1087
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1088
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1089
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-static {p1, p2, v0}, Lcom/narvii/video/ui/camera/CameraUtils;->setCameraDisplayOrientation(Landroid/content/Context;ILandroid/hardware/Camera;)I

    .line 1090
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 1091
    invoke-virtual {p0}, Lcom/narvii/chat/video/CameraRenderer;->notifyCameraChange()V

    return-void
.end method

.method public shouldShowFaceNotDetectedHint()Z
    .locals 1

    .line 758
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

    .line 943
    iget v0, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    return-void
.end method

.method public startRecord(Ljava/io/File;Landroid/graphics/Bitmap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    .line 257
    :try_start_1
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 259
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 262
    new-instance v1, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-direct {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    .line 263
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-virtual {v1, p0}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->setOnEncoderStatusUpdateListener(Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder$OnEncoderStatusUpdateListener;)V

    .line 264
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordFile:Ljava/io/File;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 265
    :cond_0
    new-instance p1, Lcom/narvii/chat/p2a/encoder/Watermark;

    invoke-direct {p1, p2}, Lcom/narvii/chat/p2a/encoder/Watermark;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 266
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordWatermark:Lcom/narvii/chat/p2a/encoder/Watermark;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->setWatermark(Lcom/narvii/chat/p2a/encoder/Watermark;)V

    const-wide/16 p1, 0x0

    .line 267
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStartTime:J

    .line 268
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStopTime:J

    int-to-long p1, p3

    .line 269
    iput-wide p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDuration:J

    const/4 p1, 0x2

    .line 271
    iput p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    iget p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 277
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 273
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_2

    .line 274
    iget-object p2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    iget p3, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 276
    :cond_2
    throw p1

    .line 254
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 277
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 250
    :cond_4
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw p1
.end method

.method public stopPreview()V
    .locals 1

    .line 933
    invoke-direct {p0}, Lcom/narvii/chat/video/CameraRenderer;->releaseCamera()V

    .line 934
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 936
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer;->recordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 283
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-virtual {v1, v2}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->checkRecordingStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordEncoder:Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;

    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/TextureMovieEncoder;->stopRecording()V

    const/4 v1, 0x1

    .line 285
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 287
    iput v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordListener:Lcom/narvii/util/Callback;

    iget v2, p0, Lcom/narvii/chat/video/CameraRenderer;->recordStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 293
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer;->recordDurationStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 293
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public switchCamera()V
    .locals 2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraRenderer --> CameraId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Thread -- >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 906
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 907
    iget v1, p0, Lcom/narvii/chat/video/CameraRenderer;->cameraId:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v0

    .line 908
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/CameraRenderer;->openCamera(I)V

    return-void
.end method
