package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QZ implements InterfaceC0796Pf {
    public final /* synthetic */ C0836Qt A00;

    public QZ(C0836Qt c0836Qt) {
        this.A00 = c0836Qt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0796Pf
    public final void A53() {
        QZ qz = this;
        qz.A00.A0U.A02(KW.A06, null);
        char c = qz.A00.A0V.A09(qz.A00.getContext()) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qz = qz;
                    qz.A00.A0T.A4C(qz.A00.A0R.A0C(), new SN().A04(qz.A00.A0f).A03(qz.A00.A0V).A07());
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    qz = qz;
                    if (!qz.A00.A0I) {
                        c = 5;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 5:
                    qz = qz;
                    if (qz.A00.A08 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    qz = qz;
                    if (!qz.A00.A0g()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    qz = qz;
                    qz.A00.A08.A0M();
                    c = 3;
                    break;
                case '\b':
                    qz = qz;
                    qz.A00.A0N();
                    c = 3;
                    break;
                case '\t':
                    qz = qz;
                    if (!qz.A00.A0F) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    qz = qz;
                    qz.A00.A0L();
                    c = 3;
                    break;
                case 11:
                    qz = qz;
                    if (!qz.A00.A0I) {
                        c = 3;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    qz = qz;
                    qz.A00.A0J();
                    c = 3;
                    break;
            }
        }
    }
}
