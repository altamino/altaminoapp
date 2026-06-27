package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class QN extends RelativeLayout {

    @Nullable
    private TextView A00;
    public final Button A01;
    public final Button A02;
    private final ImageView A03;
    private final LinearLayout A04;
    private final TextView A05;
    private static final int A08 = (int) (60.0f * OY.A01);
    private static final int A07 = (int) (8.0f * OY.A01);
    private static final int A09 = (int) (16.0f * OY.A01);
    private static final int A0A = (int) (24.0f * OY.A01);
    private static final int A06 = (int) (12.0f * OY.A01);

    public QN(Context context, int i, int i2, String str, @Nullable String str2, String str3, String str4, Bitmap bitmap) {
        super(context);
        this.A05 = new TextView(context);
        this.A02 = new Button(context);
        this.A01 = new Button(context);
        this.A03 = new ImageView(context);
        this.A04 = new LinearLayout(context);
        if (!TextUtils.isEmpty(str2)) {
            this.A00 = new TextView(context);
        }
        this.A05.setText(str);
        this.A05.setTextColor(i);
        OY.A0Y(this.A05, true, 20);
        if (this.A00 != null) {
            this.A00.setText(str2);
            this.A00.setTextColor(i);
            OY.A0Y(this.A00, false, 18);
        }
        this.A03.setImageBitmap(bitmap);
        this.A03.setColorFilter(i);
        this.A02.setText(str3);
        OY.A0Y(this.A02, true, 18);
        this.A02.setAllCaps(true);
        this.A02.setTextColor(i2);
        this.A02.setPadding(A06, A06, A06, A06);
        this.A01.setText(str4);
        OY.A0Y(this.A01, true, 18);
        this.A01.setAllCaps(true);
        this.A01.setTextColor(i);
        this.A01.setPadding(A06, A06, A06, A06);
        int iA01 = C02794x.A01(i2, 20);
        OY.A0R(this.A02, i, A07);
        OY.A0R(this.A01, iA01, A07);
        A00();
        setGravity(17);
    }

    private void A00() {
        setPadding(A0A, A0A, A0A, A0A);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        this.A04.setOrientation(1);
        this.A04.setGravity(14);
        addView(this.A04, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A08, A08);
        layoutParams2.setMargins(0, 0, 0, A09);
        layoutParams2.gravity = 1;
        this.A04.addView(this.A03, layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(0, 0, 0, A09 / 2);
        this.A05.setGravity(17);
        this.A04.addView(this.A05, layoutParams3);
        if (this.A00 != null) {
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams4.setMargins(0, 0, 0, A09);
            this.A00.setGravity(17);
            this.A04.addView(this.A00, layoutParams4);
        }
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.setMargins(0, 0, 0, A09);
        this.A04.addView(this.A02, layoutParams5);
        this.A04.addView(this.A01, layoutParams5);
    }
}
