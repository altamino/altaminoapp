.class Lio/agora/rtc/video/VideoCaptureCamera$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->setFocus(FFZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;

.field final synthetic val$currentFocusMode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$currentFocusMode"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->val$currentFocusMode:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "camera"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 3
    .line 4
    iget-object p1, p1, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->val$currentFocusMode:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$4;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$1200(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    monitor-enter v0

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method
