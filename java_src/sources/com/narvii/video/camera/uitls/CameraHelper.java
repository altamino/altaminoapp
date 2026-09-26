package com.narvii.video.camera.uitls;

import android.app.Activity;
import android.content.Context;
import android.hardware.Camera;

/* JADX INFO: loaded from: classes10.dex */
public class CameraHelper {
    private final CameraHelperImpl mImpl = new CameraHelperGB();

    public interface CameraHelperImpl {
        void getCameraInfo(int i10, CameraInfo2 cameraInfo2);

        int getNumberOfCameras();

        boolean hasCamera(int i10);

        Camera openCamera(int i10);

        Camera openCameraFacing(int i10);

        Camera openDefaultCamera();
    }

    public static class CameraInfo2 {
        public int facing;
        public int orientation;
    }

    public void getCameraInfo(int i10, CameraInfo2 cameraInfo2) {
        this.mImpl.getCameraInfo(i10, cameraInfo2);
    }

    public int getNumberOfCameras() {
        return this.mImpl.getNumberOfCameras();
    }

    public boolean hasBackCamera() {
        return this.mImpl.hasCamera(0);
    }

    public boolean hasFrontCamera() {
        return this.mImpl.hasCamera(1);
    }

    public Camera openBackCamera() {
        return this.mImpl.openCameraFacing(0);
    }

    public Camera openCamera(int i10) {
        return this.mImpl.openCamera(i10);
    }

    public Camera openDefaultCamera() {
        return this.mImpl.openDefaultCamera();
    }

    public Camera openFrontCamera() {
        return this.mImpl.openCameraFacing(1);
    }

    public CameraHelper(Context context) {
    }

    public int getCameraDisplayOrientation(Activity activity, int i10) {
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        int i11 = 0;
        if (rotation != 0) {
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation == 3) {
                        i11 = 270;
                    }
                } else {
                    i11 = 180;
                }
            } else {
                i11 = 90;
            }
        }
        CameraInfo2 cameraInfo2 = new CameraInfo2();
        getCameraInfo(i10, cameraInfo2);
        if (cameraInfo2.facing == 1) {
            return (cameraInfo2.orientation + i11) % 360;
        }
        return ((cameraInfo2.orientation - i11) + 360) % 360;
    }

    public void setCameraDisplayOrientation(Activity activity, int i10, Camera camera) {
        camera.setDisplayOrientation(getCameraDisplayOrientation(activity, i10));
    }
}
