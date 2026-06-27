package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5V, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C5V {
    private int A00;
    private int A01;
    private int A02;
    private JV A03;
    private Map<String, String> A04;
    private final int A05;
    private final int A06;

    private C5V(int i, int i2, int i3, int i4, int i5, Map<String, String> requestHeaders, JV jv) {
        this.A06 = i;
        this.A00 = i2;
        this.A02 = i3;
        this.A05 = i4;
        this.A01 = i5;
        this.A04 = requestHeaders;
        this.A03 = jv;
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final int A02() {
        return this.A02;
    }

    public final int A03() {
        return this.A05;
    }

    public final int A04() {
        return this.A06;
    }

    public final JV A05() {
        return this.A03;
    }

    public final Map<String, String> A06() {
        return this.A04;
    }
}
