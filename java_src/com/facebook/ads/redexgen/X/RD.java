package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RD implements View.OnClickListener {
    public final /* synthetic */ C8s A00;
    public final /* synthetic */ RF A01;

    public RD(RF rf, C8s c8s) {
        this.A01 = rf;
        this.A00 = c8s;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.A00.finish();
    }
}
