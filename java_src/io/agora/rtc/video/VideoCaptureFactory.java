package io.agora.rtc.video;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import io.agora.rtc.internal.Logging;

/* loaded from: classes4.dex */
public class VideoCaptureFactory {
    private static final String TAG = "CAM-FACTORY";

    static class AndroidCameraInfo {
        private static int sNumberOfSystemCameras = -1;

        AndroidCameraInfo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int getNumberOfCameras(Context context) {
            if (sNumberOfSystemCameras == -1) {
                if (Build.VERSION.SDK_INT < 23 && context.getPackageManager().checkPermission("android.permission.CAMERA", context.getPackageName()) != 0) {
                    sNumberOfSystemCameras = 0;
                    Log.e(VideoCaptureFactory.TAG, "Missing android.permission.CAMERA permission, no system camera available");
                } else {
                    sNumberOfSystemCameras = 0;
                    if (VideoCaptureFactory.isLReleaseOrLater()) {
                        sNumberOfSystemCameras = VideoCaptureCamera2.getNumberOfCameras(context);
                    }
                    if (sNumberOfSystemCameras == 0) {
                        sNumberOfSystemCameras = VideoCaptureCamera.getNumberOfCameras();
                    }
                }
            }
            return sNumberOfSystemCameras;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isLReleaseOrLater() {
        String str;
        if ("ocean".equalsIgnoreCase(Build.DEVICE) && "oe106".equalsIgnoreCase(Build.MODEL)) {
            return false;
        }
        if ("trident".equalsIgnoreCase(Build.DEVICE) && "de106".equalsIgnoreCase(Build.MODEL)) {
            return false;
        }
        if (("shark".equalsIgnoreCase(Build.DEVICE) && "skr-a0".equalsIgnoreCase(Build.MODEL)) || "hnnem-h".equalsIgnoreCase(Build.DEVICE)) {
            return false;
        }
        if (("on7xelte".equals(Build.DEVICE) && "SM-G610F".equals(Build.MODEL)) || "m2c".equals(Build.DEVICE) || "M578CA".equals(Build.MODEL)) {
            return false;
        }
        return (("samsung".equalsIgnoreCase(Build.MANUFACTURER) && (str = Build.MODEL) != null && (str.contains("SM-G930") || Build.MODEL.contains("SM-G935") || Build.MODEL.contains("SM-G950") || Build.MODEL.contains("SM-G955") || "SC-02H".equals(Build.MODEL) || "SCV33".equals(Build.MODEL) || "SC-02J".equals(Build.MODEL) || "SCV36".equals(Build.MODEL) || "SM-G892A".equals(Build.MODEL) || "SM-G892U".equals(Build.MODEL) || "SC-03J".equals(Build.MODEL) || "SCV35".equals(Build.MODEL))) || "oneplus".equalsIgnoreCase(Build.MANUFACTURER) || Build.VERSION.SDK_INT < 21) ? false : true;
    }

    public static VideoCapture createVideoCapture(int i, Context context, long j) {
        if (isLReleaseOrLater() && !VideoCaptureCamera2.isLegacyDevice(context, i)) {
            return new VideoCaptureCamera2(context, i, j);
        }
        return new VideoCaptureCamera(context, i, j);
    }

    public static int getNumberOfCameras(Context context) {
        return AndroidCameraInfo.getNumberOfCameras(context);
    }

    public static String getDeviceName(int i, Context context) {
        if (isLReleaseOrLater() && !VideoCaptureCamera2.isLegacyDevice(context, i)) {
            return VideoCaptureCamera2.getName(i, context);
        }
        return VideoCaptureCamera.getName(i);
    }

    public static int getDeviceOrientation(int i, Context context) {
        if (isLReleaseOrLater() && !VideoCaptureCamera2.isLegacyDevice(context, i)) {
            return VideoCaptureCamera2.getSensorOrientation(i, context);
        }
        return VideoCaptureCamera.getSensorOrientation(i);
    }

    public static String getCapabilities(int i, Context context) {
        String strFetchCapability = VideoCapture.fetchCapability(i, context);
        if (strFetchCapability == null) {
            Logging.e(TAG, "Capability hasn't been created");
        } else {
            printCameraInfo(strFetchCapability);
        }
        return strFetchCapability;
    }

    public static int printCameraInfo(String str) {
        int length = (str.length() / 150) + 1;
        for (int i = 0; i < length; i++) {
            try {
                String str2 = "lines = " + length + ":";
                Logging.d("CameraInfo", i == length - 1 ? str2 + str.substring(i * 150, str.length()) : str2 + str.substring(i * 150, (i + 1) * 150));
            } catch (IndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }
}
