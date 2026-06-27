package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ph, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0798Ph implements View.OnClickListener {
    public final /* synthetic */ C0799Pi A00;

    public ViewOnClickListenerC0798Ph(C0799Pi c0799Pi) {
        this.A00 = c0799Pi;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC0798Ph viewOnClickListenerC0798Ph = this;
        char c = viewOnClickListenerC0798Ph.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewOnClickListenerC0798Ph = viewOnClickListenerC0798Ph;
                    if (!viewOnClickListenerC0798Ph.A00.A03.A02()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewOnClickListenerC0798Ph = viewOnClickListenerC0798Ph;
                    viewOnClickListenerC0798Ph.A00.A00.A53();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
