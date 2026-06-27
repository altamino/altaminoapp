package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.api.AdNativeComponentView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class PR extends AdNativeComponentView {
    private final LinearLayout A00;
    private final RelativeLayout A01;
    private final RelativeLayout A02;
    private final TextView A03;
    private final TextView A04;
    private final TextView A05;
    private final LI A06;
    private final C0838Qv A07;
    public static final int A08 = ((int) OY.A01) * 500;
    private static final int A0G = (int) (OY.A01 * 500.0f);
    private static final int A0C = (int) (OY.A01 * 4.0f);
    private static final int A0A = (int) (OY.A01 * 8.0f);
    private static final int A0F = (int) (OY.A01 * 8.0f);
    private static final int A0D = (int) (OY.A01 * 4.0f);
    private static final int A0B = (int) OY.A01;
    private static final int A0E = (int) (OY.A01 * 4.0f);
    private static final int A09 = (int) (OY.A01 * 0.5d);

    public PR(Context context, LI li) {
        super(context);
        this.A06 = li;
        this.A05 = new TextView(context);
        this.A04 = new TextView(context);
        this.A03 = new TextView(context);
        this.A02 = new RelativeLayout(context);
        this.A00 = new LinearLayout(context);
        this.A01 = new RelativeLayout(context);
        this.A07 = new C0838Qv(context);
        A09();
        A0D();
        A05();
        A0A();
        A00();
        A0B();
        A03();
        A0A();
        A08();
        A0C();
    }

    private void A00() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.weight = 1.0f;
        layoutParams.gravity = 1;
        this.A00.addView(this.A01, layoutParams);
    }

    private void A01() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A04.getId());
        OY.A0L(this.A03);
        this.A02.addView(this.A03, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        this.A02.setBackgroundDrawable(null);
        this.A02.setPadding(A0F, A0F, A0F, A0F);
        OY.A0L(this.A02);
        this.A00.addView(this.A02, layoutParams2);
    }

    private void A02() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(A0A, A0C, A0A, A0C);
        OY.A0L(this.A03);
        this.A00.addView(this.A03, layoutParams);
    }

    private void A03() {
        this.A01.addView(this.A07, new LinearLayout.LayoutParams(-2, -1));
    }

    private void A04() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(8, this.A07.getId());
        layoutParams.addRule(5, this.A07.getId());
        layoutParams.addRule(7, this.A07.getId());
        this.A02.setPadding(A0F, 0, A0F, 0);
        this.A02.setBackgroundDrawable(new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{-872415232, 0}));
        OY.A0L(this.A02);
        this.A01.addView(this.A02, layoutParams);
    }

    private void A05() {
        addView(this.A00, new LinearLayout.LayoutParams(-2, -2));
    }

    private void A06() {
        this.A05.setTextColor(-1);
        this.A04.setTextColor(-1);
        this.A03.setTextColor(this.A06.A03());
    }

    private void A07() {
        this.A07.setMaxWidth(A0G);
        this.A05.setTextColor(this.A06.A04(0.2f));
        this.A04.setTextColor(this.A06.A04(0.4f));
        this.A03.setTextColor(this.A06.A03());
        ((LinearLayout.LayoutParams) this.A01.getLayoutParams()).gravity = 1;
    }

    private void A08() {
        this.A03.setPadding(A0B, A0B, A0B, A0B);
        this.A03.setTextSize(14.0f);
        OY.A0N(this.A03);
    }

    private void A09() {
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -1));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.A06.A01());
        gradientDrawable.setCornerRadius(A0E);
        gradientDrawable.setStroke(1, this.A06.A02());
        setBackgroundDrawable(gradientDrawable);
        setPadding(A09, A09, A09, A09);
    }

    private void A0A() {
        OY.A0N(this.A01);
    }

    private void A0B() {
        this.A07.setScaleType(ImageView.ScaleType.FIT_XY);
        this.A07.setRadius(new float[]{A0E, A0E, A0E, A0E, 0.0f, 0.0f, 0.0f, 0.0f});
        this.A07.setAdjustViewBounds(true);
        EnumC0759Nu.A04(this.A07, EnumC0759Nu.A0A);
        OY.A0N(this.A07);
    }

    private void A0C() {
        OY.A0N(this.A02);
        this.A05.setTextSize(14.0f);
        OY.A0N(this.A05);
        this.A05.setMaxLines(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, 0, A0D);
        this.A02.addView(this.A05, layoutParams);
        this.A04.setTextSize(12.0f);
        OY.A0N(this.A04);
        this.A04.setMaxLines(1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(3, this.A05.getId());
        layoutParams2.setMargins(0, 0, 0, A0D);
        this.A02.addView(this.A04, layoutParams2);
    }

    private void A0D() {
        this.A00.setOrientation(1);
        OY.A0N(this.A00);
    }

    public View getAdContentsView() {
        return this.A07;
    }

    public ImageView getImageCardView() {
        return this.A07;
    }

    public final void onMeasure(int i, int i2) {
        PR pr = this;
        char c = View.MeasureSpec.getSize(i2) < ((int) OY.A01) * K1.A0K(pr.getContext()) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (View.MeasureSpec.getMode(i2) != 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    pr = pr;
                    pr.A01();
                    pr.A07();
                    c = 4;
                    break;
                case 4:
                    super.onMeasure(i, i2);
                    return;
                case 5:
                    pr = pr;
                    pr.A02();
                    pr.A04();
                    pr.A06();
                    c = 4;
                    break;
            }
        }
    }

    public void setButtonText(String str) {
        PR pr = this;
        char c = str != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!str.trim().isEmpty()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    pr = pr;
                    pr.A03.setVisibility(8);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    pr = pr;
                    str = str;
                    SpannableString spannableString = new SpannableString(str);
                    spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
                    pr.A03.setText(spannableString);
                    c = 4;
                    break;
            }
        }
    }

    public void setSubtitle(String str) {
        PR pr = this;
        char c = str != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!str.trim().isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    pr = pr;
                    pr.A04.setVisibility(8);
                    c = 4;
                    break;
                case 4:
                    pr.A04.setText(str);
                    return;
            }
        }
    }

    public void setTitle(String str) {
        PR pr = this;
        char c = str != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!str.trim().isEmpty()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    pr = pr;
                    pr.A05.setVisibility(8);
                    c = 4;
                    break;
                case 4:
                    pr.A05.setText(str);
                    return;
            }
        }
    }
}
