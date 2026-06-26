.class Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    const-string p1, "CAMERA2"

    const-string v0, "onConfigureFailed"

    .line 382
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p1, v0, :cond_0

    .line 384
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 386
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v2, "Camera session configuration error"

    .line 387
    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    .line 368
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$802(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 369
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 370
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 371
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v2, "Fail to setup capture session"

    .line 372
    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JLjava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    :cond_1
    :goto_0
    return-void
.end method
