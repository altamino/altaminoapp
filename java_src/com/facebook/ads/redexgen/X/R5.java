package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class R5 extends ImageView {

    @Nullable
    private ImageView.ScaleType A00;

    public R5(Context context) {
        super(context);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int widthSpecSize) {
        R5 r5 = this;
        int size = View.MeasureSpec.getSize(widthSpecSize);
        int size2 = View.MeasureSpec.getSize(i);
        char c = View.MeasureSpec.getMode(i) == 1073741824 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    if (View.MeasureSpec.getMode(widthSpecSize) != 1073741824) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    r5 = r5;
                    int iMin = Math.min(size2, size);
                    r5.setMeasuredDimension(iMin, iMin);
                    c = 4;
                    break;
                case 4:
                    r5 = r5;
                    if (r5.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    r5 = r5;
                    super.setScaleType(r5.A00);
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    if (View.MeasureSpec.getMode(i) != 1073741824) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (size <= 0) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    size2 = Math.min(size2, size);
                    c = '\n';
                    break;
                case '\n':
                    r5 = r5;
                    r5.setMeasuredDimension(size2, size2);
                    c = 4;
                    break;
                case 11:
                    if (View.MeasureSpec.getMode(widthSpecSize) != 1073741824) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    if (size2 <= 0) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    size = Math.min(size2, size);
                    c = 14;
                    break;
                case 14:
                    r5 = r5;
                    r5.setMeasuredDimension(size, size);
                    c = 4;
                    break;
                case 15:
                    r5 = r5;
                    super.onMeasure(i, widthSpecSize);
                    c = 4;
                    break;
            }
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        this.A00 = scaleType;
    }
}
