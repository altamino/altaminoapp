.class public Lio/agora/rtc/mediaio/AgoraBufferedCamera2;
.super Lio/agora/rtc/mediaio/CameraSource;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final STATE_WAITING_NON_PRECAPTURE:I = 0x3

.field private static final STATE_WAITING_PRECAPTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AgoraBufferedCamera2"


# instance fields
.field private cameraOrientation:I

.field private isCameraFrontFacing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBufferArrayData:[B

.field private mByteBufferData:Ljava/nio/ByteBuffer;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mContext:Landroid/content/Context;

.field private mFlashSupported:Z

.field private mImageReader:Landroid/media/ImageReader;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/mediaio/CameraSource;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    .line 2
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 3
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 4
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 5
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Lio/agora/rtc/mediaio/CaptureParameters;

    invoke-direct {p1}, Lio/agora/rtc/mediaio/CaptureParameters;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    const/16 v0, 0x280

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    const/16 v0, 0x1e0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    const/16 v0, 0xf

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->fps:I

    .line 7
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 8
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 9
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->CAMERA:Lio/agora/rtc/mediaio/MediaIO$CaptureType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 10
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->NONE:Lio/agora/rtc/mediaio/MediaIO$ContentHint;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->intValue()I

    move-result v0

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/agora/rtc/mediaio/CaptureParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parameters"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/agora/rtc/mediaio/CameraSource;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    .line 12
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 13
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$1;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 14
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 15
    new-instance v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$3;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 16
    new-instance p1, Lio/agora/rtc/mediaio/CaptureParameters;

    invoke-direct {p1}, Lio/agora/rtc/mediaio/CaptureParameters;-><init>()V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 17
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    .line 18
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    .line 19
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->fps:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->fps:I

    .line 20
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 21
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 22
    iget v0, p2, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    iput v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    .line 23
    iget p2, p2, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    iput p2, p1, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 3
    return-object p1
.end method

.method static synthetic access$1200(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Landroid/media/Image;[B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    .line 4
    return-void
.end method

.method static synthetic access$300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->getFrameOrientation()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Lio/agora/rtc/mediaio/CaptureParameters;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mByteBufferData:Ljava/nio/ByteBuffer;

    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->createCameraPreviewSession()V

    .line 4
    return-void
.end method

.method static synthetic access$800(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    .line 3
    return p0
.end method

.method static synthetic access$902(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mState:I

    .line 3
    return p1
.end method

.method private allocateBuffer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixelFormat"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 11
    .line 12
    iget v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    .line 13
    .line 14
    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    .line 15
    mul-int/2addr v0, p1

    .line 16
    .line 17
    const/16 p1, 0x23

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    .line 21
    move-result p1

    .line 22
    mul-int/2addr v0, p1

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x8

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 29
    .line 30
    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 31
    .line 32
    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_ARRAY:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-ne p1, v1, :cond_1

    .line 39
    .line 40
    new-array p1, v0, [B

    .line 41
    .line 42
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 46
    .line 47
    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 48
    .line 49
    sget-object v1, Lio/agora/rtc/mediaio/MediaIO$BufferType;->BYTE_BUFFER:Lio/agora/rtc/mediaio/MediaIO$BufferType;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    .line 53
    move-result v1

    .line 54
    .line 55
    if-ne p1, v1, :cond_2

    .line 56
    .line 57
    new-array p1, v0, [B

    .line 58
    .line 59
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mByteBufferData:Ljava/nio/ByteBuffer;

    .line 66
    :cond_2
    :goto_1
    return-void
.end method

.method private static chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "choices",
            "textureViewWidth",
            "textureViewHeight",
            "maxWidth",
            "maxHeight",
            "aspectRatio"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    .line 18
    move-result p5

    .line 19
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    move v5, v4

    .line 22
    .line 23
    :goto_0
    if-ge v5, v3, :cond_2

    .line 24
    .line 25
    aget-object v6, p0, v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 29
    move-result v7

    .line 30
    .line 31
    if-gt v7, p3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 35
    move-result v7

    .line 36
    .line 37
    if-gt v7, p4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 41
    move-result v7

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 45
    move-result v8

    .line 46
    mul-int/2addr v8, p5

    .line 47
    div-int/2addr v8, v2

    .line 48
    .line 49
    if-ne v7, v8, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 53
    move-result v7

    .line 54
    .line 55
    if-lt v7, p1, :cond_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 59
    move-result v7

    .line 60
    .line 61
    if-lt v7, p2, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    move-result p1

    .line 76
    .line 77
    if-lez p1, :cond_3

    .line 78
    .line 79
    new-instance p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    check-cast p0, Landroid/util/Size;

    .line 89
    return-object p0

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 93
    move-result p1

    .line 94
    .line 95
    if-lez p1, :cond_4

    .line 96
    .line 97
    new-instance p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$CompareSizesByArea;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    check-cast p0, Landroid/util/Size;

    .line 107
    return-object p0

    .line 108
    .line 109
    :cond_4
    sget-object p1, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    const-string p2, "Couldn\'t find any suitable preview size"

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    aget-object p0, p0, v4

    .line 117
    return-object p0
.end method

.method private closeCamera()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 6
    .line 7
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 14
    .line 15
    iput-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 28
    .line 29
    iput-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 37
    .line 38
    iput-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 44
    return-void

    .line 45
    .line 46
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    const-string v2, "Interrupted while trying to lock camera closing."

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    :goto_2
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 58
    throw v0
.end method

.method private createCameraPreviewSession()V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 10
    .line 11
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 21
    .line 22
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 30
    .line 31
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 32
    .line 33
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 34
    const/4 v4, 0x3

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 42
    .line 43
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 44
    .line 45
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 46
    .line 47
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 51
    .line 52
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mFlashSupported:Z

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 57
    const/4 v3, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 70
    .line 71
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 79
    .line 80
    new-array v0, v1, [Landroid/view/Surface;

    .line 81
    .line 82
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 86
    move-result-object v1

    .line 87
    const/4 v2, 0x0

    .line 88
    .line 89
    aput-object v1, v0, v2

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 96
    .line 97
    new-instance v2, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;-><init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    .line 101
    const/4 v3, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_2

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :goto_2
    return-void
.end method

.method private doStop()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->closeCamera()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->stopBackgroundThread()V

    .line 7
    return-void
.end method

.method private getAndroidImageFormat(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaioFormat"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->I420:Lio/agora/rtc/mediaio/MediaIO$PixelFormat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x23

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method private getDeviceOrientation()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "window"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/view/WindowManager;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    const/4 v1, 0x2

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    const/4 v1, 0x3

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    const/16 v0, 0x10e

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    const/16 v0, 0xb4

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    const/16 v0, 0x5a

    .line 39
    :goto_0
    return v0
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->getDeviceOrientation()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->isCameraFrontFacing:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    rsub-int v0, v0, 0x168

    .line 11
    .line 12
    :cond_0
    iget v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->cameraOrientation:I

    .line 13
    add-int/2addr v1, v0

    .line 14
    .line 15
    rem-int/lit16 v1, v1, 0x168

    .line 16
    return v1
.end method

.method private openCamera(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->setUpCameraOutputs(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string p2, "camera"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 14
    .line 15
    :try_start_0
    iget-object p2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 16
    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    const-wide/16 v1, 0x9c4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1, v2, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 23
    move-result p2

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraId:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 30
    .line 31
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 35
    goto :goto_3

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :catch_2
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    const-string p2, "Time out waiting to lock camera opening."

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    :goto_0
    sget-object p2, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string v0, "Interrupted while trying to lock camera opening."

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw p2

    .line 68
    .line 69
    :goto_2
    sget-object p2, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_3
    return-void
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "data"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    move v6, v5

    .line 18
    :goto_0
    array-length v7, v3

    .line 19
    .line 20
    if-ge v5, v7, :cond_6

    .line 21
    .line 22
    aget-object v7, v3, v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 26
    move-result-object v7

    .line 27
    .line 28
    aget-object v8, v3, v5

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    .line 32
    move-result v8

    .line 33
    .line 34
    aget-object v9, v3, v5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 38
    move-result v9

    .line 39
    .line 40
    if-nez v5, :cond_0

    .line 41
    move v10, v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    div-int/lit8 v10, v1, 0x2

    .line 45
    .line 46
    :goto_1
    if-nez v5, :cond_1

    .line 47
    move v11, v2

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    div-int/lit8 v11, v2, 0x2

    .line 51
    :goto_2
    const/4 v12, 0x1

    .line 52
    .line 53
    if-ne v9, v12, :cond_2

    .line 54
    .line 55
    if-ne v8, v10, :cond_2

    .line 56
    mul-int/2addr v10, v11

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v0, v6, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 60
    add-int/2addr v6, v10

    .line 61
    goto :goto_6

    .line 62
    .line 63
    :cond_2
    new-array v12, v8, [B

    .line 64
    move v13, v4

    .line 65
    .line 66
    :goto_3
    add-int/lit8 v14, v11, -0x1

    .line 67
    .line 68
    if-ge v13, v14, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v12, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 72
    move v14, v4

    .line 73
    .line 74
    :goto_4
    if-ge v14, v10, :cond_3

    .line 75
    .line 76
    add-int/lit8 v15, v6, 0x1

    .line 77
    .line 78
    mul-int v16, v14, v9

    .line 79
    .line 80
    aget-byte v16, v12, v16

    .line 81
    .line 82
    aput-byte v16, v0, v6

    .line 83
    .line 84
    add-int/lit8 v14, v14, 0x1

    .line 85
    move v6, v15

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 89
    goto :goto_3

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    .line 93
    move-result v11

    .line 94
    .line 95
    .line 96
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    .line 97
    move-result v8

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v12, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 101
    move v7, v4

    .line 102
    .line 103
    :goto_5
    if-ge v7, v10, :cond_5

    .line 104
    .line 105
    add-int/lit8 v8, v6, 0x1

    .line 106
    .line 107
    mul-int v11, v7, v9

    .line 108
    .line 109
    aget-byte v11, v12, v11

    .line 110
    .line 111
    aput-byte v11, v0, v6

    .line 112
    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 114
    move v6, v8

    .line 115
    goto :goto_5

    .line 116
    .line 117
    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_6
    return-void
.end method

.method private setUpCameraOutputs(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string p2, "camera"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    array-length v2, p2

    .line 18
    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    aget-object v2, p2, v1

    .line 22
    .line 23
    iput-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCameraId:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iput-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 30
    .line 31
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v2

    .line 42
    .line 43
    iput v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->cameraOrientation:I

    .line 44
    .line 45
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 46
    .line 47
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Ljava/lang/Boolean;

    .line 54
    .line 55
    if-nez v2, :cond_0

    .line 56
    move v2, v0

    .line 57
    goto :goto_1

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    move-result v2

    .line 62
    .line 63
    :goto_1
    iput-boolean v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mFlashSupported:Z

    .line 64
    .line 65
    iget-boolean v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->isCameraFrontFacing:Z

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 70
    .line 71
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    check-cast v2, Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result v2

    .line 82
    .line 83
    if-nez v2, :cond_1

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_2
    :goto_2
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 92
    .line 93
    iget p2, p1, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    .line 94
    .line 95
    iget v0, p1, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    .line 96
    .line 97
    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->getAndroidImageFormat(I)I

    .line 101
    move-result p1

    .line 102
    const/4 v1, 0x2

    .line 103
    .line 104
    .line 105
    invoke-static {p2, v0, p1, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 109
    .line 110
    iget-object p2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 111
    .line 112
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    goto :goto_4

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    :catch_1
    :goto_4
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    const-string v1, "CameraBackground"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 17
    .line 18
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public getBufferType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 3
    .line 4
    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->bufferType:I

    .line 5
    return v0
.end method

.method public getCaptureType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 3
    .line 4
    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->captureType:I

    .line 5
    return v0
.end method

.method public getContentHint()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 3
    .line 4
    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->contentHint:I

    .line 5
    return v0
.end method

.method public onDispose()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->doStop()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mBufferArrayData:[B

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mByteBufferData:Ljava/nio/ByteBuffer;

    .line 9
    return-void
.end method

.method public onInitialize(Lio/agora/rtc/mediaio/IVideoFrameConsumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/CameraSource;->consumer:Lio/agora/rtc/mediaio/IVideoFrameConsumer;

    .line 3
    .line 4
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 5
    .line 6
    iget p1, p1, Lio/agora/rtc/mediaio/CaptureParameters;->pixelFormat:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->allocateBuffer(I)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public onStart()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->startBackgroundThread()V

    .line 4
    .line 5
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->mParameters:Lio/agora/rtc/mediaio/CaptureParameters;

    .line 6
    .line 7
    iget v1, v0, Lio/agora/rtc/mediaio/CaptureParameters;->width:I

    .line 8
    .line 9
    iget v0, v0, Lio/agora/rtc/mediaio/CaptureParameters;->height:I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1, v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->openCamera(II)V

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method public onStop()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->doStop()V

    .line 4
    return-void
.end method

.method public useFrontCamera(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "front"
        }
    .end annotation

    iput-boolean p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->isCameraFrontFacing:Z

    return-void
.end method
