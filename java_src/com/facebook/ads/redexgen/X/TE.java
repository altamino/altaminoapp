package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class TE extends AbstractC0888St {
    private static final int A01 = Resources.getSystem().getDisplayMetrics().widthPixels;
    private final TQ A00;

    public TE(T0 t0, boolean z, C02282y c02282y) {
        super(t0, c02282y, z);
        this.A00 = new TQ(t0.A02(), t0.A03());
        this.A00.A01(t0.A0B(), t0.A04(), 10, getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC0888St.A04, AbstractC0888St.A04, AbstractC0888St.A04, AbstractC0888St.A04);
        getCtaButton().setLayoutParams(layoutParams);
        FrameLayout frameLayout = new FrameLayout(t0.A02());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, getCtaButton().getId());
        frameLayout.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 17;
        layoutParams3.setMargins(AbstractC0888St.A04, 0, AbstractC0888St.A04, 0);
        frameLayout.addView(this.A00, layoutParams3);
        addView(frameLayout);
        addView(getCtaButton());
        if (K1.A0s(getContext()) && (t0.A03() instanceof ImageView)) {
            t0.A03().setOnClickListener(new TD(this));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A08() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A09() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0W(AnonymousClass32 anonymousClass32, String str, double d, @Nullable Bundle bundle, @Nullable Q6 q6) {
        Q6 q62 = q6;
        TE te = this;
        super.A0W(anonymousClass32, str, d, bundle, q62);
        char c = d > 0.0d ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    te = te;
                    te.A00.A00((int) ((A01 - (AbstractC0888St.A04 * 2)) / d));
                    c = 3;
                    break;
                case 3:
                    q62 = q62;
                    if (q62 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q62 = q62;
                    q62.A4q();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0Y() {
        return false;
    }
}
