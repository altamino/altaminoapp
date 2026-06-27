package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class SE extends AnonymousClass27 {
    private final WeakReference<C6K> A00;

    public SE(C6K c6k) {
        this.A00 = new WeakReference<>(c6k);
    }

    public SE(WeakReference<C6K> weakReference) {
        this.A00 = weakReference;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        C6K c6k = this.A00.get();
        if (c6k != null) {
            c6k.A0T();
        }
    }
}
