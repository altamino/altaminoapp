package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0879Sk extends LinearLayout {
    private static final int A05 = (int) (4.0f * OY.A01);
    private int A00;
    private final int A01;
    private final int A02;
    private final int A03;
    private final C0880Sl[] A04;

    public C0879Sk(Context context, int i, int i2, int i3, int i4) {
        super(context);
        this.A00 = A05;
        setOrientation(0);
        this.A03 = i;
        this.A01 = i3;
        this.A02 = i4;
        this.A04 = new C0880Sl[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            this.A04[i5] = A00();
            addView(this.A04[i5]);
        }
        A01();
    }

    private C0880Sl A00() {
        C0880Sl c0880Sl = new C0880Sl(getContext(), this.A01, this.A02);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.A03, this.A03);
        layoutParams.gravity = 16;
        c0880Sl.setLayoutParams(layoutParams);
        return c0880Sl;
    }

    private void A01() {
        C0879Sk c0879Sk = this;
        LinearLayout.LayoutParams layoutParams = null;
        int i = 0;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0879Sk = c0879Sk;
                    if (i2 >= c0879Sk.A04.length) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0879Sk = c0879Sk;
                    layoutParams = (LinearLayout.LayoutParams) c0879Sk.A04[i2].getLayoutParams();
                    if (i2 != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    layoutParams = layoutParams;
                    layoutParams.leftMargin = i;
                    i2++;
                    c = 2;
                    break;
                case 6:
                    c0879Sk = c0879Sk;
                    i = c0879Sk.A00;
                    c = 5;
                    break;
                case 7:
                    c0879Sk.requestLayout();
                    return;
            }
        }
    }

    private void A02(float f) {
        C0879Sk c0879Sk = this;
        float fMin = 0.0f;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0879Sk = c0879Sk;
                    if (i >= c0879Sk.A04.length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    fMin = Math.min(1.0f, f - i);
                    if (fMin >= 0.0f) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    fMin = 0.0f;
                    c = 5;
                    break;
                case 5:
                    c0879Sk = c0879Sk;
                    c0879Sk.A04[i].setFillRatio(fMin);
                    i++;
                    c = 2;
                    break;
                case 6:
                    return;
            }
        }
    }

    public void setItemSpacing(int i) {
        this.A00 = i;
        A01();
    }

    public void setRating(float f) {
        A02(f);
    }
}
