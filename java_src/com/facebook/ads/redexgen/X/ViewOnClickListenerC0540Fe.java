package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fe, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0540Fe implements View.OnClickListener {
    public final /* synthetic */ FT A00;

    public ViewOnClickListenerC0540Fe(FT ft) {
        this.A00 = ft;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC0540Fe viewOnClickListenerC0540Fe = this;
        char c = !viewOnClickListenerC0540Fe.A00.A05.get() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    viewOnClickListenerC0540Fe = viewOnClickListenerC0540Fe;
                    if (viewOnClickListenerC0540Fe.A00.getVideoView() == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    viewOnClickListenerC0540Fe = viewOnClickListenerC0540Fe;
                    viewOnClickListenerC0540Fe.A00.getVideoView().A0M();
                    c = 2;
                    break;
            }
        }
    }
}
