package io.agora.rtc.utils;

import android.content.Context;
import android.os.Process;
import android.view.WindowManager;
import io.agora.rtc.internal.RtcEngineImpl;

/* JADX INFO: loaded from: classes4.dex */
public class AgoraUtils {
    private static final String TAG = "AgoraUtils";

    public static String getAppStorageDir(Context context) {
        if (context == null || context.checkPermission("android.permission.READ_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) != 0) {
            return null;
        }
        return "/sdcard/" + context.getApplicationInfo().packageName;
    }

    public static int getFrameOrientation(int displayRotation, int sensorOrientation, boolean isFrontFacing, boolean compensateForMirroring) {
        if (!isFrontFacing) {
            return ((sensorOrientation - displayRotation) + 360) % 360;
        }
        int i10 = (sensorOrientation + displayRotation) % 360;
        return compensateForMirroring ? (360 - i10) % 360 : i10;
    }

    public static boolean ensureNativeLibsInitialized() {
        return RtcEngineImpl.initializeNativeLibs();
    }

    public static int getDisplayRotation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation != 1) {
            if (rotation != 2) {
                if (rotation != 3) {
                    return 0;
                }
                return 270;
            }
            return 180;
        }
        return 90;
    }
}
