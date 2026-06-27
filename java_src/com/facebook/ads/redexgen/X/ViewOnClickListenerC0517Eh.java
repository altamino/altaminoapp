package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Eh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0517Eh implements View.OnClickListener {
    public final /* synthetic */ C0438Bg A00;

    public ViewOnClickListenerC0517Eh(C0438Bg c0438Bg) {
        this.A00 = c0438Bg;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC0517Eh viewOnClickListenerC0517Eh = this;
        char c = viewOnClickListenerC0517Eh.A00.getVideoView() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    viewOnClickListenerC0517Eh = viewOnClickListenerC0517Eh;
                    if (viewOnClickListenerC0517Eh.A00.A01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    viewOnClickListenerC0517Eh = viewOnClickListenerC0517Eh;
                    viewOnClickListenerC0517Eh.A00.A01.A02(KW.A0m, null);
                    c = 5;
                    break;
                case 5:
                    viewOnClickListenerC0517Eh = viewOnClickListenerC0517Eh;
                    switch (viewOnClickListenerC0517Eh.A00.getVideoView().getState()) {
                        case A07:
                            c = 6;
                            break;
                        case A04:
                            c = 6;
                            break;
                        case A05:
                            c = 6;
                            break;
                        case A06:
                            c = 6;
                            break;
                        case A0A:
                            c = 7;
                            break;
                        default:
                            c = 2;
                            break;
                    }
                case 6:
                    viewOnClickListenerC0517Eh = viewOnClickListenerC0517Eh;
                    viewOnClickListenerC0517Eh.A00.getVideoView().A0P(EnumC0697Lh.A05);
                    c = 2;
                    break;
                case 7:
                    viewOnClickListenerC0517Eh = viewOnClickListenerC0517Eh;
                    viewOnClickListenerC0517Eh.A00.getVideoView().A0S(true);
                    c = 2;
                    break;
            }
        }
    }
}
