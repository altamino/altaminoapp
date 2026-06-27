package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0808Pr implements InterfaceC03718p {
    public final /* synthetic */ C8s A00;
    public final /* synthetic */ C0811Pu A01;

    public C0808Pr(C0811Pu c0811Pu, C8s c8s) {
        this.A01 = c0811Pu;
        this.A00 = c8s;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03718p
    public final boolean A3t() {
        C0808Pr c0808Pr = this;
        boolean z = true;
        char c = !c0808Pr.A01.A0E() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0808Pr = c0808Pr;
                    if (c0808Pr.A01.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0808Pr = c0808Pr;
                    if (!c0808Pr.A01.A00.A0X()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return z;
                case 5:
                    c0808Pr = c0808Pr;
                    if (!c0808Pr.A01.A0C()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0808Pr = c0808Pr;
                    c0808Pr.A01.A0B(c0808Pr.A00);
                    c = 4;
                    break;
                case 7:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
