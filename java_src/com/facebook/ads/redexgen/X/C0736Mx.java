package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0736Mx extends AnonymousClass27 {
    private final CountDownLatch A00;
    public final /* synthetic */ C0737My A01;

    public C0736Mx(C0737My c0737My, CountDownLatch countDownLatch) {
        this.A01 = c0737My;
        this.A00 = countDownLatch;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() throws IOException {
        this.A00.countDown();
        this.A01.A07();
    }
}
