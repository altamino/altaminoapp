package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.Nullable;
import android.support.v4.view.GravityCompat;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qy, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0841Qy extends SU {
    private static final int A04 = (int) (12.0f * OY.A01);
    private static final int A05 = (int) (16.0f * OY.A01);
    private int A00;
    private boolean A01;
    private boolean A02;
    private final C0883So A03;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0841Qy(Context context, int i, C02282y c02282y, KM km, InterfaceC03688m interfaceC03688m, boolean z, boolean z2, C6K c6k, OP op, boolean z3) {
        super(context, i, c02282y, J8.A04.A02(), km, interfaceC03688m, c6k, op);
        boolean z4 = z;
        this.A02 = false;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(9);
        layoutParams.setMargins(0, 0, A04, 0);
        if (z2) {
            super.A03.setVisibility(8);
        }
        this.A00 = OY.A03(context);
        this.A01 = z3;
        boolean isLandscape = (this.A00 == 2) && this.A01;
        this.A03 = new C0883So(context, c02282y, true, isLandscape ? true : z4, true);
        this.A03.setUseNewLandscapeEndCard(this.A01);
        this.A03.setAlignment(GravityCompat.START);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(1, super.A03.getId());
        A01(K1.A1c(context));
        if (!this.A01) {
            layoutParams.addRule(15);
            layoutParams2.addRule(15);
        }
        super.A01.addView(super.A03, layoutParams);
        super.A01.addView(this.A03, layoutParams2);
        if (isLandscape) {
            addView(super.A01, new LinearLayout.LayoutParams(-2, -1, 0.7f));
            return;
        }
        addView(super.A01, new LinearLayout.LayoutParams(-2, -2));
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
        gradientDrawable.setCornerRadius(0.0f);
        OY.A0S(this, gradientDrawable);
    }

    @Override // com.facebook.ads.redexgen.X.SU
    public final void A08(int i) {
        LinearLayout.LayoutParams layoutParams;
        OY.A0L(super.A02);
        boolean z = i == 1;
        if (this.A01) {
            this.A00 = i;
            setOrientation(1);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            if (this.A02 && !z) {
                layoutParams2.weight = 0.7f;
                setBackgroundResource(0);
                OY.A0P(this, -447721392);
            } else {
                GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
                gradientDrawable.setCornerRadius(0.0f);
                OY.A0S(this, gradientDrawable);
            }
            super.A01.setLayoutParams(layoutParams2);
            layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, A05, 0, 0);
            bringToFront();
        } else {
            setOrientation(z ? 1 : 0);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(z ? -1 : 0, -2);
            layoutParams3.weight = 1.0f;
            layoutParams = new LinearLayout.LayoutParams(z ? -1 : -2, -2);
            layoutParams.setMargins(z ? 0 : A05, z ? A05 : 0, 0, 0);
            super.A01.setLayoutParams(layoutParams3);
        }
        layoutParams.gravity = 80;
        addView(super.A02, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.SU
    public final void A09(boolean z) {
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.SU
    public void setInfo(C02252v c02252v, C02292z c02292z, String str, String str2, @Nullable SX sx) {
        super.setInfo(c02252v, c02292z, str, str2, sx);
        this.A03.A00(c02252v.A08(), c02252v.A07(), null, false, false);
        if (TextUtils.isEmpty(c02292z.A03())) {
            OY.A0I(super.A02);
        }
    }
}
