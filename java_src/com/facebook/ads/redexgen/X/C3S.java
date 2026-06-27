package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3S, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C3S {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 115);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-76, -18, -6, -13, -14};
    }

    private C3S() {
    }

    public static void A02(Context context, C3B c3b, boolean z, C2E c2e) {
        Context context2 = context;
        C2E c2e2 = c2e;
        C0605Hr c0605Hr = null;
        C3A c3aA05 = null;
        C0607Ht c0607Ht = null;
        char c = K1.A1N(context2) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c2e2 = c2e2;
                    c2e2.A61();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    context2 = context2;
                    c3b = c3b;
                    c3aA05 = c3b.A06().A05();
                    c0607Ht = new C0607Ht(context2);
                    c0607Ht.A0c(new KX(c3b.A0B(), AdEventManagerImpl.getInstance(context2)));
                    if (c3aA05 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c2e2 = c2e2;
                    c2e2.A60(AdError.CACHE_ERROR);
                    c = 3;
                    break;
                case 6:
                    context2 = context2;
                    c3b = c3b;
                    c3aA05 = c3aA05;
                    c0605Hr = new C0605Hr(c3aA05.A0E(), c3b.A0D(), c3b.A0C());
                    c0605Hr.A03 = true;
                    if (!K1.A1J(context2)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0605Hr = c0605Hr;
                    c0605Hr.A02 = A00(0, 5, 19);
                    c = '\b';
                    break;
                case '\b':
                    c3aA05 = c3aA05;
                    switch (c3aA05.A09()) {
                        case A04:
                            c = 11;
                            break;
                        case A03:
                            c = '\n';
                            break;
                        default:
                            c = '\t';
                            break;
                    }
                case '\t':
                    context2 = context2;
                    c3b = c3b;
                    c2e2 = c2e2;
                    c3aA05 = c3aA05;
                    c0607Ht = c0607Ht;
                    c0607Ht.A0W(new C0603Hp(c3b.A09().A01(), -1, -1, c3b.A0D(), c3b.A0C()));
                    c0607Ht.A0W(new C0603Hp(c3aA05.A0D(), -1, -1, c3b.A0D(), c3b.A0C()));
                    c0607Ht.A0V(new C3P(context2, c2e2, c0607Ht, c3aA05, z, null), new C0600Hm(c3b.A0D(), c3b.A0C()));
                    c = 3;
                    break;
                case '\n':
                    c0607Ht = c0607Ht;
                    c0605Hr = c0605Hr;
                    c0607Ht.A0Y(c0605Hr);
                    c = '\t';
                    break;
                case 11:
                    c0607Ht = c0607Ht;
                    c0605Hr = c0605Hr;
                    c0607Ht.A0b(c0605Hr);
                    c = '\t';
                    break;
            }
        }
    }
}
