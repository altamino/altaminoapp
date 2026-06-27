package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ox, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0788Ox extends AnonymousClass27 {
    public final /* synthetic */ DialogInterface A00;
    public final /* synthetic */ DialogInterfaceOnClickListenerC0789Oy A01;

    public C0788Ox(DialogInterfaceOnClickListenerC0789Oy dialogInterfaceOnClickListenerC0789Oy, DialogInterface dialogInterface) {
        this.A01 = dialogInterfaceOnClickListenerC0789Oy;
        this.A00 = dialogInterface;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        C0788Ox c0788Ox = this;
        char c = c0788Ox.A01.A01.A02 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0788Ox = c0788Ox;
                    c0788Ox.A01.A01.A02.A6X(M2.A01(), new C0718Me().A05(c0788Ox.A01.A01.A04(c0788Ox.A01.A00.getText().toString())).A08());
                    c = 3;
                    break;
                case 3:
                    c0788Ox.A00.cancel();
                    return;
                case 4:
                    c0788Ox = c0788Ox;
                    c0788Ox.A01.A01.A01.A0K(M2.A01(), c0788Ox.A01.A01.A01.A0M().A05(c0788Ox.A01.A01.A04(c0788Ox.A01.A00.getText().toString())));
                    c = 3;
                    break;
            }
        }
    }
}
