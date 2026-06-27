package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class R8 extends LinearLayout {
    public int A00;
    private String A01;
    public final C0870Sb A02;
    private final FrameLayout A03;
    private final ImageView A04;
    private final TextView A05;
    private static final int A08 = (int) (50.0f * OY.A01);
    private static final int A06 = (int) (10.0f * OY.A01);
    private static final int A07 = (int) (OY.A01 * 20.0f);
    private static final int A0A = (int) (6.0f * OY.A01);
    private static final int A09 = (int) (OY.A01 * 20.0f);

    public R8(Context context, int i) {
        super(context);
        this.A04 = new ImageView(context);
        this.A02 = new C0870Sb(context);
        this.A02.setProgress(0.0f);
        this.A05 = new TextView(context);
        setOrientation(0);
        setPadding(A06, A06, A06, A06);
        this.A03 = new FrameLayout(context);
        this.A00 = i;
        A00();
    }

    private void A00() {
        setToolbarActionMode(this.A00);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A07, A07);
        OY.A0Y(this.A05, true, 16);
        this.A05.setTextColor(-1);
        this.A05.setVisibility(8);
        this.A03.addView(this.A04, layoutParams2);
        this.A03.addView(this.A02, layoutParams2);
        addView(this.A03, layoutParams);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        layoutParams3.setMargins(A0A, 0, 0, 0);
        addView(this.A05, layoutParams3);
        A01(this, false);
    }

    private static void A01(View view, boolean z) {
        float f = 0.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    f = A08;
                    c = 3;
                    break;
                case 3:
                    GradientDrawable gradientDrawable2 = gradientDrawable;
                    gradientDrawable2.setCornerRadius(f);
                    gradientDrawable2.setColor(ViewCompat.MEASURED_STATE_MASK);
                    OY.A0S(view, gradientDrawable2);
                    return;
                case 4:
                    f = A09;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A02() {
        R8 r8 = this;
        boolean z = false;
        char c = r8.A00 != 2 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    r8 = r8;
                    if (r8.A00 == 4) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public void setActionClickListener(View.OnClickListener onClickListener) {
        setOnClickListener(onClickListener);
    }

    public void setColors(int i) {
        this.A02.A02(C02794x.A01(i, 77), i);
        this.A04.setColorFilter(i);
    }

    public void setInitialUnskippableSeconds(int i) {
        if (i > 0) {
            setToolbarActionMode(2);
        }
    }

    public void setProgress(float f) {
        this.A02.setProgressWithAnimation(f);
    }

    public void setSkipMessage(String str) {
        this.A01 = str;
    }

    public void setToolbarActionMode(int i) {
        R8 r8 = this;
        int i2 = 0;
        ImageView imageView = null;
        int i3 = 0;
        r8.A00 = i;
        EnumC0768Od enumC0768Od = EnumC0768Od.CROSS;
        C0870Sb c0870Sb = r8.A02;
        char c = i == 2 ? (char) 2 : '\r';
        while (true) {
            switch (c) {
                case 2:
                    i2 = 0;
                    c = 3;
                    break;
                case 3:
                    r8 = r8;
                    c0870Sb = c0870Sb;
                    c0870Sb.setVisibility(i2);
                    imageView = r8.A04;
                    if (i != 2) {
                        c = '\f';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i3 = 8;
                    c = 5;
                    break;
                case 5:
                    r8 = r8;
                    imageView = imageView;
                    imageView.setVisibility(i3);
                    r8.setVisibility(0);
                    switch (i) {
                        case 0:
                            c = 7;
                            break;
                        case 1:
                            c = '\t';
                            break;
                        case 2:
                            c = 6;
                            break;
                        case 3:
                            c = '\b';
                            break;
                        case 4:
                            c = 11;
                            break;
                        default:
                            c = 6;
                            break;
                    }
                case 6:
                    R8 r82 = r8;
                    r82.A04.setImageBitmap(C0769Oe.A01(enumC0768Od));
                    OY.A0H(1002, r82.A04);
                    return;
                case 7:
                    enumC0768Od = EnumC0768Od.CROSS;
                    c = 6;
                    break;
                case '\b':
                    enumC0768Od = EnumC0768Od.MINIMIZE_ARROW;
                    c = 6;
                    break;
                case '\t':
                    r8 = r8;
                    enumC0768Od = EnumC0768Od.SKIP_ARROW;
                    if (!TextUtils.isEmpty(r8.A05.getText())) {
                        c = 6;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    r8 = r8;
                    r8.setToolbarMessage(r8.A01);
                    c = 6;
                    break;
                case 11:
                    r8 = r8;
                    r8.A04.setVisibility(8);
                    r8.setVisibility(8);
                    c = 6;
                    break;
                case '\f':
                    i3 = 0;
                    c = 5;
                    break;
                case '\r':
                    i2 = 8;
                    c = 3;
                    break;
            }
        }
    }

    public void setToolbarMessage(String str) {
        R8 r8 = this;
        boolean z = false;
        TextView textView = null;
        int i = 0;
        r8.A05.setText(str);
        char c = !TextUtils.isEmpty(str) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    r8 = r8;
                    str = str;
                    A01(r8, z);
                    textView = r8.A05;
                    if (!TextUtils.isEmpty(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i = 8;
                    c = 5;
                    break;
                case 5:
                    textView.setVisibility(i);
                    return;
                case 6:
                    i = 0;
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
