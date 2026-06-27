package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0L, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C0L implements C0M {
    public final EnumC01600c A00;
    public final C0U A01;

    public C0L(C0U c0u, EnumC01600c enumC01600c) {
        this.A01 = c0u;
        this.A00 = enumC01600c;
    }

    @Override // com.facebook.ads.redexgen.X.C0M
    public void A2c(Map<InterfaceC01670l, AnonymousClass09> map, Map<C0X, EnumC01600c> map2) {
        map2.put(this.A01, this.A00);
    }
}
