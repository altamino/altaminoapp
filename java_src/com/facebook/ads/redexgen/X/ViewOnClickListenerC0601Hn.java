package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0601Hn implements View.OnClickListener {
    public final /* synthetic */ C0596Hi A00;

    public ViewOnClickListenerC0601Hn(C0596Hi c0596Hi) {
        this.A00 = c0596Hi;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC0601Hn viewOnClickListenerC0601Hn = this;
        viewOnClickListenerC0601Hn.A00.A02.A02(KW.A0a, null);
        char c = viewOnClickListenerC0601Hn.A00.A00 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    viewOnClickListenerC0601Hn = viewOnClickListenerC0601Hn;
                    if (!viewOnClickListenerC0601Hn.A00.A04()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    viewOnClickListenerC0601Hn = viewOnClickListenerC0601Hn;
                    viewOnClickListenerC0601Hn.A00.A00.setVolume(1.0f);
                    c = 5;
                    break;
                case 5:
                    viewOnClickListenerC0601Hn = viewOnClickListenerC0601Hn;
                    viewOnClickListenerC0601Hn.A00.A06();
                    c = 2;
                    break;
                case 6:
                    viewOnClickListenerC0601Hn = viewOnClickListenerC0601Hn;
                    viewOnClickListenerC0601Hn.A00.A00.setVolume(0.0f);
                    c = 5;
                    break;
            }
        }
    }
}
