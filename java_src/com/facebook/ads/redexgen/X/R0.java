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
public final class R0 extends TextView {
    private float A00;
    private float A01;
    private int A02;

    public R0(Context context, int i) {
        super(context);
        this.A01 = 8.0f;
        setMaxLines(i);
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int measuredHeight, int i2, int i3) {
        R0 r0 = this;
        float f = 0.0f;
        super.setMaxLines(r0.A02 + 1);
        super.setTextSize(r0.A00);
        int i4 = i2 - i;
        int i5 = i3 - measuredHeight;
        r0.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(i5, 0));
        char c = r0.getMeasuredHeight() > i5 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    r0 = r0;
                    f = r0.A00;
                    c = 3;
                    break;
                case 3:
                    r0 = r0;
                    if (f <= r0.A01) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    r0 = r0;
                    f -= 0.5f;
                    super.setTextSize(f);
                    r0.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), 0);
                    if (r0.getMeasuredHeight() > i5) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    r0 = r0;
                    if (r0.getLineCount() > r0.A02) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    R0 r02 = r0;
                    super.setMaxLines(r02.A02);
                    r02.setMeasuredDimension(i4, i5);
                    super.onLayout(z, i, measuredHeight, i2, i3);
                    return;
            }
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        this.A02 = i;
        super.setMaxLines(i);
    }

    public void setMinTextSize(float f) {
        this.A01 = f;
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        this.A00 = f;
        super.setTextSize(f);
    }
}
