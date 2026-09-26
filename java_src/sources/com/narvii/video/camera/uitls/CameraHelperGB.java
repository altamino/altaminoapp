package com.narvii.video.camera.uitls;

import android.annotation.TargetApi;
import android.hardware.Camera;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(9)
public class CameraHelperGB implements CameraHelper.CameraHelperImpl {
    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openDefaultCamera() {
        return Camera.open(0);
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public void getCameraInfo(int i10, CameraHelper.CameraInfo2 cameraInfo2) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i10, cameraInfo);
        cameraInfo2.facing = cameraInfo.facing;
        cameraInfo2.orientation = cameraInfo.orientation;
    }

    private int getCameraId(int i10) {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i11 = 0; i11 < numberOfCameras; i11++) {
            Camera.getCameraInfo(i11, cameraInfo);
            if (cameraInfo.facing == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public int getNumberOfCameras() {
        return Camera.getNumberOfCameras();
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public boolean hasCamera(int i10) {
        if (getCameraId(i10) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCamera(int i10) {
        return Camera.open(i10);
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCameraFacing(int i10) {
        return Camera.open(getCameraId(i10));
    }
}
