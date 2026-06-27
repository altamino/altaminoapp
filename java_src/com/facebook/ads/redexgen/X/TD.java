package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TD implements View.OnClickListener {
    public final /* synthetic */ TE A00;

    public TD(TE te) {
        this.A00 = te;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.A00.getCtaButton().performClick();
    }
}
