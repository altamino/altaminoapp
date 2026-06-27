package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdSize;
import com.facebook.ads.internal.api.AdSizeApi;
import java.io.Serializable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum LV implements Serializable, AdSizeApi {
    A04(320, 50),
    A07(0, 0),
    A05(-1, 50),
    A06(-1, 90),
    A08(-1, 250);

    private static byte[] A02 = null;
    public static final long serialVersionUID = 42;
    private final int A00;
    private final int A01;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A02 = new byte[]{19, 16, 31, 31, 20, 3, 14, 98, 99, 97, 14, 100, 97, 35, 32, 47, 47, 36, 51, 62, 41, 36, 40, 38, 41, 53, 62, 88, 81, 42, 45, 55, 38, 49, 48, 55, 42, 55, 42, 34, 47, 96, 119, 113, 102, 115, 124, 117, 126, 119, 109, 122, 119, 123, 117, 122, 102, 109, 0, 7, 2, 50, 9, 12, 9, 8, 16, 9, 71, 38, 3, 52, 14, 29, 2, 71, 19, 30, 23, 2, 73, 38, 37, 42, 42, 33, 54, 59, 44, 33, 45, 35, 44, 48, 59, 81, 84};
    }

    static {
        A04();
    }

    LV(int i, int i2) {
        this.A01 = i;
        this.A00 = i2;
    }

    public static AdSizeApi A00(int i) {
        char c;
        LV lv = null;
        switch (i) {
            case 4:
                c = 7;
                break;
            case 5:
                c = 6;
                break;
            case 6:
                c = 5;
                break;
            case 7:
                c = 4;
                break;
            case 100:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A03(61, 20, 125));
                case 3:
                    lv = A07;
                    c = '\b';
                    break;
                case 4:
                    lv = A08;
                    c = '\b';
                    break;
                case 5:
                    lv = A06;
                    c = '\b';
                    break;
                case 6:
                    lv = A05;
                    c = '\b';
                    break;
                case 7:
                    lv = A04;
                    c = '\b';
                    break;
                case '\b':
                    return lv;
            }
        }
    }

    private static LV A01(int i, int i2) {
        LV lv = null;
        char c = A07.A00 == i2 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (A07.A01 != i) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    lv = A07;
                    c = 4;
                    break;
                case 4:
                    return lv;
                case 5:
                    if (A04.A00 != i2) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (A04.A01 != i) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    lv = A04;
                    c = 4;
                    break;
                case '\b':
                    if (A05.A00 != i2) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (A05.A01 != i) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    lv = A05;
                    c = 4;
                    break;
                case 11:
                    if (A06.A00 != i2) {
                        c = 14;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    if (A06.A01 != i) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    lv = A06;
                    c = 4;
                    break;
                case 14:
                    if (A08.A00 != i2) {
                        c = 17;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    if (A08.A01 != i) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    lv = A08;
                    c = 4;
                    break;
                case 17:
                    lv = null;
                    c = 4;
                    break;
            }
        }
    }

    public static LV A02(AdSize adSize) {
        return A01(adSize.getWidth(), adSize.getHeight());
    }

    public final AdSize A05() {
        return AdSize.fromWidthAndHeight(this.A01, this.A00);
    }

    public final int getHeight() {
        return this.A00;
    }

    public final int getWidth() {
        return this.A01;
    }
}
