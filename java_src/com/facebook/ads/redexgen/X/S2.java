package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class S2 {
    private final String A07;
    private long A01 = -1;
    private long A03 = -1;
    private long A04 = -1;
    private long A00 = -1;
    private long A05 = -1;
    private long A02 = -1;
    private long A06 = -1;

    public S2(String str) {
        this.A07 = str;
    }

    public final S2 A00(long j) {
        this.A00 = j;
        return this;
    }

    public final S2 A01(long j) {
        this.A01 = j;
        return this;
    }

    public final S2 A02(long j) {
        this.A02 = j;
        return this;
    }

    public final S2 A03(long j) {
        this.A03 = j;
        return this;
    }

    public final S2 A04(long j) {
        this.A04 = j;
        return this;
    }

    public final S2 A05(long j) {
        this.A05 = j;
        return this;
    }

    public final S2 A06(long j) {
        this.A06 = j;
        return this;
    }

    public final S3 A07() {
        return new S3(this.A07, this.A01, this.A03, this.A04, this.A00, this.A05, this.A02, this.A06);
    }
}
