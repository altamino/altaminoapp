package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TG implements Runnable {
    public final /* synthetic */ TP A00;

    public TG(TP tp) {
        this.A00 = tp;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OY.A0G(1000, this.A00.A0E);
        this.A00.postDelayed(this, 2000L);
    }
}
