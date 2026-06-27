package com.facebook.ads.redexgen.X;

import android.app.KeyguardManager;
import android.content.Context;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OZ {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{124, 50, 35, 54, 50, 41, 125, 108, 110, 97, 109, 127, 121, 126, 110, 103, 105, 117, 107, 121, 109, 126, 104, 56, 52, 33};
    }

    static {
        A01();
        A01 = OZ.class.getSimpleName();
    }

    private OZ() {
    }

    public static boolean A02(Context context) {
        boolean z = false;
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(A00(15, 8, 81));
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

    public static boolean A03(Map<String, String> map) {
        String flagShowWhenLocked = null;
        String str = null;
        String str2 = null;
        boolean z = false;
        char c = map != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    map = map;
                    if (!map.isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    map = map;
                    str = map.get(A00(6, 5, 87));
                    str2 = map.get(A00(1, 5, 24));
                    String flagShowWhenLocked2 = map.get(A00(23, 3, 14));
                    flagShowWhenLocked = flagShowWhenLocked2;
                    if (str == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    str = str;
                    if (!str.equals(A00(0, 1, 16))) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    str2 = str2;
                    if (str2 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    str2 = str2;
                    if (!str2.equals(A00(0, 1, 16))) {
                        c = 3;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    flagShowWhenLocked = flagShowWhenLocked;
                    if (flagShowWhenLocked == null) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    flagShowWhenLocked = flagShowWhenLocked;
                    if (!flagShowWhenLocked.equals(A00(11, 4, 86))) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    public static boolean A04(Map<String, String> map) {
        String keyguardRestrictedInputMode = null;
        String str = null;
        String str2 = null;
        boolean z = false;
        char c = map != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    map = map;
                    if (!map.isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    map = map;
                    str = map.get(A00(6, 5, 87));
                    str2 = map.get(A00(1, 5, 24));
                    if (str == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    str = str;
                    if (!str.equals(A00(0, 1, 16))) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 6:
                    str2 = str2;
                    if (str2 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    str2 = str2;
                    if (!str2.equals(A00(0, 1, 16))) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case '\b':
                    map = map;
                    keyguardRestrictedInputMode = map.get(A00(23, 3, 14));
                    if (keyguardRestrictedInputMode == null) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    keyguardRestrictedInputMode = keyguardRestrictedInputMode;
                    if (!keyguardRestrictedInputMode.equals(A00(11, 4, 86))) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    z = true;
                    c = 3;
                    break;
            }
        }
    }
}
