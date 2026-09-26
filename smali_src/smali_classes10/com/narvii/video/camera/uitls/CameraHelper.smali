.class public Lcom/narvii/video/camera/uitls/CameraHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;,
        Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;
    }
.end annotation


# instance fields
.field private final mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/video/camera/uitls/CameraHelperGB;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lcom/narvii/video/camera/uitls/CameraHelperGB;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 11
    return-void
.end method


# virtual methods
.method public getCameraDisplayOrientation(Landroid/app/Activity;I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    const/4 v2, 0x3

    .line 23
    .line 24
    if-eq p1, v2, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    const/16 v1, 0x10e

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    const/16 v1, 0xb4

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_2
    const/16 v1, 0x5a

    .line 34
    .line 35
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/narvii/video/camera/uitls/CameraHelper;->getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V

    .line 42
    .line 43
    iget p2, p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->facing:I

    .line 44
    .line 45
    if-ne p2, v0, :cond_4

    .line 46
    .line 47
    iget p1, p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    .line 48
    add-int/2addr p1, v1

    .line 49
    .line 50
    rem-int/lit16 p1, p1, 0x168

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_4
    iget p1, p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    .line 54
    sub-int/2addr p1, v1

    .line 55
    .line 56
    add-int/lit16 p1, p1, 0x168

    .line 57
    .line 58
    rem-int/lit16 p1, p1, 0x168

    .line 59
    :goto_1
    return p1
.end method

.method public getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V

    .line 6
    return-void
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->getNumberOfCameras()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasBackCamera()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->hasCamera(I)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public hasFrontCamera()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->hasCamera(I)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public openBackCamera()Landroid/hardware/Camera;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openCameraFacing(I)Landroid/hardware/Camera;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openCamera(I)Landroid/hardware/Camera;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public openDefaultCamera()Landroid/hardware/Camera;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openDefaultCamera()Landroid/hardware/Camera;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public openFrontCamera()Landroid/hardware/Camera;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openCameraFacing(I)Landroid/hardware/Camera;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/camera/uitls/CameraHelper;->getCameraDisplayOrientation(Landroid/app/Activity;I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 8
    return-void
.end method
