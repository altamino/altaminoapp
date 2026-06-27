package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.narvii.poweruser.history.ModerationHistory;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class Au {
    private static byte[] A00;

    static {
        A0O();
    }

    private static String A0C(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0O() {
        A00 = new byte[]{123, 125, 70, 118, 105, 124, 107, 120, 109, 112, 118, 119, 120, 117, 70, 117, 118, 126, 126, 112, 119, 126, 70, 106, 120, 116, 105, 117, 112, 119, 126, 70, 107, 120, 109, 124, 58, 60, 7, 57, 59, 7, 59, 58, 91, 93, 102, 93, 64, 87, 88, 84, 80, 90, 102, 74, 80, 94, 87, 88, 85, 102, 90, 80, 75, 90, 76, 85, 88, 75, 102, 91, 76, 95, 95, 92, 75, 102, 85, 92, 87, 94, 77, 81, 81, 87, 108, 90, 64, 108, 90, 93, 71, 86, 65, 69, 82, 95, 108, 94, 92, 87, 86, 108, 86, 93, 82, 81, 95, 86, 87, 78, 72, 115, 69, 66, 88, 73, 94, 90, 77, 64, 115, 72, 89, 94, 77, 88, 69, 67, 66, 115, 95, 67, 69, 126, 83, 85, 105, 111, 84, 101, 105, 102, 84, 127, 98, 102, 110, 84, 110, 123, 120, 98, 103, 100, 101, 101, 99, 88, 98, 117, 117, 104, 117, 88, 117, 98, 119, 104, 117, 115, 88, 116, 102, 106, 119, 107, 110, 105, 96, 88, 117, 102, 115, 98, 75, 77, 118, 89, 68, 118, 89, 91, 70, 89, 118, 95, 72, 69, 118, 74, 70, 92, 71, 93, 62, 56, 61, 59, 0, 61, 54, 48, 50, 58, 43, 45, 54, 60, 0, 44, 54, 56, 49, 62, 51, 0, 60, 54, 45, 60, 42, 51, 62, 45, 0, 61, 42, 57, 57, 58, 45, 0, 51, 58, 49, 56, 43, 55, 127, 121, 66, 110, 116, 122, 115, 124, 113, 110, 66, 126, 114, 115, 123, 116, 122, 41, 47, 20, 45, 39, 36, 42, 63, 20, 46, 59, 56, 34, 39, 36, 37, 100, 98, 89, 100, 107, 89, 114, 111, 107, 99, 89, 99, 118, 117, 111, 106, 105, 104, 96, 102, 93, 113, 107, 101, 108, 99, 110, 93, 97, 109, 108, 100, 107, 101, 93, 5, 3, 56, 20, 19, 6, 19, 14, 4, 56, 20, 14, 0, 9, 6, 11, 56, 4, 14, 21, 4, 18, 11, 6, 21, 56, 5, 18, 1, 1, 2, 21, 56, 11, 2, 9, 0, 19, 15};
    }

    private Au() {
    }

    public static double A00(Context context) {
        return K1.A0Z(context).A23(A0C(157, 29, 56), 0.0d);
    }

    public static double A01(Context context) {
        return K1.A0Z(context).A23(A0C(0, 36, 38), 0.0d);
    }

    public static float A02(Context context) {
        return K1.A0Z(context).A24(A0C(ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER, 16, 116), 0.0f);
    }

    public static int A03(Context context) {
        return K1.A0Z(context).A25(A0C(208, 42, 96), 0);
    }

    public static int A04(Context context) {
        return K1.A0Z(context).A25(A0C(44, 40, 6), 0);
    }

    public static int A05(Context context) {
        return K1.A0Z(context).A25(A0C(111, 22, 19), 0);
    }

    public static int A06(Context context) {
        return K1.A0Z(context).A25(A0C(186, 20, 22), 0);
    }

    public static int A07(Context context) {
        return K1.A0Z(context).A25(A0C(FetchService.ACTION_RETRY, 39, 88), 0);
    }

    public static long A08(Context context) {
        return K1.A0Z(context).A26(A0C(283, 18, 57), 0L);
    }

    public static long A09(Context context) {
        return K1.A0Z(context).A26(A0C(138, 19, 52), 0L);
    }

    public static EnumC0522Em A0A(Context context) {
        return EnumC0522Em.A00(K1.A0Z(context).A25(A0C(133, 5, 30), 0));
    }

    private static String A0B(int i) {
        return A0C(301, 17, 61) + i;
    }

    public static String A0D(Context context) {
        String strA27 = K1.A0Z(context).A27(A0C(250, 17, 34), A0C(206, 2, 122));
        return strA27 == null ? A0C(206, 2, 122) : strA27;
    }

    private static String A0E(Context context) {
        return A0L(context, 10920);
    }

    private static String A0F(Context context) {
        return A0L(context, 10300);
    }

    private static String A0G(Context context) {
        return A0L(context, 10941);
    }

    private static String A0H(Context context) {
        return A0L(context, 10943);
    }

    private static String A0I(Context context) {
        return A0L(context, 10944);
    }

    private static String A0J(Context context) {
        return A0L(context, 10945);
    }

    private static String A0K(Context context) {
        return A0L(context, 10940);
    }

    private static String A0L(Context context, int i) {
        String strA27 = K1.A0Z(context).A27(A0B(i), A0C(206, 2, 122));
        return strA27 == null ? A0C(206, 2, 122) : strA27;
    }

    public static HashMap<Integer, Integer> A0M() {
        return new HashMap<>();
    }

    public static Map<Integer, String> A0N(Context context) {
        HashMap map = new HashMap();
        map.put(10920, A0E(context));
        map.put(10941, A0G(context));
        map.put(10300, A0F(context));
        map.put(10940, A0K(context));
        map.put(10943, A0H(context));
        map.put(10944, A0I(context));
        map.put(10945, A0J(context));
        return Collections.unmodifiableMap(map);
    }

    public static boolean A0P(Context context) {
        return K1.A0Z(context).A29(A0C(84, 27, 12), false);
    }

    public static boolean A0Q(Context context) {
        return K1.A0Z(context).A29(A0C(36, 8, 103), false);
    }
}
