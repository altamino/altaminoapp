package com.facebook.ads.redexgen.X;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4d, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02594d implements Serializable {
    private C02584c A00;
    private C02584c A01;

    public C02594d() {
        this(0.5d, 0.5d);
    }

    public C02594d(double d) {
        this(d, 0.5d);
    }

    private C02594d(double d, double d2) {
        this.A00 = new C02584c(d);
        this.A01 = new C02584c(d2);
        A02();
    }

    public final C02584c A00() {
        return this.A00;
    }

    public final C02584c A01() {
        return this.A01;
    }

    public final void A02() {
        this.A00.A06();
        this.A01.A06();
    }

    public final void A03() {
        this.A00.A07();
        this.A01.A07();
    }

    public final void A04(double d, double d2) {
        this.A00.A08(d, d2);
    }

    public final void A05(double d, double d2) {
        this.A01.A08(d, d2);
    }
}
