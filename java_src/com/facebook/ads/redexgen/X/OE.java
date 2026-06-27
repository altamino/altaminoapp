package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OE {
    private static byte[] A00;
    private static final Pattern A01;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 69);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A00 = new byte[]{33, 45, 43, -20, 36, 31, 33, 35, 32, 45, 45, 41, -20, 31, 34, 49, -30, 20, 17, 17, 4, 13, 19, -65, 18, 19, 0, 2, 10, -65, 19, 17, 0, 2, 4, -96, -44, -21, -93, -39, -20, -44, -21, -93, -45, -39, -91, -14, -90, -43, -93, -95, -45, -71, -91, -46, -43, -90, -94};
    }

    static {
        A07();
        A01 = Pattern.compile(A02(35, 24, 51));
    }

    private OE() {
    }

    private static String A00() {
        return A06(new Exception(A02(16, 19, 90)), -1, -1, false);
    }

    public static String A01(int i) {
        String strA00 = null;
        float rate = i <= 0 ? 2.8E-45f : 4.2E-45f;
        while (true) {
            switch (rate) {
                case 2.8E-45f:
                    return strA00;
                case 4.2E-45f:
                    float rate2 = i;
                    if (new Random().nextFloat() >= 1.0f / rate2) {
                        rate = 2.8E-45f;
                        break;
                    } else {
                        rate = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    strA00 = A00();
                    rate = 2.8E-45f;
                    break;
            }
        }
    }

    public static String A03(Context context, @Nullable Throwable th) {
        int maxStacktraceLines = K1.A0O(context);
        return A06(th, maxStacktraceLines, K1.A04(context), K1.A1C(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String A04(String str) {
        Matcher matcher = A01.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return str;
    }

    private static String A06(@Nullable Throwable th, int i, int i2, boolean z) {
        O7 oa;
        if (th == null) {
            return A02(35, 0, 34);
        }
        try {
            O9 o9 = new O9();
            if (i2 >= 0) {
                oa = new OB(o9, i2);
            } else {
                oa = o9;
            }
            if (i >= 0) {
                oa = new OD(oa, i, i);
            }
            if (z) {
                oa = new OA(oa);
            }
            O8 o8 = new O8(o9, 1, oa);
            th.printStackTrace(new PrintWriter(new OC(o8)));
            o8.flush();
            return o9.toString();
        } catch (Exception unused) {
            return A02(35, 0, 34);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A08(O6 o6) {
        Iterator<String> it = null;
        Iterator<String> it2 = null;
        boolean z = false;
        String strA02 = o6.A02();
        char c = strA02 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    strA02 = strA02;
                    if (!A0A(strA02)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 2;
                    break;
                case 5:
                    o6 = o6;
                    it2 = o6.A01().iterator();
                    c = 6;
                    break;
                case 6:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    it2 = it2;
                    String beforeLine = it2.next();
                    if (!A0A(beforeLine)) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    z = true;
                    c = 2;
                    break;
                case '\t':
                    o6 = o6;
                    it = o6.A00().iterator();
                    c = '\n';
                    break;
                case '\n':
                    it = it;
                    if (!it.hasNext()) {
                        c = 2;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    it = it;
                    if (!A0A(it.next())) {
                        c = '\n';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    z = true;
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A0A(String str) {
        return str.contains(A02(0, 16, 121));
    }
}
