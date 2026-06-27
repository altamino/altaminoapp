package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ac, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0409Ac implements InterfaceC0408Ab {
    private final Map<String, AZ> A00 = new HashMap();

    @Override // com.facebook.ads.redexgen.X.InterfaceC0408Ab
    public final synchronized String A6s() {
        StringBuilder sb;
        sb = new StringBuilder();
        Iterator<AZ> it = this.A00.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            sb.append('\n');
        }
        return sb.toString();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0408Ab
    public final synchronized void reset() {
        this.A00.clear();
    }
}
