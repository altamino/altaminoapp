.class Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;


# direct methods
.method constructor <init>(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
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
    .line 3
    invoke-static {}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$000()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "Configure camera failed"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
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
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$600(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraDevice;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1002(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1200(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1102(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 28
    .line 29
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1000(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1100(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CaptureRequest;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1300(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$4;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$1400(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Landroid/os/Handler;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception p1

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    :goto_1
    return-void
.end method
