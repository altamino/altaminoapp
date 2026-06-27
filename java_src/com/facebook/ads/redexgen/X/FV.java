package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.narvii.util.ws.WsMessage;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FV {
    private static byte[] A00;

    static {
        A05();
    }

    private static String A04(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{-100, -97, -87, -78, -102, -78, -86, -102, -92, -82, -102, -81, -86, -80, -98, -93, -102, -82, -92, -94, -87, -100, -89, -102, -96, -87, -100, -99, -89, -96, -97, -16, -13, -3, 6, -18, 6, -2, -18, -8, 2, -18, -16, 3, 3, -8, 3, 4, -13, -12, -18, 2, -8, -10, -3, -16, -5, -18, -12, -3, -16, -15, -5, -12, -13, -31, -28, -18, -9, -33, -9, -17, -33, -18, -27, -12, -9, -17, -14, -21, -33, -13, -23, -25, -18, -31, -20, -33, -13, -31, -19, -16, -20, -23, -18, -25, -33, -14, -31, -12, -27, -33, -10, -78, -91, -88, -78, -69, -93, -69, -77, -93, -83, -73, -93, -73, -87, -78, -73, -77, -74, -93, -84, -69, -93, -73, -83, -85, -78, -91, -80, -93, -87, -78, -91, -90, -80, -87, -88, -10, -7, 3, 12, -12, 12, 4, -12, -2, 8, -12, -8, 4, 3, -12, -2, 3, 9, -12, -6, 3, -10, -9, 1, -6, -7, -26, -23, -13, -4, -28, -4, -12, -28, -13, -22, -7, -4, -12, -9, -16, -28, -8, -18, -20, -13, -26, -15, -28, -15, -26, -9, -20, -22, -28, -11, -26, -2, -15, -12, -26, -23, -28, -22, -13, -26, -25, -15, -22, -23, -24, -21, -11, -2, -26, -2, -10, -26, -11, -20, -5, -2, -10, -7, -14, -26, -6, -16, -18, -11, -24, -13, -26, -13, -24, -7, -18, -20, -26, -9, -24, 0, -13, -10, -24, -21, -26, -6, -24, -12, -9, -13, -16, -11, -18, -26, -7, -24, -5, -20, -97, -94, -84, -75, -99, -75, -83, -99, -89, -79, -99, -84, -97, -78, -89, -76, -93, -99, -79, -89, -91, -84, -97, -86, -99, -93, -84, -97, -96, -86, -93, -94, -21, -18, -8, 1, -23, 1, -7, -23, -8, -17, -2, 1, -7, -4, -11, -23, -3, -13, -15, -8, -21, -10, -23, -17, -8, -21, -20, -10, -17, -18, -97, -94, -84, -75, -99, -75, -83, -99, -84, -93, -78, -75, -83, -80, -87, -99, -79, -89, -91, -84, -97, -86, -99, -86, -97, -80, -91, -93, -99, -82, -97, -73, -86, -83, -97, -94, -99, -79, -89, -72, -93, -24, -21, -11, -2, -26, -2, -10, -26, -6, -20, -6, -6, -16, -10, -11, -26, -6, -24, -12, -9, -13, -16, -11, -18, -26, -7, -24, -5, -20};
    }

    private FV() {
    }

    public static int A00(Context context) {
        return K1.A0Z(context).A25(A04(65, 39, 77), 0);
    }

    public static int A01(Context context) {
        return K1.A0Z(context).A25(A04(209, 50, 84), -1);
    }

    public static int A02(Context context) {
        return K1.A0Z(context).A25(A04(FetchService.ACTION_CONCURRENT_DOWNLOADS_LIMIT, 41, 11), -1);
    }

    public static int A03(Context context) {
        return K1.A0Z(context).A25(A04(362, 29, 84), 0);
    }

    public static boolean A06(Context context) {
        return K1.A0Z(context).A29(A04(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 26, 98), false);
    }

    public static boolean A07(Context context) {
        return K1.A0Z(context).A29(A04(31, 34, 92), false);
    }

    public static boolean A08(Context context) {
        return K1.A0Z(context).A29(A04(259, 32, 11), false);
    }

    public static boolean A09(Context context) {
        return K1.A0Z(context).A29(A04(291, 30, 87), false);
    }

    public static boolean A0A(Context context) {
        return K1.A0Z(context).A29(A04(165, 44, 82), false);
    }

    public static boolean A0B(Context context) {
        return K1.A0Z(context).A29(A04(104, 35, 17), false);
    }

    public static boolean A0C(Context context) {
        return K1.A0Z(context).A29(A04(0, 31, 8), false);
    }
}
