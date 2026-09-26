package com.narvii.video.ui.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.util.Log;
import android.view.WindowManager;
import com.narvii.video.ui.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CameraUtils {
    private static final double MAX_ASPECT_DISTORTION = 0.15d;
    private static final int MIN_PREVIEW_PIXELS = 153600;
    private static final String TAG = "CameraUtils";

    public static Camera getCameraInstance() {
        return getCameraInstance(getDefaultCameraId());
    }

    public static boolean isFlashSupported(Camera camera) {
        List<String> supportedFlashModes;
        if (camera != null) {
            Camera.Parameters parameters = camera.getParameters();
            if (parameters.getFlashMode() != null && (supportedFlashModes = parameters.getSupportedFlashModes()) != null && !supportedFlashModes.isEmpty() && (supportedFlashModes.size() != 1 || !supportedFlashModes.get(0).equals("off"))) {
                return true;
            }
        }
        return false;
    }

    public static Point findBestPreviewResolution(Camera.Parameters parameters, Point point, int i10, int i11) {
        Camera.Size previewSize = parameters.getPreviewSize();
        Log.d(TAG, "camera default resolution " + previewSize.width + "x" + previewSize.height);
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        if (supportedPreviewSizes == null) {
            Log.w(TAG, "Device returned no supported preview sizes; using default");
            return new Point(previewSize.width, previewSize.height);
        }
        ArrayList arrayList = new ArrayList(supportedPreviewSizes);
        Collections.sort(arrayList, new Comparator<Camera.Size>() { // from class: com.narvii.video.ui.camera.CameraUtils.1
            @Override // java.util.Comparator
            public int compare(Camera.Size size, Camera.Size size2) {
                int i12 = size.height * size.width;
                int i13 = size2.height * size2.width;
                if (i13 < i12) {
                    return -1;
                }
                return i13 > i12 ? 1 : 0;
            }
        });
        printlnSupportedPreviewSize(arrayList);
        boolean z6 = i10 % 180 != i11 % 180;
        double d = ((double) point.x) / ((double) point.y);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Camera.Size size = (Camera.Size) it.next();
            int i12 = size.width;
            int i13 = size.height;
            if (i12 * i13 < MIN_PREVIEW_PIXELS) {
                it.remove();
            } else {
                int i14 = z6 ? i13 : i12;
                int i15 = z6 ? i12 : i13;
                Camera.Size size2 = previewSize;
                boolean z10 = z6;
                if (Math.abs((((double) i14) / ((double) i15)) - d) > MAX_ASPECT_DISTORTION) {
                    it.remove();
                } else if (i14 == point.x && i15 == point.y) {
                    Point point2 = new Point(i12, i13);
                    Log.d(TAG, "found preview resolution exactly matching screen resolutions: " + point2);
                    return point2;
                }
                z6 = z10;
                previewSize = size2;
            }
        }
        Camera.Size size3 = previewSize;
        if (arrayList.isEmpty()) {
            Point point3 = new Point(size3.width, size3.height);
            Log.d(TAG, "No suitable preview resolutions, using default: " + point3);
            return point3;
        }
        Camera.Size size4 = (Camera.Size) arrayList.get(0);
        Point point4 = new Point(size4.width, size4.height);
        Log.d(TAG, "using largest suitable preview resolution: " + point4);
        return point4;
    }

    public static Camera getCameraInstance(int i10) {
        try {
            return i10 == -1 ? Camera.open() : Camera.open(i10);
        } catch (Exception unused) {
            return null;
        }
    }

    private static void printlnSupportedPreviewSize(List<Camera.Size> list) {
        Log.d(TAG, "--------------------Support Preview Size--------------------");
        for (int i10 = 0; i10 < list.size(); i10++) {
            Log.d(TAG, String.format("(%s,%s)", Integer.valueOf(list.get(i10).width), Integer.valueOf(list.get(i10).height)));
        }
        Log.d(TAG, "------------------------------------------------------------");
    }

    public static int setCameraDisplayOrientation(Context context, int i10, Camera camera) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i10, cameraInfo);
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i11 = 0;
        if (rotation != 0) {
            if (rotation == 1) {
                i11 = 90;
            } else if (rotation == 2) {
                i11 = 180;
            } else if (rotation == 3) {
                i11 = 270;
            }
        }
        camera.setDisplayOrientation(cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i11) % 360)) % 360 : ((cameraInfo.orientation - i11) + 360) % 360);
        return cameraInfo.orientation;
    }

    public static int chooseFixedPreviewFps(Camera.Parameters parameters, int i10) {
        for (int[] iArr : parameters.getSupportedPreviewFpsRange()) {
            int i11 = iArr[0];
            int i12 = iArr[1];
            if (i11 == i12 && i11 == i10) {
                parameters.setPreviewFpsRange(i11, i12);
                return iArr[0];
            }
        }
        int[] iArr2 = new int[2];
        parameters.getPreviewFpsRange(iArr2);
        int i13 = iArr2[0];
        int i14 = iArr2[1];
        if (i13 != i14) {
            i13 = i14 / 2;
        }
        Utils.log(TAG, "Couldn't find match for " + i10 + ", using " + i13);
        return i13;
    }

    public static void choosePreviewSize(Camera.Parameters parameters, int i10, int i11) {
        Camera.Size preferredPreviewSizeForVideo = parameters.getPreferredPreviewSizeForVideo();
        if (preferredPreviewSizeForVideo != null) {
            Utils.log(TAG, "Camera preferred preview size for video is " + preferredPreviewSizeForVideo.width + "x" + preferredPreviewSizeForVideo.height);
        }
        for (Camera.Size size : parameters.getSupportedPreviewSizes()) {
            if (size.width == i10 && size.height == i11) {
                parameters.setPreviewSize(i10, i11);
                return;
            }
        }
        Log.w(TAG, "Unable to set preview size to " + i10 + "x" + i11);
        if (preferredPreviewSizeForVideo != null) {
            parameters.setPreviewSize(preferredPreviewSizeForVideo.width, preferredPreviewSizeForVideo.height);
        }
    }

    public static Point findSuitablePreviewSize(Camera.Parameters parameters, int i10, int i11) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        int i12 = Integer.MAX_VALUE;
        Point point = null;
        for (Camera.Size size : supportedPreviewSizes) {
            int iAbs = Math.abs(size.width - i10) + Math.abs(size.height - i11);
            if (iAbs < i12) {
                point = new Point(size.width, size.height);
                i12 = iAbs;
            }
        }
        if (point == null && supportedPreviewSizes.size() > 0) {
            return new Point(supportedPreviewSizes.get(0).width, supportedPreviewSizes.get(0).height);
        }
        return point;
    }

    public static int getDefaultCameraId() {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i10 = -1;
        int i11 = 0;
        while (true) {
            int i12 = i11;
            int i13 = i10;
            i10 = i12;
            if (i10 < numberOfCameras) {
                Camera.getCameraInfo(i10, cameraInfo);
                if (cameraInfo.facing == 0) {
                    return i10;
                }
                i11 = i10 + 1;
            } else {
                return i13;
            }
        }
    }
}
