package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class U9 implements InterfaceC0898Td {
    public final /* synthetic */ UA A00;

    public U9(UA ua) {
        this.A00 = ua;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0898Td
    public final void A6K(View view) {
        if (!this.A00.A07) {
            return;
        }
        this.A00.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0898Td
    public final void A6L(View view) {
        U9 u9 = this;
        TT tt = (TT) view;
        tt.A0b();
        char c = u9.A00.A07 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    u9 = u9;
                    u9.A00.A05 = true;
                    c = 3;
                    break;
                case 3:
                    u9 = u9;
                    if (!u9.A00.A0E.A0X()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    tt = tt;
                    if (((Integer) tt.getTag(-1593835536)).intValue() != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    u9 = u9;
                    u9.A00.A0E.A0T();
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }
}
