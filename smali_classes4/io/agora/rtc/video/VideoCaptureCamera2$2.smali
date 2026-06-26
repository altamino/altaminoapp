.class Lio/agora/rtc/video/VideoCaptureCamera2$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastFocusedTs:J

.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    .line 186
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v0

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v1

    invoke-static {p2, v0, v1, p1}, Lio/agora/rtc/video/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face bound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CAMERA2"

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rect (-1000, 1000) = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget p2, p2, Lio/agora/rtc/video/VideoCapture;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 196
    :goto_0
    invoke-static {p1, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object p1

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview size width = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto face focus left ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " right = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " bottom = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "isMirror ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 202
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 203
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 204
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 205
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v6, v1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 p1, 0x0

    cmp-long v0, v6, p1

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    :cond_1
    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    const-string v0, "CAMERA2"

    .line 212
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_4

    .line 213
    array-length v2, v1

    if-lez v2, :cond_4

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 215
    aget-object v0, v1, v6

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 216
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 217
    aget-object v0, v1, v6

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void

    .line 222
    :cond_1
    aget-object v2, v1, v6

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_2

    return-void

    .line 226
    :cond_2
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v4, Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v5, v1, v6

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/16 v7, 0x3e8

    invoke-direct {v4, v5, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 228
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$600(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 234
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object v2

    sget-object v3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq v2, v3, :cond_3

    return-void

    .line 239
    :cond_3
    :try_start_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cropRegion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture size wxh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 243
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$800(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1000()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    :goto_0
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 264
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera2;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-virtual {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->isAutoFaceFocusSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    invoke-direct {p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->process(Landroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method
