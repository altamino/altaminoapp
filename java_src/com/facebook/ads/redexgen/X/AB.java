package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AB implements A4 {
    private static byte[] A02;
    private static final String A03;
    private final AD A00;
    private final C0607Ht A01;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{104, 74, 93, 84, 87, 89, 92, 81, 86, 95, 24, 78, 81, 92, 93, 87, 2, 24, 29, 75, 61, 106, 63, 63, 111, 110, 109, 109, 116, 59, 97, 106, 107, 116, 104, 104, 60, 96, 116, 56, 107, 56, 106, 116, 107, 56, 107, 56, 60, 107, 61, 59, 58, 58, 60, 109, 113, 83, 68, 77, 78, 64, 69, 72, 79, 70, 1, 4, 69, 1, 64, 82, 82, 68, 85, 82, 23, 12, 9, 12, 13, 21, 12, 124, 94, 73, 64, 67, 77, 72, 69, 66, 75, 12, 69, 65, 77, 75, 73, 22, 12, 9, 95, 78, 108, 123, 114, 113, 127, 122, 119, 112, 121, 62, 115, 127, 108, 117, 107, 110, 36, 62, 59, 109, 97, 99, 116, 119, 116, 101, 114, 121};
    }

    static {
        A03();
        A03 = AB.class.getSimpleName();
    }

    public AB(AD ad, Context context) {
        this.A00 = ad;
        this.A00.A2V(new A8(this));
        this.A01 = new C0607Ht(context);
        A02();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        AB ab = this;
        AJ next = null;
        String.format(Locale.US, A01(56, 20, 107), Integer.valueOf(ab.A00.A3D().size()));
        Iterator<AJ> it = ab.A00.A3D().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    next = it.next();
                    switch (AA.A00[next.A3n().ordinal()]) {
                        case 1:
                            c = 6;
                            break;
                        case 2:
                            c = 5;
                            break;
                        case 3:
                            c = 4;
                            break;
                        default:
                            c = 2;
                            break;
                    }
                case 4:
                    ab = ab;
                    next = next;
                    ab.A06(next.getUrl());
                    c = 2;
                    break;
                case 5:
                    ab = ab;
                    next = next;
                    ab.A07(next.getUrl());
                    c = 2;
                    break;
                case 6:
                    ab = ab;
                    next = next;
                    ab.A05(next.getUrl());
                    c = 2;
                    break;
                case 7:
                    AB ab2 = ab;
                    ab2.A01.A0V(new A9(ab2), new C0600Hm(A01(20, 36, 19), A01(76, 7, 40)));
                    return;
            }
        }
    }

    private void A05(String str) {
        String.format(Locale.US, A01(83, 20, 102), str);
        C0603Hp c0603Hp = new C0603Hp(str, -1, -1, A01(20, 36, 19), A01(76, 7, 40));
        c0603Hp.A01 = A01(124, 8, 91);
        this.A01.A0W(c0603Hp);
    }

    private void A06(String str) {
        String.format(Locale.US, A01(103, 21, 84), str);
        C0605Hr c0605Hr = new C0605Hr(str, A01(20, 36, 19), A01(76, 7, 40));
        c0605Hr.A03 = true;
        c0605Hr.A01 = A01(124, 8, 91);
        this.A01.A0Y(c0605Hr);
    }

    private void A07(String str) {
        String.format(Locale.US, A01(0, 20, 114), str);
        C0605Hr c0605Hr = new C0605Hr(str, A01(20, 36, 19), A01(76, 7, 40));
        c0605Hr.A03 = false;
        c0605Hr.A01 = A01(124, 8, 91);
        this.A01.A0a(c0605Hr);
    }
}
