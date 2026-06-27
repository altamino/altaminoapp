package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QA implements InterfaceC0796Pf {
    public final /* synthetic */ C8s A00;
    public final /* synthetic */ AbstractC0810Pt A01;

    public QA(AbstractC0810Pt abstractC0810Pt, C8s c8s) {
        this.A01 = abstractC0810Pt;
        this.A00 = c8s;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0796Pf
    public final void A53() {
        QA qa = this;
        qa.A01.A0A.A02(KW.A06, null);
        char c = qa.A01.A0C() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    qa = qa;
                    qa.A01.A0B(qa.A00);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    qa = qa;
                    qa.A00.finish();
                    c = 3;
                    break;
            }
        }
    }
}
