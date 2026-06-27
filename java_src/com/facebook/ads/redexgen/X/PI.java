package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class PI implements View.OnClickListener {
    public final /* synthetic */ AnonymousClass38 A00;
    public final /* synthetic */ KX A01;
    public final /* synthetic */ PJ A02;
    public final /* synthetic */ InterfaceC03688m A03;
    public final /* synthetic */ String A04;

    public PI(PJ pj, KX kx, InterfaceC03688m interfaceC03688m, String str, AnonymousClass38 anonymousClass38) {
        this.A02 = pj;
        this.A01 = kx;
        this.A03 = interfaceC03688m;
        this.A04 = str;
        this.A00 = anonymousClass38;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PI pi = this;
        pi.A01.A02(KW.A0A, null);
        char c = C02654j.A0P(pi.A02.getContext(), true) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    pi = pi;
                    pi.A03.A42(pi.A04, pi.A00, true, null);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    pi = pi;
                    if (!TextUtils.isEmpty(pi.A00.A00())) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 5:
                    pi = pi;
                    C0784Ot.A08(new C0784Ot(), pi.A02.getContext(), Uri.parse(pi.A00.A00()), pi.A04);
                    c = 3;
                    break;
            }
        }
    }
}
