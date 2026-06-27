package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class LG implements LA {
    public NativeAdBase A00;
    public NativeAdListener A01;

    public LG(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        this.A01 = nativeAdListener;
        this.A00 = nativeAdBase;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0673Ki
    public final void A4j() {
        MD.A00(new LE(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0673Ki
    public final void A4m() {
        MD.A00(new LD(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0673Ki
    public final void A5G(LQ lq) {
        MD.A00(new LB(this, lq));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0673Ki
    public final void A5j() {
        MD.A00(new LF(this));
    }

    @Override // com.facebook.ads.redexgen.X.LA
    public final void A5k() {
        MD.A00(new LC(this));
    }
}
