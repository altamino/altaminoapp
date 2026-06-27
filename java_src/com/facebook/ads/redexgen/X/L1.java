package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.facebook.ads.internal.api.AdNativeComponentView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class L1 extends AbstractC02052b {
    public final /* synthetic */ View A00;
    public final /* synthetic */ L8 A01;
    public final /* synthetic */ boolean A02;

    public L1(L8 l8, View view, boolean z) {
        this.A01 = l8;
        this.A00 = view;
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        L1 l1 = this;
        Drawable background = null;
        View adContentsView = null;
        char c = K1.A1R(l1.A01.A0o()) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    l1 = l1;
                    if (!(l1.A00 instanceof AdNativeComponentView)) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    l1 = l1;
                    adContentsView = l1.A00.getAdContentsView();
                    if (!(adContentsView instanceof M4)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    adContentsView = adContentsView;
                    if (!((M4) adContentsView).A02(1)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    return;
                case 6:
                    l1 = l1;
                    if (!l1.A02) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    l1 = l1;
                    background = l1.A00.getBackground();
                    if (background == null) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    l1 = l1;
                    background = background;
                    if (!background.equals(l1.A01.A00)) {
                        c = 5;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    l1 = l1;
                    l1.A01.A0L.A0U();
                    if (l1.A01.A0P == null) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    l1 = l1;
                    if (l1.A01.A0P.get() == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    l1 = l1;
                    ((AbstractC02052b) l1.A01.A0P.get()).A02();
                    c = '\f';
                    break;
                case '\f':
                    l1 = l1;
                    if (!l1.A01.A0Y.A07()) {
                        c = '\r';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case '\r':
                    l1 = l1;
                    l1.A01.A0Y.A05();
                    if (l1.A01.A07 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    l1 = l1;
                    if (l1.A01.A02 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    l1 = l1;
                    if (l1.A01.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    l1 = l1;
                    l1.A01.A07.A08(l1.A01.A02);
                    l1.A01.A07.A07(l1.A01.A04);
                    l1.A01.A07.A0B(l1.A01.A0G);
                    l1.A01.A07.A0E(l1.A01.A0Q);
                    l1.A01.A07.A0I(l1.A01.A0T);
                    l1.A01.A07.A0H(l1.A01.A0S);
                    l1.A01.A07.A0F(l1.A01.A0g());
                    l1.A01.A07.A09(l1.A01.A06);
                    l1.A01.A07.A0G(l1.A01.A0R);
                    l1.A01.A07.A0A(RV.A00(l1.A01.A05));
                    l1.A01.A07.A0C(l1.A01.A0M);
                    l1.A01.A07.A02();
                    c = 5;
                    break;
            }
        }
    }
}
