package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class KG {
    private double A00;
    private KR A01;
    private KS A02;
    private String A03;
    private String A04;
    private Map<String, String> A05;
    private boolean A06;
    private boolean A07;

    public final KG A00(double d) {
        this.A00 = d;
        return this;
    }

    public final KG A01(KR kr) {
        this.A01 = kr;
        return this;
    }

    public final KG A02(KS ks) {
        this.A02 = ks;
        return this;
    }

    public final KG A03(String str) {
        this.A03 = str;
        return this;
    }

    public final KG A04(String str) {
        this.A04 = str;
        return this;
    }

    public final KG A05(Map<String, String> mData) {
        this.A05 = mData;
        return this;
    }

    public final KG A06(boolean z) {
        this.A06 = z;
        return this;
    }

    public final KG A07(boolean z) {
        this.A07 = z;
        return this;
    }

    public final KH A08() {
        return new KH(this.A04, this.A00, this.A03, this.A05, this.A01, this.A02, this.A06, this.A07);
    }
}
