package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class L5 implements DialogInterface.OnClickListener {
    public final /* synthetic */ L6 A00;

    public L5(L6 l6) {
        this.A00 = l6;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (this.A00.A00.A0U == null) {
            return;
        }
        this.A00.A00.A0U.A0c(this.A00.A01());
    }
}
