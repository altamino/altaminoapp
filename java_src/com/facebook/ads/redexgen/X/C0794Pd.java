package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0794Pd extends View {
    private int A00;
    private Paint A01;
    private Paint A02;
    private Paint A03;
    private boolean A04;

    public C0794Pd(Context context) {
        this(context, 60, true);
    }

    private C0794Pd(Context context, int i, boolean z) {
        super(context);
        this.A00 = i;
        this.A04 = z;
        if (z) {
            this.A02 = new Paint();
            this.A02.setColor(-3355444);
            this.A02.setStyle(Paint.Style.STROKE);
            this.A02.setStrokeWidth(3.0f);
            this.A02.setAntiAlias(true);
            this.A01 = new Paint();
            this.A01.setColor(-1287371708);
            this.A01.setStyle(Paint.Style.FILL);
            this.A01.setAntiAlias(true);
            this.A03 = new Paint();
            this.A03.setColor(-1);
            this.A03.setStyle(Paint.Style.STROKE);
            this.A03.setStrokeWidth(6.0f);
            this.A03.setAntiAlias(true);
        }
    }

    public RelativeLayout.LayoutParams getDefaultLayoutParams() {
        float f = OY.A01;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.A00 * f), (int) (this.A00 * f));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        return layoutParams;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        C0794Pd c0794Pd = this;
        int innerRadius = c0794Pd.A04 ? 2 : 6;
        while (true) {
            switch (innerRadius) {
                case 2:
                    canvas2 = canvas2;
                    if (!canvas2.isHardwareAccelerated()) {
                        innerRadius = 5;
                        break;
                    } else {
                        innerRadius = 3;
                        break;
                    }
                case 3:
                    if (Build.VERSION.SDK_INT >= 17) {
                        innerRadius = 5;
                        break;
                    } else {
                        innerRadius = 4;
                        break;
                    }
                case 4:
                    c0794Pd = c0794Pd;
                    c0794Pd.setLayerType(1, null);
                    innerRadius = 5;
                    break;
                case 5:
                    c0794Pd = c0794Pd;
                    canvas2 = canvas2;
                    int centerX = Math.min(canvas2.getWidth(), canvas2.getHeight());
                    int centerY = centerX / 2;
                    int edgeLength = centerX / 2;
                    int outerRadius = (centerY * 2) / 3;
                    canvas2.drawCircle(centerY, edgeLength, outerRadius, c0794Pd.A02);
                    int innerRadius2 = outerRadius - 2;
                    canvas2.drawCircle(centerY, edgeLength, innerRadius2, c0794Pd.A01);
                    int startY = centerX / 3;
                    int i = centerX / 3;
                    int innerRadius3 = startY * 2;
                    float f = innerRadius3;
                    int innerRadius4 = i * 2;
                    canvas2.drawLine(startY, i, f, innerRadius4, c0794Pd.A03);
                    int innerRadius5 = startY * 2;
                    int innerRadius6 = i * 2;
                    canvas2.drawLine(innerRadius5, i, startY, innerRadius6, c0794Pd.A03);
                    innerRadius = 6;
                    break;
                case 6:
                    super.onDraw(canvas2);
                    return;
            }
        }
    }
}
