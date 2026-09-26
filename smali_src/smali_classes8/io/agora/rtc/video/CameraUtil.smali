.class public Lio/agora/rtc/video/CameraUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CAMERA_UTIL"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraDisplayOrientation(Landroid/content/Context;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraId"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 9
    .line 10
    const/16 p1, 0x5a

    .line 11
    .line 12
    if-eqz p0, :cond_6

    .line 13
    .line 14
    const-string v1, "window"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-eqz v2, :cond_6

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    check-cast p0, Landroid/view/WindowManager;

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const-string p0, "CAMERA_UTIL"

    .line 35
    .line 36
    const-string v0, "display is null"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return p1

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 44
    move-result p0

    .line 45
    const/4 v1, 0x1

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    if-eq p0, v1, :cond_4

    .line 51
    const/4 p1, 0x2

    .line 52
    .line 53
    if-eq p0, p1, :cond_3

    .line 54
    const/4 p1, 0x3

    .line 55
    .line 56
    if-eq p0, p1, :cond_2

    .line 57
    :cond_1
    move p1, v2

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    const/16 p1, 0x10e

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    const/16 p1, 0xb4

    .line 64
    .line 65
    :cond_4
    :goto_0
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 66
    .line 67
    if-ne p0, v1, :cond_5

    .line 68
    .line 69
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 70
    add-int/2addr p0, p1

    .line 71
    .line 72
    rem-int/lit16 p0, p0, 0x168

    .line 73
    .line 74
    rsub-int p0, p0, 0x168

    .line 75
    .line 76
    rem-int/lit16 p1, p0, 0x168

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_5
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 80
    sub-int/2addr p0, p1

    .line 81
    .line 82
    add-int/lit16 p0, p0, 0x168

    .line 83
    .line 84
    rem-int/lit16 p1, p0, 0x168

    .line 85
    :cond_6
    :goto_1
    return p1
.end method
