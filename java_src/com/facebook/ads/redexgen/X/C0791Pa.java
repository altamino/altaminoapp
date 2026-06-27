package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pa, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0791Pa implements PZ {
    public final WeakReference<C0839Qw> A00;
    public final WeakReference<C0793Pc> A01;

    public C0791Pa(C0793Pc c0793Pc, C0839Qw c0839Qw) {
        this.A01 = new WeakReference<>(c0793Pc);
        this.A00 = new WeakReference<>(c0839Qw);
    }

    @Override // com.facebook.ads.redexgen.X.PZ
    public final void A4n(boolean z) {
        C0791Pa c0791Pa = this;
        boolean z2 = false;
        char c = c0791Pa.A01.get() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0791Pa = c0791Pa;
                    z2 = false;
                    c0791Pa.A01.get().setIsAdReportingLayoutVisible(false);
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0791Pa = c0791Pa;
                    c0791Pa.A01.get().A0D();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c0791Pa = c0791Pa;
                    c0791Pa.A01.get().A0E(z2);
                    c = 4;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.PZ
    public final void A4o(C02684m c02684m, EnumC02664k enumC02664k) {
        if (this.A00.get() != null) {
            this.A00.get().A0E(c02684m, enumC02664k);
        }
    }

    @Override // com.facebook.ads.redexgen.X.PZ
    public final void A4p() {
        C0793Pc c0793Pc = this.A01.get();
        if (c0793Pc != null) {
            c0793Pc.setIsAdReportingLayoutVisible(true);
            c0793Pc.A0E(true);
        }
    }
}
