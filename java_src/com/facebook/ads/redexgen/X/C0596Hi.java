package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.Nullable;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hi, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0596Hi extends ImageView implements InterfaceC0696Lg {
    private static final int A04 = (int) (4.0f * Resources.getSystem().getDisplayMetrics().density);

    @Nullable
    private QL A00;
    private final Paint A01;
    private final KX A02;
    private final C9V A03;

    public C0596Hi(Context context, KX kx) {
        super(context);
        this.A03 = new ID(this);
        this.A02 = kx;
        this.A01 = new Paint();
        this.A01.setColor(-1728053248);
        setColorFilter(-1);
        setPadding(A04, A04, A04, A04);
        A03();
        setOnClickListener(new ViewOnClickListenerC0601Hn(this));
    }

    private void A02() {
        setImageBitmap(C0769Oe.A01(EnumC0768Od.SOUND_OFF));
    }

    private void A03() {
        setImageBitmap(C0769Oe.A01(EnumC0768Od.SOUND_ON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A04() {
        C0596Hi c0596Hi = this;
        boolean z = false;
        char c = c0596Hi.A00 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0596Hi = c0596Hi;
                    if (c0596Hi.A00.getVolume() != 0.0f) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final void A06() {
        C0596Hi c0596Hi = this;
        char c = c0596Hi.A00 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0596Hi = c0596Hi;
                    if (!c0596Hi.A04()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0596Hi = c0596Hi;
                    c0596Hi.A02();
                    c = 2;
                    break;
                case 5:
                    c0596Hi = c0596Hi;
                    c0596Hi.A03();
                    c = 2;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A46(QL ql) {
        this.A00 = ql;
        if (this.A00 != null) {
            this.A00.getEventBus().A05(this.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A7C(QL ql) {
        if (this.A00 != null) {
            this.A00.getEventBus().A06(this.A03);
        }
        this.A00 = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, Math.min(r1, r0), this.A01);
        super.onDraw(canvas);
    }
}
