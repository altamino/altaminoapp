package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class PJ extends LinearLayout {
    private final ImageView A00;
    private final ImageView A01;
    private static final int A04 = (int) (50.0f * OY.A01);
    private static final int A02 = (int) (10.0f * OY.A01);
    private static final int A03 = (int) (20.0f * OY.A01);
    private static final int A05 = (int) (4.0f * OY.A01);

    public PJ(Context context, int i) {
        super(context);
        setOrientation(0);
        setPadding(A02, A02, A02, A02);
        this.A00 = new ImageView(context);
        this.A01 = new ImageView(context);
        A00(i);
    }

    private void A00(int i) {
        EnumC0768Od enumC0768Od = null;
        A01(this.A00, EnumC0768Od.AD_CHOICES_ICON);
        char c = i == 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    enumC0768Od = EnumC0768Od.AN_INFO_ICON;
                    c = 3;
                    break;
                case 3:
                    PJ pj = this;
                    A01(pj.A01, enumC0768Od);
                    pj.addView(pj.A01, new LinearLayout.LayoutParams(A03, A03));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
                    layoutParams.setMargins(A05, 0, 0, 0);
                    pj.addView(pj.A00, layoutParams);
                    return;
                case 4:
                    enumC0768Od = EnumC0768Od.DEFAULT_INFO_ICON;
                    c = 3;
                    break;
            }
        }
    }

    private static void A01(ImageView imageView, EnumC0768Od enumC0768Od) {
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(C0769Oe.A01(enumC0768Od));
        imageView.setColorFilter(-1);
    }

    public void setAdDetails(AnonymousClass38 anonymousClass38, String str, KX kx, InterfaceC03688m interfaceC03688m) {
        setOnClickListener(new PI(this, kx, interfaceC03688m, str, anonymousClass38));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(A04);
        gradientDrawable.setColor(i);
        OY.A0S(this, gradientDrawable);
    }

    public void setIconColors(int i) {
        this.A00.setColorFilter(i);
        this.A01.setColorFilter(i);
    }
}
