.class Lio/agora/rtc/video/VideoCaptureCamera$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "camera"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$800(Lio/agora/rtc/video/VideoCaptureCamera;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$900(Lio/agora/rtc/video/VideoCaptureCamera;[Landroid/hardware/Camera$Face;)V

    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_7

    .line 16
    array-length v0, p1

    .line 17
    .line 18
    if-eqz v0, :cond_7

    .line 19
    .line 20
    if-eqz p2, :cond_7

    .line 21
    .line 22
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera;->access$1000(Lio/agora/rtc/video/VideoCaptureCamera;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v0

    .line 35
    .line 36
    iget-wide v2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->mLastFocusedTs:J

    .line 37
    sub-long/2addr v0, v2

    .line 38
    .line 39
    const-wide/16 v2, 0xbb8

    .line 40
    .line 41
    cmp-long v0, v0, v2

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    if-gez v0, :cond_3

    .line 45
    .line 46
    aget-object p1, p1, v1

    .line 47
    .line 48
    iget p2, p1, Landroid/hardware/Camera$Face;->score:I

    .line 49
    .line 50
    const/16 v0, 0x14

    .line 51
    .line 52
    if-le p2, v0, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 55
    .line 56
    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V

    .line 60
    :cond_2
    return-void

    .line 61
    .line 62
    :cond_3
    aget-object v0, p1, v1

    .line 63
    .line 64
    iget v0, v0, Landroid/hardware/Camera$Face;->score:I

    .line 65
    .line 66
    const/16 v2, 0x32

    .line 67
    .line 68
    const-string v3, "CAMERA1"

    .line 69
    .line 70
    if-gt v0, v2, :cond_4

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v0, "face score = "

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    aget-object p1, p1, v1

    .line 83
    .line 84
    iget p1, p1, Landroid/hardware/Camera$Face;->score:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 96
    .line 97
    :cond_4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    new-instance v2, Landroid/hardware/Camera$Area;

    .line 103
    .line 104
    aget-object v4, p1, v1

    .line 105
    .line 106
    iget-object v4, v4, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 107
    .line 108
    const/16 v5, 0x3e8

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    .line 122
    move-result v2

    .line 123
    .line 124
    if-lez v2, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    goto :goto_1

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    .line 142
    move-result v2

    .line 143
    .line 144
    if-lez v2, :cond_6

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 152
    .line 153
    :cond_6
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera;

    .line 154
    .line 155
    aget-object p1, p1, v1

    .line 156
    .line 157
    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 158
    .line 159
    .line 160
    invoke-static {v0, p1}, Lio/agora/rtc/video/VideoCaptureCamera;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera;Landroid/graphics/Rect;)V

    .line 161
    .line 162
    new-instance p1, Lio/agora/rtc/video/VideoCaptureCamera$2$1;

    .line 163
    .line 164
    .line 165
    invoke-direct {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera$2$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera$2;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    move-result-wide p1

    .line 173
    .line 174
    iput-wide p1, p0, Lio/agora/rtc/video/VideoCaptureCamera$2;->mLastFocusedTs:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_2

    .line 176
    .line 177
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    const-string v0, "Exception in onFaceDetection callback: "

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_7
    :goto_2
    return-void
.end method
