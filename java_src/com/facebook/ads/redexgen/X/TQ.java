package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class TQ extends RelativeLayout {
    private final View A00;
    private final C0878Sj A01;

    public TQ(Context context, View view) {
        super(context);
        this.A00 = view;
        this.A01 = new C0878Sj(context);
        OY.A0N(this.A01);
    }

    public final void A00(int i) {
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, i));
    }

    public final void A01(@Nullable View view, @Nullable View view2, int i, @Nullable C0883So c0883So, boolean z) {
        TQ tq = this;
        RelativeLayout.LayoutParams layoutParams = null;
        LinearLayout linearLayout = null;
        tq.A01.addView(tq.A00, new RelativeLayout.LayoutParams(-1, -2));
        char c = view2 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    tq = tq;
                    view2 = view2;
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(AbstractC0888St.A05, AbstractC0888St.A05);
                    layoutParams2.addRule(i, tq.A00.getId());
                    layoutParams2.addRule(7, tq.A00.getId());
                    layoutParams2.setMargins(AbstractC0888St.A04, AbstractC0888St.A04, AbstractC0888St.A04, AbstractC0888St.A04);
                    tq.A01.addView(view2, layoutParams2);
                    c = 3;
                    break;
                case 3:
                    tq = tq;
                    c0883So = c0883So;
                    linearLayout = new LinearLayout(tq.getContext());
                    linearLayout.setOrientation(1);
                    layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(8, tq.A00.getId());
                    if (c0883So == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (!z) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0883So = c0883So;
                    linearLayout = linearLayout;
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                    c0883So.setAlignment(3);
                    layoutParams3.setMargins(AbstractC0888St.A04 / 2, AbstractC0888St.A04 / 2, AbstractC0888St.A04 / 2, AbstractC0888St.A04 / 2);
                    linearLayout.addView(c0883So, layoutParams3);
                    GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{-1778384896, 0});
                    gradientDrawable.setCornerRadius(0.0f);
                    gradientDrawable.setGradientType(0);
                    OY.A0S(linearLayout, gradientDrawable);
                    c = 6;
                    break;
                case 6:
                    view = view;
                    if (view == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    view = view;
                    linearLayout = linearLayout;
                    linearLayout.addView(view, new RelativeLayout.LayoutParams(-1, -2));
                    c = '\b';
                    break;
                case '\b':
                    TQ tq2 = tq;
                    tq2.A01.addView(linearLayout, layoutParams);
                    tq2.addView(tq2.A01, new RelativeLayout.LayoutParams(-1, -2));
                    return;
                case '\t':
                    tq = tq;
                    c0883So = c0883So;
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams4.addRule(3, tq.A01.getId());
                    layoutParams4.setMargins(0, AbstractC0888St.A04, 0, 0);
                    c0883So.setAlignment(17);
                    tq.addView(c0883So, layoutParams4);
                    c = 6;
                    break;
            }
        }
    }
}
