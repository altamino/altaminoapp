package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class FW extends TextView {
    private final Paint A00;
    private final Paint A01;
    private final RectF A02;

    public FW(Context context) {
        super(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        OY.A0P(this, 0);
        setTextColor(-3355444);
        setPadding((int) (displayMetrics.density * 9.0f), (int) (displayMetrics.density * 5.0f), (int) (displayMetrics.density * 9.0f), (int) (displayMetrics.density * 5.0f));
        setTextSize(18.0f);
        this.A01 = new Paint();
        this.A01.setStyle(Paint.Style.STROKE);
        this.A01.setColor(-10066330);
        this.A01.setStrokeWidth(1.0f);
        this.A01.setAntiAlias(true);
        this.A00 = new Paint();
        this.A00.setStyle(Paint.Style.FILL);
        this.A00.setColor(-1895825408);
        this.A02 = new RectF();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (getText().length() == 0) {
            return;
        }
        this.A02.set(0, 0, getWidth(), getHeight());
        canvas.drawRoundRect(this.A02, 6.0f, 6.0f, this.A00);
        this.A02.set(2, 2, r7 - 2, r6 - 2);
        canvas.drawRoundRect(this.A02, 6.0f, 6.0f, this.A01);
        super.onDraw(canvas);
    }
}
