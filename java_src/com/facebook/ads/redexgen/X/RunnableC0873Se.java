package com.facebook.ads.redexgen.X;

import android.support.annotation.RequiresApi;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Se, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class RunnableC0873Se implements Runnable {
    public final /* synthetic */ SZ A00;

    public RunnableC0873Se(SZ sz) {
        this.A00 = sz;
    }

    @Override // java.lang.Runnable
    @RequiresApi(api = 16)
    public final void run() {
        this.A00.setPressed(false);
        this.A00.postOnAnimationDelayed(this.A00.A07, this.A00.A05);
    }
}
