package com.narvii.video.camera.uitls;

import android.content.Context;
import android.hardware.Camera;
import com.narvii.video.camera.uitls.CameraHelper;

/* loaded from: classes3.dex */
public class CameraHelperBase implements CameraHelper.CameraHelperImpl {
    private final Context mContext;

    public CameraHelperBase(Context context) {
        this.mContext = context;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public int getNumberOfCameras() {
        return hasCameraSupport() ? 1 : 0;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCamera(int i) {
        return Camera.open();
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openDefaultCamera() {
        return Camera.open();
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public boolean hasCamera(int i) {
        if (i == 0) {
            return hasCameraSupport();
        }
        return false;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCameraFacing(int i) {
        if (i == 0) {
            return Camera.open();
        }
        return null;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public void getCameraInfo(int i, CameraHelper.CameraInfo2 cameraInfo2) {
        cameraInfo2.facing = 0;
        cameraInfo2.orientation = 90;
    }

    private boolean hasCameraSupport() {
        return this.mContext.getPackageManager().hasSystemFeature("android.hardware.camera");
    }
}
