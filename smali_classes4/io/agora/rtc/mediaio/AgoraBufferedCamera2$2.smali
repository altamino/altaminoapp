.class Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "AgoraBufferedCamera2.java"


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

    .line 182
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$600(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 195
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 196
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$702(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 202
    iget-object p2, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$600(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 203
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 204
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$702(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v0}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$600(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 188
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {v0, p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$702(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 189
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraBufferedCamera2$2;->this$0:Lio/agora/rtc/mediaio/AgoraBufferedCamera2;

    invoke-static {p1}, Lio/agora/rtc/mediaio/AgoraBufferedCamera2;->access$800(Lio/agora/rtc/mediaio/AgoraBufferedCamera2;)V

    return-void
.end method
