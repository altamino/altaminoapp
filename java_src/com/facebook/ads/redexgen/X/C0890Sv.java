package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0890Sv extends AbstractC0888St {
    public C0890Sv(T0 t0, C02282y c02282y, boolean z) {
        super(t0, c02282y, true);
        RelativeLayout relativeLayout = new RelativeLayout(t0.A02());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{-1778384896, 0});
        gradientDrawable.setCornerRadius(0.0f);
        gradientDrawable.setGradientType(0);
        OY.A0S(relativeLayout, gradientDrawable);
        LinearLayout linearLayout = new LinearLayout(t0.A02());
        linearLayout.setOrientation(z ? 0 : 1);
        linearLayout.setGravity(80);
        OY.A0N(linearLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC0888St.A04, 0, AbstractC0888St.A04, t0.A0B() == null ? AbstractC0888St.A04 : AbstractC0888St.A04 / 2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(z ? -2 : -1, -2);
        layoutParams3.setMargins(z ? AbstractC0888St.A04 : 0, z ? 0 : AbstractC0888St.A04, 0, 0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(z ? 0 : -1, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams4);
        linearLayout.addView(getCtaButton(), layoutParams3);
        relativeLayout.addView(linearLayout, layoutParams2);
        if (t0.A0B() != null) {
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams5.setMargins(0, 0, 0, 0);
            layoutParams5.addRule(3, linearLayout.getId());
            relativeLayout.addView(t0.A0B(), layoutParams5);
        }
        addView(t0.A03(), new RelativeLayout.LayoutParams(-1, -1));
        addView(relativeLayout, layoutParams);
        if (t0.A04() != null) {
            RelativeLayout.LayoutParams muteParams = new RelativeLayout.LayoutParams(AbstractC0888St.A05, AbstractC0888St.A05);
            muteParams.addRule(10);
            muteParams.addRule(11);
            muteParams.setMargins(AbstractC0888St.A04, AbstractC0888St.A04 + t0.A01(), AbstractC0888St.A04, AbstractC0888St.A04);
            addView(t0.A04(), muteParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final void A0W(AnonymousClass32 anonymousClass32, String str, double d, @Nullable Bundle bundle, @Nullable Q6 q6) {
        super.A0W(anonymousClass32, str, d, bundle, q6);
        if (q6 != null) {
            q6.A4q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0Y() {
        return true;
    }
}
