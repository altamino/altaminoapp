package com.facebook.ads.redexgen.X;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0695Lf {
    private static byte[] A00;
    private static final DateFormat A01;
    private static final AtomicBoolean A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{100, -78, 107, 95, -102, 100, -78, -100, 95, 100, -78, -61, -61, -75, -24, -24, -75, -18, -18, -87, -50, -50, -50, 75, -103, 82, 70, 75, -103};
    }

    static {
        A03();
        A01 = new SimpleDateFormat(A01(11, 12, 114), Locale.US);
        A02 = new AtomicBoolean();
    }

    private C0695Lf() {
    }

    private static String A00() {
        return A01.format(Calendar.getInstance().getTime());
    }

    public static void A02() {
        A02.set(true);
    }

    public static void A04(String str, String str2) {
        if (!A02.get()) {
            return;
        }
        String.format(Locale.US, A01(23, 6, 29), A00(), str2);
    }

    public static void A05(String str, String str2, String str3) {
        if (!A02.get()) {
            return;
        }
        String.format(Locale.US, A01(0, 11, 54), A00(), str3, str2);
    }
}
