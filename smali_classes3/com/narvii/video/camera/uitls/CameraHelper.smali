.class public Lcom/narvii/video/camera/uitls/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;,
        Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 33
    new-instance p1, Lcom/narvii/video/camera/uitls/CameraHelperGB;

    invoke-direct {p1}, Lcom/narvii/video/camera/uitls/CameraHelperGB;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/narvii/video/camera/uitls/CameraHelperBase;

    invoke-direct {v0, p1}, Lcom/narvii/video/camera/uitls/CameraHelperBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCameraDisplayOrientation(Landroid/app/Activity;I)I
    .locals 3

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    .line 111
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;

    invoke-direct {p1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;-><init>()V

    .line 112
    invoke-virtual {p0, p2, p1}, Lcom/narvii/video/camera/uitls/CameraHelper;->getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V

    .line 113
    iget p2, p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->facing:I

    if-ne p2, v0, :cond_4

    .line 114
    iget p1, p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 116
    :cond_4
    iget p1, p1, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    sub-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    :goto_1
    return p1
.end method

.method public getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    invoke-interface {v0, p1, p2}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V

    return-void
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    invoke-interface {v0}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public hasBackCamera()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->hasCamera(I)Z

    move-result v0

    return v0
.end method

.method public hasFrontCamera()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->hasCamera(I)Z

    move-result v0

    return v0
.end method

.method public openBackCamera()Landroid/hardware/Camera;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openCameraFacing(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    invoke-interface {v0, p1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openCamera(I)Landroid/hardware/Camera;

    move-result-object p1

    return-object p1
.end method

.method public openDefaultCamera()Landroid/hardware/Camera;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    invoke-interface {v0}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openDefaultCamera()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public openFrontCamera()Landroid/hardware/Camera;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelper;->mImpl:Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;->openCameraFacing(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/camera/uitls/CameraHelper;->getCameraDisplayOrientation(Landroid/app/Activity;I)I

    move-result p1

    .line 88
    invoke-virtual {p3, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method
