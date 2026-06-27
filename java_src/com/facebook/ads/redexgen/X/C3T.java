package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3T, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3T {
    private static byte[] A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 94);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{31, 8, 26, 12, 31, 9, 8, 9, 50, 27, 4, 9, 8, 2};
    }

    private C3T() {
    }

    public static void A02(C0607Ht c0607Ht, C3D c3d) {
        c0607Ht.A0X(new C0603Hp(c3d.A0N().A01(), U6.A03, U6.A03, c3d.A0P(), A00(0, 14, 51)));
        String strA07 = c3d.A0H().A07();
        String videoUrlToCache = c3d.A0P();
        c0607Ht.A0a(new C0605Hr(strA07, videoUrlToCache, A00(0, 14, 51)));
        c0607Ht.A0X(new C0603Hp(c3d.A0H().A06(), C3N.A00(c3d.A0H()), C3N.A01(c3d.A0H()), c3d.A0P(), A00(0, 14, 51)));
        Iterator<String> it = c3d.A0K().A01().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0607Ht = c0607Ht;
                    c3d = c3d;
                    it = it;
                    c0607Ht.A0X(new C0603Hp(it.next(), -1, -1, c3d.A0P(), A00(0, 14, 51)));
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }
}
