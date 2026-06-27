package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Kr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0681Kr extends AbstractC02052b {
    public final /* synthetic */ C0684Ku A00;

    public C0681Kr(C0684Ku c0684Ku) {
        this.A00 = c0684Ku;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A00() {
        if (this.A00.A04 == null) {
            return;
        }
        this.A00.A04.A0K();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        C0681Kr c0681Kr = this;
        char c = c0681Kr.A00.A04 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0681Kr = c0681Kr;
                    if (!c0681Kr.A00.A0A) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 4:
                    c0681Kr = c0681Kr;
                    if (!c0681Kr.A00.A09) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0681Kr = c0681Kr;
                    if (!c0681Kr.A00.A0K()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0681Kr = c0681Kr;
                    c0681Kr.A00.A0J(EnumC0697Lh.A03);
                    c = 7;
                    break;
                case 7:
                    c0681Kr = c0681Kr;
                    c0681Kr.A00.A09 = false;
                    c0681Kr.A00.A0A = false;
                    c = 2;
                    break;
            }
        }
    }
}
