package com.facebook.ads.redexgen.X;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5Z, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C5Z {
    private C5V A00;
    private Set<String> A01;
    private Set<String> A02;
    private boolean A03;
    private boolean A04 = true;

    public final C5Z A00(C5V c5v) {
        this.A00 = c5v;
        return this;
    }

    public final C5Z A01(Set<String> pinnedCertificates) {
        this.A01 = pinnedCertificates;
        return this;
    }

    public final C5Z A02(Set<String> pinnedPublicKeys) {
        this.A02 = pinnedPublicKeys;
        return this;
    }

    public final C5Z A03(boolean z) {
        this.A04 = z;
        return this;
    }

    public final C5Z A04(boolean z) {
        this.A03 = z;
        return this;
    }

    public final C5Y A05() {
        return new C5Y(this.A00, this.A04, this.A02, this.A01, this.A03);
    }
}
