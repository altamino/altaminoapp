package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Si, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0877Si extends LinearLayout {
    private int A00;
    private List<GradientDrawable> A01;
    private final int A02;
    private final int A03;
    private final int A04;

    public C0877Si(Context context, C02282y c02282y, int dotSize) {
        super(context);
        this.A00 = -1;
        setOrientation(0);
        setGravity(17);
        float f = OY.A01;
        int i = (int) (8.0f * f);
        int i2 = (int) (6.0f * f);
        this.A02 = (int) (1.0f * f);
        this.A04 = c02282y.A04(false);
        this.A03 = C02794x.A01(this.A04, 128);
        this.A01 = new ArrayList();
        for (int i3 = 0; i3 < dotSize; i3++) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setSize(i, i);
            gradientDrawable.setStroke(this.A02, 0);
            ImageView imageView = new ImageView(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, i2, 0);
            layoutParams.gravity = 17;
            imageView.setLayoutParams(layoutParams);
            imageView.setImageDrawable(gradientDrawable);
            this.A01.add(gradientDrawable);
            addView(imageView);
        }
        A00(0);
    }

    public final void A00(int borderColor) {
        C0877Si c0877Si = this;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        char c = c0877Si.A00 == borderColor ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0877Si = c0877Si;
                    c0877Si.A00 = borderColor;
                    i2 = 0;
                    c = 4;
                    break;
                case 4:
                    c0877Si = c0877Si;
                    if (i2 >= c0877Si.A01.size()) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (i2 != borderColor) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0877Si = c0877Si;
                    i = c0877Si.A04;
                    i3 = c0877Si.A04;
                    c = 7;
                    break;
                case 7:
                    c0877Si = c0877Si;
                    c0877Si.A01.get(i2).setStroke(c0877Si.A02, i3);
                    c0877Si.A01.get(i2).setColor(i);
                    c0877Si.A01.get(i2).invalidateSelf();
                    i2++;
                    c = 4;
                    break;
                case '\b':
                    c0877Si = c0877Si;
                    i = c0877Si.A03;
                    i3 = 0;
                    c = 7;
                    break;
            }
        }
    }
}
