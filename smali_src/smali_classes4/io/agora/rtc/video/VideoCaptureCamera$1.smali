.class Lio/agora/rtc/video/VideoCaptureCamera$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/VideoCaptureCamera;->tryStartCapture(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera;)V
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
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "camera"
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "CAMERA1"

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "onError: error code"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 p2, 0x2

    .line 24
    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    .line 27
    const/16 p2, 0x64

    .line 28
    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    const/4 p2, 0x1

    .line 31
    .line 32
    if-ne p1, p2, :cond_5

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 35
    .line 36
    iget-object p2, p1, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lio/agora/rtc/video/VideoCaptureCamera;->stopCapture()I

    .line 42
    .line 43
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$000(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 51
    .line 52
    :try_start_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 53
    .line 54
    iget-object p1, p1, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 60
    .line 61
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 62
    const/4 p2, 0x0

    .line 63
    .line 64
    iput-object p2, p1, Lio/agora/rtc/video/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$000(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    goto :goto_3

    .line 80
    .line 81
    :goto_1
    :try_start_1
    const-string p2, "CAMERA1"

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v1, "Camera release failed, "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :goto_2
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$000(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    throw p1

    .line 113
    .line 114
    :cond_2
    :goto_3
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$100(Lio/agora/rtc/video/VideoCaptureCamera;)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    monitor-enter p1

    .line 120
    .line 121
    :try_start_2
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 122
    .line 123
    .line 124
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/HandlerThread;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    if-nez p2, :cond_3

    .line 128
    .line 129
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 130
    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    .line 132
    .line 133
    const-string v1, "camera-recover-thread"

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$202(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 140
    .line 141
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 142
    .line 143
    .line 144
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/HandlerThread;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 149
    .line 150
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/HandlerThread;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    if-eqz p2, :cond_3

    .line 157
    .line 158
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 159
    .line 160
    new-instance v0, Landroid/os/Handler;

    .line 161
    .line 162
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$200(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/HandlerThread;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p2, v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$302(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/os/Handler;)Landroid/os/Handler;

    .line 177
    goto :goto_4

    .line 178
    :catchall_1
    move-exception p2

    .line 179
    goto :goto_5

    .line 180
    .line 181
    :cond_3
    :goto_4
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 182
    .line 183
    .line 184
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/Handler;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    if-eqz p2, :cond_4

    .line 188
    .line 189
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 190
    .line 191
    .line 192
    invoke-static {p2}, Lio/agora/rtc/video/VideoCaptureCamera;->access$300(Lio/agora/rtc/video/VideoCaptureCamera;)Landroid/os/Handler;

    .line 193
    move-result-object p2

    .line 194
    .line 195
    new-instance v0, Lio/agora/rtc/video/VideoCaptureCamera$1$1;

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, p0}, Lio/agora/rtc/video/VideoCaptureCamera$1$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera$1;)V

    .line 199
    .line 200
    const-wide/16 v1, 0x7d0

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    :cond_4
    monitor-exit p1

    .line 205
    :cond_5
    return-void

    .line 206
    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    throw p2
.end method
