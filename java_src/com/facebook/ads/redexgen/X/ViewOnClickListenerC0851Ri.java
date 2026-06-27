package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ri, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0851Ri implements View.OnClickListener {
    public final /* synthetic */ C02684m A00;
    public final /* synthetic */ RX A01;
    public final /* synthetic */ C0852Rj A02;

    public ViewOnClickListenerC0851Ri(C0852Rj c0852Rj, RX rx, C02684m c02684m) {
        this.A02 = c0852Rj;
        this.A01 = rx;
        this.A00 = c02684m;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.A01.A01();
        this.A02.A0B.A5t(this.A00);
    }
}
