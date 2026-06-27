package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0838Qv extends C0837Qu {

    @Nullable
    private ImageView.ScaleType A00;

    public C0838Qv(Context context) {
        super(context);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int widthSpecSize) {
        C0838Qv c0838Qv = this;
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
                    c0838Qv = c0838Qv;
                    int iMin = Math.min(size2, size);
                    c0838Qv.setMeasuredDimension(iMin, iMin);
                    c = 4;
                    break;
                case 4:
                    c0838Qv = c0838Qv;
                    if (c0838Qv.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0838Qv = c0838Qv;
                    super.setScaleType(c0838Qv.A00);
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
                    c0838Qv = c0838Qv;
                    c0838Qv.setMeasuredDimension(size2, size2);
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
                    c0838Qv = c0838Qv;
                    c0838Qv.setMeasuredDimension(size, size);
                    c = 4;
                    break;
                case 15:
                    c0838Qv = c0838Qv;
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
