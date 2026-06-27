package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0820Qd implements View.OnClickListener {
    public final /* synthetic */ QN A00;
    public final /* synthetic */ C0836Qt A01;

    public ViewOnClickListenerC0820Qd(C0836Qt c0836Qt, QN qn) {
        this.A01 = c0836Qt;
        this.A00 = qn;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        OY.A0L(this.A00);
        OY.A0O(this.A01.A0P);
        OY.A0O(this.A01.A05);
        if (this.A01.A08 == null) {
            return;
        }
        this.A01.A08.A0P(EnumC0697Lh.A03);
    }
}
