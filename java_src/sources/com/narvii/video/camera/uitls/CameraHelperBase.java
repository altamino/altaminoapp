package com.narvii.video.camera.uitls;

import android.content.Context;
import android.hardware.Camera;

/* JADX INFO: loaded from: classes.dex */
public class CameraHelperBase implements CameraHelper.CameraHelperImpl {
    private final Context mContext;

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public void getCameraInfo(int i10, CameraHelper.CameraInfo2 cameraInfo2) {
        cameraInfo2.facing = 0;
        cameraInfo2.orientation = 90;
    }

    private boolean hasCameraSupport() {
        return this.mContext.getPackageManager().hasSystemFeature("android.hardware.camera");
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public boolean hasCamera(int i10) {
        if (i10 == 0) {
            return hasCameraSupport();
        }
        return false;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCameraFacing(int i10) {
        if (i10 == 0) {
            return Camera.open();
        }
        return null;
    }

    public CameraHelperBase(Context context) {
        this.mContext = context;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public int getNumberOfCameras() {
        return hasCameraSupport() ? 1 : 0;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCamera(int i10) {
        return Camera.open();
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openDefaultCamera() {
        return Camera.open();
    }
}
