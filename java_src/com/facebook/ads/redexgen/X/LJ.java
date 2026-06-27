package com.facebook.ads.redexgen.X;

import com.narvii.util.ws.WsMessage;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum LJ {
    A06(-1, 100, 1, 0),
    A07(-1, 120, 2, 1),
    A08(-1, 300, 3, 2),
    A09(-1, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 4, 3),
    A0A(-1, 50, 5, 4),
    A0B(-1, -1, 6, 5);

    private static byte[] A04;
    private final int A00;
    private final int A01;
    private final int A02;
    private final int A03;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 76);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{-47, -50, -46, -48, -47, -35, -24, -68, -71, -71, -73, -76, -72, -74, -73, -61, -50, -92, -97, -31, -34, -30, -32, -31, -19, -8, -54, -55, -55, -13, -16, -12, -14, -13, -1, 10, -36, -35, -37, -61, -74, -76, -59, -48, -75, -54, -65, -78, -66, -70, -76, -65, -68, -64, -66, -65, -53, -42, -85, -89, -89};
    }

    static {
        A02();
    }

    LJ(int i, int i2, int i3, int i4) {
        this.A03 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A00 = i4;
    }

    public static LJ A00(int i) {
        LJ lj = null;
        LJ[] ljArrValues = values();
        int length = ljArrValues.length;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ljArrValues = ljArrValues;
                    lj = ljArrValues[i2];
                    if (lj.A00 != i) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return lj;
                case 5:
                    i2++;
                    c = 2;
                    break;
                case 6:
                    lj = null;
                    c = 4;
                    break;
            }
        }
    }

    public final int A03() {
        return this.A01;
    }

    public final int A04() {
        return this.A02;
    }

    public final int A05() {
        return this.A03;
    }
}
