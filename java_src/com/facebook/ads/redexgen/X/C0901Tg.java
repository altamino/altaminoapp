package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0901Tg extends TT {
    private static final int A00 = (int) (20.0f * OY.A01);
    private static final int A01 = (int) (16.0f * OY.A01);

    public C0901Tg(T0 t0, C02282y c02282y, String str, UA ua) {
        super(t0, c02282y, false, str, ua);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A07() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.TT
    public final void A0c(Context context) {
        C0883So titleDescContainer = getTitleDescContainer();
        titleDescContainer.setAlignment(3);
        titleDescContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        titleDescContainer.setPadding(0, 0, 0, A00);
        getCtaButton().setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout = new LinearLayout(context);
        OY.A0S(linearLayout, new ColorDrawable(-1));
        RelativeLayout.LayoutParams ctaLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
        ctaLayoutParams.addRule(3, getMediaContainer().getId());
        linearLayout.setLayoutParams(ctaLayoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A01, A01, A01, A01);
        linearLayout.addView(titleDescContainer);
        linearLayout.addView(getCtaButton());
        addView(getMediaContainer());
        addView(linearLayout);
    }
}
