package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class RN extends RelativeLayout {
    private LinearLayout A00;
    private C0837Qu A01;
    private C0883So A02;
    private final C3B A03;
    private static final int A05 = (int) (OY.A01 * 16.0f);
    private static final int A06 = (int) (OY.A01 * 16.0f);
    public static final int A04 = (int) (72.0f * OY.A01);
    private static final RelativeLayout.LayoutParams A07 = new RelativeLayout.LayoutParams(-1, -1);

    public RN(Context context, C3B c3b) {
        super(context);
        this.A03 = c3b;
        A00();
        A01();
    }

    private void A00() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(17);
        linearLayout.setOrientation(1);
        this.A01 = new C0837Qu(getContext());
        OY.A0P(this.A01, 0);
        this.A01.setRadius(50);
        new SM(this.A01).A04().A07(this.A03.A09().A01());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        this.A02 = new C0883So(getContext(), this.A03.A05().A01(), true, false, true);
        this.A02.A00(this.A03.A07().A08(), this.A03.A07().A07(), null, false, true);
        this.A02.getDescriptionTextView().setAlpha(0.8f);
        this.A02.setAlignment(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, A06, 0, A06 / 2);
        this.A00 = new LinearLayout(getContext());
        this.A00.setGravity(17);
        this.A00.setPadding(A06, A06 / 2, A06, A06 / 2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(0, A06 / 2, 0, 0);
        C3A c3aA05 = this.A03.A06().A05();
        TextView textView = new TextView(getContext());
        textView.setTextColor(-1);
        OY.A0Y(textView, false, 16);
        textView.setText(c3aA05.A0F());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        ImageView imageView = new ImageView(getContext());
        new SM(imageView).A04().A06(new RW(imageView)).A07(c3aA05.A0D());
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(A05, A05);
        layoutParams5.setMargins(0, 0, A06 / 2, 0);
        this.A00.addView(imageView, layoutParams5);
        this.A00.addView(textView, layoutParams4);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(100.0f);
        gradientDrawable.setColor(469762047);
        OY.A0S(this.A00, gradientDrawable);
        linearLayout.addView(this.A01, layoutParams);
        linearLayout.addView(this.A02, layoutParams2);
        linearLayout.addView(this.A00, layoutParams3);
        OY.A0P(this, -14473425);
        addView(linearLayout, A07);
    }

    private void A01() {
        A02(this.A01, 150);
        A02(this.A02, 170);
        A02(this.A00, 190);
    }

    private void A02(View view, int i) {
        view.setTranslationY(i);
        view.setScaleY(0.75f);
        view.setScaleX(0.75f);
        view.animate().translationYBy(-i).scaleX(1.0f).scaleY(1.0f).setDuration(200L).setInterpolator(new DecelerateInterpolator(2.0f));
    }
}
