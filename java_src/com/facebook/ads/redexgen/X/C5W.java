package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5W, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C5W {
    private static byte[] A07;
    private JV A05;
    private int A04 = 60000;
    private int A03 = 100;
    private int A00 = 10000;
    private int A02 = 8000;
    private int A01 = 3;
    private Map<String, String> A06 = new HashMap();

    static {
        A01();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A07 = new byte[]{29, 49, 72, 57, 61, 69, 61, -16, 66, 53, 68, 66, 57, 53, 67, -16, 61, 69, 67, 68, -16, 50, 53, -16, 50, 53, 68, 71, 53, 53, 62, -16, 1, -16, 49, 62, 52, -16, 1, 8};
    }

    public final C5W A02(int i) {
        this.A00 = i;
        return this;
    }

    public final C5W A03(int i) {
        char c = i >= 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (i <= 18) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new IllegalArgumentException(A00(0, 40, 99));
                case 4:
                    C5W c5w = this;
                    c5w.A01 = i;
                    return c5w;
            }
        }
    }

    public final C5W A04(int i) {
        this.A02 = i;
        return this;
    }

    public final C5W A05(int i) {
        this.A03 = i;
        return this;
    }

    public final C5W A06(int i) {
        this.A04 = i;
        return this;
    }

    public final C5W A07(JV jv) {
        this.A05 = jv;
        return this;
    }

    public final C5W A08(Map<String, String> requestHeaders) {
        this.A06 = requestHeaders;
        return this;
    }

    public final C5V A09() {
        return new C5V(this.A04, this.A00, this.A02, this.A03, this.A01, this.A06, this.A05);
    }
}
