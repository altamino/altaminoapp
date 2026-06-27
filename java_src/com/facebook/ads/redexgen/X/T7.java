package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class T7 implements View.OnClickListener {
    public final /* synthetic */ TC A00;

    public T7(TC tc) {
        this.A00 = tc;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        T7 t7 = this;
        char c = t7.A00.getAdInfo().A09() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    t7 = t7;
                    t7.A00.A0C.A0M();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    t7 = t7;
                    if (t7.A00.A01 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    t7 = t7;
                    t7.A00.A01.A53();
                    c = 3;
                    break;
            }
        }
    }
}
