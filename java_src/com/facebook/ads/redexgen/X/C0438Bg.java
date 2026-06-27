package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bg, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0438Bg extends AbstractC0692Lc {
    private final Paint A00;

    @Nullable
    private final KX A01;
    private final C9T A02;
    private final C9P A03;
    private final C9N A04;
    private final BZ A05;

    public C0438Bg(Context context, @Nullable KX kx) {
        this(context, false, kx);
    }

    public C0438Bg(Context context, boolean z, @Nullable KX kx) {
        super(context);
        this.A03 = new FC(this);
        this.A04 = new C0527Er(this);
        this.A02 = new C0518Ei(this);
        this.A01 = kx;
        this.A05 = new BZ(context, z);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 23.76d), (int) (displayMetrics.density * 23.76d));
        layoutParams.addRule(13);
        this.A05.setLayoutParams(layoutParams);
        this.A05.setChecked(true);
        this.A05.setClickable(false);
        this.A00 = new Paint();
        this.A00.setStyle(Paint.Style.FILL);
        if (z) {
            this.A00.setColor(-1728053248);
        } else {
            this.A00.setColor(-1);
            this.A00.setAlpha(204);
        }
        OY.A0P(this, 0);
        addView(this.A05);
        setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 72.0d), (int) (displayMetrics.density * 72.0d));
        layoutParams2.addRule(13);
        setLayoutParams(layoutParams2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A09() {
        super.A09();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A03, this.A04, this.A02);
        }
        setOnClickListener(new ViewOnClickListenerC0517Eh(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A0A() {
        setOnClickListener(null);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A04, this.A03);
        }
        super.A0A();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = Math.min(width, (getHeight() - getPaddingTop()) - getPaddingBottom());
        canvas.drawCircle(getPaddingLeft() + r4, getPaddingTop() + (height / 2), height / 2, this.A00);
        super.onDraw(canvas);
    }
}
