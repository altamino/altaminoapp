package com.narvii.video.camera.uitls;

import android.annotation.TargetApi;
import android.hardware.Camera;
import com.narvii.video.camera.uitls.CameraHelper;

@TargetApi(9)
/* loaded from: classes3.dex */
public class CameraHelperGB implements CameraHelper.CameraHelperImpl {
    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public int getNumberOfCameras() {
        return Camera.getNumberOfCameras();
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCamera(int i) {
        return Camera.open(i);
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openDefaultCamera() {
        return Camera.open(0);
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public boolean hasCamera(int i) {
        return getCameraId(i) != -1;
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public Camera openCameraFacing(int i) {
        return Camera.open(getCameraId(i));
    }

    @Override // com.narvii.video.camera.uitls.CameraHelper.CameraHelperImpl
    public void getCameraInfo(int i, CameraHelper.CameraInfo2 cameraInfo2) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        cameraInfo2.facing = cameraInfo.facing;
        cameraInfo2.orientation = cameraInfo.orientation;
    }

    private int getCameraId(int i) {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == i) {
                return i2;
            }
        }
        return -1;
    }
}
