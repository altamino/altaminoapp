package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Rm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0855Rm implements View.OnClickListener {
    public final /* synthetic */ C02684m A00;
    public final /* synthetic */ RX A01;
    public final /* synthetic */ C0856Rn A02;

    public ViewOnClickListenerC0855Rm(C0856Rn c0856Rn, RX rx, C02684m c02684m) {
        this.A02 = c0856Rn;
        this.A01 = rx;
        this.A00 = c02684m;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.A01.A01();
        this.A02.A01.A5t(this.A00);
    }
}
