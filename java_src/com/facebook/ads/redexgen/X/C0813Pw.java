package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Typeface;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0813Pw extends LinearLayout {
    private final LinearLayout A00;
    private static final int A01 = (int) (OY.A01 * 14.0f);
    private static final int A02 = (int) (OY.A01 * 4.0f);
    private static final int A04 = (int) (OY.A01 * 72.0f);
    private static final int A03 = (int) (OY.A01 * 8.0f);

    public C0813Pw(Context context, AnonymousClass31 anonymousClass31) {
        super(context);
        this.A00 = A01(anonymousClass31);
        A04();
    }

    public C0813Pw(Context context, C3D c3d) {
        super(context);
        this.A00 = A02(c3d);
        A04();
    }

    private LinearLayout A00(C02252v c02252v, String str, String str2) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(17);
        OY.A0P(linearLayout, 0);
        linearLayout.setOrientation(1);
        C0837Qu c0837Qu = new C0837Qu(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.setMargins(0, 0, 0, A01);
        linearLayout.addView(c0837Qu, layoutParams);
        char c = c02252v.A00() == EnumC02232t.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0837Qu = c0837Qu;
                    c0837Qu.setFullCircleCorners(true);
                    c = 3;
                    break;
                case 3:
                    C0813Pw c0813Pw = this;
                    LinearLayout linearLayout2 = linearLayout;
                    TextView textView = new TextView(c0813Pw.getContext());
                    textView.setTextColor(-1);
                    textView.setGravity(17);
                    textView.setTextSize(2, 18.0f);
                    textView.setText(c02252v.A08());
                    textView.setTypeface(Typeface.defaultFromStyle(1));
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 1;
                    layoutParams2.setMargins(0, 0, 0, A02);
                    linearLayout2.addView(textView);
                    TextView textView2 = new TextView(c0813Pw.getContext());
                    textView2.setTextColor(-1);
                    textView2.setGravity(17);
                    textView2.setTextSize(2, 14.0f);
                    textView2.setText(str);
                    linearLayout2.addView(textView2);
                    new SM(c0837Qu).A05(A04, A04).A07(str2);
                    return linearLayout2;
                case 4:
                    c0837Qu = c0837Qu;
                    c0837Qu.setRadius(A03);
                    c = 3;
                    break;
            }
        }
    }

    private LinearLayout A01(AnonymousClass31 anonymousClass31) {
        return A00(anonymousClass31.A0H().get(0).A04(), anonymousClass31.A0B().A03(), anonymousClass31.A0B().A01());
    }

    private LinearLayout A02(C3D c3d) {
        return A00(c3d.A0I(), c3d.A0N().A03(), c3d.A0N().A01());
    }

    private void A04() {
        OY.A0P(this, -1728053248);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(200L);
        new AnimationSet(true).addAnimation(alphaAnimation);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 2, 0.5f, 2, 0.5f);
        scaleAnimation.setStartOffset(200L);
        scaleAnimation.setDuration(300L);
        scaleAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        AnimationSet fadeAnimations = new AnimationSet(true);
        fadeAnimations.addAnimation(scaleAnimation);
        addView(this.A00, layoutParams);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 2, 0.5f, 2, 0.5f);
        scaleAnimation2.setStartOffset(1300L);
        scaleAnimation2.setDuration(300L);
        scaleAnimation2.setAnimationListener(new AnimationAnimationListenerC0812Pv(this));
        fadeAnimations.addAnimation(scaleAnimation2);
        this.A00.startAnimation(fadeAnimations);
    }
}
