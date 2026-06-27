package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class PV extends AbstractC02052b {
    public final /* synthetic */ C0793Pc A00;

    public PV(C0793Pc c0793Pc) {
        this.A00 = c0793Pc;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        PV pv = this;
        int i = 0;
        char c = !pv.A00.A0B.A07() ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    pv = pv;
                    pv.A00.A0B.A05();
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    pv = pv;
                    if (i >= pv.A00.A04.getChildCount()) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    pv = pv;
                    if (!(pv.A00.A04.getChildAt(i) instanceof C0839Qw)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    pv = pv;
                    C0839Qw c0839Qw = (C0839Qw) pv.A00.A04.getChildAt(i);
                    c0839Qw.A0D(i);
                    c0839Qw.setViewability(true);
                    c = 6;
                    break;
                case 6:
                    i++;
                    c = 3;
                    break;
                case 7:
                    pv = pv;
                    if (!pv.A00.A02) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    pv = pv;
                    pv.A00.A0A.A07();
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }
}
