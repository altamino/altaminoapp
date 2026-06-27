package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QE implements InterfaceC0739Na {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC0810Pt A01;

    public QE(AbstractC0810Pt abstractC0810Pt, int i) {
        this.A01 = abstractC0810Pt;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0739Na
    public final void A56() {
        this.A01.A0B.setToolbarActionMode(1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0739Na
    public final void A63(float f) {
        this.A01.A0B.setProgress(100.0f * (1.0f - (f / this.A00)));
    }
}
