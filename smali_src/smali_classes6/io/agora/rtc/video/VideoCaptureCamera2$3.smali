.class Lio/agora/rtc/video/VideoCaptureCamera2$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
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
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 6
    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x4

    .line 17
    .line 18
    if-eq v1, v0, :cond_1

    .line 19
    const/4 v0, 0x5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result p1

    .line 24
    .line 25
    if-ne v0, p1, :cond_2

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 34
    const/4 v1, 0x2

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 42
    .line 43
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$3;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1500(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    .line 47
    :cond_2
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "result"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera2$3;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 4
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "partialResult"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera2$3;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 4
    return-void
.end method
