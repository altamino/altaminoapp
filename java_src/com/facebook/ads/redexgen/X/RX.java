package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.Nullable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class RX extends LinearLayout {
    private boolean A00;
    private final ImageView A01;
    private final TextView A02;
    private static final int A04 = (int) (OY.A01 * 16.0f);
    private static final int A05 = (int) (OY.A01 * 12.0f);
    private static final int A06 = (int) (OY.A01 * 12.0f);
    private static final int A03 = (int) (OY.A01 * 16.0f);

    public RX(Context context) {
        super(context);
        this.A00 = false;
        setOrientation(0);
        setPadding(A04, A05, A04, A05);
        this.A01 = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
        layoutParams.gravity = 17;
        this.A02 = new TextView(getContext());
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        addView(this.A01, layoutParams);
        addView(this.A02, layoutParams2);
        A00();
    }

    private void A00() {
        RX rx = this;
        int i = 0;
        int i2 = 0;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        char c = rx.A00 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    i = -13272859;
                    c = 3;
                    break;
                case 3:
                    rx = rx;
                    gradientDrawable = gradientDrawable;
                    gradientDrawable.setColor(i);
                    gradientDrawable.setCornerRadius(50.0f);
                    OY.A0S(rx, gradientDrawable);
                    OY.A0Y(rx.A02, false, 14);
                    if (!rx.A00) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i2 = -1;
                    c = 5;
                    break;
                case 5:
                    RX rx2 = rx;
                    rx2.A02.setTextColor(i2);
                    rx2.A01.setColorFilter(i2);
                    return;
                case 6:
                    i2 = -10459280;
                    c = 5;
                    break;
                case 7:
                    i = -1315344;
                    c = 3;
                    break;
            }
        }
    }

    public final void A01() {
        boolean z = false;
        char c = !this.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    setSelected(z);
                    return;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public void setData(String str, @Nullable EnumC0768Od enumC0768Od) {
        RX rx = this;
        rx.A02.setText(str);
        char c = enumC0768Od != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    rx = rx;
                    enumC0768Od = enumC0768Od;
                    rx.A01.setImageBitmap(C0769Oe.A01(enumC0768Od));
                    rx.A01.setVisibility(0);
                    rx.A02.setPadding(A06, 0, 0, 0);
                    c = 3;
                    break;
                case 3:
                    rx.A00();
                    return;
                case 4:
                    rx = rx;
                    rx.A01.setVisibility(8);
                    rx.A02.setPadding(0, 0, 0, 0);
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.A00 = z;
        A00();
    }
}
