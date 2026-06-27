package com.facebook.ads.internal.protocol;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum AdPlacementType {
    BANNER(A00(0, 6, 29)),
    INSTREAM(A00(111, 8, 81)),
    INTERSTITIAL(A00(59, 12, 45)),
    NATIVE(A00(84, 6, 116)),
    NATIVE_BANNER(A00(71, 13, 31)),
    REWARDED_VIDEO(A00(45, 14, 3)),
    UNKNOWN(A00(90, 7, 26));

    private static byte[] A01;
    private String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 78);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{49, 50, 61, 61, 54, 33, 104, 111, 117, 100, 115, 114, 117, 104, 117, 104, 96, 109, 118, 113, 108, 107, 109, 122, 126, 114, 127, 112, 101, 120, 103, 116, 110, 115, 112, 127, 127, 116, 99, 32, 47, 58, 39, 56, 43, 63, 40, 58, 44, 63, 41, 40, 41, 18, 59, 36, 41, 40, 34, 10, 13, 23, 6, 17, 16, 23, 10, 23, 10, 2, 15, 63, 48, 37, 56, 39, 52, 14, 51, 48, 63, 63, 52, 35, 84, 91, 78, 83, 76, 95, 33, 58, 63, 58, 59, 35, 58, 119, 96, 114, 100, 119, 97, 96, 97, 122, 115, 108, 97, 96, 106, 118, 113, 108, 107, 109, 122, 126, 114, 66, 89, 92, 89, 88, 64, 89, 48, 51, 60, 60, 55, 32};
    }

    static {
        A01();
    }

    AdPlacementType(String str) {
        this.A00 = str;
    }

    public static AdPlacementType fromString(String str) {
        AdPlacementType adPlacementTypeValueOf = null;
        char c = TextUtils.isEmpty(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    adPlacementTypeValueOf = UNKNOWN;
                    c = 3;
                    break;
                case 3:
                    return adPlacementTypeValueOf;
                case 4:
                    try {
                        adPlacementTypeValueOf = valueOf(str.toUpperCase(Locale.US));
                        c = 3;
                        break;
                    } catch (Exception unused) {
                        adPlacementTypeValueOf = UNKNOWN;
                        c = 3;
                        break;
                    }
            }
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.A00;
    }
}
