package com.facebook.ads.redexgen.X;

import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5c, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02845c {
    public abstract InterfaceC02855d A01(C5Y c5y, PB pb, Executor executor);

    public static AbstractC02845c A00() {
        return new AbstractC02845c() { // from class: com.facebook.ads.redexgen.X.5b
            @Override // com.facebook.ads.redexgen.X.AbstractC02845c
            public final InterfaceC02855d A01(C5Y c5y, PB pb, Executor executor) {
                return new C02513v(c5y, pb, executor);
            }
        };
    }
}
