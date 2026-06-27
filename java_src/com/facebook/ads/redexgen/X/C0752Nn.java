package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.NativeAd;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0752Nn extends LinearLayout {
    private static final int A00 = (int) (OY.A01 * 32.0f);
    private static final int A01 = (int) (OY.A01 * 8.0f);

    public C0752Nn(Context context, NativeAd nativeAd, LI li, C0837Qu c0837Qu, AdOptionsView adOptionsView) {
        super(context);
        setOrientation(0);
        c0837Qu.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A00, A00);
        layoutParams.gravity = 16;
        layoutParams.setMargins(0, 0, A01, 0);
        addView(c0837Qu, layoutParams);
        TextView textView = new TextView(context);
        li.A08(textView);
        textView.setMaxLines(1);
        textView.setText(nativeAd.getAdvertiserName());
        TextView textView2 = new TextView(context);
        li.A06(textView2);
        textView2.setMaxLines(1);
        textView2.setText(nativeAd.getSponsoredTranslation());
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        layoutParams2.gravity = 16;
        linearLayout.addView(textView, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(textView2, new LinearLayout.LayoutParams(-1, -2));
        addView(linearLayout, layoutParams2);
        addView((View) adOptionsView, new LinearLayout.LayoutParams(-2, -2));
    }
}
