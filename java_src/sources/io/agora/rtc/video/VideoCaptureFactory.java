package io.agora.rtc.video;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.compose.material.TextFieldImplKt;
import io.agora.rtc.internal.DeviceUtils;
import io.agora.rtc.internal.Logging;

/* JADX INFO: loaded from: classes8.dex */
public class VideoCaptureFactory {
    private static final int ANDROID_CAMERA1 = 0;
    private static final int ANDROID_CAMERA2 = 1;
    private static final int ANDROID_CAMERA_NOT_DEFINE = -1;
    private static final String TAG = "CAM-FACTORY";

    public static boolean checkCamera2Availability(int id, Context appContext, int cameraSelect) {
        if (cameraSelect != 1) {
            return cameraSelect == -1 && isLReleaseOrLater() && !VideoCaptureCamera2.isLegacyDevice(appContext, id);
        }
        return true;
    }

    static class AndroidCameraInfo {
        AndroidCameraInfo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int getNumberOfCameras(Context appContext) {
            int numberOfCameras;
            if (VideoCaptureFactory.isLReleaseOrLater()) {
                numberOfCameras = VideoCaptureCamera2.getNumberOfCameras(appContext);
            } else {
                numberOfCameras = 0;
            }
            if (numberOfCameras == 0) {
                return VideoCaptureCamera.getNumberOfCameras();
            }
            return numberOfCameras;
        }
    }

    public static void cacheLowPowerFlag(Context appContext, int lowPowerFlag) {
        SharedPreferences.Editor editorEdit = appContext.getSharedPreferences("CamCapsLowPower", 0).edit();
        editorEdit.putInt("Cam_LowPower", lowPowerFlag);
        editorEdit.commit();
    }

    public static int fetchLowPowerFlag(Context appContext) {
        SharedPreferences sharedPreferences = appContext.getSharedPreferences("CamCapsLowPower", 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("Cam_LowPower", -1);
        }
        return 0;
    }

    public static boolean isLReleaseOrLater() {
        String str = Build.DEVICE;
        if ("ocean".equalsIgnoreCase(str) && "oe106".equalsIgnoreCase(Build.MODEL)) {
            return false;
        }
        if ("trident".equalsIgnoreCase(str) && "de106".equalsIgnoreCase(Build.MODEL)) {
            return false;
        }
        if (("shark".equalsIgnoreCase(str) && "skr-a0".equalsIgnoreCase(Build.MODEL)) || "hnnem-h".equalsIgnoreCase(str)) {
            return false;
        }
        if ((!"on7xelte".equals(str) || !"SM-G610F".equals(Build.MODEL)) && !"m2c".equals(str)) {
            String str2 = Build.MODEL;
            if (!"M578CA".equals(str2)) {
                String str3 = Build.MANUFACTURER;
                if ("samsung".equalsIgnoreCase(str3) && str2 != null && (str2.contains("SM-G930") || str2.contains("SM-G935") || str2.contains("SM-G950") || str2.contains("SM-G955") || "SC-02H".equals(str2) || "SCV33".equals(str2) || "SC-02J".equals(str2) || "SCV36".equals(str2) || "SM-G892A".equals(str2) || "SM-G892U".equals(str2) || "SC-03J".equals(str2) || "SCV35".equals(str2))) {
                    return false;
                }
                return !"oneplus".equalsIgnoreCase(str3) || str2.contains("ONEPLUS A6");
            }
        }
        return false;
    }

    public static VideoCapture createVideoCapture(int id, Context context, long nativeVideoCaptureDeviceAndroid, int select, int pqFirst, int lowPowerFlag) {
        if (lowPowerFlag != fetchLowPowerFlag(context)) {
            cacheLowPowerFlag(context, lowPowerFlag);
            VideoCapture.clearCapabilityCache(context);
        }
        if (checkCamera2Availability(id, context, select)) {
            Logging.d(TAG, "create CAMERA2");
            return new VideoCaptureCamera2(context, id, nativeVideoCaptureDeviceAndroid, pqFirst);
        }
        Logging.d(TAG, "create CAMERA1");
        return new VideoCaptureCamera(context, id, nativeVideoCaptureDeviceAndroid, pqFirst);
    }

    public static String getCapabilities(int id, Context appContext, int cameraSelect) {
        String strFetchCapability;
        if (checkCamera2Availability(id, appContext, cameraSelect)) {
            strFetchCapability = VideoCapture.fetchCapability(id, appContext, VideoCaptureCamera2.getCaptureName());
        } else {
            strFetchCapability = VideoCapture.fetchCapability(id, appContext, VideoCaptureCamera.getCaptureName());
        }
        if (strFetchCapability == null) {
            Logging.e(TAG, "Capability hasn't been created");
        } else {
            printCameraInfo(strFetchCapability);
        }
        return strFetchCapability;
    }

    public static String getDeviceName(int id, Context appContext, int select) {
        if (checkCamera2Availability(id, appContext, select)) {
            return VideoCaptureCamera2.getName(id, appContext);
        }
        return VideoCaptureCamera.getName(id);
    }

    public static int getDeviceOrientation(int id, Context appContext, int select) {
        if (checkCamera2Availability(id, appContext, select)) {
            return VideoCaptureCamera2.getSensorOrientation(id, appContext);
        }
        return VideoCaptureCamera.getSensorOrientation(id);
    }

    public static int getFrontCameraIndex(Context context) {
        int iSelectFrontCamera = DeviceUtils.selectFrontCamera(context);
        Logging.i(TAG, "getFrontCameraIndex  = " + iSelectFrontCamera);
        return iSelectFrontCamera;
    }

    public static int getNumberOfCameras(Context appContext) {
        return AndroidCameraInfo.getNumberOfCameras(appContext);
    }

    public static int printCameraInfo(String cap) {
        String str;
        int length = cap.length() / TextFieldImplKt.AnimationDuration;
        int i10 = length + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            try {
                String str2 = "lines = " + i10 + ":";
                if (i11 == length) {
                    str = str2 + cap.substring(i11 * TextFieldImplKt.AnimationDuration, cap.length());
                } else {
                    str = str2 + cap.substring(i11 * TextFieldImplKt.AnimationDuration, (i11 + 1) * TextFieldImplKt.AnimationDuration);
                }
                Logging.d("CameraInfo", str);
            } catch (IndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }
}
