package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.30, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass30 implements Serializable {
    private static final long serialVersionUID = -2102939945352398575L;
    private String A00;
    private final List<String> A01;

    public AnonymousClass30(List<String> screenshots) {
        this.A01 = screenshots;
    }

    public final String A00() {
        return this.A00;
    }

    public final List<String> A01() {
        return Collections.unmodifiableList(this.A01);
    }

    public final void A02(String str) {
        this.A00 = str;
    }
}
