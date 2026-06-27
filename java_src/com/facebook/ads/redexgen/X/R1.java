package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class R1 extends TextView {
    private float A00;
    private float A01;

    public R1(Context context) {
        super(context);
        this.A01 = 8.0f;
        super.setSingleLine();
        super.setMaxLines(1);
        this.A00 = getTextSize() / OY.A01;
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int currentWidth, int measuredHeight, int measuredWidth, int i) {
        R1 r1 = this;
        int i2 = measuredWidth - currentWidth;
        int measuredHeight2 = r1.getMeasuredHeight();
        int measuredWidth2 = r1.getMeasuredWidth();
        float f = r1.A00;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    r1 = r1;
                    if (f < r1.A01) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    r1 = r1;
                    super.setTextSize(f);
                    r1.measure(0, 0);
                    if (r1.getMeasuredWidth() > i2) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    r1 = r1;
                    if (r1.getMeasuredWidth() <= i2) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    r1 = r1;
                    r1.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
                    c = 6;
                    break;
                case 6:
                    R1 r12 = r1;
                    r12.setMeasuredDimension(measuredWidth2, measuredHeight2);
                    super.onLayout(z, currentWidth, measuredHeight, measuredWidth, i);
                    return;
                case 7:
                    f -= 0.5f;
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
    }

    public void setMinTextSize(float f) {
        if (f <= this.A00) {
            this.A01 = f;
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        this.A00 = f;
        super.setTextSize(f);
    }
}
