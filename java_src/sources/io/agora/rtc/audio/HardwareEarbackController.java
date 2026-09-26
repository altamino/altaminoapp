package io.agora.rtc.audio;

import android.content.Context;
import android.os.Build;
import android.os.Process;

/* JADX INFO: loaded from: classes5.dex */
public class HardwareEarbackController {
    private static HardwareEarbackController mInstance;
    private final String TAG = "HardwareEarbackController Java";
    private IHardwareEarback mHardwareEarback;

    public static HardwareEarbackController getInstance(Context context) {
        if (mInstance == null) {
            synchronized (HardwareEarbackController.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new HardwareEarbackController(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return mInstance;
    }

    public int enableHardwareEarback(boolean enable) {
        IHardwareEarback iHardwareEarback = this.mHardwareEarback;
        if (iHardwareEarback != null) {
            return iHardwareEarback.enableEarbackFeature(enable);
        }
        return -7;
    }

    public boolean isHardwareEarbackSupported() {
        IHardwareEarback iHardwareEarback = this.mHardwareEarback;
        if (iHardwareEarback != null) {
            return iHardwareEarback.isHardwareEarbackSupported();
        }
        return false;
    }

    public int setHardwareEarbackVolume(int vol) {
        IHardwareEarback iHardwareEarback = this.mHardwareEarback;
        if (iHardwareEarback != null) {
            return iHardwareEarback.setHardwareEarbackVolume(vol);
        }
        return -7;
    }

    private HardwareEarbackController(Context context) {
        this.mHardwareEarback = null;
        String str = Build.MANUFACTURER;
        if (!str.trim().contains("vivo")) {
            if (str.trim().contains("HUAWEI")) {
                if (context.checkPermission("android.permission.INTERACT_ACROSS_USERS", Process.myPid(), Process.myUid()) == 0) {
                    this.mHardwareEarback = new HuaweiHardwareEarback(context);
                }
            } else if (str.trim().contains("OPPO")) {
                this.mHardwareEarback = new OppoHardwareEarback(context);
            }
        }
    }
}
