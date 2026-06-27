package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0875Sg extends LinearLayout {
    private static byte[] A04;
    private View A00;
    private LinearLayout A01;
    private TextView A02;
    private C0871Sc A03;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 71);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{-17, -19, -8, -8, -21, 0, -5, -21, -19, -17, 0, -11, -5, -6};
    }

    public C0875Sg(Context context, L8 l8, LI li, View view, AdOptionsView adOptionsView, boolean z, int i) {
        super(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        setVerticalGravity(16);
        setOrientation(1);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density));
        linearLayout.setLayoutParams(layoutParams);
        addView(linearLayout);
        this.A01 = new LinearLayout(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        this.A01.setOrientation(0);
        this.A01.setGravity(16);
        layoutParams2.weight = 3.0f;
        this.A01.setLayoutParams(layoutParams2);
        linearLayout.addView(this.A01);
        this.A00 = view;
        int iA00 = A00(z, i);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(Math.round(iA00 * displayMetrics.density), Math.round(iA00 * displayMetrics.density));
        int iconSize = Math.round(15.0f * displayMetrics.density);
        layoutParams3.setMargins(0, 0, iconSize, 0);
        this.A00.setLayoutParams(layoutParams3);
        this.A01.addView(this.A00);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        this.A01.addView(linearLayout2);
        this.A03 = new C0871Sc(getContext(), l8, li, adOptionsView);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.setMargins(0, 0, Math.round(15.0f * displayMetrics.density), 0);
        layoutParams4.weight = 0.5f;
        this.A03.setLayoutParams(layoutParams4);
        linearLayout2.addView(this.A03);
        this.A02 = new TextView(getContext());
        this.A02.setPadding(Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density));
        this.A02.setText(l8.A12(A01(0, 14, 69)));
        this.A02.setTextSize(14.0f);
        this.A02.setMaxLines(2);
        this.A02.setEllipsize(TextUtils.TruncateAt.END);
        this.A02.setGravity(17);
        li.A05(this.A02);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.weight = 0.25f;
        this.A02.setLayoutParams(layoutParams5);
        if (!l8.hasCallToAction()) {
            this.A02.setVisibility(4);
        }
        linearLayout2.addView(this.A02);
        if (z) {
            R1 r1 = new R1(getContext());
            r1.setText(l8.getAdBodyText());
            li.A06(r1);
            r1.setMinTextSize(13.0f);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams6.weight = 1.0f;
            r1.setLayoutParams(layoutParams6);
            r1.setGravity(80);
            linearLayout.addView(r1);
        }
    }

    private int A00(boolean z, int i) {
        int i2 = 0;
        int i3 = i - 30;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i2 = 1;
                    c = 3;
                    break;
                case 3:
                    double d = 3.0d / (i2 + 3);
                    double totalWeight = i3;
                    return (int) (totalWeight * d);
                case 4:
                    i2 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public TextView getCallToActionView() {
        return this.A02;
    }

    public View getIconView() {
        return this.A00;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int visibleTitleChars, int i) {
        super.onMeasure(visibleTitleChars, i);
        if (this.A03.getTitleTextView().getLayout().getLineEnd(r0.getLineCount() - 1) < this.A03.getMinVisibleTitleCharacters()) {
            this.A01.removeView(this.A00);
            super.onMeasure(visibleTitleChars, i);
        }
    }
}
