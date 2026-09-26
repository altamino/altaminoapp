.class Lio/agora/rtc/video/VideoCaptureCamera2$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


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
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 6
    return-void
.end method

.method private notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cropRegion",
            "faceRect"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0, v1, p1}, Lio/agora/rtc/video/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v1, "face bound = "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    const-string v0, "CAMERA2"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v1, "rect (-1000, 1000) = "

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 69
    .line 70
    iget p2, p2, Lio/agora/rtc/video/VideoCapture;->mId:I

    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x1

    .line 73
    .line 74
    if-ne p2, v2, :cond_0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v2, v1

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-static {p1, v1, v2}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v1, "preview size width = "

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 96
    move-result v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, " height = "

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 110
    move-result v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    const-string v1, "auto face focus left ="

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, " top = "

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v1, " right = "

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, " bottom = "

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "isMirror ="

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p2

    .line 178
    .line 179
    .line 180
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 183
    .line 184
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 188
    move-result v4

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 192
    move-result v5

    .line 193
    .line 194
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 195
    .line 196
    iget-wide v6, v1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 197
    .line 198
    const-wide/16 p1, 0x0

    .line 199
    .line 200
    cmp-long p1, v6, p1

    .line 201
    .line 202
    if-eqz p1, :cond_1

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCapture;->NotifyCameraFocusAreaChanged(FFFFJ)V

    .line 206
    :cond_1
    return-void
.end method

.method private notifyFaceDetection(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cropRegion",
            "faces"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 9
    .line 10
    iget v1, v0, Lio/agora/rtc/video/VideoCapture;->mId:I

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-eqz p2, :cond_2

    .line 19
    array-length v1, p2

    .line 20
    .line 21
    if-lez v1, :cond_2

    .line 22
    array-length v1, p2

    .line 23
    .line 24
    new-array v4, v1, [Landroid/graphics/RectF;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 28
    .line 29
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 30
    .line 31
    new-array v4, v1, [I

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$502(Lio/agora/rtc/video/VideoCaptureCamera2;[I)[I

    .line 35
    move v0, v2

    .line 36
    .line 37
    :goto_1
    if-ge v0, v1, :cond_1

    .line 38
    .line 39
    aget-object v4, p2, v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 46
    .line 47
    .line 48
    invoke-static {v5}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 49
    move-result v5

    .line 50
    .line 51
    iget-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 52
    .line 53
    .line 54
    invoke-static {v6}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 55
    move-result v6

    .line 56
    .line 57
    .line 58
    invoke-static {v4, v5, v6, p1}, Lio/agora/rtc/video/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 62
    .line 63
    .line 64
    invoke-static {v5}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v2, v3}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    aput-object v4, v5, v0

    .line 72
    .line 73
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 74
    .line 75
    .line 76
    invoke-static {v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc/video/VideoCaptureCamera2;)[I

    .line 77
    move-result-object v4

    .line 78
    const/4 v5, 0x5

    .line 79
    .line 80
    aput v5, v4, v0

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_1
    const-string p1, "CAMERA2"

    .line 86
    .line 87
    const-string p2, "before notify face"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 96
    move-result v3

    .line 97
    .line 98
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 102
    move-result v4

    .line 103
    .line 104
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;

    .line 108
    move-result-object v5

    .line 109
    int-to-long v6, v1

    .line 110
    .line 111
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 112
    .line 113
    iget-wide v8, p1, Lio/agora/rtc/video/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v2 .. v9}, Lio/agora/rtc/video/VideoCapture;->NotifyFaceDetection(II[Landroid/graphics/RectF;JJ)V

    .line 117
    :cond_2
    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "CAMERA2"

    .line 3
    .line 4
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, [Landroid/hardware/camera2/params/Face;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    array-length v2, v1

    .line 14
    .line 15
    if-lez v2, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v2

    .line 20
    .line 21
    iget-wide v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    .line 22
    sub-long/2addr v2, v4

    .line 23
    .line 24
    const-wide/16 v4, 0xbb8

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-gez v2, :cond_1

    .line 30
    .line 31
    aget-object v0, v1, v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    .line 35
    move-result v0

    .line 36
    .line 37
    const/16 v2, 0x14

    .line 38
    .line 39
    if-le v0, v2, :cond_0

    .line 40
    .line 41
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Landroid/graphics/Rect;

    .line 48
    .line 49
    aget-object v0, v1, v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 57
    :cond_0
    return-void

    .line 58
    .line 59
    :cond_1
    aget-object v2, v1, v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getScore()I

    .line 63
    move-result v2

    .line 64
    .line 65
    const/16 v4, 0x32

    .line 66
    .line 67
    if-gt v2, v4, :cond_2

    .line 68
    return-void

    .line 69
    .line 70
    :cond_2
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 71
    const/4 v4, 0x1

    .line 72
    .line 73
    new-array v4, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 74
    .line 75
    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 76
    .line 77
    aget-object v6, v1, v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    const/16 v7, 0x3e8

    .line 84
    .line 85
    .line 86
    invoke-direct {v5, v6, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    .line 87
    .line 88
    aput-object v5, v4, v3

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 92
    .line 93
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$800(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 101
    .line 102
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    sget-object v4, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 109
    .line 110
    if-eq v2, v4, :cond_3

    .line 111
    return-void

    .line 112
    .line 113
    :cond_3
    :try_start_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Landroid/graphics/Rect;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string v4, "cropRegion = "

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    const-string v4, "capture size wxh = "

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 159
    move-result v4

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v4, " x "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 170
    .line 171
    .line 172
    invoke-static {v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 173
    move-result v4

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    aget-object v1, v1, v3

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, p1, v1}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 193
    .line 194
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 195
    .line 196
    .line 197
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1000(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 211
    .line 212
    .line 213
    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 214
    move-result-object v2

    .line 215
    const/4 v3, 0x0

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 221
    .line 222
    .line 223
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 224
    .line 225
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 227
    move-result-wide v0

    .line 228
    .line 229
    iput-wide v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    .line 230
    goto :goto_0

    .line 231
    :catch_0
    move-exception p1

    .line 232
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    const-string v2, "capture: "

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p1

    .line 249
    .line 250
    .line 251
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void

    .line 253
    .line 254
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 255
    .line 256
    .line 257
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1200()[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    .line 261
    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 262
    :goto_0
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "result"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc/video/VideoCaptureCamera2;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->isAutoFaceFocusSupported()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1400(Lio/agora/rtc/video/VideoCaptureCamera2;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Landroid/graphics/Rect;

    .line 36
    .line 37
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, [Landroid/hardware/camera2/params/Face;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyFaceDetection(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)V

    .line 47
    :cond_1
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "partialResult"
        }
    .end annotation

    return-void
.end method
