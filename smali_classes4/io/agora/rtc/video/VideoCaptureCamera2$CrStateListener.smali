.class Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 328
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p1, v0, :cond_2

    const-string p1, "CAMERA2"

    const-string v0, "camera client is evicted by other application"

    .line 329
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v1, v0, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v3, "Camera device evicted by other application"

    .line 333
    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JLjava/lang/String;)V

    :cond_0
    const-string v0, "Camera device enter state: EVICTED"

    .line 337
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 340
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1302(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 342
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    :cond_2
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5

    .line 349
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne p1, v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 353
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1302(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 355
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraDevice Error :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CAMERA2"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera device error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    .line 312
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1302(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 313
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1400(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result p1

    if-gez p1, :cond_1

    .line 315
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1500(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 316
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p1, v0, :cond_0

    .line 317
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    :cond_0
    const-string p1, "CAMERA2"

    const-string v0, "Camera startCapture failed!!"

    .line 319
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v2, "Error configuring camera"

    .line 321
    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCapture;->onCameraError(JLjava/lang/String;)V

    :cond_1
    return-void
.end method
