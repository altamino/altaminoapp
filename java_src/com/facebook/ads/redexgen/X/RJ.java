package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class RJ extends View {
    private InterfaceC0689Kz A00;

    public RJ(Context context, InterfaceC0689Kz interfaceC0689Kz) {
        super(context);
        this.A00 = interfaceC0689Kz;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        if (this.A00 != null) {
            this.A00.A6N(i);
        }
    }
}
