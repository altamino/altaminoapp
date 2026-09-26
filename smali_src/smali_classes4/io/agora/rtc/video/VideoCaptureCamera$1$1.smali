.class Lio/agora/rtc/video/VideoCaptureCamera$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera$1;->onError(ILandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 3
    .line 4
    iget-object v0, v0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$100(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    monitor-enter v0

    .line 10
    .line 11
    :try_start_0
    const-string v1, "CAMERA1"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v3, "native handle = "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 24
    .line 25
    iget-object v3, v3, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 26
    .line 27
    iget-wide v3, v3, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 40
    .line 41
    iget-object v1, v1, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$400(Lio/agora/rtc/video/VideoCaptureCamera;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 50
    .line 51
    iget-object v1, v1, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 52
    .line 53
    iget-object v2, v1, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 54
    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    iget-wide v2, v1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 58
    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    cmp-long v2, v2, v4

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->allocate()I

    .line 67
    .line 68
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 69
    .line 70
    iget-object v1, v1, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$500(Lio/agora/rtc/video/VideoCaptureCamera;)I

    .line 74
    move-result v2

    .line 75
    .line 76
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 77
    .line 78
    iget-object v3, v3, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera;->access$600(Lio/agora/rtc/video/VideoCaptureCamera;)I

    .line 82
    move-result v3

    .line 83
    .line 84
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 85
    .line 86
    iget-object v4, v4, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 87
    .line 88
    .line 89
    invoke-static {v4}, Lio/agora/rtc/video/VideoCaptureCamera;->access$700(Lio/agora/rtc/video/VideoCaptureCamera;)I

    .line 90
    move-result v4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2, v3, v4}, Lio/agora/rtc/video/VideoCaptureCamera;->startCapture(III)I

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 100
    .line 101
    iget-object v1, v1, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/Handler;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;->this$1:Lio/agora/rtc/video/VideoCaptureCamera$1;

    .line 110
    .line 111
    iget-object v1, v1, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/Handler;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    const-wide/16 v2, 0x7d0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_1
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw v1
.end method
