package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JF {
    private static byte[] A01;
    public static final String A02;
    private final Context A00;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 127);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{33, 25, 32, 31, 22, -12, 1, -9, 5, 2, -4, -9, -63, 3, -8, 5, 0, -4, 6, 6, -4, 2, 1, -63, -43, -36, -31, -41, -14, -44, -42, -42, -40, -26, -26, -36, -43, -36, -33, -36, -25, -20, -14, -26, -40, -27, -23, -36, -42, -40, 90, 88, 97, 88, 101, 92, 86};
    }

    static {
        A01();
        A02 = Build.VERSION.RELEASE;
    }

    public JF(Context context) {
        this.A00 = context.getApplicationContext();
    }

    public final int A02() {
        return NY.A01(this.A00);
    }

    @SuppressLint({"CatchGeneralException"})
    public final int A03() {
        int i = 0;
        try {
            i = this.A00.getPackageManager().getPackageInfo(A06(), 0).versionCode;
            return i;
        } catch (Throwable th) {
            P7.A08(this.A00, A00(50, 7, 116), P8.A0w, new PA(th));
            return i;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final String A04() {
        JF jf = this;
        String strA00 = null;
        CharSequence applicationLabel = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    jf = jf;
                    applicationLabel = jf.A00.getPackageManager().getApplicationLabel(jf.A00.getPackageManager().getApplicationInfo(jf.A06(), 0));
                    if (applicationLabel == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    applicationLabel = applicationLabel;
                    if (applicationLabel.length() <= 0) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    try {
                        applicationLabel = applicationLabel;
                        strA00 = applicationLabel.toString();
                        c = 16;
                        break;
                    } catch (Throwable th) {
                        P7.A08(jf.A00, A00(50, 7, 116), P8.A0w, new PA(th));
                        c = 15;
                        break;
                    }
                case 15:
                    strA00 = A00(57, 0, 12);
                    c = 16;
                    break;
                case 16:
                    return strA00;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final String A05() {
        JF jf = this;
        String strA00 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        jf = jf;
                        strA00 = jf.A00.getPackageManager().getPackageInfo(jf.A06(), 0).versionName;
                        c = '\t';
                        break;
                    } catch (Throwable th) {
                        P7.A08(jf.A00, A00(50, 7, 116), P8.A0w, new PA(th));
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (!TextUtils.isEmpty(strA00)) {
                        c = '\n';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\n':
                    return strA00;
                case 11:
                    strA00 = A00(57, 0, 12);
                    c = '\n';
                    break;
            }
        }
    }

    public final String A06() {
        String creatorPackage = null;
        PendingIntent activity = PendingIntent.getActivity(this.A00, 0, new Intent(), 0);
        char c = activity == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    creatorPackage = A00(57, 0, 12);
                    c = 3;
                    break;
                case 3:
                    return creatorPackage;
                case 4:
                    if (Build.VERSION.SDK_INT < 17) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    activity = activity;
                    creatorPackage = activity.getCreatorPackage();
                    c = 3;
                    break;
                case 6:
                    activity = activity;
                    creatorPackage = activity.getTargetPackage();
                    c = 3;
                    break;
            }
        }
    }

    public final String A07() {
        String networkOperatorName = null;
        TelephonyManager telephonyManager = (TelephonyManager) this.A00.getSystemService(A00(0, 5, 50));
        char c = telephonyManager != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    telephonyManager = telephonyManager;
                    networkOperatorName = telephonyManager.getNetworkOperatorName();
                    if (networkOperatorName == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    networkOperatorName = networkOperatorName;
                    if (networkOperatorName.length() <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return networkOperatorName;
                case 5:
                    networkOperatorName = A00(57, 0, 12);
                    c = 4;
                    break;
            }
        }
    }

    public final String A08() {
        String strA00 = null;
        char c = Build.MANUFACTURER != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.MANUFACTURER.length() <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA00 = Build.MANUFACTURER;
                    c = 4;
                    break;
                case 4:
                    return strA00;
                case 5:
                    strA00 = A00(57, 0, 12);
                    c = 4;
                    break;
            }
        }
    }

    public final String A09() {
        String strA00 = null;
        char c = Build.MODEL != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.MODEL.length() <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA00 = Build.MODEL;
                    c = 4;
                    break;
                case 4:
                    return strA00;
                case 5:
                    strA00 = A00(57, 0, 12);
                    c = 4;
                    break;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final String A0A() {
        JF jf = this;
        String pkgName = null;
        String strA06 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    jf = jf;
                    strA06 = jf.A06();
                    if (strA06 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    strA06 = strA06;
                    if (strA06.length() < 0) {
                        c = '\r';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jf = jf;
                    pkgName = jf.A00.getPackageManager().getInstallerPackageName(strA06);
                    if (pkgName == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    try {
                        pkgName = pkgName;
                        if (pkgName.length() <= 0) {
                            c = '\r';
                            break;
                        } else {
                            c = 14;
                            break;
                        }
                    } catch (Throwable th) {
                        P7.A08(jf.A00, A00(50, 7, 116), P8.A0w, new PA(th));
                        c = '\r';
                        break;
                    }
                case '\r':
                    pkgName = A00(57, 0, 12);
                    c = 14;
                    break;
                case 14:
                    return pkgName;
            }
        }
    }

    public final boolean A0B() {
        boolean z = false;
        char c = this.A00.checkCallingOrSelfPermission(A00(5, 45, 20)) == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
