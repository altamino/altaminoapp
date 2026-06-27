package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FJ implements Runnable {
    private final Runnable A00;

    public FJ(Runnable runnable) {
        this.A00 = runnable;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"CatchGeneralException"})
    public final void run() {
        try {
            this.A00.run();
        } catch (Throwable th) {
            BC.A03(th);
        }
    }
}
