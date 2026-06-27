package com.facebook.ads.redexgen.X;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4c, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C02584c implements Serializable {
    private double A00;
    private double A01;
    private double A02;
    private double A03;
    private double A04;
    private double A05;
    private double A06;
    private double A07;
    private double A08;
    private double A09;
    private int A0A;

    public C02584c(double d) {
        this.A04 = d;
    }

    public final double A00() {
        return this.A00;
    }

    public final double A01() {
        return this.A03;
    }

    public final double A02() {
        return this.A05;
    }

    public final double A03() {
        return this.A06;
    }

    public final double A04() {
        return this.A07;
    }

    public final double A05() {
        C02584c c02584c = this;
        double d = 0.0d;
        char c = c02584c.A0A == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    d = 0.0d;
                    c = 3;
                    break;
                case 3:
                    return d;
                case 4:
                    c02584c = c02584c;
                    d = c02584c.A08;
                    c = 3;
                    break;
            }
        }
    }

    public final void A06() {
        this.A00 = 0.0d;
        this.A02 = 0.0d;
        this.A03 = 0.0d;
        this.A05 = 0.0d;
        this.A0A = 0;
        this.A07 = 0.0d;
        this.A08 = 1.0d;
        this.A09 = 0.0d;
    }

    public final void A07() {
        this.A01 = 0.0d;
    }

    public final void A08(double d, double d2) {
        C02584c c02584c = this;
        c02584c.A0A++;
        c02584c.A07 += d;
        c02584c.A02 = d2;
        c02584c.A09 += d2 * d;
        c02584c.A00 = c02584c.A09 / c02584c.A07;
        c02584c.A08 = Math.min(c02584c.A08, d2);
        c02584c.A05 = Math.max(c02584c.A05, d2);
        char c = d2 >= c02584c.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c02584c = c02584c;
                    c02584c.A03 += d;
                    c02584c.A01 += d;
                    c02584c.A06 = Math.max(c02584c.A06, c02584c.A01);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c02584c = c02584c;
                    c02584c.A01 = 0.0d;
                    c = 3;
                    break;
            }
        }
    }
}
