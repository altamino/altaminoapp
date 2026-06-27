package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2t, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC02232t {
    A03(A01(0, 14, 124)),
    A04(A01(37, 9, 62));

    private static byte[] A01;
    private final String A00;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_BAD_REQUEST);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{83, 95, 94, 100, 85, 104, 100, 101, 81, 92, 79, 81, 96, 96, -29, -17, -18, -12, -27, -8, -12, -11, -31, -20, -1, -31, -16, -16, -39, -54, -48, -50, -24, -39, -40, -36, -35, 34, 19, 25, 23, 17, 34, 33, 37, 38};
    }

    static {
        A02();
    }

    EnumC02232t(String str) {
        this.A00 = str;
    }

    public static EnumC02232t A00(String str) {
        char c;
        EnumC02232t enumC02232t = null;
        char c2 = 65535;
        switch (str.hashCode()) {
            case 883765328:
                c = 6;
                break;
            case 1434358835:
                c = '\b';
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    switch (c2) {
                        case 0:
                            c = 5;
                            break;
                        default:
                            c = 3;
                            break;
                    }
                case 3:
                    enumC02232t = A04;
                    c = 4;
                    break;
                case 4:
                    return enumC02232t;
                case 5:
                    enumC02232t = A03;
                    c = 4;
                    break;
                case 6:
                    str = str;
                    if (!str.equals(A01(37, 9, 62))) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c2 = 1;
                    c = 2;
                    break;
                case '\b':
                    str = str;
                    if (!str.equals(A01(0, 14, 124))) {
                        c = 2;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c2 = 0;
                    c = 2;
                    break;
            }
        }
    }
}
