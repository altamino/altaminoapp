package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Kt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0683Kt implements InterfaceC0682Ks {
    private WeakReference<L8> A00;

    public C0683Kt(L8 l8) {
        this.A00 = new WeakReference<>(l8);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0682Ks
    public final void A5y(boolean z) {
        if (this.A00.get() != null) {
            this.A00.get().A1L(z, false);
        }
    }
}
