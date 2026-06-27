package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class R4 extends FrameLayout {
    private boolean A00;
    private final ImageView A01;
    private final C0870Sb A02;
    private static final int A04 = (int) (44.0f * OY.A01);
    private static final int A03 = (int) (10.0f * OY.A01);

    public R4(Context context) {
        super(context);
        this.A00 = false;
        this.A01 = new ImageView(context);
        OY.A0H(1002, this.A01);
        this.A01.setPadding(A03, A03, A03, A03);
        this.A01.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A02 = new C0870Sb(context);
        this.A02.setPadding(A03, A03, A03, A03);
        this.A02.setProgress(0.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        addView(this.A01, layoutParams);
        addView(this.A02, layoutParams);
    }

    public final boolean A00() {
        return this.A00;
    }

    public void setCloseButtonEnabled(boolean z) {
        R4 r4 = this;
        int i = 0;
        ImageView imageView = null;
        int i2 = 0;
        r4.A00 = z;
        C0870Sb c0870Sb = r4.A02;
        char c = z ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    i = 8;
                    c = 3;
                    break;
                case 3:
                    r4 = r4;
                    c0870Sb = c0870Sb;
                    OY.A0Q(c0870Sb, i);
                    imageView = r4.A01;
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    OY.A0Q(imageView, i2);
                    return;
                case 5:
                    i2 = 8;
                    c = 4;
                    break;
                case 6:
                    i2 = 0;
                    i = 0;
                    c = 3;
                    break;
            }
        }
    }

    public void setCloseButtonStyle(R3 r3) {
        R4 r4 = this;
        EnumC0768Od enumC0768Od = null;
        char c = r4.A01 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    r3 = r3;
                    switch (R2.A00[r3.ordinal()]) {
                        case 1:
                            c = 6;
                            break;
                        case 2:
                            c = 7;
                            break;
                        default:
                            c = 4;
                            break;
                    }
                case 4:
                    enumC0768Od = EnumC0768Od.CROSS;
                    c = 5;
                    break;
                case 5:
                    r4 = r4;
                    enumC0768Od = enumC0768Od;
                    r4.A01.setImageBitmap(C0769Oe.A01(enumC0768Od));
                    c = 2;
                    break;
                case 6:
                    enumC0768Od = EnumC0768Od.SKIP_ARROW;
                    c = 5;
                    break;
                case 7:
                    enumC0768Od = EnumC0768Od.MINIMIZE_ARROW;
                    c = 5;
                    break;
            }
        }
    }

    public void setCloseClickListener(View.OnClickListener onClickListener) {
        this.A01.setOnClickListener(onClickListener);
    }

    public void setIconColors(int i) {
        this.A01.setColorFilter(i);
        this.A02.A02(C02794x.A01(i, 77), i);
    }

    public void setProgress(float f) {
        this.A02.setProgressWithAnimation(f);
    }
}
