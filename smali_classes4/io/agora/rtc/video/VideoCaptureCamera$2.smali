.class Lio/agora/rtc/video/VideoCaptureCamera$2;
.super Ljava/lang/Object;
.source "VideoCaptureCamera.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->tryStartCapture(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastFocusedTs:J

.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 6

    if-eqz p1, :cond_6

    .line 265
    array-length v0, p1

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$800(Lio/agora/rtc/video/VideoCaptureCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 269
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->mLastFocusedTs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    .line 271
    aget-object p2, p1, v4

    iget p2, p2, Landroid/hardware/Camera$Face;->score:I

    const/16 v0, 0x14

    if-le p2, v0, :cond_1

    .line 272
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    aget-object p1, p1, v4

    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {p2, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$900(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V

    :cond_1
    return-void

    .line 284
    :cond_2
    aget-object v0, p1, v4

    iget v0, v0, Landroid/hardware/Camera$Face;->score:I

    const/16 v1, 0x32

    const-string v2, "CAMERA1"

    if-gt v0, v1, :cond_3

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "face score = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    iget p1, p1, Landroid/hardware/Camera$Face;->score:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    new-instance v1, Landroid/hardware/Camera$Area;

    aget-object v3, p1, v4

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    const/16 v5, 0x3e8

    invoke-direct {v1, v3, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_4

    .line 295
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 298
    :cond_4
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_5

    .line 299
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 302
    :cond_5
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    aget-object p1, p1, v4

    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$900(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V

    .line 304
    new-instance p1, Lio/agora/rtc/video/VideoCaptureCamera$2$1;

    invoke-direct {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$2$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera$2;)V

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->mLastFocusedTs:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception in onFaceDetection callback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
