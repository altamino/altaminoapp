package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.RelativeLayout;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FT extends AbstractC0692Lc {
    private final int A00;
    private final AbstractC01971t<K0> A01;
    private final FW A02;
    private final String A03;
    private final String A04;
    private final AtomicBoolean A05;

    public FT(Context context, int i, String str, String str2) {
        super(context);
        this.A01 = new C0541Ff(this);
        this.A00 = i;
        this.A03 = str;
        this.A04 = str2;
        this.A05 = new AtomicBoolean(false);
        this.A02 = new FW(context);
        this.A02.setText(this.A03 + ' ' + i);
        addView(this.A02, new RelativeLayout.LayoutParams(-2, -2));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A09() {
        super.A09();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A05(this.A01);
        }
        this.A02.setOnClickListener(new ViewOnClickListenerC0540Fe(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A0A() {
        if (getVideoView() != null) {
            this.A02.setOnClickListener(null);
            getVideoView().getEventBus().A06(this.A01);
        }
        super.A0A();
    }
}
