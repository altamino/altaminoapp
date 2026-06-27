package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IE extends AbstractC0692Lc {
    private final Paint A00;
    private final RectF A01;
    private final TextView A02;
    private final KM A03;
    private final String A04;
    private final String A05;

    public IE(Context context, String str, KM km, String str2, String str3) {
        super(context);
        this.A05 = str;
        this.A03 = km;
        this.A04 = str2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.A02 = new TextView(getContext());
        this.A02.setTextColor(-3355444);
        this.A02.setTextSize(16.0f);
        this.A02.setPadding((int) (displayMetrics.density * 6.0f), (int) (displayMetrics.density * 4.0f), (int) (displayMetrics.density * 6.0f), (int) (displayMetrics.density * 4.0f));
        this.A00 = new Paint();
        this.A00.setStyle(Paint.Style.FILL);
        this.A00.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.A00.setAlpha(178);
        this.A01 = new RectF();
        OY.A0P(this, 0);
        this.A02.setText(str3);
        addView(this.A02, new RelativeLayout.LayoutParams(-2, -2));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A09() {
        super.A09();
        this.A02.setOnClickListener(new IG(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A0A() {
        this.A02.setOnClickListener(null);
        super.A0A();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.A01.set(0.0f, 0.0f, getWidth(), getHeight());
        canvas.drawRoundRect(this.A01, 0.0f, 0.0f, this.A00);
        super.onDraw(canvas);
    }
}
