package com.facebook.ads.redexgen.X;

import com.facebook.ads.VideoStartReason;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC0697Lh {
    A04(VideoStartReason.NOT_STARTED),
    A05(VideoStartReason.USER_STARTED),
    A03(VideoStartReason.AUTO_STARTED);

    private static byte[] A01;
    private final VideoStartReason A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{50, 38, 39, 60, 44, 32, 39, 50, 33, 39, 54, 55, 88, 89, 66, 73, 69, 66, 87, 68, 66, 83, 82, 57, 63, 41, 62, 51, 63, 56, 45, 62, 56, 41, 40};
    }

    static {
        A02();
    }

    EnumC0697Lh(VideoStartReason videoStartReason) {
        this.A00 = videoStartReason;
    }

    public static EnumC0697Lh A00(VideoStartReason videoStartReason) {
        EnumC0697Lh enumC0697Lh = null;
        EnumC0697Lh[] enumC0697LhArrValues = values();
        int length = enumC0697LhArrValues.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    videoStartReason = videoStartReason;
                    enumC0697LhArrValues = enumC0697LhArrValues;
                    enumC0697Lh = enumC0697LhArrValues[i];
                    if (enumC0697Lh.A00 != videoStartReason) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return enumC0697Lh;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    enumC0697Lh = A04;
                    c = 4;
                    break;
            }
        }
    }
}
