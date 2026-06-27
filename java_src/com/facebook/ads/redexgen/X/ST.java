package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class ST implements View.OnClickListener {
    public final /* synthetic */ SU A00;

    public ST(SU su) {
        this.A00 = su;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ST st = this;
        char c = st.A00.A02.A00() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    st = st;
                    if (st.A00.A02.getVisibility() != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    st = st;
                    st.A00.A02.performClick();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
