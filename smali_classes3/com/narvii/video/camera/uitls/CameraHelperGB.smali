.class public Lcom/narvii/video/camera/uitls/CameraHelperGB;
.super Ljava/lang/Object;
.source "CameraHelperGB.java"

# interfaces
.implements Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCameraId(I)I
    .locals 4

    .line 60
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 61
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 63
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 64
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V
    .locals 1

    .line 53
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 54
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 55
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->facing:I

    .line 56
    iget p1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    return-void
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 28
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public hasCamera(I)Z
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/video/camera/uitls/CameraHelperGB;->getCameraId(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 0

    .line 33
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    return-object p1
.end method

.method public openCameraFacing(I)Landroid/hardware/Camera;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/video/camera/uitls/CameraHelperGB;->getCameraId(I)I

    move-result p1

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    return-object p1
.end method

.method public openDefaultCamera()Landroid/hardware/Camera;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method
