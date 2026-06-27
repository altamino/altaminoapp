package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IA {
    public static int A00;
    public static int A01;
    public static int A02;
    public static int A03;
    public static int A04;
    public static int A05;
    public static int A06;
    private static byte[] A07;
    public static final String A08;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A07 = new byte[]{7, 37, 39, 44, 41, -28, 40, 45, 55, 47, -28, 55, 57, 39, 39, 41, 55, 55, -14, -63, -33, -31, -26, -29, -98, -30, -19, -11, -20, -22, -19, -33, -30, -98, -28, -33, -25, -22, -13, -16, -29, -84, 27, 30, 25, 29, 44, 31, 27, 46, 35, 48, 31, 25, 45, 35, 52, 31, 25, 28, 51, 46, 31, 45, -72, -42, -40, -35, -38, -107, -39, -34, -24, -32, -107, -37, -42, -34, -31, -22, -25, -38, -93, -90, -60, -58, -53, -56, -125, -53, -52, -41, -111, -54, -24, -22, -17, -20, -89, -12, -16, -6, -6, -75, -48, -51, -57, -50, -20, -18, -13, -16, -85, -15, -20, -12, -9, -71, -28, -33, -25, -22, -13, -16, -29, -35, -16, -29, -33, -15, -19, -20, 3, 22, 22, 7, 15, 18, 22, -1, 2, -3, 16, 3, 15, 19, 3, 17, 18, -3, 7, 2, -34, -31, -36, -29, -20, -17, -22, -34, -15, -36, -15, -10, -19, -30, 7, -6, -11, -10, 0, 38, 41, 27, 30, 25, 46, 35, 39, 31, 11, 14, 9, 13, 28, 15, 11, 30, 19, 32, 15, 9, 30, 35, 26, 15, 8, 6, 8, 13, 10, 4, 8, 20, 19, 25, 10, 29, 25, 0, -2, 0, 5, 2, -11, -7, -19, -13, -15, 13, 43, 45, 50, 47, -22, 61, 63, 45, 45, 47, 61, 61, -8, -51, -62, -55, -47, -12, -9, -23, -20};
    }

    static {
        A02();
        A08 = IA.class.getSimpleName();
        A05 = P8.A0b;
        A06 = P8.A0f;
        A02 = P8.A0Y;
        A01 = P8.A0X;
        A03 = P8.A0Z;
        A00 = P8.A0V;
        A04 = P8.A0a;
    }

    private IA() {
    }

    public static String A01(boolean z) {
        String strA00 = null;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA00 = A00(237, 4, 58);
                    c = 3;
                    break;
                case 3:
                    return strA00;
                case 4:
                    strA00 = A00(233, 4, 12);
                    c = 3;
                    break;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A03(C0600Hm c0600Hm, boolean z, long j) {
        if (!A09()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A00(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 14, 47), c0600Hm.A00);
            jSONObject.put(A00(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 13, 80), c0600Hm.A01);
            jSONObject.put(A00(171, 9, 108), OO.A06(System.currentTimeMillis() - j));
            String strA00 = z ? A00(219, 14, 124) : A00(107, 11, 61);
            int i = z ? A00 : A04;
            Context contextA00 = IF.A00();
            if (contextA00 == null) {
                return;
            }
            PA pa = new PA(strA00);
            pa.A05(jSONObject);
            pa.A03(1);
            P7.A07(contextA00, A00(209, 5, 79), i, pa);
        } catch (Throwable th) {
            P7.A0F(th);
        }
    }

    public static void A04(C0603Hp c0603Hp, String str, int i, @Nullable String str2, @Nullable Integer num, @Nullable Long l) {
        if (!A09()) {
            return;
        }
        A07(c0603Hp.A05, c0603Hp.A06, c0603Hp.A07, A00(214, 5, 62), str, i, str2, num, l, null);
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A05(I9 i9, boolean z) {
        if (!A09()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A00(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 14, 47), i9.A01);
            jSONObject.put(A00(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 13, 80), i9.A04);
            jSONObject.put(A00(180, 16, 92), i9.A03);
            jSONObject.put(A00(196, 13, 87), i9.A02);
            Context contextA00 = IF.A00();
            if (K1.A1W(contextA00)) {
                jSONObject.put(A00(104, 3, 13), i9.A05);
            }
            String strA00 = z ? A00(83, 10, 21) : A00(93, 11, 57);
            int i = z ? A05 : A06;
            if (contextA00 == null) {
                return;
            }
            PA pa = new PA(strA00);
            pa.A05(jSONObject);
            pa.A03(1);
            P7.A07(contextA00, A00(209, 5, 79), i, pa);
        } catch (Throwable th) {
            P7.A0F(th);
        }
    }

    public static void A06(String str, String str2, int i, @Nullable String str3, @Nullable Integer num, @Nullable Long l) {
        Long l2 = l;
        Integer num2 = num;
        String str4 = str3;
        String str5 = str2;
        I9 i9A00 = null;
        char c = !A09() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    str = str;
                    str5 = str5;
                    i9A00 = IC.A00(str, str5);
                    if (!IC.A04(i9A00)) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    str5 = str5;
                    str4 = str4;
                    num2 = num2;
                    l2 = l2;
                    i9A00 = i9A00;
                    A07(i9A00.A01, i9A00.A04, i9A00.A05, A00(166, 5, 67), str5, i, str4, num2, l2, i9A00.A00);
                    c = 2;
                    break;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A07(String str, String str2, String str3, String str4, String str5, int i, @Nullable String str6, @Nullable Integer num, @Nullable Long l, @Nullable Integer num2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A00(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 14, 47), str);
            jSONObject.put(A00(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 13, 80), str2);
            jSONObject.put(A00(180, 16, 92), str4);
            if (str6 != null) {
                jSONObject.put(A00(118, 14, 48), str6);
            }
            if (num != null) {
                jSONObject.put(A00(42, 22, 108), String.valueOf(num));
            }
            if (l != null) {
                jSONObject.put(A00(171, 9, 108), String.valueOf(l));
            }
            if (num2 != null) {
                jSONObject.put(A00(132, 7, 84), String.valueOf(num2));
            }
            jSONObject.put(A00(196, 13, 87), str5);
            Context contextA00 = IF.A00();
            if (contextA00 != null && K1.A1W(contextA00)) {
                jSONObject.put(A00(104, 3, 13), str3);
            }
            String strA00 = A00(0, 19, 118);
            if (i == A03) {
                strA00 = A00(19, 23, 48);
            } else if (i == A01) {
                strA00 = A00(64, 19, 39);
            }
            if (contextA00 != null) {
                PA pa = new PA(strA00);
                pa.A05(jSONObject);
                pa.A03(1);
                P7.A07(contextA00, A00(209, 5, 79), i, pa);
            }
        } catch (Throwable th) {
            P7.A0F(th);
        }
    }

    public static void A08(String str, boolean z, String str2) {
        I9 i9A00 = null;
        char c = !A09() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    str = str;
                    str2 = str2;
                    i9A00 = IC.A00(str, str2);
                    if (!IC.A04(i9A00)) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i9A00 = i9A00;
                    A05(i9A00, z);
                    c = 2;
                    break;
            }
        }
    }

    public static boolean A09() {
        int iA0A = 0;
        boolean z = true;
        boolean z2 = false;
        Context contextA00 = IF.A00();
        int cacheEventsSampling = contextA00 == null ? 2 : 3;
        while (true) {
            switch (cacheEventsSampling) {
                case 2:
                    return z2;
                case 3:
                    contextA00 = contextA00;
                    iA0A = K1.A0A(contextA00);
                    if (iA0A == 0) {
                        cacheEventsSampling = 2;
                        break;
                    } else {
                        cacheEventsSampling = 4;
                        break;
                    }
                case 4:
                    if (iA0A <= 0) {
                        cacheEventsSampling = 8;
                        break;
                    } else {
                        cacheEventsSampling = 5;
                        break;
                    }
                case 5:
                    if (O2.A00() > 1.0d / iA0A) {
                        cacheEventsSampling = 7;
                        break;
                    } else {
                        cacheEventsSampling = 6;
                        break;
                    }
                case 6:
                    z2 = z;
                    cacheEventsSampling = 2;
                    break;
                case 7:
                    z2 = false;
                    z = false;
                    cacheEventsSampling = 6;
                    break;
                case 8:
                    z2 = z;
                    cacheEventsSampling = 2;
                    break;
            }
        }
    }
}
