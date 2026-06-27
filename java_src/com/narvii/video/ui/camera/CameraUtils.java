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

/* loaded from: classes3.dex */
public class CameraUtils {
    private static final double MAX_ASPECT_DISTORTION = 0.15d;
    private static final int MIN_PREVIEW_PIXELS = 153600;
    private static final String TAG = "CameraUtils";

    public static void choosePreviewSize(Camera.Parameters parameters, int i, int i2) {
        Camera.Size preferredPreviewSizeForVideo = parameters.getPreferredPreviewSizeForVideo();
        if (preferredPreviewSizeForVideo != null) {
            Utils.log(TAG, "Camera preferred preview size for video is " + preferredPreviewSizeForVideo.width + "x" + preferredPreviewSizeForVideo.height);
        }
        for (Camera.Size size : parameters.getSupportedPreviewSizes()) {
            if (size.width == i && size.height == i2) {
                parameters.setPreviewSize(i, i2);
                return;
            }
        }
        Log.w(TAG, "Unable to set preview size to " + i + "x" + i2);
        if (preferredPreviewSizeForVideo != null) {
            parameters.setPreviewSize(preferredPreviewSizeForVideo.width, preferredPreviewSizeForVideo.height);
        }
    }

    public static int chooseFixedPreviewFps(Camera.Parameters parameters, int i) {
        int i2;
        for (int[] iArr : parameters.getSupportedPreviewFpsRange()) {
            if (iArr[0] == iArr[1] && iArr[0] == i) {
                parameters.setPreviewFpsRange(iArr[0], iArr[1]);
                return iArr[0];
            }
        }
        int[] iArr2 = new int[2];
        parameters.getPreviewFpsRange(iArr2);
        if (iArr2[0] == iArr2[1]) {
            i2 = iArr2[0];
        } else {
            i2 = iArr2[1] / 2;
        }
        Utils.log(TAG, "Couldn't find match for " + i + ", using " + i2);
        return i2;
    }

    public static int setCameraDisplayOrientation(Context context, int i, Camera camera) {
        int i2;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i3 = 0;
        if (rotation != 0) {
            if (rotation == 1) {
                i3 = 90;
            } else if (rotation == 2) {
                i3 = 180;
            } else if (rotation == 3) {
                i3 = 270;
            }
        }
        if (cameraInfo.facing == 1) {
            i2 = (360 - ((cameraInfo.orientation + i3) % 360)) % 360;
        } else {
            i2 = ((cameraInfo.orientation - i3) + 360) % 360;
        }
        camera.setDisplayOrientation(i2);
        return cameraInfo.orientation;
    }

    public static Point findSuitablePreviewSize(Camera.Parameters parameters, int i, int i2) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        int i3 = Integer.MAX_VALUE;
        Point point = null;
        for (Camera.Size size : supportedPreviewSizes) {
            int iAbs = Math.abs(size.width - i) + Math.abs(size.height - i2);
            if (iAbs < i3) {
                point = new Point(size.width, size.height);
                i3 = iAbs;
            }
        }
        return (point != null || supportedPreviewSizes.size() <= 0) ? point : new Point(supportedPreviewSizes.get(0).width, supportedPreviewSizes.get(0).height);
    }

    public static Point findBestPreviewResolution(Camera.Parameters parameters, Point point, int i, int i2) {
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
                int i3 = size.height * size.width;
                int i4 = size2.height * size2.width;
                if (i4 < i3) {
                    return -1;
                }
                return i4 > i3 ? 1 : 0;
            }
        });
        printlnSupportedPreviewSize(arrayList);
        boolean z = i % 180 != i2 % 180;
        double d = point.x;
        double d2 = point.y;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Camera.Size size = (Camera.Size) it.next();
            int i3 = size.width;
            int i4 = size.height;
            if (i3 * i4 < MIN_PREVIEW_PIXELS) {
                it.remove();
            } else {
                int i5 = z ? i4 : i3;
                int i6 = z ? i3 : i4;
                double d4 = i5;
                double d5 = d3;
                double d6 = i6;
                Double.isNaN(d4);
                Double.isNaN(d6);
                if (Math.abs((d4 / d6) - d5) > MAX_ASPECT_DISTORTION) {
                    it.remove();
                } else if (i5 == point.x && i6 == point.y) {
                    Point point2 = new Point(i3, i4);
                    Log.d(TAG, "found preview resolution exactly matching screen resolutions: " + point2);
                    return point2;
                }
                d3 = d5;
            }
        }
        if (!arrayList.isEmpty()) {
            Camera.Size size2 = (Camera.Size) arrayList.get(0);
            Point point3 = new Point(size2.width, size2.height);
            Log.d(TAG, "using largest suitable preview resolution: " + point3);
            return point3;
        }
        Point point4 = new Point(previewSize.width, previewSize.height);
        Log.d(TAG, "No suitable preview resolutions, using default: " + point4);
        return point4;
    }

    private static void printlnSupportedPreviewSize(List<Camera.Size> list) {
        Log.d(TAG, "--------------------Support Preview Size--------------------");
        for (int i = 0; i < list.size(); i++) {
            Log.d(TAG, String.format("(%s,%s)", Integer.valueOf(list.get(i).width), Integer.valueOf(list.get(i).height)));
        }
        Log.d(TAG, "------------------------------------------------------------");
    }

    public static Camera getCameraInstance() {
        return getCameraInstance(getDefaultCameraId());
    }

    public static int getDefaultCameraId() {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i = -1;
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == 0) {
                return i2;
            }
            i = i2;
        }
        return i;
    }

    public static Camera getCameraInstance(int i) {
        Camera cameraOpen;
        try {
            if (i == -1) {
                cameraOpen = Camera.open();
            } else {
                cameraOpen = Camera.open(i);
            }
            return cameraOpen;
        } catch (Exception unused) {
            return null;
        }
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
}
