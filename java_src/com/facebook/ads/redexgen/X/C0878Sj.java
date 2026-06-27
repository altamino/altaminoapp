package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0878Sj extends RelativeLayout {
    private static final int A04 = (int) (4.0f * OY.A01);
    private static final float[] A05 = {A04, A04, A04, A04, A04, A04, A04, A04};
    private boolean A00;
    private float[] A01;
    private final Path A02;
    private final RectF A03;

    public C0878Sj(Context context) {
        super(context);
        this.A01 = A05;
        this.A00 = false;
        this.A02 = new Path();
        this.A03 = new RectF();
        OY.A0P(this, 0);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    private float[] getRadiiForCircularImage() {
        int iMin = Math.min(getWidth(), getHeight()) / 2;
        return new float[]{iMin, iMin, iMin, iMin, iMin, iMin, iMin, iMin};
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        C0878Sj c0878Sj = this;
        float[] radiiForCircularImage = null;
        c0878Sj.A03.set(0.0f, 0.0f, c0878Sj.getWidth(), c0878Sj.getHeight());
        c0878Sj.A02.reset();
        char c = c0878Sj.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0878Sj = c0878Sj;
                    radiiForCircularImage = c0878Sj.getRadiiForCircularImage();
                    c = 3;
                    break;
                case 3:
                    C0878Sj c0878Sj2 = c0878Sj;
                    Canvas canvas2 = canvas;
                    c0878Sj2.A02.addRoundRect(c0878Sj2.A03, radiiForCircularImage, Path.Direction.CW);
                    canvas2.clipPath(c0878Sj2.A02);
                    super.onDraw(canvas2);
                    return;
                case 4:
                    c0878Sj = c0878Sj;
                    radiiForCircularImage = c0878Sj.A01;
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
