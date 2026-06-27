package com.facebook.ads.redexgen.X;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RQ {
    private int A00;
    private EnumC0768Od A01;
    private RS A02;
    private String A03;
    private String A04;
    private String A05;
    private String A06;
    private final Context A0C;
    private boolean A0A = true;
    private boolean A0B = true;
    private boolean A09 = true;
    private boolean A07 = true;
    private boolean A08 = true;

    public RQ(Context context) {
        this.A0C = context;
    }

    public final RQ A0D(int i) {
        this.A00 = i;
        return this;
    }

    public final RQ A0E(EnumC0768Od enumC0768Od) {
        this.A01 = enumC0768Od;
        return this;
    }

    public final RQ A0F(RS rs) {
        this.A02 = rs;
        return this;
    }

    public final RQ A0G(String str) {
        this.A03 = str;
        return this;
    }

    public final RQ A0H(String str) {
        this.A04 = str;
        return this;
    }

    public final RQ A0I(String str) {
        this.A05 = str;
        return this;
    }

    public final RQ A0J(String str) {
        this.A06 = str;
        return this;
    }

    public final RQ A0K(boolean z) {
        this.A07 = z;
        return this;
    }

    public final RQ A0L(boolean z) {
        this.A09 = z;
        return this;
    }

    public final RQ A0M(boolean z) {
        this.A0A = z;
        return this;
    }

    public final RQ A0N(boolean z) {
        this.A08 = z;
        return this;
    }

    public final RQ A0O(boolean z) {
        this.A0B = z;
        return this;
    }

    public final RR A0P() {
        return new RR(this, null);
    }
}
