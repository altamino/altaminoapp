package com.facebook.ads.redexgen.X;

import android.widget.LinearLayout;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pb, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0792Pb implements InterfaceC0739Na {
    private int A00;
    private final C02262w A01;
    private final WeakReference<C0793Pc> A02;
    private final WeakReference<C0882Sn> A03;

    public C0792Pb(C0793Pc c0793Pc, C02262w c02262w, int i) {
        this.A02 = new WeakReference<>(c0793Pc);
        this.A03 = new WeakReference<>(c0793Pc.A0D);
        this.A01 = c02262w;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0739Na
    public final void A56() {
        C0792Pb c0792Pb = this;
        LinearLayout linearLayout = null;
        KX kx = null;
        int i = 0;
        int iA04 = 0;
        char c = c0792Pb.A02.get() != null ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    c0792Pb = c0792Pb;
                    linearLayout = c0792Pb.A02.get().A04;
                    iA04 = c0792Pb.A01.A0F().A04();
                    if (!((C0839Qw) linearLayout.getChildAt(iA04)).A0I()) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    linearLayout = linearLayout;
                    if (i >= linearLayout.getChildCount()) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    linearLayout = linearLayout;
                    if (!((C0839Qw) linearLayout.getChildAt(i)).A0I()) {
                        c = 6;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 6:
                    iA04 = i;
                    c = 7;
                    break;
                case 7:
                    c0792Pb = c0792Pb;
                    kx = c0792Pb.A02.get().A09;
                    if (kx == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    kx = kx;
                    kx.A02(KW.A0E, null);
                    c = '\t';
                    break;
                case '\t':
                    c0792Pb = c0792Pb;
                    c0792Pb.A02.get().A06(c0792Pb.A01.A0K().get(iA04));
                    c = '\n';
                    break;
                case '\n':
                    return;
                case 11:
                    i++;
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0739Na
    public final void A63(float f) {
        C0882Sn c0882Sn = this.A03.get();
        if (c0882Sn != null) {
            c0882Sn.setProgress(((int) ((this.A00 - f) * 100.0f)) / this.A00);
            c0882Sn.setText(this.A01.A0G().A04(String.valueOf((int) f)));
        }
    }
}
