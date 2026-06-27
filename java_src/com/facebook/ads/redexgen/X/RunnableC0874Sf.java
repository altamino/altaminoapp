package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class RunnableC0874Sf implements Runnable {
    public final /* synthetic */ SZ A00;

    public RunnableC0874Sf(SZ sz) {
        this.A00 = sz;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.A00.clearAnimation();
        OY.A0F(1000, this.A00.A04, this.A00);
        this.A00.postDelayed(this, this.A00.A05);
    }
}
