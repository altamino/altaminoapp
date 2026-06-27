package com.facebook.ads.redexgen.X;

import android.support.annotation.VisibleForTesting;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0e, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C01620e {

    @VisibleForTesting
    public static boolean A02 = false;
    private long A00 = 0;
    private final C0D A01;

    public C01620e(C0D c0d) {
        this.A01 = c0d;
        new Thread(new Runnable() { // from class: com.facebook.ads.redexgen.X.0h
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A00();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A00() {
        while (true) {
            synchronized (this) {
                if (this.A00 == 0) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    long jNanoTime = System.nanoTime();
                    if (jNanoTime < this.A00) {
                        int i = (int) ((this.A00 - jNanoTime) / 1000000);
                        if (i >= 1) {
                            try {
                                wait(i);
                            } catch (InterruptedException unused2) {
                            }
                        }
                    }
                    this.A00 = 0L;
                    this.A01.A08();
                    long jNanoTime2 = System.nanoTime();
                    synchronized (this) {
                        if (this.A00 < jNanoTime2) {
                            this.A00 = 0L;
                        }
                    }
                }
            }
        }
    }

    public final synchronized void A02() {
        this.A00 = System.nanoTime();
        notifyAll();
    }

    public final synchronized void A03(int i) {
        long jNanoTime = System.nanoTime() + (1000000 * i * (A02 ? 1 : 1000));
        if (this.A00 == 0 || this.A00 > jNanoTime) {
            this.A00 = jNanoTime;
            notifyAll();
        }
    }
}
