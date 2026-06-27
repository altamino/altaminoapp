package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SJ extends FrameLayout {
    private int A00;
    private int A01;
    private final ImageView A02;
    private final ImageView A03;

    public SJ(Context context) {
        super(context);
        this.A03 = new ImageView(context);
        this.A02 = new ImageView(context);
        A00();
    }

    public SJ(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A03 = new ImageView(context, attributeSet);
        this.A02 = new ImageView(context, attributeSet);
        A00();
    }

    public SJ(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A03 = new ImageView(context, attributeSet, i);
        this.A02 = new ImageView(context, attributeSet, i);
        A00();
    }

    @TargetApi(21)
    public SJ(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.A03 = new ImageView(context, attributeSet, i, i2);
        this.A02 = new ImageView(context, attributeSet, i, i2);
        A00();
    }

    private void A00() {
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
        addView(this.A03, new FrameLayout.LayoutParams(-2, -2));
        EnumC0759Nu.A04(this.A03, EnumC0759Nu.A0A);
        setId(OY.A00());
    }

    public ImageView getBodyImageView() {
        return this.A03;
    }

    public int getImageHeight() {
        return this.A00;
    }

    public int getImageWidth() {
        return this.A01;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int blurBorderViewHeight, int blurBorderViewWidth) {
        SJ sj = this;
        int centerY = sj.A01 > 0 ? 2 : 3;
        while (true) {
            switch (centerY) {
                case 2:
                    sj = sj;
                    int centerY2 = sj.A00;
                    if (centerY2 > 0) {
                        centerY = 5;
                        break;
                    } else {
                        centerY = 3;
                        break;
                    }
                case 3:
                    sj = sj;
                    super.onLayout(z, i, i2, blurBorderViewHeight, blurBorderViewWidth);
                    centerY = 4;
                    break;
                case 4:
                    return;
                case 5:
                    sj = sj;
                    int expectedImageWidth = blurBorderViewHeight - i;
                    int i3 = blurBorderViewWidth - i2;
                    float fMin = Math.min(expectedImageWidth / sj.A01, i3 / sj.A00);
                    int i4 = (int) (sj.A01 * fMin);
                    int i5 = (int) (sj.A00 * fMin);
                    sj.A02.layout(i, i2, blurBorderViewHeight, blurBorderViewWidth);
                    int expectedImageHeight = expectedImageWidth / 2;
                    int i6 = i + expectedImageHeight;
                    int expectedImageHeight2 = i3 / 2;
                    int i7 = i2 + expectedImageHeight2;
                    int centerY3 = i4 / 2;
                    int i8 = i6 - centerY3;
                    int centerY4 = i5 / 2;
                    int centerY5 = i5 / 2;
                    sj.A03.layout(i8, i7 - centerY4, (i4 / 2) + i6, centerY5 + i7);
                    sj.A02.setVisibility(0);
                    centerY = 4;
                    break;
            }
        }
    }

    public void setImage(@Nullable Bitmap bitmap, @Nullable Bitmap bitmap2) {
        SJ sj = this;
        char c = bitmap2 != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    sj = sj;
                    bitmap2 = bitmap2;
                    OY.A0S(sj.A02, new BitmapDrawable(sj.getContext().getResources(), bitmap2));
                    c = 3;
                    break;
                case 3:
                    bitmap = bitmap;
                    if (bitmap == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    sj = sj;
                    bitmap = bitmap;
                    sj.A01 = bitmap.getWidth();
                    sj.A00 = bitmap.getHeight();
                    sj.A03.setImageBitmap(Bitmap.createBitmap(bitmap));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    sj = sj;
                    sj.A03.setImageDrawable(null);
                    c = 5;
                    break;
                case 7:
                    sj = sj;
                    OY.A0P(sj.A02, 0);
                    c = 3;
                    break;
            }
        }
    }
}
