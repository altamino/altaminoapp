package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Arrays;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class TS extends FrameLayout {
    private static byte[] A04;
    private static final int A05;
    private static final int A06;
    private static final int A07;
    private static final int A08;
    private static final int A09;
    public static final int A0A;
    private final int A00;
    private final RelativeLayout A01;
    private final ViewOnClickListenerC0869Sa A02;
    private final T0 A03;

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A04 = new byte[]{8, 4, 6, 69, 13, 10, 8, 14, 9, 4, 4, 0, 69, 10, 15, 24, 69, 2, 5, 31, 14, 25, 24, 31, 2, 31, 2, 10, 7, 69, 8, 7, 2, 8, 0, 14, 15};
    }

    static {
        A01();
        A08 = (int) (OY.A01 * 36.0f);
        A09 = (int) (OY.A01 * 36.0f);
        A05 = (int) (OY.A01 * 23.0f);
        A07 = (int) (OY.A01 * 8.0f);
        A06 = (int) (OY.A01 * 3.0f);
        A0A = (int) (4.0f * OY.A01);
    }

    public TS(T0 t0, String str, C02282y c02282y, SX sx) {
        super(t0.A02());
        this.A03 = t0;
        this.A00 = c02282y.A08(true);
        this.A01 = new RelativeLayout(t0.A02());
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        this.A01.setClickable(false);
        A03(str, c02282y, K1.A1n(this.A03.A02()));
        this.A02 = new ViewOnClickListenerC0869Sa(t0.A02(), A00(0, 37, 124), null, t0.A06(), t0.A08(), t0.A0C(), t0.A07());
        this.A02.setCta(t0.A05().A0H().get(0).A05(), t0.A05().A0D(), new HashMap(), sx);
        this.A02.setIsInAppBrowser(true);
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A02(View view, boolean z) {
        TS ts = this;
        RelativeLayout.LayoutParams layoutParams = null;
        int i = 0;
        ImageView imageView = new ImageView(ts.A03.A02());
        imageView.setImageBitmap(C0769Oe.A01(EnumC0768Od.MINIMIZE_ARROW));
        imageView.setRotation(180.0f);
        imageView.setClickable(false);
        char c = z ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    ts = ts;
                    imageView = imageView;
                    imageView.setColorFilter(ts.A00);
                    c = 3;
                    break;
                case 3:
                    imageView = imageView;
                    layoutParams = new RelativeLayout.LayoutParams(A05, A05);
                    imageView.setPadding(A06, A06, A06, A06);
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    RelativeLayout.LayoutParams layoutParams2 = layoutParams;
                    layoutParams2.bottomMargin = i;
                    layoutParams2.addRule(2, view.getId());
                    layoutParams2.addRule(14);
                    ts.A01.addView(imageView, layoutParams2);
                    return;
                case 5:
                    i = A07;
                    c = 4;
                    break;
                case 6:
                    ts = ts;
                    imageView = imageView;
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setColor(ts.A00);
                    gradientDrawable.setShape(1);
                    imageView.setBackgroundDrawable(gradientDrawable);
                    c = 3;
                    break;
            }
        }
    }

    private void A03(String str, C02282y c02282y, boolean z) {
        TS ts = this;
        TextView button = null;
        char c = z ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    ts = ts;
                    button = new Button(ts.A03.A02());
                    c = 3;
                    break;
                case 3:
                    button = button;
                    OY.A0N(button);
                    button.setPadding(A09, 0, A09, 0);
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    str = str.toUpperCase();
                    c = 5;
                    break;
                case 5:
                    str = str;
                    button = button;
                    button.setText(str);
                    button.setTextSize(14.0f);
                    button.setTypeface(Typeface.defaultFromStyle(1));
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    ts = ts;
                    button = button;
                    OY.A0R(button, ts.A00, A0A);
                    button.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    c = 7;
                    break;
                case 7:
                    TS ts2 = ts;
                    TextView textView = button;
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, A08);
                    layoutParams.addRule(12);
                    layoutParams.addRule(14);
                    ts2.A01.addView(textView, layoutParams);
                    ts2.A02(textView, z);
                    return;
                case '\b':
                    ts = ts;
                    button = button;
                    button.setTextColor(ts.A00);
                    c = 7;
                    break;
                case '\t':
                    ts = ts;
                    button = new TextView(ts.A03.A02());
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        return this.A02.performClick();
    }
}
