package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Rt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0862Rt extends RU {
    private final ImageView A00;
    private final LinearLayout A01;
    private final ScrollView A02;
    private static final int A05 = (int) (8.0f * OY.A01);
    private static final int A04 = (int) (10.0f * OY.A01);
    private static final int A03 = (int) (44.0f * OY.A01);

    public C0862Rt(Context context, KM km, String str, int i, int i2) {
        super(context, km, str);
        this.A00 = new ImageView(getContext());
        this.A00.setPadding(A04, A04, A04, A04);
        this.A00.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
        layoutParams.gravity = 3;
        this.A00.setLayoutParams(layoutParams);
        this.A02 = new ScrollView(getContext());
        this.A02.setFillViewport(true);
        OY.A0P(this.A02, -218103809);
        this.A01 = new LinearLayout(getContext());
        this.A01.setOrientation(1);
        this.A01.setPadding(A05, A05, A05, A05);
        this.A02.addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        addView(this.A02, new LinearLayout.LayoutParams(i, i2));
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0K() {
        this.A00.setImageBitmap(C0769Oe.A01(EnumC0768Od.CROSS));
        this.A00.setOnClickListener(new ViewOnClickListenerC0857Ro(this));
        RX rx = new RX(getContext());
        rx.setData(C02654j.A0B(getContext()), EnumC0768Od.HIDE_AD);
        rx.setOnClickListener(new ViewOnClickListenerC0858Rp(this, rx));
        RX rx2 = new RX(getContext());
        rx2.setData(C02654j.A0F(getContext()), EnumC0768Od.REPORT_AD);
        rx2.setOnClickListener(new ViewOnClickListenerC0859Rq(this, rx2));
        RX rx3 = new RX(getContext());
        rx3.setData(C02654j.A0G(getContext()), EnumC0768Od.AD_CHOICES_ICON);
        rx3.setOnClickListener(new ViewOnClickListenerC0860Rr(this, rx3));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(A05, A05, A05, A05);
        layoutParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, 0);
        layoutParams2.gravity = 17;
        layoutParams2.weight = 1.0f;
        OY.A0U(this.A01);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(linearLayout, layoutParams2);
        linearLayout.addView(rx, layoutParams);
        linearLayout.addView(rx2, layoutParams);
        linearLayout.addView(rx3, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0L() {
        OY.A0J(this);
        OY.A0L(this);
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0M(C02684m c02684m, EnumC02664k enumC02664k) {
        C0862Rt c0862Rt = this;
        String title = null;
        EnumC0768Od enumC0768Od = null;
        int i = 0;
        c0862Rt.A00.setOnClickListener(null);
        char c = enumC02664k == EnumC02664k.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0862Rt = c0862Rt;
                    title = C02654j.A09(c0862Rt.getContext());
                    enumC0768Od = EnumC0768Od.REPORT_AD;
                    i = -552389;
                    c = 3;
                    break;
                case 3:
                    C0862Rt c0862Rt2 = c0862Rt;
                    RR rrA0P = new RQ(c0862Rt2.getContext()).A0F(c0862Rt2.A0B).A0J(title).A0I(C02654j.A07(c0862Rt2.getContext())).A0G(c02684m.A04()).A0M(false).A0E(enumC0768Od).A0D(i).A0O(false).A0L(false).A0P();
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.gravity = 17;
                    layoutParams.weight = 1.0f;
                    OY.A0U(c0862Rt2.A01);
                    c0862Rt2.A02.fullScroll(33);
                    c0862Rt2.A01.removeAllViews();
                    c0862Rt2.A01.addView(rrA0P, layoutParams);
                    return;
                case 4:
                    c0862Rt = c0862Rt;
                    title = C02654j.A0B(c0862Rt.getContext());
                    enumC0768Od = EnumC0768Od.HIDE_AD;
                    i = -13272859;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0N(C02684m c02684m, EnumC02664k enumC02664k) {
        C0856Rn c0856Rn = new C0856Rn(getContext(), c02684m, this.A0B, enumC02664k == EnumC02664k.A05 ? EnumC0768Od.REPORT_AD : EnumC0768Od.HIDE_AD);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        this.A00.setImageBitmap(C0769Oe.A01(EnumC0768Od.BACK_ARROW));
        this.A00.setOnClickListener(new ViewOnClickListenerC0861Rs(this));
        OY.A0U(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(c0856Rn, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final boolean A0P() {
        return true;
    }
}
