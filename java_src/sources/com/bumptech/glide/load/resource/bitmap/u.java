package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.io.File;

/* JADX INFO: loaded from: classes11.dex */
public final class u {
    private static final File FD_SIZE_LIST = new File("/proc/self/fd");
    private static final int MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_O = 700;
    private static final int MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_P = 20000;
    private static final int MINIMUM_DECODES_BETWEEN_FD_CHECKS = 50;

    @VisibleForTesting
    static final int MIN_HARDWARE_DIMENSION_O = 128;
    private static final int MIN_HARDWARE_DIMENSION_P = 0;
    private static volatile u instance;

    @GuardedBy
    private int decodesSinceLastFdCheck;
    private final int fdCountLimit;

    @GuardedBy
    private boolean isFdSizeBelowHardwareLimit = true;
    private final boolean isHardwareConfigAllowedByDeviceModel = d();
    private final int minHardwareDimension;

    private synchronized boolean b() {
        try {
            boolean z6 = true;
            int i10 = this.decodesSinceLastFdCheck + 1;
            this.decodesSinceLastFdCheck = i10;
            if (i10 >= 50) {
                this.decodesSinceLastFdCheck = 0;
                int length = FD_SIZE_LIST.list().length;
                if (length >= this.fdCountLimit) {
                    z6 = false;
                }
                this.isFdSizeBelowHardwareLimit = z6;
                if (!z6 && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + this.fdCountLimit);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isFdSizeBelowHardwareLimit;
    }

    public boolean c(int i10, int i11, boolean z6, boolean z10) {
        int i12;
        return z6 && this.isHardwareConfigAllowedByDeviceModel && Build.VERSION.SDK_INT >= 26 && !z10 && i10 >= (i12 = this.minHardwareDimension) && i11 >= i12 && b();
    }

    public static u a() {
        if (instance == null) {
            synchronized (u.class) {
                try {
                    if (instance == null) {
                        instance = new u();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private static boolean d() {
        String str = Build.MODEL;
        if (str == null || str.length() < 7) {
            return true;
        }
        String strSubstring = str.substring(0, 7);
        strSubstring.hashCode();
        switch (strSubstring) {
            case "SM-A520":
            case "SM-G930":
            case "SM-G935":
            case "SM-G960":
            case "SM-G965":
            case "SM-J720":
            case "SM-N935":
                return Build.VERSION.SDK_INT != 26;
            default:
                return true;
        }
    }

    @VisibleForTesting
    u() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.fdCountLimit = 20000;
            this.minHardwareDimension = 0;
        } else {
            this.fdCountLimit = 700;
            this.minHardwareDimension = 128;
        }
    }

    @TargetApi(26)
    boolean e(int i10, int i11, BitmapFactory.Options options, boolean z6, boolean z10) {
        boolean zC = c(i10, i11, z6, z10);
        if (zC) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return zC;
    }
}
