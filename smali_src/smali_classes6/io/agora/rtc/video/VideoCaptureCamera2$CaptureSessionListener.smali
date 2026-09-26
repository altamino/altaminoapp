.class Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCaptureSession"
        }
    .end annotation

    .line 1
    .line 2
    const-string p1, "CAMERA2"

    .line 3
    .line 4
    const-string v0, "onConfigureFailed"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 20
    .line 21
    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1900(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 27
    .line 28
    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long v2, v0, v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string v2, "Camera session configuration error"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JLjava/lang/String;)V

    .line 40
    :cond_1
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraCaptureSession"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1002(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 6
    .line 7
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 16
    .line 17
    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1900(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 21
    .line 22
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 23
    .line 24
    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long v2, v0, v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-string v2, "Fail to setup capture session"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JLjava/lang/String;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 39
    .line 40
    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1900(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method
