package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class OB implements O7 {
    public int A00;
    public final O7 A01;

    public OB(O7 o7, int i) {
        this.A01 = o7;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void A6c(String str) {
        if (this.A00 > 0) {
            this.A01.A6c(str);
            this.A00--;
        }
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void flush() {
        this.A01.flush();
    }
}
