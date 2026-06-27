package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4m, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02684m implements Serializable {
    private static final long serialVersionUID = -3209129042070173126L;
    private C02684m A00;
    private final int A01;
    private final String A02;

    @Nullable
    private final String A03;
    private final List<C02684m> A04;

    public C02684m(int i, @Nullable String str, String str2) {
        this.A04 = new ArrayList();
        this.A01 = i;
        this.A03 = str;
        this.A02 = str2;
    }

    public C02684m(String str) {
        this(0, null, str);
    }

    private void A00(C02684m c02684m) {
        this.A00 = c02684m;
    }

    public final int A01() {
        return this.A01;
    }

    public final C02684m A02() {
        return this.A00;
    }

    @Nullable
    public final String A03() {
        return this.A02;
    }

    public final String A04() {
        return this.A03;
    }

    public final List<C02684m> A05() {
        return this.A04;
    }

    public final void A06(C02684m c02684m) {
        c02684m.A00(this);
        this.A04.add(c02684m);
    }
}
