package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum LT {
    A06,
    A02,
    A03,
    A04,
    A05;

    private static byte[] A00;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{65, 70, 92, 77, 90, 91, 92, 65, 92, 65, 73, 68, 67, 76, 89, 68, 91, 72, 9, 30, 12, 26, 9, 31, 30, 31, 4, 13, 18, 31, 30, 20, 113, 106, 111, 106, 107, 115, 106, 57, 58, 53, 53, 62, 41};
    }

    static {
        A02();
    }

    public static LT A00(LW lw) {
        char c;
        LT lt = null;
        switch (lw) {
            case A06:
                c = 7;
                break;
            case A0A:
                c = 6;
                break;
            case A0B:
                c = 6;
                break;
            case A0C:
                c = 6;
                break;
            case A09:
                c = 6;
                break;
            case A0D:
                c = 5;
                break;
            case A0G:
                c = 5;
                break;
            case A0E:
                c = 5;
                break;
            case A0F:
                c = 5;
                break;
            case A07:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    lt = A06;
                    c = 3;
                    break;
                case 3:
                    return lt;
                case 4:
                    lt = A05;
                    c = 3;
                    break;
                case 5:
                    lt = A03;
                    c = 3;
                    break;
                case 6:
                    lt = A02;
                    c = 3;
                    break;
                case 7:
                    lt = A04;
                    c = 3;
                    break;
            }
        }
    }

    public final AdPlacementType A03() {
        char c;
        AdPlacementType adPlacementType = null;
        switch (this) {
            case A03:
                c = 7;
                break;
            case A02:
                c = 6;
                break;
            case A04:
                c = 5;
                break;
            case A05:
                c = 4;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    adPlacementType = AdPlacementType.UNKNOWN;
                    c = 3;
                    break;
                case 3:
                    return adPlacementType;
                case 4:
                    adPlacementType = AdPlacementType.REWARDED_VIDEO;
                    c = 3;
                    break;
                case 5:
                    adPlacementType = AdPlacementType.NATIVE;
                    c = 3;
                    break;
                case 6:
                    adPlacementType = AdPlacementType.BANNER;
                    c = 3;
                    break;
                case 7:
                    adPlacementType = AdPlacementType.INTERSTITIAL;
                    c = 3;
                    break;
            }
        }
    }
}
