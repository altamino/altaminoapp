.class public interface abstract Lcom/narvii/video/camera/uitls/CameraHelper$CameraHelperImpl;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/camera/uitls/CameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraHelperImpl"
.end annotation


# virtual methods
.method public abstract getCameraInfo(ILcom/narvii/video/camera/uitls/CameraHelper$CameraInfo2;)V
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract hasCamera(I)Z
.end method

.method public abstract openCamera(I)Landroid/hardware/Camera;
.end method

.method public abstract openCameraFacing(I)Landroid/hardware/Camera;
.end method

.method public abstract openDefaultCamera()Landroid/hardware/Camera;
.end method
