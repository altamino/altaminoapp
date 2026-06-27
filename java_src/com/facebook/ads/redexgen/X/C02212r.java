package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2r, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02212r implements Serializable {
    private static final long serialVersionUID = -268645651038092386L;
    private final int A00;
    private final int A01;
    private final int A02;
    private final int A03;
    private final int A04;

    @Nullable
    private final C3A A05;
    private final String A06;
    private final String A07;
    private final boolean A08;
    private final boolean A09;

    private C02212r(C02202q c02202q) {
        this.A07 = c02202q.A07;
        this.A03 = c02202q.A03;
        this.A04 = c02202q.A04;
        this.A09 = c02202q.A09;
        this.A08 = c02202q.A08;
        this.A06 = c02202q.A06;
        this.A01 = c02202q.A01;
        this.A00 = c02202q.A00;
        this.A05 = c02202q.A05;
        this.A02 = c02202q.A02;
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
        return this.A03;
    }

    public final int A04() {
        return this.A04;
    }

    @Nullable
    public final C3A A05() {
        return this.A05;
    }

    public final String A06() {
        return this.A06;
    }

    public final String A07() {
        return this.A07;
    }

    public final boolean A08() {
        return this.A08;
    }
}
