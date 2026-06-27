package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.widget.Button;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class SZ extends Button {
    public static final int A0A = (int) (16.0f * OY.A01);
    private static final int A0B = (int) (4.0f * OY.A01);
    private int A00;
    private int A01;
    private boolean A02;
    private boolean A03;
    private final float A04;
    private final int A05;
    private final C02282y A06;
    private final Runnable A07;
    private final Runnable A08;
    private final Runnable A09;

    public SZ(Context context, C02282y c02282y) {
        super(context);
        this.A01 = 0;
        this.A00 = 0;
        this.A02 = true;
        this.A03 = false;
        this.A07 = new RunnableC0872Sd(this);
        this.A09 = new RunnableC0873Se(this);
        this.A08 = new RunnableC0874Sf(this);
        this.A06 = c02282y;
        this.A05 = K1.A09(context);
        this.A04 = K1.A00(context);
        OY.A0Y(this, false, 16);
        setGravity(17);
        setPadding(A0A, A0A, A0A, A0A);
        A04();
    }

    private void A04() {
        SZ sz = this;
        int i = 0;
        int i2 = 0;
        char c = sz.A06 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    sz = sz;
                    sz.A00 = sz.A06.A08(sz.A03);
                    sz.A01 = sz.A06.A09(sz.A03);
                    c = 3;
                    break;
                case 3:
                    sz = sz;
                    i2 = sz.A00;
                    if (!sz.A02) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i = A0B;
                    c = 5;
                    break;
                case 5:
                    SZ sz2 = sz;
                    OY.A0R(sz2, i2, i);
                    sz2.setTextColor(sz2.A01);
                    return;
                case 6:
                    i = 0;
                    c = 5;
                    break;
            }
        }
    }

    private void A05() {
        SZ sz = this;
        char c = sz.A05 < 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    sz = sz;
                    if (!K1.A1m(sz.getContext())) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (Build.VERSION.SDK_INT < 16) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    sz = sz;
                    sz.postDelayed(sz.A07, sz.A05);
                    c = 2;
                    break;
                case 6:
                    sz = sz;
                    sz.postDelayed(sz.A08, sz.A05);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        A05();
    }

    public void setRoundedCornersEnabled(boolean z) {
        this.A02 = z;
        A04();
    }

    public void setText(String str) {
        super.setText((CharSequence) str.toUpperCase(Locale.US));
    }

    public void setViewShowsOverMedia(boolean z) {
        this.A03 = z;
        A04();
    }
}
