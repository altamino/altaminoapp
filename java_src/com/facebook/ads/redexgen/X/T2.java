package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class T2 extends AbstractC0889Su {
    private static final int A02 = Resources.getSystem().getDisplayMetrics().widthPixels;
    private final View A00;
    private final boolean A01;

    public T2(T0 t0, C02282y c02282y, boolean z) {
        super(t0, c02282y, true);
        this.A01 = z;
        this.A00 = t0.A03();
        A0a();
        if (this.A01) {
            addView(t0.A03(), new RelativeLayout.LayoutParams(-1, -1));
        } else {
            FrameLayout frameLayout = new FrameLayout(t0.A02());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(2, getAdDetailsView().getId());
            frameLayout.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 17;
            layoutParams2.setMargins(AbstractC0888St.A04, 0, AbstractC0888St.A04, 0);
            frameLayout.addView(this.A00, layoutParams2);
            if (K1.A0s(getContext())) {
                this.A00.setOnClickListener(new T1(this));
            }
            addView(frameLayout);
        }
        getAdDetailsView().bringToFront();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A08() {
        T2 t2 = this;
        boolean zA08 = false;
        char c = !t2.A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    zA08 = false;
                    c = 3;
                    break;
                case 3:
                    return zA08;
                case 4:
                    t2 = t2;
                    zA08 = super.A08();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A09() {
        T2 t2 = this;
        boolean zA08 = false;
        char c = !t2.A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    zA08 = false;
                    c = 3;
                    break;
                case 3:
                    return zA08;
                case 4:
                    t2 = t2;
                    zA08 = super.A08();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0889Su, com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0W(AnonymousClass32 anonymousClass32, String str, double d, @Nullable Bundle bundle, @Nullable Q6 q6) {
        Q6 q62 = q6;
        T2 t2 = this;
        super.A0W(anonymousClass32, str, d, bundle, q62);
        char c = !t2.A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (d <= 0.0d) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    t2 = t2;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) ((A02 - (AbstractC0888St.A04 * 2)) / d));
                    layoutParams.gravity = 17;
                    layoutParams.setMargins(AbstractC0888St.A04, 0, AbstractC0888St.A04, 0);
                    t2.A00.setLayoutParams(layoutParams);
                    c = 4;
                    break;
                case 4:
                    q62 = q62;
                    if (q62 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    q62 = q62;
                    q62.A4q();
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0Y() {
        return this.A01;
    }
}
