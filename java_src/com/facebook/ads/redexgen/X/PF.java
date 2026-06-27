package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.util.Log;
import android.view.Window;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class PF {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{-59, 125, -44, -61, -48, -44, -55, 0, -17, -19, -12, -16, 6, 57, 36, 38, 49, 53, 42, 48, 47, -31, 42, 47, -31, 56, 42, 47, 37, 48, 56, -31, 42, 47, 39, 48, -31, 36, 41, 38, 36, 44, -56, -60, -49, -73, -79, -59, -77, -63, -83, -66, -80, -36, -45, -35, -43, -29, -62, -65};
    }

    static {
        A02();
        A01 = PF.class.getSimpleName();
    }

    private PF() {
    }

    public static Map<String, String> A01(Context context) {
        Window window;
        String strA00 = null;
        String strA002 = null;
        HashMap map = new HashMap();
        if (context != null) {
            try {
                map.put(A00(42, 3, 27), String.valueOf(A04(context)));
            } catch (Exception e) {
                Log.e(A01, A00(12, 30, 127), e);
                P7.A07(context, A00(53, 5, 40), P8.A1c, new PA(e));
            }
            if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null) {
                int i = window.getAttributes().flags;
                map.put(A00(58, 2, 9), Integer.toString(window.getAttributes().type));
                char c = (4194304 & i) > 0 ? (char) 22 : (char) 20;
                while (true) {
                    switch (c) {
                        case 20:
                            strA00 = A00(0, 1, 83);
                            c = 24;
                        case 22:
                            strA00 = A00(1, 1, 10);
                            c = 24;
                        case 24:
                            String flagDismissKeyguardEnabled = A00(7, 5, 71);
                            map.put(flagDismissKeyguardEnabled, strA00);
                            c = (524288 & i) > 0 ? (char) 29 : (char) 27;
                        case 27:
                            strA002 = A00(0, 1, 83);
                            c = 31;
                        case 29:
                            strA002 = A00(1, 1, 10);
                            c = 31;
                        case 31:
                            String flagShowWhenLockedEnabled = A00(2, 5, 27);
                            map.put(flagShowWhenLockedEnabled, strA002);
                            break;
                    }
                    Log.e(A01, A00(12, 30, 127), e);
                    P7.A07(context, A00(53, 5, 40), P8.A1c, new PA(e));
                }
            }
        }
        return map;
    }

    public static boolean A03(Context context) {
        boolean z = false;
        char c = !OZ.A04(A01(context)) ? (char) 2 : (char) 4;
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

    private static boolean A04(Context context) {
        boolean z = false;
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(A00(45, 8, 10));
        char c = keyguardManager != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    keyguardManager = keyguardManager;
                    if (!keyguardManager.inKeyguardRestrictedInputMode()) {
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
}
