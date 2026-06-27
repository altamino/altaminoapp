package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class T6 implements View.OnClickListener {
    public final /* synthetic */ TC A00;

    public T6(TC tc) {
        this.A00 = tc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.A00.A06 = false;
        if (this.A00.A02 != null) {
            OY.A0O(this.A00.A02);
        }
        OY.A0Q(this.A00.A0C, 0);
        OY.A0Q(this.A00.A0D, 0);
        OY.A0Q(this.A00.getAdDetailsView(), 0);
        OY.A0L(this.A00.A09);
        this.A00.A0C.A0P(EnumC0697Lh.A03);
    }
}
