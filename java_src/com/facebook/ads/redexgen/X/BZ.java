package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Build;
import android.widget.Button;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BZ extends Button {
    private boolean A00;
    private final Paint A01;
    private final Path A02;
    private final Path A03;
    private final Path A04;

    public BZ(Context context) {
        this(context, false);
    }

    public BZ(Context context, boolean z) {
        super(context);
        this.A00 = false;
        this.A02 = new Path();
        this.A03 = new Path();
        this.A04 = new Path();
        this.A01 = new C0433Bb(this, z);
        setClickable(true);
        OY.A0P(this, 0);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        BZ bz = this;
        float fMax = 0.0f;
        char c = canvas.isHardwareAccelerated() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.VERSION.SDK_INT >= 17) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bz = bz;
                    bz.setLayerType(1, null);
                    c = 4;
                    break;
                case 4:
                    bz = bz;
                    canvas = canvas;
                    fMax = Math.max(canvas.getWidth(), canvas.getHeight()) / 100.0f;
                    if (!bz.A00) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    bz = bz;
                    canvas = canvas;
                    bz.A04.rewind();
                    bz.A04.moveTo(26.5f * fMax, 15.5f * fMax);
                    bz.A04.lineTo(26.5f * fMax, 84.5f * fMax);
                    bz.A04.lineTo(90.0f * fMax, 50.0f * fMax);
                    bz.A04.lineTo(26.5f * fMax, 15.5f * fMax);
                    bz.A04.close();
                    canvas.drawPath(bz.A04, bz.A01);
                    c = 6;
                    break;
                case 6:
                    super.onDraw(canvas);
                    return;
                case 7:
                    bz = bz;
                    canvas = canvas;
                    bz.A02.rewind();
                    bz.A02.moveTo(29.0f * fMax, 21.0f * fMax);
                    bz.A02.lineTo(29.0f * fMax, 79.0f * fMax);
                    bz.A02.lineTo(45.0f * fMax, 79.0f * fMax);
                    bz.A02.lineTo(45.0f * fMax, 21.0f * fMax);
                    bz.A02.lineTo(29.0f * fMax, 21.0f * fMax);
                    bz.A02.close();
                    bz.A03.rewind();
                    bz.A03.moveTo(55.0f * fMax, 21.0f * fMax);
                    bz.A03.lineTo(55.0f * fMax, 79.0f * fMax);
                    bz.A03.lineTo(71.0f * fMax, 79.0f * fMax);
                    bz.A03.lineTo(71.0f * fMax, 21.0f * fMax);
                    bz.A03.lineTo(55.0f * fMax, 21.0f * fMax);
                    bz.A03.close();
                    canvas.drawPath(bz.A02, bz.A01);
                    canvas.drawPath(bz.A03, bz.A01);
                    c = 6;
                    break;
            }
        }
    }

    public void setChecked(boolean z) {
        this.A00 = z;
        refreshDrawableState();
        invalidate();
    }
}
