package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class T1 implements View.OnClickListener {
    public final /* synthetic */ T2 A00;

    public T1(T2 t2) {
        this.A00 = t2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.A00.getCtaButton().performClick();
    }
}
