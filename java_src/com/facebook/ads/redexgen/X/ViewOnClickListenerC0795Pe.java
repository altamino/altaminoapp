package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pe, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0795Pe implements View.OnClickListener {
    public final /* synthetic */ C0797Pg A00;

    public ViewOnClickListenerC0795Pe(C0797Pg c0797Pg) {
        this.A00 = c0797Pg;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC0795Pe viewOnClickListenerC0795Pe = this;
        char c = viewOnClickListenerC0795Pe.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewOnClickListenerC0795Pe = viewOnClickListenerC0795Pe;
                    if (!viewOnClickListenerC0795Pe.A00.A06()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    viewOnClickListenerC0795Pe = viewOnClickListenerC0795Pe;
                    viewOnClickListenerC0795Pe.A00.A00.A53();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}
