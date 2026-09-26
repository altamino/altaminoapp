.class Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2000(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    :try_start_1
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    sget-object v3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 17
    .line 18
    if-ne v2, v3, :cond_7

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 35
    :cond_1
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    .line 41
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    .line 42
    move-result v2

    .line 43
    .line 44
    const/16 v3, 0x23

    .line 45
    .line 46
    if-ne v2, v3, :cond_6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 50
    move-result-object v2

    .line 51
    array-length v2, v2

    .line 52
    const/4 v3, 0x3

    .line 53
    .line 54
    if-eq v2, v3, :cond_3

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    .line 60
    move-result v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    .line 64
    move-result v3

    .line 65
    .line 66
    if-ne v2, v3, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    .line 74
    move-result v3

    .line 75
    .line 76
    if-ne v2, v3, :cond_5

    .line 77
    .line 78
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2100(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2200(Landroid/media/Image;[B)V

    .line 86
    .line 87
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 88
    .line 89
    iget-wide v2, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 90
    .line 91
    const-wide/16 v4, 0x0

    .line 92
    .line 93
    cmp-long v2, v2, v4

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2100(Lio/agora/rtc/video/VideoCaptureCamera2;)[B

    .line 99
    move-result-object v2

    .line 100
    .line 101
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$2300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 105
    move-result v3

    .line 106
    .line 107
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 108
    .line 109
    iget-wide v4, v4, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2, v3, v4, v5}, Lio/agora/rtc/video/VideoCapture;->ProvideCameraFrame([BIJ)V

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_4
    const-string p1, "CAMERA2"

    .line 116
    .line 117
    const-string v2, "warning mNativeVideoCaptureDeviceAndroid = 0, error"

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 125
    return-void

    .line 126
    .line 127
    :cond_5
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    const-string v4, "ImageReader size "

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    .line 141
    move-result v4

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v4, "x"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    .line 153
    move-result p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string p1, " did not match Image size: "

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    .line 165
    move-result p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string p1, "x"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    .line 177
    move-result p1

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    .line 187
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    throw v2

    .line 189
    .line 190
    :cond_6
    :goto_1
    const-string p1, "CAMERA2"

    .line 191
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    const-string v3, "Unexpected image format: "

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    .line 204
    move-result v3

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v3, "or #planes:"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 216
    move-result-object v3

    .line 217
    array-length v3, v3

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v2

    .line 225
    .line 226
    .line 227
    invoke-static {p1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 232
    return-void

    .line 233
    :cond_7
    :goto_2
    :try_start_4
    monitor-exit v1

    .line 234
    return-void

    .line 235
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 237
    :catchall_1
    move-exception p1

    .line 238
    goto :goto_4

    .line 239
    :catch_0
    move-exception p1

    .line 240
    .line 241
    :try_start_6
    const-string v1, "CAMERA2"

    .line 242
    .line 243
    const-string v2, "acquireLastest Image():"

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 247
    .line 248
    if-eqz v0, :cond_8

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 252
    :cond_8
    return-void

    .line 253
    .line 254
    :goto_4
    if-eqz v0, :cond_9

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 258
    :cond_9
    throw p1
.end method
