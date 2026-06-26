.class public Lcom/narvii/video/camera/uitls/CameraHelperBase;
.super Ljava/lang/Object;
.source "CameraHelperBase.java"

# interfaces
.implements Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/narvii/video/camera/uitls/CameraHelperBase;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hasCameraSupport()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelperBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V
    .locals 0

    const/4 p1, 0x0

    .line 65
    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->facing:I

    const/16 p1, 0x5a

    .line 66
    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    return-void
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/narvii/video/camera/uitls/CameraHelperBase;->hasCameraSupport()Z

    move-result v0

    return v0
.end method

.method public hasCamera(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/narvii/video/camera/uitls/CameraHelperBase;->hasCameraSupport()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 0

    .line 39
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    return-object p1
.end method

.method public openCameraFacing(I)Landroid/hardware/Camera;
    .locals 0

    if-nez p1, :cond_0

    .line 58
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public openDefaultCamera()Landroid/hardware/Camera;
    .locals 1

    .line 44
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method
