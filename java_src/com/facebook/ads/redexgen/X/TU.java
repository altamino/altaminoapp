package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class TU extends TT {
    private static final int A00 = (int) (12.0f * OY.A01);

    public TU(T0 t0, C02282y c02282y, String str, UA ua) {
        super(t0, c02282y, true, str, ua);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A06() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.TT, com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A09() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.TT
    public final void A0c(Context context) {
        C0883So titleDescContainer = getTitleDescContainer();
        titleDescContainer.setAlignment(3);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(8, getMediaContainer().getId());
        titleDescContainer.setLayoutParams(layoutParams);
        titleDescContainer.setPadding(A00, A00, A00, A00);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
        gradientDrawable.setCornerRadius(0.0f);
        OY.A0S(titleDescContainer, gradientDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, getMediaContainer().getId());
        getCtaButton().setLayoutParams(layoutParams2);
        addView(getMediaContainer());
        addView(titleDescContainer);
        addView(getCtaButton());
    }
}
