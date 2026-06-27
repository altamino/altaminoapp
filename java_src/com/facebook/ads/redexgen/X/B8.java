package com.facebook.ads.redexgen.X;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.support.annotation.Nullable;
import android.support.v4.view.GravityCompat;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class B8 extends RelativeLayout implements InterfaceC0696Lg {
    private static byte[] A08;
    private static final int A09;
    private int A00;
    private ObjectAnimator A01;
    private ProgressBar A02;
    private AbstractC01971t A03;
    private AbstractC01971t A04;
    private AbstractC01971t A05;
    private AbstractC01971t A06;

    @Nullable
    private QL A07;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A08 = new byte[]{-33, -31, -34, -42, -31, -44, -30, -30};
    }

    static {
        A05();
        A09 = (int) (6.0f * OY.A01);
    }

    public B8(Context context) {
        this(context, A09, -12549889, 0);
    }

    private B8(Context context, int i, int i2, int i3) {
        super(context);
        this.A00 = -1;
        this.A06 = new BU(this);
        this.A04 = new BN(this);
        this.A05 = new BJ(this);
        this.A03 = new BD(this);
        this.A02 = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        A0A(i2, i3);
        this.A02.setMax(10000);
        addView(this.A02, new RelativeLayout.LayoutParams(-1, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        A03();
        this.A01 = ObjectAnimator.ofInt(this.A02, A01(0, 8, 80), 0, 0);
        this.A01.setDuration(0L);
        this.A01.setInterpolator(new LinearInterpolator());
        this.A01.start();
        this.A00 = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        if (this.A01 != null) {
            this.A01.cancel();
            this.A01.setTarget(null);
            this.A01 = null;
            this.A02.clearAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        B8 b8 = this;
        int currentPositionInMillis = 0;
        int progress = 0;
        int i = 0;
        char c = b8.A07 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    b8 = b8;
                    b8.A03();
                    currentPositionInMillis = b8.A07.getCurrentPositionInMillis();
                    progress = b8.A07.getDuration();
                    if (progress <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i = (currentPositionInMillis * 10000) / progress;
                    c = 5;
                    break;
                case 5:
                    b8 = b8;
                    if (b8.A00 >= i) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (progress <= currentPositionInMillis) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    b8 = b8;
                    b8.A01 = ObjectAnimator.ofInt(b8.A02, A01(0, 8, 80), b8.A00, i);
                    b8.A01.setDuration(Math.min(250, progress - currentPositionInMillis));
                    b8.A01.setInterpolator(new LinearInterpolator());
                    b8.A01.start();
                    b8.A00 = i;
                    c = 2;
                    break;
                case '\b':
                    i = 0;
                    c = 5;
                    break;
            }
        }
    }

    public final void A09() {
        A03();
        this.A02 = null;
        this.A07 = null;
    }

    public final void A0A(int i, int i2) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new ColorDrawable(i2), new ColorDrawable(i2), new ScaleDrawable(new ColorDrawable(i), GravityCompat.START, 1.0f, -1.0f)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.secondaryProgress);
        layerDrawable.setId(2, R.id.progress);
        this.A02.setProgressDrawable(layerDrawable);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A46(QL ql) {
        this.A07 = ql;
        ql.getEventBus().A03(this.A04, this.A05, this.A06, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A7C(QL ql) {
        ql.getEventBus().A04(this.A06, this.A05, this.A04, this.A03);
        this.A07 = null;
    }
}
