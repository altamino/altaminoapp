package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class SS implements View.OnClickListener {
    public final /* synthetic */ SU A00;

    public SS(SU su) {
        this.A00 = su;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SS ss = this;
        char c = ss.A00.A02.A00() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ss = ss;
                    if (ss.A00.A02.getVisibility() != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ss = ss;
                    ss.A00.A02.performClick();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
