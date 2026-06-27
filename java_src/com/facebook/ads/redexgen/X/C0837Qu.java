package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0837Qu extends ImageView {
    private static final int A04 = (int) (8.0f * OY.A01);
    private static final float[] A05 = {A04, A04, A04, A04, A04, A04, A04, A04};
    private boolean A00;
    private float[] A01;
    private final Path A02;
    private final RectF A03;

    public C0837Qu(Context context) {
        super(context);
        this.A01 = A05;
        this.A00 = false;
        this.A02 = new Path();
        this.A03 = new RectF();
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    private float[] getRadiiForCircularImage() {
        int iMin = Math.min(getWidth(), getHeight()) / 2;
        return new float[]{iMin, iMin, iMin, iMin, iMin, iMin, iMin, iMin};
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        C0837Qu c0837Qu = this;
        float[] radiiForCircularImage = null;
        c0837Qu.A03.set(0.0f, 0.0f, c0837Qu.getWidth(), c0837Qu.getHeight());
        c0837Qu.A02.reset();
        char c = c0837Qu.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0837Qu = c0837Qu;
                    radiiForCircularImage = c0837Qu.getRadiiForCircularImage();
                    c = 3;
                    break;
                case 3:
                    C0837Qu c0837Qu2 = c0837Qu;
                    Canvas canvas2 = canvas;
                    c0837Qu2.A02.addRoundRect(c0837Qu2.A03, radiiForCircularImage, Path.Direction.CW);
                    canvas2.clipPath(c0837Qu2.A02);
                    super.onDraw(canvas2);
                    return;
                case 4:
                    c0837Qu = c0837Qu;
                    radiiForCircularImage = c0837Qu.A01;
                    c = 3;
                    break;
            }
        }
    }

    public void setFullCircleCorners(boolean z) {
        this.A00 = z;
    }

    public void setRadius(int i) {
        int i2 = (int) (i * OY.A01);
        this.A01 = new float[]{i2, i2, i2, i2, i2, i2, i2, i2};
    }

    public void setRadius(float[] fArr) {
        this.A01 = fArr;
    }
}
