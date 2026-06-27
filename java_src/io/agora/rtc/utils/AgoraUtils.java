package io.agora.rtc.utils;

import android.content.Context;
import android.view.WindowManager;
import io.agora.rtc.internal.RtcEngineImpl;

/* loaded from: classes4.dex */
public class AgoraUtils {
    private static final String TAG = "AgoraUtils";

    public static boolean ensureNativeLibsInitialized() {
        return RtcEngineImpl.initializeNativeLibs();
    }

    public static int getFrameOrientation(int i, int i2, boolean z, boolean z2) {
        if (z) {
            int i3 = (i2 + i) % 360;
            return z2 ? (360 - i3) % 360 : i3;
        }
        return ((i2 - i) + 360) % 360;
    }

    public static int getDisplayRotation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 0) {
            return 0;
        }
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    public static String getAppStorageDir(Context context) {
        if (context == null || context.checkCallingOrSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return null;
        }
        return "/sdcard/" + context.getApplicationInfo().packageName;
    }
}
