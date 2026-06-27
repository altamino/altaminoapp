package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class J1 extends RelativeLayout {
    private ImageView A00;
    private TextView A01;
    private boolean A02;
    private final DisplayMetrics A03;
    private final String A04;
    private final String A05;
    private final String A06;

    public J1(Context context, String str, String str2, float[] fArr, String str3) {
        super(context);
        this.A02 = false;
        this.A05 = str;
        this.A04 = str2;
        this.A06 = str3;
        this.A03 = context.getResources().getDisplayMetrics();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(ViewCompat.MEASURED_STATE_MASK);
        gradientDrawable.setAlpha(178);
        gradientDrawable.setCornerRadii(new float[]{fArr[0] * this.A03.density, fArr[0] * this.A03.density, fArr[1] * this.A03.density, fArr[1] * this.A03.density, fArr[2] * this.A03.density, fArr[2] * this.A03.density, fArr[3] * this.A03.density, fArr[3] * this.A03.density});
        OY.A0S(this, gradientDrawable);
        A07();
        A03();
        A04();
        setMinimumWidth(Math.round(20.0f * this.A03.density));
        setMinimumHeight(Math.round(18.0f * this.A03.density));
    }

    private void A03() {
        this.A00 = new ImageView(getContext());
        this.A00.setImageBitmap(C0769Oe.A01(EnumC0768Od.IC_AD_CHOICES));
        addView(this.A00);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Math.round(this.A03.density * 16.0f), Math.round(this.A03.density * 16.0f));
        layoutParams.addRule(9);
        layoutParams.addRule(15, -1);
        layoutParams.setMargins(Math.round(4.0f * this.A03.density), Math.round(this.A03.density * 2.0f), Math.round(this.A03.density * 2.0f), Math.round(this.A03.density * 2.0f));
        this.A00.setLayoutParams(layoutParams);
    }

    private void A04() {
        this.A01 = new TextView(getContext());
        addView(this.A01);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = 0;
        layoutParams.leftMargin = (int) (20.0f * this.A03.density);
        layoutParams.addRule(9);
        layoutParams.addRule(15, -1);
        this.A01.setLayoutParams(layoutParams);
        this.A01.setSingleLine();
        this.A01.setText(this.A05);
        this.A01.setTextSize(10.0f);
        this.A01.setTextColor(-4341303);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        Paint p = new Paint();
        p.setTextSize(this.A01.getTextSize());
        int targetWidth = Math.round(p.measureText(this.A05) + (4.0f * this.A03.density));
        int width = getWidth();
        int startWidth = width - targetWidth;
        J3 j3 = new J3(this, width, startWidth);
        j3.setAnimationListener(new J2(this));
        j3.setDuration(300L);
        j3.setFillAfter(true);
        startAnimation(j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06() {
        Paint paint = new Paint();
        paint.setTextSize(this.A01.getTextSize());
        int textWidth = Math.round(paint.measureText(this.A05) + (4.0f * this.A03.density));
        int startWidth = getWidth();
        int targetWidth = textWidth + startWidth;
        this.A02 = true;
        J6 j6 = new J6(this, startWidth, targetWidth);
        j6.setAnimationListener(new J4(this));
        j6.setDuration(300L);
        j6.setFillAfter(true);
        startAnimation(j6);
    }

    private void A07() {
        setOnTouchListener(new J7(this));
    }
}
