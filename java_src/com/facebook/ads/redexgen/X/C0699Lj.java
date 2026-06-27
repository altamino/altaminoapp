package com.facebook.ads.redexgen.X;

import com.narvii.scene.poll.ScenePollPlayView;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0699Lj {
    private static Map<String, Long> A00;
    private static Map<String, Long> A01;
    private static Map<String, String> A02;
    private static byte[] A03;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_FOUND);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A03 = new byte[]{20, 50, 40, 45, 38, -33, 43, 32, 50, 51, -33, 32, 35, -33, 49, 36, 50, 47, 46, 45, 50, 36, -90, -12, -69, -90, -12, -69, -90, -12, -69, -90, -27, -69, -90, -27, -69, -90, -27, -43, 6, -40, -45, 1, 1, 3, -45, -39, -41, -26, -66, -45, -27, -26, -60, -41, -27, -30, -31, -32, -27, -41};
    }

    static {
        A04();
        A01 = new ConcurrentHashMap();
        A00 = new ConcurrentHashMap();
        A02 = new ConcurrentHashMap();
    }

    private C0699Lj() {
    }

    private static long A00(String str, LT lt) {
        long jLongValue = -1000;
        char c = A01.containsKey(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    jLongValue = A01.get(str).longValue();
                    c = 3;
                    break;
                case 3:
                    return jLongValue;
                case 4:
                    lt = lt;
                    switch (lt) {
                        case A02:
                            c = 5;
                            break;
                        case A03:
                            c = 3;
                            break;
                        case A04:
                            c = 3;
                            break;
                        default:
                            c = 3;
                            break;
                    }
                case 5:
                    jLongValue = ScenePollPlayView.POLL_COUNT_DOWN_MS;
                    c = 3;
                    break;
            }
        }
    }

    public static String A02(C0700Lk c0700Lk) {
        C0695Lf.A05(A01(47, 15, 3), A01(0, 22, 80), A01(39, 8, 49));
        return A02.get(A03(c0700Lk));
    }

    private static String A03(C0700Lk c0700Lk) {
        int iA00 = 0;
        char c = 0;
        int iA01 = 0;
        Locale locale = Locale.US;
        String strA01 = A01(22, 17, 18);
        Object[] objArr = new Object[6];
        objArr[0] = c0700Lk.A08();
        objArr[1] = c0700Lk.A04();
        objArr[2] = c0700Lk.A05();
        char c2 = c0700Lk.A07() == null ? (char) 2 : (char) 6;
        while (true) {
            switch (c2) {
                case 2:
                    iA00 = iA01;
                    c2 = 3;
                    break;
                case 3:
                    c0700Lk = c0700Lk;
                    objArr = objArr;
                    objArr[3] = Integer.valueOf(iA00);
                    c = 4;
                    if (c0700Lk.A07() != null) {
                        c2 = 5;
                        break;
                    } else {
                        c2 = 4;
                        break;
                    }
                case 4:
                    Object[] objArr2 = objArr;
                    objArr2[c] = Integer.valueOf(iA01);
                    objArr2[5] = Integer.valueOf(c0700Lk.A03());
                    return String.format(locale, strA01, objArr2);
                case 5:
                    c0700Lk = c0700Lk;
                    iA01 = c0700Lk.A07().A01();
                    c2 = 4;
                    break;
                case 6:
                    c0700Lk = c0700Lk;
                    iA00 = c0700Lk.A07().A00();
                    c2 = 3;
                    break;
            }
        }
    }

    public static void A05(long j, C0700Lk c0700Lk) {
        A01.put(A03(c0700Lk), Long.valueOf(j));
    }

    public static void A06(C0700Lk c0700Lk) {
        A00.put(A03(c0700Lk), Long.valueOf(System.currentTimeMillis()));
    }

    public static void A07(String str, C0700Lk c0700Lk) {
        A02.put(A03(c0700Lk), str);
    }

    public static boolean A08(C0700Lk c0700Lk) {
        boolean z = false;
        boolean z2 = false;
        String strA03 = A03(c0700Lk);
        char c = !A00.containsKey(strA03) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z2;
                case 3:
                    c0700Lk = c0700Lk;
                    strA03 = strA03;
                    if (System.currentTimeMillis() - A00.get(strA03).longValue() >= A00(strA03, c0700Lk.A04())) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    z2 = z;
                    c = 2;
                    break;
                case 6:
                    z2 = false;
                    z = false;
                    c = 5;
                    break;
            }
        }
    }
}
