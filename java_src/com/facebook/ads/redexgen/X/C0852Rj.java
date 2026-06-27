package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Rj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0852Rj extends RU {
    private final HorizontalScrollView A00;
    private final ImageView A01;
    private final LinearLayout A02;
    private final LinearLayout A03;
    private static final int A06 = (int) (4.0f * OY.A01);
    private static final int A05 = (int) (10.0f * OY.A01);
    private static final int A04 = (int) (44.0f * OY.A01);

    public C0852Rj(Context context, KM km, String str, int i, int i2) {
        super(context, km, str);
        this.A01 = new ImageView(getContext());
        this.A01.setPadding(A05, A05, A05, A05);
        this.A01.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A01.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        this.A02 = new LinearLayout(getContext());
        this.A02.setOrientation(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 17;
        this.A00 = new HorizontalScrollView(getContext());
        this.A00.setHorizontalScrollBarEnabled(false);
        this.A00.setLayoutParams(layoutParams2);
        this.A00.addView(this.A02, layoutParams2);
        this.A03 = new LinearLayout(getContext());
        this.A03.setOrientation(0);
        OY.A0P(this.A03, -218103809);
        this.A03.setMotionEventSplittingEnabled(false);
        this.A03.addView(this.A01, layoutParams);
        this.A03.addView(this.A00, layoutParams2);
        addView(this.A03, new FrameLayout.LayoutParams(i, i2));
        this.A03.setClickable(true);
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0K() {
        this.A01.setImageBitmap(C0769Oe.A01(EnumC0768Od.CROSS));
        this.A01.setOnClickListener(new ViewOnClickListenerC0846Rd(this));
        RX rx = new RX(getContext());
        rx.setData(C02654j.A0B(getContext()), EnumC0768Od.HIDE_AD);
        rx.setOnClickListener(new ViewOnClickListenerC0847Re(this, rx));
        RX rx2 = new RX(getContext());
        rx2.setData(C02654j.A0F(getContext()), EnumC0768Od.REPORT_AD);
        rx2.setOnClickListener(new ViewOnClickListenerC0848Rf(this, rx2));
        RX rx3 = new RX(getContext());
        rx3.setData(C02654j.A0G(getContext()), EnumC0768Od.AD_CHOICES_ICON);
        rx3.setOnClickListener(new ViewOnClickListenerC0849Rg(this, rx3));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A06, A06, A06);
        OY.A0U(this.A03);
        this.A02.removeAllViews();
        this.A02.addView(rx, layoutParams);
        this.A02.addView(rx2, layoutParams);
        this.A02.addView(rx3, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0L() {
        OY.A0J(this);
        OY.A0L(this);
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0M(C02684m c02684m, EnumC02664k enumC02664k) {
        this.A01.setOnClickListener(null);
        TextView textView = new TextView(getContext());
        OY.A0Y(textView, true, 14);
        textView.setText(C02654j.A07(getContext()));
        textView.setGravity(17);
        OY.A0U(this.A03);
        this.A03.removeAllViews();
        this.A03.addView(textView, new LinearLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final void A0N(C02684m c02684m, EnumC02664k enumC02664k) {
        C0852Rj c0852Rj = this;
        OY.A0U(c0852Rj.A03);
        c0852Rj.A01.setImageBitmap(C0769Oe.A01(EnumC0768Od.BACK_ARROW));
        c0852Rj.A01.setOnClickListener(new ViewOnClickListenerC0850Rh(c0852Rj));
        c0852Rj.A02.removeAllViews();
        c0852Rj.A00.fullScroll(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A06, A06, A06);
        Iterator<C02684m> it = c02684m.A05().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0852Rj = c0852Rj;
                    layoutParams = layoutParams;
                    it = it;
                    C02684m next = it.next();
                    RX rx = new RX(c0852Rj.getContext());
                    rx.setData(next.A04(), null);
                    rx.setOnClickListener(new ViewOnClickListenerC0851Ri(c0852Rj, rx, next));
                    c0852Rj.A02.addView(rx, layoutParams);
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.RU
    public final boolean A0P() {
        return true;
    }
}
