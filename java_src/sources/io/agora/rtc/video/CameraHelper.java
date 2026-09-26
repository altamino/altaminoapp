package io.agora.rtc.video;

import android.hardware.Camera;
import io.agora.rtc.internal.Logging;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CameraHelper {
    private static final String TAG = "CameraHelper";

    public static boolean checkPermission() {
        return true;
    }

    public static class Capability {
        public static final int CAMERA_FACING_BACK = 0;
        public static final int CAMERA_FACING_FRONT = 1;
        public int facing;
        public int height;
        public int id;
        public int maxFps;
        public int width;

        public Capability(int id, int facing, int w5, int h, int fps) {
            this.id = id;
            this.facing = facing;
            this.width = w5;
            this.height = h;
            this.maxFps = fps;
        }
    }

    public static synchronized List<Capability> getCameraCapability() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            int numberOfCameras = Camera.getNumberOfCameras();
            if (numberOfCameras < 1) {
                throw new RuntimeException("no camera device");
            }
            for (int i10 = 0; i10 < numberOfCameras; i10++) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i10, cameraInfo);
                try {
                    Camera cameraOpen = Camera.open(i10);
                    arrayList.add(createCapability(i10, cameraInfo.facing, cameraOpen.getParameters()));
                    cameraOpen.release();
                } catch (RuntimeException e) {
                    throw e;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public static Capability createCapability(int id, int facing, Camera.Parameters param) {
        List<Camera.Size> supportedPreviewSizes = param.getSupportedPreviewSizes();
        List<int[]> supportedPreviewFpsRange = param.getSupportedPreviewFpsRange();
        if (!supportedPreviewSizes.isEmpty() && !supportedPreviewFpsRange.isEmpty()) {
            Camera.Size size = supportedPreviewSizes.get(0);
            for (Camera.Size size2 : supportedPreviewSizes) {
                if (size2.width * size2.height > size.width * size.height) {
                    size = size2;
                }
            }
            int i10 = supportedPreviewFpsRange.get(0)[1] / 1000;
            Logging.d(TAG, "creaet capability for camera " + id + " : width: " + size.width + " , height: " + size.height + " max fps: " + i10);
            return new Capability(id, facing, size.width, size.height, i10);
        }
        Logging.e(TAG, "failed get preview size/fps, parameters = " + param.flatten());
        throw new IllegalArgumentException(param.flatten());
    }
}
