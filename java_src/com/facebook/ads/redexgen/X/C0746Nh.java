package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0746Nh {
    private static byte[] A00;
    private static final String A01;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-62, -20, -103, -50, -25, -30, -19, -14, -103, -38, -23, -23, -77, -103, 20, 32, 30, -33, 23, 18, 20, 22, 19, 32, 32, 28, -33, 35, 22, 18, 20, 37, -33, 3, 22, 18, 20, 37, -14, 20, 37, 26, 39, 26, 37, 42, -54, -24, -11, -82, -5, -89, -21, -20, -5, -20, -7, -12, -16, -11, -20, -89, -16, -19, -89, -24, -9, -9, -89, -16, -6, -89, -36, -11, -16, -5, 0, -75, 6, 18, 16, -47, 24, 17, 12, 23, 28, -42, 7, -47, 19, 15, 4, 28, 8, 21, -47, -8, 17, 12, 23, 28, -13, 15, 4, 28, 8, 21, -28, 6, 23, 12, 25, 12, 23, 28};
    }

    static {
        A01();
        A01 = C0746Nh.class.getSimpleName();
    }

    private C0746Nh() {
    }

    @SuppressLint({"CatchGeneralException"})
    public static boolean A02() {
        try {
            Class.forName(A00(14, 32, 107));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean A03() {
        try {
            Class.forName(A00(78, 38, 93));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean A04(int i, int i2) {
        boolean z = false;
        char c = i >= 640 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 < 640) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public static boolean A05(Context context) {
        boolean activityDeclared = true;
        boolean z = false;
        try {
            for (ActivityInfo activityInfo : context.getPackageManager().getPackageInfo(context.getPackageName(), 1).activities) {
                if (A00(78, 38, 93).equals(activityInfo.name)) {
                    z = true;
                }
            }
            if (!z && !A03()) {
                activityDeclared = false;
            }
            if (BuildConfigApi.isDebug()) {
                String str = A00(0, 14, 51) + activityDeclared;
                return activityDeclared;
            }
            return activityDeclared;
        } catch (Throwable th) {
            if (BuildConfigApi.isDebug()) {
                Log.e(A01, A00(46, 32, 65), th);
            }
            return false;
        }
    }
}
