package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RP implements View.OnClickListener {
    public final /* synthetic */ RR A00;

    public RP(RR rr) {
        this.A00 = rr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.A00.A02 == null) {
            return;
        }
        this.A00.A02.A43();
    }
}
