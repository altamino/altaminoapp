.class public Lcom/narvii/video/camera/uitls/CameraHelperGB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private getCameraId(I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 16
    .line 17
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 18
    .line 19
    if-ne v3, p1, :cond_0

    .line 20
    return v2

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, -0x1

    .line 25
    return p1
.end method


# virtual methods
.method public getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V
    .locals 1

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
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 11
    .line 12
    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->facing:I

    .line 13
    .line 14
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 15
    .line 16
    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    .line 17
    return-void
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasCamera(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/camera/uitls/CameraHelperGB;->getCameraId(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public openCameraFacing(I)Landroid/hardware/Camera;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/video/camera/uitls/CameraHelperGB;->getCameraId(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public openDefaultCamera()Landroid/hardware/Camera;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method
