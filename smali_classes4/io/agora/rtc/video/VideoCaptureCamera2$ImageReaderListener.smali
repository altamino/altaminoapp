.class Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageReaderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    const/4 v0, 0x0

    .line 407
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1700(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 408
    :try_start_1
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object v2

    sget-object v3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne v2, v3, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 412
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_2

    .line 414
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_1
    return-void

    .line 417
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_7

    .line 418
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    goto/16 :goto_1

    .line 424
    :cond_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 425
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 432
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1800(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1900(Landroid/media/Image;[B)V

    .line 434
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v2, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    .line 435
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1800(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2000(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v4, v4, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual {p1, v2, v3, v4, v5}, Lio/agora/rtc/video/VideoCapture;->ProvideCameraFrame([BIJ)V

    goto :goto_0

    :cond_4
    const-string p1, "CAMERA2"

    const-string v2, "warning mNativeVideoCaptureDeviceAndroid = 0, error"

    .line 437
    invoke-static {p1, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 445
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_5
    return-void

    .line 426
    :cond_6
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageReader size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " did not match Image size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    const-string p1, "CAMERA2"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected image format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "or #planes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {p1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    .line 445
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_8
    return-void

    .line 409
    :cond_9
    :goto_2
    :try_start_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 439
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_6
    const-string v1, "CAMERA2"

    const-string v2, "acquireLastest Image():"

    .line 441
    invoke-static {v1, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_a

    .line 445
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_a
    return-void

    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 446
    :cond_b
    throw p1
.end method
