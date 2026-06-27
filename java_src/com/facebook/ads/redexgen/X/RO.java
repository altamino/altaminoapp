package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RO implements View.OnClickListener {
    public final /* synthetic */ RR A00;

    public RO(RR rr) {
        this.A00 = rr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RO ro = this;
        char c = ro.A00.A02 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ro = ro;
                    if (!ro.A00.A03) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ro = ro;
                    ro.A00.A02.A2l();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    ro = ro;
                    ro.A00.A02.A2m(true);
                    c = 4;
                    break;
            }
        }
    }
}
