package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ad, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0410Ad extends Thread {
    private final long A00;

    public C0410Ad(long j) {
        this.A00 = j;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws InterruptedException {
        while (true) {
            try {
                Thread.sleep(this.A00);
            } catch (InterruptedException unused) {
            }
            C0407Aa.A01();
        }
    }
}
