package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FI {
    private Handler A00;

    public FI(Looper looper) {
        this.A00 = new Handler(looper);
    }

    public final void A00(FJ fj) {
        this.A00.post(fj);
    }

    public final void A01(FJ fj) {
        this.A00.removeCallbacks(fj);
    }

    public final boolean A02(FJ fj, long j) {
        return this.A00.postDelayed(fj, j);
    }
}
