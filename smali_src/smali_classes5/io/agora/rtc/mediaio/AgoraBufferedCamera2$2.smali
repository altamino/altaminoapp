.class Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/mediaio/AgoraBufferedCamera2;
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
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDevice"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 4
    .line 5
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$602(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 10
    .line 11
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$800(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 19
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "error"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 4
    .line 5
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$602(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 10
    .line 11
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$800(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 19
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraDevice"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$602(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 6
    .line 7
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$700(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    .line 11
    .line 12
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$800(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 20
    return-void
.end method
