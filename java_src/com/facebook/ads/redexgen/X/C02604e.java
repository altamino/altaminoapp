package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4e, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02604e implements AnonymousClass22<Bundle> {
    private static byte[] A06;
    private C02594d A00;
    private boolean A01;
    private boolean A02;
    private boolean A03;
    private final AbstractC02021y A04;
    private final C02594d A05;

    static {
        A04();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A06 = new byte[]{-93, -108, -90, -90, -104, -105, -23, -14, -24, -23, -24, -38, -51, -55, -37, -59, -58, -48, -55, -73, -40, -59, -40, -41, -28, -16, -18, -15, -19, -26, -11, -26, -22, -37, -23, -22, -55, -22, -41, -22, -23};
    }

    public C02604e(AbstractC02021y abstractC02021y) {
        this.A02 = false;
        this.A03 = false;
        this.A01 = false;
        this.A04 = abstractC02021y;
        this.A05 = new C02594d(abstractC02021y.A01);
        this.A00 = new C02594d(abstractC02021y.A01);
    }

    public C02604e(AbstractC02021y abstractC02021y, Bundle bundle) {
        this.A02 = false;
        this.A03 = false;
        this.A01 = false;
        this.A04 = abstractC02021y;
        this.A05 = (C02594d) O1.A00(bundle.getByteArray(A00(32, 9, 104)));
        this.A00 = (C02594d) O1.A00(bundle.getByteArray(A00(11, 13, 86)));
        this.A02 = bundle.getBoolean(A00(6, 5, 118));
        this.A03 = bundle.getBoolean(A00(0, 6, 37));
        this.A01 = bundle.getBoolean(A00(24, 8, 115));
    }

    private void A01() {
        this.A01 = true;
        A02();
    }

    private void A02() {
        C02604e c02604e = this;
        C02594d c02594d = null;
        c02604e.A02 = true;
        char c = c02604e.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02604e = c02604e;
                    c02594d = c02604e.A00;
                    c = 3;
                    break;
                case 3:
                    C02604e c02604e2 = c02604e;
                    c02604e2.A04.A00(c02604e2.A01, c02604e2.A03, c02594d);
                    return;
                case 4:
                    c02604e = c02604e;
                    c02594d = c02604e.A05;
                    c = 3;
                    break;
            }
        }
    }

    private void A03() {
        this.A03 = true;
        A01();
    }

    public final void A05() {
        if (!this.A02) {
            this.A00.A03();
        }
    }

    public final void A06(double d, double d2) {
        C02604e c02604e = this;
        double dA03 = 0.0d;
        char c = c02604e.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c02604e = c02604e;
                    c02604e.A05.A04(d, d2);
                    c02604e.A00.A04(d, d2);
                    if (!c02604e.A04.A03) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c02604e = c02604e;
                    dA03 = c02604e.A00.A00().A03();
                    c = 5;
                    break;
                case 5:
                    c02604e = c02604e;
                    if (c02604e.A04.A00 < 0.0d) {
                        c = '\n';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c02604e = c02604e;
                    if (c02604e.A05.A00().A04() <= c02604e.A04.A00) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (dA03 != 0.0d) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c02604e = c02604e;
                    c02604e.A01();
                    c = 2;
                    break;
                case '\t':
                    c02604e = c02604e;
                    dA03 = c02604e.A00.A00().A01();
                    c = 5;
                    break;
                case '\n':
                    c02604e = c02604e;
                    if (dA03 < c02604e.A04.A02) {
                        c = 2;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c02604e = c02604e;
                    c02604e.A03();
                    c = 2;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass22
    public final Bundle getSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putByteArray(A00(11, 13, 86), O1.A01(this.A00));
        bundle.putByteArray(A00(32, 9, 104), O1.A01(this.A05));
        bundle.putBoolean(A00(6, 5, 118), this.A02);
        bundle.putBoolean(A00(0, 6, 37), this.A03);
        bundle.putBoolean(A00(24, 8, 115), this.A01);
        return bundle;
    }
}
