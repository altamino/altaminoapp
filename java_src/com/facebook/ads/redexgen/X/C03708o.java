package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.support.v4.view.ViewCompat;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8o, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03708o {
    private static byte[] A03;
    private final Intent A00;
    private final C8s A01;
    private final KM A02;

    static {
        A0O();
    }

    private static String A0N(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 53);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0O() {
        A03 = new byte[]{93, 88, 99, 88, 93, 72, 93, 99, 94, 73, 82, 88, 80, 89, 77, 90, 72, 94, 77, 91, 90, 91, 105, 86, 91, 90, 80, 126, 91, 123, 94, 75, 94, 125, 74, 81, 91, 83, 90, 123, 100, 105, 104, 98, 82, 121, 100, 96, 104, 82, 125, 98, 97, 97, 100, 99, 106, 82, 100, 99, 121, 104, 127, 123, 108, 97};
    }

    private C03708o(C8s c8s, Intent intent, KM km) {
        this.A01 = c8s;
        this.A00 = intent;
        this.A02 = km;
    }

    public /* synthetic */ C03708o(C8s c8s, Intent intent, KM km, C03678l c03678l) {
        this(c8s, intent, km);
    }

    private AnonymousClass31 A00() {
        return (AnonymousClass31) this.A00.getSerializableExtra(A0N(0, 14, 9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A01() {
        return new PQ(this.A01, this.A02, new C03698n(this.A01));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A02() {
        return new C0793Pc(this.A01.A0M(), (C02262w) this.A00.getSerializableExtra(A0N(14, 25, 10)), this.A02, new C03738r(this.A01));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A03() {
        return new C0914Tu(this.A01.A0I.getApplicationContext(), this.A02, new C03698n(this.A01), A00());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A04() {
        return new C0914Tu(this.A01.A0I.getApplicationContext(), this.A02, new C03698n(this.A01), (C3D) this.A00.getSerializableExtra(A0N(14, 25, 10)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A05() {
        return new C0902Th(this.A01.A0M(), this.A02, new C0607Ht(this.A01.A0M()), new C03698n(this.A01), A00());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A06() {
        return new C0811Pu(this.A01.A0M(), A00(), this.A02, new C03698n(this.A01));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A07() {
        return new QX(this.A01.A0M(), this.A02, new C03698n(this.A01), C3B.A00(A00()), null, new RL(false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A08() {
        return new Q9(this.A01.A0M(), this.A02, A00(), new C0607Ht(this.A01.A0M()), new C03698n(this.A01));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A09() {
        return new C0836Qt(this.A01.A0M(), this.A02, new QL(this.A01.A0M()), new C03738r(this.A01), (C3D) this.A00.getSerializableExtra(A0N(14, 25, 10)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A0A() {
        C3D dataBundle = (C3D) this.A00.getSerializableExtra(A0N(14, 25, 10));
        return new QX(this.A01.A0M(), this.A02, new C03738r(this.A01), C3B.A01(dataBundle), dataBundle.A06(), new RM());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PK A0B(RelativeLayout relativeLayout) {
        RF rf = new RF(this.A01, this.A02, new C03698n(this.A01));
        rf.A05(relativeLayout);
        rf.A04(this.A00.getIntExtra(A0N(39, 27, 56), 200));
        OY.A0P(relativeLayout, ViewCompat.MEASURED_STATE_MASK);
        return rf;
    }
}
