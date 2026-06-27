package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tb, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0896Tb implements InterfaceC02072d {
    public final WeakReference<TT> A00;

    private C0896Tb(TT tt) {
        this.A00 = new WeakReference<>(tt);
    }

    public /* synthetic */ C0896Tb(TT tt, TV tv2) {
        this(tt);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC02072d
    public final void A5P(boolean z) {
        TT tt = this.A00.get();
        if (tt != null) {
            tt.A06 = z;
            tt.A02();
        }
    }
}
