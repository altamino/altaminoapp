.class public Lcom/narvii/video/camera/uitls/CameraHelperBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/camera/uitls/CameraHelperBase;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private hasCameraSupport()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/camera/uitls/CameraHelperBase;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "android.hardware.camera"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method


# virtual methods
.method public getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->facing:I

    .line 4
    .line 5
    const/16 p1, 0x5a

    .line 6
    .line 7
    iput p1, p2, Lcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;->orientation:I

    .line 8
    return-void
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/camera/uitls/CameraHelperBase;->hasCameraSupport()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasCamera(I)Z
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/video/camera/uitls/CameraHelperBase;->hasCameraSupport()Z

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public openCameraFacing(I)Landroid/hardware/Camera;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public openDefaultCamera()Landroid/hardware/Camera;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
