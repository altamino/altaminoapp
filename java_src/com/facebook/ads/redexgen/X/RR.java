package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class RR extends RelativeLayout {
    private final int A00;
    private final int A01;

    @Nullable
    private final RS A02;
    private final boolean A03;
    private static final int A07 = (int) (OY.A01 * 16.0f);
    private static final int A08 = (int) (8.0f * OY.A01);
    private static final int A0B = (int) (44.0f * OY.A01);
    private static final int A06 = (int) (10.0f * OY.A01);
    private static final int A05 = A07 - A06;
    private static final int A0C = (int) (75.0f * OY.A01);
    private static final int A09 = (int) (25.0f * OY.A01);
    private static final int A0D = (int) (45.0f * OY.A01);
    private static final int A0A = (int) (15.0f * OY.A01);
    private static final int A04 = (int) (OY.A01 * 16.0f);

    private RR(RQ rq) {
        super(rq.A0C);
        this.A02 = rq.A02;
        this.A01 = rq.A0B ? A0C : A0D;
        this.A00 = rq.A0B ? A09 : A0A;
        this.A03 = rq.A07;
        setClickable(true);
        View viewA01 = A01(rq);
        View viewA00 = A00(rq);
        View footerView = getFooterView();
        OY.A0N(viewA01);
        OY.A0N(viewA00);
        OY.A0N(footerView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        layoutParams2.addRule(3, viewA01.getId());
        layoutParams2.addRule(2, footerView.getId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        layoutParams3.setMargins(A07, 0, A07, A07);
        addView(viewA01, layoutParams);
        addView(viewA00, layoutParams2);
        addView(footerView, layoutParams3);
        footerView.setVisibility(rq.A08 ? 0 : 8);
    }

    public /* synthetic */ RR(RQ rq, RO ro) {
        this(rq);
    }

    private View A00(RQ rq) {
        ImageView imageView = new ImageView(getContext());
        imageView.setPadding(this.A00, this.A00, this.A00, this.A00);
        imageView.setImageBitmap(C0769Oe.A01(rq.A01));
        imageView.setColorFilter(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.A01, this.A01);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(rq.A00);
        OY.A0S(imageView, gradientDrawable);
        layoutParams.gravity = 17;
        layoutParams.setMargins(A07, 0, A07, A07);
        TextView textView = new TextView(getContext());
        OY.A0Y(textView, true, 20);
        textView.setTextColor(-14934495);
        textView.setText(rq.A06);
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(A07, 0, A07, A07);
        TextView textView2 = new TextView(getContext());
        OY.A0Y(textView2, false, 16);
        textView2.setTextColor(-10459280);
        textView2.setText(rq.A05);
        textView2.setGravity(17);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(A07, 0, A07, A07);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        linearLayout.addView(textView2, layoutParams3);
        if (rq.A09) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            if (!TextUtils.isEmpty(rq.A04)) {
                C0837Qu c0837Qu = new C0837Qu(getContext());
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(A0D, A0D);
                layoutParams4.setMargins(0, 0, A08, 0);
                c0837Qu.setFullCircleCorners(true);
                new SM(c0837Qu).A05(A0D, A0D).A07(rq.A04);
                linearLayout2.addView(c0837Qu, layoutParams4);
            }
            RX rx = new RX(getContext());
            rx.setData(rq.A03, EnumC0768Od.CHECKMARK);
            rx.setSelected(true);
            linearLayout2.addView(rx, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }

    private View A01(RQ rq) {
        LinearLayout headerView = new LinearLayout(getContext());
        headerView.setOrientation(0);
        if (rq.A0A) {
            ImageView imageView = new ImageView(getContext());
            imageView.setPadding(A06, A06, A06, A06);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setImageBitmap(C0769Oe.A01(EnumC0768Od.CROSS));
            imageView.setOnClickListener(new RO(this));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A0B, A0B);
            layoutParams.setMargins(A05, A05, A05, A05);
            headerView.addView(imageView, layoutParams);
        }
        return headerView;
    }

    private View getFooterView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(C0769Oe.A01(EnumC0768Od.SETTINGS));
        imageView.setColorFilter(-13272859);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 17;
        TextView textView = new TextView(getContext());
        OY.A0Y(textView, false, 16);
        textView.setTextColor(-13272859);
        textView.setPadding(A08, A08, A08, A08);
        textView.setText(C02654j.A0D(getContext()));
        LinearLayout.LayoutParams settingsIconParams = new LinearLayout.LayoutParams(-2, -2);
        settingsIconParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new RP(this));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, settingsIconParams);
        return linearLayout;
    }
}
