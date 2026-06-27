package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.35, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass35 implements Serializable {
    private static byte[] A06 = null;
    private static final long serialVersionUID = 351643298236575729L;
    private final String A00;
    private final String A01;
    private final String A02;
    private final String A03;
    private final String A04;
    private final String A05;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 81);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A06 = new byte[]{-17, -41, -23, -26, -26, -39, -30, -41, -19, -15, -25, 52, 42, 46, 26, 39, 45, 34, 45, 50, 54};
    }

    private AnonymousClass35(AnonymousClass34 anonymousClass34) {
        this.A04 = anonymousClass34.A04;
        this.A05 = anonymousClass34.A05;
        this.A03 = anonymousClass34.A03;
        this.A01 = anonymousClass34.A01;
        this.A02 = anonymousClass34.A02;
        this.A00 = anonymousClass34.A00;
    }

    private static String A01(String str, String str2, int i) {
        String updatedString = str.replace(A00(0, 10, 35), str2);
        String quantityString = A00(11, 0, 77);
        if (i > 0) {
            quantityString = i + A00(10, 1, 118);
        }
        return updatedString.replace(A00(11, 10, 104), quantityString);
    }

    public final String A03() {
        return this.A01;
    }

    public final String A04() {
        return this.A02;
    }

    public final String A05() {
        return this.A04;
    }

    public final String A06(String str, int i) {
        return A01(this.A00, str, i);
    }

    public final String A07(String str, int i) {
        return A01(this.A03, str, i);
    }

    public final String A08(String str, int i) {
        return A01(this.A05, str, i);
    }
}
