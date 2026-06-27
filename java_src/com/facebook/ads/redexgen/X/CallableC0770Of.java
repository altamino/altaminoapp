package com.facebook.ads.redexgen.X;

import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Of, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0770Of implements Callable<Void> {
    private final int A00;
    private final int A01;
    private final int A02;
    private final int A03;
    private final int A04;
    private final int A05;
    private final int[] A06;

    public CallableC0770Of(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        this.A06 = iArr;
        this.A05 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A04 = i4;
        this.A00 = i5;
        this.A03 = i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Void call() throws Exception {
        C0771Og.A00(this.A06, this.A05, this.A01, this.A02, this.A04, this.A00, this.A03);
        return null;
    }
}
