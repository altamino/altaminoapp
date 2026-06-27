package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QT implements InterfaceC0739Na {
    public static final /* synthetic */ boolean A01;
    public final /* synthetic */ QX A00;

    static {
        A01 = !QX.class.desiredAssertionStatus();
    }

    private QT(QX qx) {
        this.A00 = qx;
    }

    public /* synthetic */ QT(QX qx, QP qp) {
        this(qx);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0739Na
    public final void A56() {
        this.A00.A0D();
        this.A00.A0H.setToolbarActionMode(0);
        OY.A0V(this.A00, 500);
        OY.A0Q(this.A00.A02, 0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0739Na
    public final void A63(float f) {
        QT qt = this;
        char c = !A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qt = qt;
                    if (qt.A00.A07 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new AssertionError();
                case 4:
                    QT qt2 = qt;
                    qt2.A00.A0H.setProgress(100.0f * (1.0f - (f / qt2.A00.A07.A07())));
                    qt2.A00.A0I((int) f);
                    return;
            }
        }
    }
}
