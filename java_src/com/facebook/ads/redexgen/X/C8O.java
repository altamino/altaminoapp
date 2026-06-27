package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8O, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C8O implements B3 {

    @Nullable
    private ViewPropertyAnimator A00;
    private B7 A01 = B7.A04;
    private final int A02;
    private final View A03;
    private final boolean A04;

    public C8O(View view, int i, boolean z) {
        this.A02 = i;
        this.A03 = view;
        this.A04 = z;
    }

    private void A04(boolean z) {
        C8O c8o = this;
        c8o.A01 = B7.A03;
        char c = c8o.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8o = c8o;
                    OY.A0O(c8o.A03);
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8o = c8o;
                    c8o.A00 = c8o.A03.animate().alpha(1.0f).setDuration(c8o.A02).setListener(new AC(c8o));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c8o = c8o;
                    c8o.A03.setAlpha(1.0f);
                    c8o.A01 = B7.A02;
                    c = 5;
                    break;
            }
        }
    }

    private void A05(boolean z) {
        C8O c8o = this;
        c8o.A01 = B7.A05;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8o = c8o;
                    c8o.A00 = c8o.A03.animate().alpha(0.0f).setDuration(c8o.A02).setListener(new A3(c8o));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8o = c8o;
                    c8o.A03.setAlpha(0.0f);
                    c8o.A01 = B7.A04;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void A2a(boolean z, boolean z2) {
        C8O c8o = this;
        char c = z2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8o = c8o;
                    c8o.A05(z);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8o = c8o;
                    c8o.A04(z);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final B7 A3j() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void cancel() {
        this.A03.clearAnimation();
        if (this.A00 != null) {
            this.A00.cancel();
        }
    }
}
