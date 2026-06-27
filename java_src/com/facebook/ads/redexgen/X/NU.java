package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum NU {
    A06(0),
    A0E(1),
    A07(2),
    A0F(3),
    A08(4),
    A05(5),
    A0C(6),
    A0D(7),
    A0I(8),
    A0B(9),
    A09(10),
    A0G(11),
    A0H(16),
    A0A(17);

    private static byte[] A01;
    public static final NU[] A02;
    private static final String A03;
    private final int A00;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 63);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{-93, -78, -78, -63, -93, -90, -63, -54, -42, -53, -55, -64, -66, -66, -68, -55, -42, -59, -58, -42, -72, -52, -53, -58, -42, -64, -60, -57, -42, -61, -58, -66, -66, -64, -59, -66, -54, -67, -72, -71, -61, -45, -75, -72, 2, 11, 23, 12, 10, 1, -1, -1, -3, 10, -10, 5, 5, 20, -10, -7, 20, 11, -25, -90, -93, -88, -91, -71, -101, -98, -79, -67, -67, -71, -56, -75, -78, -73, -76, -68, -37, -44, -49, -52, -49, -53, -54, -27, -46, -43, -51, -51, -49, -44, -51, -128, -113, -113, -98, -124, -115, -122, -128, -122, -124, -116, -124, -115, -109, -98, -128, -125, -61, -64, -59, -62, -42, -72, -69, -42, -51, -87, -43, -38, -40, -43, -38, -47, -21, -30, -43, -48, -47, -37, -21, -51, -48, -89, -90, -77, -77, -86, -73, -60, -71, -76, -60, -82, -77, -71, -86, -73, -72, -71, -82, -71, -82, -90, -79, -72, -85, -66, -77, -64, -81, -55, -83, -74, -71, -67, -81, -55, -84, -65, -66, -66, -71, -72, -72, -69, -42, -70, -65, -58, -64, -70, -68, -54};
    }

    static {
        A03();
        A02 = new NU[]{A0F, A08, A05, A0D, A0G, A0H, A0A};
        JSONArray array = new JSONArray();
        for (NU nu : A02) {
            array.put(nu.A00());
        }
        A03 = array.toString();
    }

    NU(int i) {
        this.A00 = i;
    }

    private final int A00() {
        return this.A00;
    }

    public static String A01() {
        return A03;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return String.valueOf(this.A00);
    }
}
