package io.agora.rtc.video;

import android.content.Context;
import android.hardware.Camera;
import android.view.Display;
import android.view.WindowManager;
import io.agora.rtc.internal.Logging;

/* JADX INFO: loaded from: classes8.dex */
public class CameraUtil {
    private static final String TAG = "CAMERA_UTIL";

    /* JADX WARN: Code duplicated, block: B:17:0x0038  */
    public static int getCameraDisplayOrientation(Context context, int cameraId) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(cameraId, cameraInfo);
        int i10 = 90;
        if (context == null || context.getSystemService("window") == null) {
            return 90;
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay == null) {
            Logging.e(TAG, "display is null");
            return 90;
        }
        int rotation = defaultDisplay.getRotation();
        if (rotation == 0) {
            i10 = 0;
        } else if (rotation != 1) {
            if (rotation == 2) {
                i10 = 180;
            } else if (rotation != 3) {
                i10 = 0;
            } else {
                i10 = 270;
            }
        }
        return cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i10) % 360)) % 360 : ((cameraInfo.orientation - i10) + 360) % 360;
    }
}
