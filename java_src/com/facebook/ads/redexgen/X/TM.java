package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TM extends AnonymousClass27 {
    public final /* synthetic */ TP A00;
    public final /* synthetic */ boolean A01;

    public TM(TP tp, boolean z) {
        this.A00 = tp;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        TM tm = this;
        C0797Pg c0797PgA09 = null;
        C0797Pg c0797PgA092 = null;
        boolean z = false;
        R3 r3 = null;
        char c = tm.A00.A0D.A09() != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    tm = tm;
                    c0797PgA09 = tm.A00.A0D.A09();
                    if (!tm.A01) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    tm = tm;
                    c0797PgA09 = c0797PgA09;
                    c0797PgA09.setShowPageDetails(z);
                    c0797PgA092 = tm.A00.A0D.A09();
                    if (!tm.A01) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    r3 = R3.A04;
                    c = 6;
                    break;
                case 6:
                    c0797PgA092 = c0797PgA092;
                    r3 = r3;
                    c0797PgA092.setCloseButtonStyle(r3);
                    c = 7;
                    break;
                case 7:
                    return;
                case '\b':
                    r3 = R3.A03;
                    c = 6;
                    break;
                case '\t':
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
