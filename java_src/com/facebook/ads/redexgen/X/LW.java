package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum LW {
    A08(0),
    A0C(4),
    A0A(5),
    A0B(6),
    A09(7),
    A0F(100),
    A0D(101),
    A0G(102),
    A0E(103),
    A06(200),
    A05(500),
    A04(201),
    A07(WsMessage.LIVE_LAYER_USER_JOINED_EVENT),
    A03(300);

    private static byte[] A01;
    private final int A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{-77, -90, -71, -82, -69, -86, -60, -105, -102, -107, -68, -86, -89, -69, -82, -86, -68, -60, -89, -90, -77, -77, -86, -73, -60, -79, -86, -84, -90, -88, -66, -78, -91, -72, -83, -70, -87, -61, -71, -78, -81, -78, -77, -69, -78, -113, 125, 122, -114, -127, 125, -113, -105, -127, -122, -116, 125, -118, -117, -116, -127, -116, -127, 121, -124, -105, -116, 121, 122, -124, 125, -116, -34, -52, -55, -35, -48, -52, -34, -26, -55, -56, -43, -43, -52, -39, -26, -64, -73, -90, -103, -84, -95, -82, -99, -73, -102, -103, -90, -90, -99, -86, -27, -45, -48, -28, -41, -45, -27, -19, -41, -36, -30, -45, -32, -31, -30, -41, -30, -41, -49, -38, -19, -29, -36, -39, -36, -35, -27, -36, -113, 125, 122, -114, -127, 125, -113, -105, 122, 121, -122, -122, 125, -118, -105, 109, 104, -20, -38, -41, -21, -34, -38, -20, -12, -34, -29, -23, -38, -25, -24, -23, -34, -23, -34, -42, -31, -12, -21, -38, -25, -23, -34, -40, -42, -31, -60, -55, -50, -49, -51, -64, -68, -56, -38, -47, -60, -65, -64, -54, -27, -40, -22, -44, -27, -41, -40, -41, -14, -23, -36, -41, -40, -30, -65, -83, -86, -66, -79, -83, -65, -57, -79, -74, -68, -83, -70, -69, -68, -79, -68, -79, -87, -76, -57, -80, -73, -70, -79, -62, -73, -74, -68, -87, -76, -39, -46, -49, -46, -45, -37, -46, -13, -31, -34, -14, -27, -31, -13, -5, -34, -35, -22, -22, -31, -18, -5, -50, -47, -52};
    }

    static {
        A02();
    }

    LW(int i) {
        this.A00 = i;
    }

    @Nullable
    public static LW A00(int i) {
        LW lw = null;
        LW[] lwArrValues = values();
        int length = lwArrValues.length;
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
                    lwArrValues = lwArrValues;
                    lw = lwArrValues[i2];
                    if (lw.A00 != i) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return lw;
                case 5:
                    i2++;
                    c = 2;
                    break;
                case 6:
                    lw = null;
                    c = 4;
                    break;
            }
        }
    }

    public final int A03() {
        return this.A00;
    }
}
